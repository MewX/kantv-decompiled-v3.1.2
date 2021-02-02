package com.avos.avoscloud.im.v2.audio;

import android.media.MediaRecorder;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.LogUtil.log;
import java.io.File;
import java.io.IOException;

public class AVIMAudioRecorder {
    private static final long MIN_INTERVAL_TIME = 1000;
    private static final String REASON_TOO_SHORT_TIME = "time is too short(less than 1 second)";
    private RecordEventListener listener = null;
    private String localPath = null;
    private MediaRecorder recorder = null;
    private long startRecordTime = 0;

    public interface RecordEventListener {
        void onFinishedRecord(long j, String str);

        void onStartRecord();
    }

    public AVIMAudioRecorder(String str, RecordEventListener recordEventListener) {
        if (!AVUtils.isBlankString(str)) {
            this.localPath = str;
            this.listener = recordEventListener;
            return;
        }
        throw new IllegalArgumentException("local path is empty.");
    }

    public int getMaxAmplitude() {
        MediaRecorder mediaRecorder = this.recorder;
        if (mediaRecorder == null) {
            return 0;
        }
        return mediaRecorder.getMaxAmplitude();
    }

    public void start() {
        try {
            if (this.recorder == null) {
                this.recorder = new MediaRecorder();
                this.recorder.setAudioSource(0);
                this.recorder.setOutputFormat(0);
                this.recorder.setAudioEncoder(3);
                this.recorder.setOutputFile(this.localPath);
                this.recorder.prepare();
            } else {
                this.recorder.reset();
                this.recorder.setOutputFile(this.localPath);
            }
            this.recorder.start();
            this.startRecordTime = System.currentTimeMillis();
            if (this.listener != null) {
                this.listener.onStartRecord();
            }
        } catch (IOException e) {
            log.e("failed to start MediaRecorder. cause: ", (Exception) e);
        }
    }

    public void stop() {
        stopRecorder(true);
    }

    public void cancel() {
        stopRecorder(false);
        removeRecordFile();
    }

    private void stopRecorder(boolean z) {
        MediaRecorder mediaRecorder = this.recorder;
        if (mediaRecorder != null) {
            try {
                mediaRecorder.stop();
                if (z && this.listener != null) {
                    long currentTimeMillis = System.currentTimeMillis() - this.startRecordTime;
                    if (currentTimeMillis < 1000) {
                        removeRecordFile();
                        this.listener.onFinishedRecord(0, REASON_TOO_SHORT_TIME);
                    } else {
                        this.listener.onFinishedRecord(currentTimeMillis, null);
                    }
                }
            } catch (Exception e) {
                log.e("failed to stop MediaRecorder. cause: ", e);
            } catch (Throwable th) {
                this.recorder.release();
                this.recorder = null;
                throw th;
            }
            this.recorder.release();
            this.recorder = null;
        }
    }

    private void removeRecordFile() {
        File file = new File(this.localPath);
        if (file.exists()) {
            file.delete();
        }
    }
}
