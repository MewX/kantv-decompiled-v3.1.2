package com.shuyu.gsyvideoplayer.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.media.ThumbnailUtils;
import com.shuyu.gsyvideoplayer.listener.GSYVideoGifSaveListener;
import com.shuyu.gsyvideoplayer.listener.GSYVideoShotSaveListener;
import com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class GifCreateHelper {
    /* access modifiers changed from: private */
    public int mDelay;
    private int mFrequencyCount;
    /* access modifiers changed from: private */
    public GSYVideoGifSaveListener mGSYVideoGifSaveListener;
    /* access modifiers changed from: private */
    public List<String> mPicList;
    private StandardGSYVideoPlayer mPlayer;
    /* access modifiers changed from: private */
    public int mSampleSize;
    /* access modifiers changed from: private */
    public boolean mSaveShotBitmapSuccess;
    /* access modifiers changed from: private */
    public int mScaleSize;
    private Timer mTimer;
    private TaskLocal mTimerTask;
    private File mTmpPath;

    private class TaskLocal extends TimerTask {
        private TaskLocal() {
        }

        public void run() {
            if (GifCreateHelper.this.mSaveShotBitmapSuccess) {
                GifCreateHelper.this.mSaveShotBitmapSuccess = false;
                GifCreateHelper.this.startSaveBitmap();
            }
        }
    }

    public GifCreateHelper(StandardGSYVideoPlayer standardGSYVideoPlayer, GSYVideoGifSaveListener gSYVideoGifSaveListener) {
        this(standardGSYVideoPlayer, gSYVideoGifSaveListener, 0, 1, 5, 50);
    }

    public GifCreateHelper(StandardGSYVideoPlayer standardGSYVideoPlayer, GSYVideoGifSaveListener gSYVideoGifSaveListener, int i, int i2, int i3, int i4) {
        this.mSaveShotBitmapSuccess = true;
        this.mTimer = new Timer();
        this.mPicList = new ArrayList();
        this.mDelay = 0;
        this.mSampleSize = 1;
        this.mScaleSize = 5;
        this.mFrequencyCount = 50;
        this.mPlayer = standardGSYVideoPlayer;
        this.mGSYVideoGifSaveListener = gSYVideoGifSaveListener;
        this.mDelay = i;
        this.mSampleSize = i2;
        this.mScaleSize = i3;
        this.mFrequencyCount = i4;
    }

    public void startGif(File file) {
        this.mTmpPath = file;
        cancelTask();
        this.mPicList.clear();
        this.mTimerTask = new TaskLocal();
        this.mTimer.schedule(this.mTimerTask, 0, (long) this.mFrequencyCount);
    }

    public void stopGif(final File file) {
        cancelTask();
        this.mSaveShotBitmapSuccess = true;
        new Thread(new Runnable() {
            public void run() {
                if (GifCreateHelper.this.mPicList.size() > 2) {
                    GifCreateHelper gifCreateHelper = GifCreateHelper.this;
                    gifCreateHelper.createGif(file, gifCreateHelper.mPicList, GifCreateHelper.this.mDelay, GifCreateHelper.this.mSampleSize, GifCreateHelper.this.mScaleSize, GifCreateHelper.this.mGSYVideoGifSaveListener);
                    return;
                }
                GifCreateHelper.this.mGSYVideoGifSaveListener.result(false, null);
            }
        }).start();
    }

    public void cancelTask() {
        TaskLocal taskLocal = this.mTimerTask;
        if (taskLocal != null) {
            taskLocal.cancel();
            this.mTimerTask = null;
        }
    }

    /* access modifiers changed from: private */
    public void startSaveBitmap() {
        File file = this.mTmpPath;
        StringBuilder sb = new StringBuilder();
        sb.append("GSY-TMP-FRAME");
        sb.append(System.currentTimeMillis());
        sb.append(".tmp");
        this.mPlayer.saveFrame(new File(file, sb.toString()), new GSYVideoShotSaveListener() {
            public void result(boolean z, File file) {
                GifCreateHelper.this.mSaveShotBitmapSuccess = true;
                if (z) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(" SUCCESS CREATE FILE ");
                    sb.append(file.getAbsolutePath());
                    Debuger.printfError(sb.toString());
                    GifCreateHelper.this.mPicList.add(file.getAbsolutePath());
                }
            }
        });
    }

    public void createGif(File file, List<String> list, int i, int i2, int i3, GSYVideoGifSaveListener gSYVideoGifSaveListener) {
        File file2 = file;
        List<String> list2 = list;
        GSYVideoGifSaveListener gSYVideoGifSaveListener2 = gSYVideoGifSaveListener;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        AnimatedGifEncoder animatedGifEncoder = new AnimatedGifEncoder();
        animatedGifEncoder.start(byteArrayOutputStream);
        animatedGifEncoder.setRepeat(0);
        animatedGifEncoder.setDelay(i);
        int i4 = 0;
        while (i4 < list.size()) {
            Options options = new Options();
            options.inSampleSize = i2;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile((String) list2.get(i4), options);
            double d = (double) options.outWidth;
            double d2 = (double) i3;
            Double.isNaN(d);
            Double.isNaN(d2);
            double d3 = d / d2;
            int i5 = i4;
            double d4 = (double) options.outHeight;
            Double.isNaN(d4);
            Double.isNaN(d2);
            double d5 = d4 / d2;
            options.inJustDecodeBounds = false;
            int i6 = i5;
            Bitmap decodeFile = BitmapFactory.decodeFile((String) list2.get(i6), options);
            Bitmap extractThumbnail = ThumbnailUtils.extractThumbnail(decodeFile, (int) d3, (int) d5);
            animatedGifEncoder.addFrame(extractThumbnail);
            decodeFile.recycle();
            extractThumbnail.recycle();
            i4 = i6 + 1;
            gSYVideoGifSaveListener2.process(i4, list.size());
        }
        animatedGifEncoder.finish();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file.getPath());
            byteArrayOutputStream.writeTo(fileOutputStream);
            byteArrayOutputStream.flush();
            fileOutputStream.flush();
            byteArrayOutputStream.close();
            fileOutputStream.close();
            gSYVideoGifSaveListener2.result(true, file2);
        } catch (IOException e) {
            e.printStackTrace();
            gSYVideoGifSaveListener2.result(false, file2);
        }
    }
}
