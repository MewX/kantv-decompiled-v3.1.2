package com.kantv.ui.m3u8downloader.utils;

import android.content.Context;
import android.os.Environment;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SimpleTarget;
import com.kantv.common.log.AILog;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.download.SettingsManager;
import java.io.File;
import java.io.FileOutputStream;

public class SdcardPictureHelper {
    private String TAG = "SdcardPictureHelper";
    /* access modifiers changed from: private */
    public Context context;

    public SdcardPictureHelper(Context context2) {
        this.context = context2;
    }

    public void savePicture(String str, final String str2) {
        final String replace = str.trim().replace(" ", "");
        String str3 = this.TAG;
        StringBuilder sb = new StringBuilder();
        String str4 = "savePicture path";
        sb.append(str4);
        String str5 = "mounted";
        sb.append(Environment.getExternalStorageState().equals(str5));
        AILog.d(str3, sb.toString());
        if (Environment.getExternalStorageState().equals(str5)) {
            File file = new File(SettingsManager.getPhotoDirPath());
            if (!file.exists()) {
                file.mkdirs();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(SettingsManager.getPhotoDirPath());
            sb2.append(File.separator);
            sb2.append(replace);
            File file2 = new File(sb2.toString());
            String str6 = this.TAG;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str4);
            sb3.append(file2.getAbsolutePath());
            sb3.append(" dir1.exists()");
            sb3.append(file2.exists());
            AILog.d(str6, sb3.toString());
            if (!file2.exists()) {
                Context context2 = this.context;
                if (context2 != null) {
                    ((VideoPlayActivity) context2).runOnUiThread(new Runnable() {
                        public void run() {
                            if (SdcardPictureHelper.this.context != null && ((VideoPlayActivity) SdcardPictureHelper.this.context) != null && !((VideoPlayActivity) SdcardPictureHelper.this.context).isDestroy()) {
                                Glide.with(SdcardPictureHelper.this.context).load(str2).asBitmap().toBytes().into(new SimpleTarget<byte[]>() {
                                    public void onResourceReady(byte[] bArr, GlideAnimation<? super byte[]> glideAnimation) {
                                        try {
                                            SdcardPictureHelper.this.savaFileToSD(replace, bArr);
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    }
                                });
                            }
                        }
                    });
                }
            }
        }
    }

    public void savaFileToSD(String str, byte[] bArr) throws Exception {
        if (Environment.getExternalStorageState().equals("mounted")) {
            String photoDirPath = SettingsManager.getPhotoDirPath();
            File file = new File(photoDirPath);
            if (!file.exists()) {
                file.mkdirs();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(photoDirPath);
            sb.append(File.separator);
            sb.append(str);
            sb.append(".jpg");
            String sb2 = sb.toString();
            if (!new File(sb2).exists()) {
                FileOutputStream fileOutputStream = new FileOutputStream(sb2);
                fileOutputStream.write(bArr);
                fileOutputStream.close();
            }
        }
    }
}
