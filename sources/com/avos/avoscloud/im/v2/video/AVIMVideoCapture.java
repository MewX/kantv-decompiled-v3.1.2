package com.avos.avoscloud.im.v2.video;

import android.app.Activity;
import android.content.Intent;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.LogUtil.log;

public class AVIMVideoCapture implements Callback {
    public static final int REQUEST_VIDEO_CAPTURE = 1;
    private String localPath = null;
    private int maxDuration;
    private int maxFileSize;
    private MediaRecorder mediaRecorder = null;
    private CamcorderProfile profile = null;
    private boolean recording = false;
    private SurfaceView surfaceView = null;

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    public static void dispatchTakeVideoIntent(Activity activity) {
        Intent intent = new Intent("android.media.action.VIDEO_CAPTURE");
        if (intent.resolveActivity(activity.getPackageManager()) != null) {
            activity.startActivityForResult(intent, 1);
        }
    }

    public AVIMVideoCapture(CamcorderProfile camcorderProfile, String str, int i, int i2, SurfaceView surfaceView2) {
        if (AVUtils.isBlankString(str)) {
            throw new IllegalArgumentException("local path is empty.");
        } else if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("maxDuration and maxFileSize must great than 0.");
        } else if (surfaceView2 != null) {
            this.profile = camcorderProfile;
            this.localPath = str;
            this.maxDuration = i;
            this.maxFileSize = i2;
            this.surfaceView = surfaceView2;
            initRecorder();
        } else {
            throw new IllegalArgumentException("SurfaceView is null.");
        }
    }

    private void initRecorder() {
        this.mediaRecorder = new MediaRecorder();
        this.mediaRecorder.setAudioSource(0);
        this.mediaRecorder.setVideoSource(0);
        this.mediaRecorder.setProfile(this.profile);
        this.mediaRecorder.setOutputFile(this.localPath);
        this.mediaRecorder.setMaxDuration(this.maxDuration);
        this.mediaRecorder.setMaxFileSize((long) this.maxFileSize);
        SurfaceHolder holder = this.surfaceView.getHolder();
        holder.addCallback(this);
        holder.setType(3);
    }

    public void start() {
        if (!this.recording) {
            MediaRecorder mediaRecorder2 = this.mediaRecorder;
            if (mediaRecorder2 != null) {
                mediaRecorder2.start();
                this.recording = true;
            }
        }
    }

    public void stop() {
        if (this.recording) {
            stopRecorder();
            this.recording = false;
            initRecorder();
            prepareRecorder(this.surfaceView.getHolder());
        }
    }

    private void prepareRecorder(SurfaceHolder surfaceHolder) {
        this.mediaRecorder.setPreviewDisplay(surfaceHolder.getSurface());
        try {
            this.mediaRecorder.prepare();
        } catch (Exception e) {
            log.e("failed to prepare MediaRecorder. cause: ", e);
        }
    }

    private void stopRecorder() {
        MediaRecorder mediaRecorder2 = this.mediaRecorder;
        if (mediaRecorder2 != null) {
            mediaRecorder2.stop();
            this.mediaRecorder.release();
            this.mediaRecorder = null;
        }
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        prepareRecorder(surfaceHolder);
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        stopRecorder();
    }
}
