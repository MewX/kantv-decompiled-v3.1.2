package com.tencent.connect.share;

import android.app.Activity;
import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.BaseApi;
import com.tencent.connect.common.Constants;
import com.tencent.open.TDialog;
import com.tencent.open.a.f;
import com.tencent.open.b.d;
import com.tencent.open.utils.k;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.io.File;
import java.util.ArrayList;

/* compiled from: ProGuard */
public class QzonePublish extends BaseApi {
    public static final String HULIAN_CALL_BACK = "hulian_call_back";
    public static final String HULIAN_EXTRA_SCENE = "hulian_extra_scene";
    public static final String PUBLISH_TO_QZONE_APP_NAME = "appName";
    public static final String PUBLISH_TO_QZONE_EXTMAP = "extMap";
    public static final String PUBLISH_TO_QZONE_IMAGE_URL = "imageUrl";
    public static final String PUBLISH_TO_QZONE_KEY_TYPE = "req_type";
    public static final String PUBLISH_TO_QZONE_SUMMARY = "summary";
    public static final int PUBLISH_TO_QZONE_TYPE_PUBLISHMOOD = 3;
    public static final int PUBLISH_TO_QZONE_TYPE_PUBLISHVIDEO = 4;
    public static final String PUBLISH_TO_QZONE_VIDEO_DURATION = "videoDuration";
    public static final String PUBLISH_TO_QZONE_VIDEO_PATH = "videoPath";
    public static final String PUBLISH_TO_QZONE_VIDEO_SIZE = "videoSize";

    public QzonePublish(Context context, QQToken qQToken) {
        super(qQToken);
    }

    public void publishToQzone(Activity activity, Bundle bundle, IUiListener iUiListener) {
        Bundle bundle2 = bundle;
        final IUiListener iUiListener2 = iUiListener;
        String str = "openSDK_LOG.QzonePublish";
        f.c(str, "publishToQzone() -- start");
        if (bundle2 == null) {
            iUiListener2.onError(new UiError(-6, Constants.MSG_PARAM_NULL_ERROR, null));
            f.e(str, "-->publishToQzone, params is null");
            d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_PARAM_NULL_ERROR);
        } else if (!k.e((Context) activity)) {
            iUiListener2.onError(new UiError(-15, Constants.MSG_PARAM_VERSION_TOO_LOW, null));
            f.e(str, "-->publishToQzone, this is not support below qq 5.9.5");
            d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "publicToQzone, this is not support below qq 5.9.5");
            Activity activity2 = activity;
            TDialog tDialog = new TDialog(activity2, "", a(""), null, this.b);
            tDialog.show();
        } else {
            String a = k.a((Context) activity);
            int i = 0;
            String str2 = "appName";
            if (a == null) {
                a = bundle2.getString(str2);
            } else if (a.length() > 20) {
                StringBuilder sb = new StringBuilder();
                sb.append(a.substring(0, 20));
                sb.append("...");
                a = sb.toString();
            }
            if (!TextUtils.isEmpty(a)) {
                bundle2.putString(str2, a);
            }
            int i2 = bundle2.getInt("req_type");
            if (i2 == 3) {
                String str3 = "imageUrl";
                ArrayList stringArrayList = bundle2.getStringArrayList(str3);
                if (stringArrayList != null && stringArrayList.size() > 0) {
                    while (i < stringArrayList.size()) {
                        if (!k.h((String) stringArrayList.get(i))) {
                            stringArrayList.remove(i);
                            i--;
                        }
                        i++;
                    }
                    bundle2.putStringArrayList(str3, stringArrayList);
                }
                b(activity, bundle, iUiListener);
                f.c(str, "publishToQzone() --end");
            } else if (i2 == 4) {
                String string = bundle2.getString(PUBLISH_TO_QZONE_VIDEO_PATH);
                boolean h = k.h(string);
                String str4 = Constants.MSG_PUBLISH_VIDEO_ERROR;
                if (!h) {
                    f.e(str, "publishToQzone() video url invalid");
                    iUiListener2.onError(new UiError(-5, str4, null));
                    return;
                }
                MediaPlayer mediaPlayer = new MediaPlayer();
                final String str5 = string;
                final Bundle bundle3 = bundle;
                final Activity activity3 = activity;
                final IUiListener iUiListener3 = iUiListener;
                AnonymousClass1 r0 = new OnPreparedListener() {
                    public void onPrepared(MediaPlayer mediaPlayer) {
                        long length = new File(str5).length();
                        int duration = mediaPlayer.getDuration();
                        bundle3.putString(QzonePublish.PUBLISH_TO_QZONE_VIDEO_PATH, str5);
                        bundle3.putInt(QzonePublish.PUBLISH_TO_QZONE_VIDEO_DURATION, duration);
                        bundle3.putLong(QzonePublish.PUBLISH_TO_QZONE_VIDEO_SIZE, length);
                        QzonePublish.this.b(activity3, bundle3, iUiListener3);
                        f.c("openSDK_LOG.QzonePublish", "publishToQzone() --end");
                    }
                };
                mediaPlayer.setOnPreparedListener(r0);
                mediaPlayer.setOnErrorListener(new OnErrorListener() {
                    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                        f.e("openSDK_LOG.QzonePublish", "publishToQzone() mediaplayer onError()");
                        iUiListener2.onError(new UiError(-5, Constants.MSG_PUBLISH_VIDEO_ERROR, null));
                        return false;
                    }
                });
                try {
                    mediaPlayer.setDataSource(string);
                    mediaPlayer.prepareAsync();
                } catch (Exception unused) {
                    f.e(str, "publishToQzone() exception(s) occurred when preparing mediaplayer");
                    iUiListener2.onError(new UiError(-5, str4, null));
                }
            } else {
                iUiListener2.onError(new UiError(-5, Constants.MSG_SHARE_TYPE_ERROR, null));
                f.e(str, "publishToQzone() error--end请选择支持的分享类型");
                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(4), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "publishToQzone() 请选择支持的分享类型");
            }
        }
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00c9  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x010e  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0175  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0198  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x01b2  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x01d5  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x01f8  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x0282  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x02ce  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(android.app.Activity r29, android.os.Bundle r30, com.tencent.tauth.IUiListener r31) {
        /*
            r28 = this;
            r1 = r28
            r0 = r30
            java.lang.String r2 = ""
            java.lang.String r3 = "openSDK_LOG.QzonePublish"
            java.lang.String r4 = "doPublishToQzone() --start"
            com.tencent.open.a.f.c(r3, r4)
            java.lang.StringBuffer r4 = new java.lang.StringBuffer
            java.lang.String r5 = "mqqapi://qzone/publish?src_type=app&version=1&file_type=news"
            r4.<init>(r5)
            java.lang.String r5 = "imageUrl"
            java.util.ArrayList r5 = r0.getStringArrayList(r5)
            java.lang.String r6 = "summary"
            java.lang.String r6 = r0.getString(r6)
            r7 = 3
            java.lang.String r8 = "req_type"
            int r8 = r0.getInt(r8, r7)
            java.lang.String r9 = "appName"
            java.lang.String r9 = r0.getString(r9)
            java.lang.String r10 = "videoPath"
            java.lang.String r10 = r0.getString(r10)
            java.lang.String r11 = "videoDuration"
            int r11 = r0.getInt(r11)
            java.lang.String r12 = "videoSize"
            long r12 = r0.getLong(r12)
            java.lang.String r14 = "extMap"
            android.os.Bundle r0 = r0.getBundle(r14)     // Catch:{ Exception -> 0x008e }
            if (r0 == 0) goto L_0x008b
            java.util.Set r14 = r0.keySet()     // Catch:{ Exception -> 0x008e }
            org.json.JSONObject r15 = new org.json.JSONObject     // Catch:{ Exception -> 0x008e }
            r15.<init>()     // Catch:{ Exception -> 0x008e }
            java.util.Iterator r14 = r14.iterator()     // Catch:{ Exception -> 0x008e }
        L_0x0054:
            boolean r16 = r14.hasNext()     // Catch:{ Exception -> 0x008e }
            if (r16 == 0) goto L_0x007c
            java.lang.Object r16 = r14.next()     // Catch:{ Exception -> 0x008e }
            r7 = r16
            java.lang.String r7 = (java.lang.String) r7     // Catch:{ Exception -> 0x008e }
            java.lang.String r16 = r0.getString(r7)     // Catch:{ Exception -> 0x008e }
            boolean r16 = android.text.TextUtils.isEmpty(r16)     // Catch:{ Exception -> 0x008e }
            if (r16 != 0) goto L_0x0076
            r16 = r2
            java.lang.String r2 = r0.getString(r7)     // Catch:{ Exception -> 0x0089 }
            r15.put(r7, r2)     // Catch:{ Exception -> 0x0089 }
            goto L_0x0078
        L_0x0076:
            r16 = r2
        L_0x0078:
            r2 = r16
            r7 = 3
            goto L_0x0054
        L_0x007c:
            r16 = r2
            int r0 = r15.length()     // Catch:{ Exception -> 0x0089 }
            if (r0 <= 0) goto L_0x0096
            java.lang.String r2 = r15.toString()     // Catch:{ Exception -> 0x0089 }
            goto L_0x0098
        L_0x0089:
            r0 = move-exception
            goto L_0x0091
        L_0x008b:
            r16 = r2
            goto L_0x0096
        L_0x008e:
            r0 = move-exception
            r16 = r2
        L_0x0091:
            java.lang.String r2 = "publishToQzone()  --error parse extmap"
            com.tencent.open.a.f.b(r3, r2, r0)
        L_0x0096:
            r2 = r16
        L_0x0098:
            com.tencent.connect.auth.QQToken r0 = r1.b
            java.lang.String r0 = r0.getAppId()
            com.tencent.connect.auth.QQToken r7 = r1.b
            java.lang.String r7 = r7.getOpenId()
            java.lang.StringBuilder r14 = new java.lang.StringBuilder
            r14.<init>()
            java.lang.String r15 = "openId:"
            r14.append(r15)
            r14.append(r7)
            java.lang.String r14 = r14.toString()
            com.tencent.open.a.f.a(r3, r14)
            r14 = 3
            if (r14 != r8) goto L_0x010b
            if (r5 == 0) goto L_0x010b
            java.lang.StringBuffer r14 = new java.lang.StringBuffer
            r14.<init>()
            int r15 = r5.size()
            r1 = 0
        L_0x00c7:
            if (r1 >= r15) goto L_0x00e6
            java.lang.Object r16 = r5.get(r1)
            java.lang.String r16 = (java.lang.String) r16
            r17 = r5
            java.lang.String r5 = java.net.URLEncoder.encode(r16)
            r14.append(r5)
            int r5 = r15 + -1
            if (r1 == r5) goto L_0x00e1
            java.lang.String r5 = ";"
            r14.append(r5)
        L_0x00e1:
            int r1 = r1 + 1
            r5 = r17
            goto L_0x00c7
        L_0x00e6:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r5 = "&image_url="
            r1.append(r5)
            java.lang.String r5 = r14.toString()
            byte[] r5 = com.tencent.open.utils.k.i(r5)
            r14 = 2
            java.lang.String r5 = android.util.Base64.encodeToString(r5, r14)
            r1.append(r5)
            java.lang.String r1 = r1.toString()
            r4.append(r1)
            java.lang.String r1 = "7"
            r16 = r1
        L_0x010b:
            r1 = 4
            if (r1 != r8) goto L_0x016d
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r14 = "&videoPath="
            r5.append(r14)
            byte[] r10 = com.tencent.open.utils.k.i(r10)
            r14 = 2
            java.lang.String r10 = android.util.Base64.encodeToString(r10, r14)
            r5.append(r10)
            java.lang.String r5 = r5.toString()
            r4.append(r5)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r10 = "&videoDuration="
            r5.append(r10)
            java.lang.String r10 = java.lang.String.valueOf(r11)
            byte[] r10 = com.tencent.open.utils.k.i(r10)
            java.lang.String r10 = android.util.Base64.encodeToString(r10, r14)
            r5.append(r10)
            java.lang.String r5 = r5.toString()
            r4.append(r5)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r10 = "&videoSize="
            r5.append(r10)
            java.lang.String r10 = java.lang.String.valueOf(r12)
            byte[] r10 = com.tencent.open.utils.k.i(r10)
            java.lang.String r10 = android.util.Base64.encodeToString(r10, r14)
            r5.append(r10)
            java.lang.String r5 = r5.toString()
            r4.append(r5)
            java.lang.String r16 = "8"
        L_0x016d:
            r24 = r16
            boolean r5 = android.text.TextUtils.isEmpty(r6)
            if (r5 != 0) goto L_0x0192
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r10 = "&description="
            r5.append(r10)
            byte[] r6 = com.tencent.open.utils.k.i(r6)
            r10 = 2
            java.lang.String r6 = android.util.Base64.encodeToString(r6, r10)
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            r4.append(r5)
        L_0x0192:
            boolean r5 = android.text.TextUtils.isEmpty(r0)
            if (r5 != 0) goto L_0x01ac
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "&share_id="
            r5.append(r6)
            r5.append(r0)
            java.lang.String r0 = r5.toString()
            r4.append(r0)
        L_0x01ac:
            boolean r0 = android.text.TextUtils.isEmpty(r9)
            if (r0 != 0) goto L_0x01cf
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r5 = "&app_name="
            r0.append(r5)
            byte[] r5 = com.tencent.open.utils.k.i(r9)
            r6 = 2
            java.lang.String r5 = android.util.Base64.encodeToString(r5, r6)
            r0.append(r5)
            java.lang.String r0 = r0.toString()
            r4.append(r0)
        L_0x01cf:
            boolean r0 = com.tencent.open.utils.k.e(r7)
            if (r0 != 0) goto L_0x01f2
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r5 = "&open_id="
            r0.append(r5)
            byte[] r5 = com.tencent.open.utils.k.i(r7)
            r6 = 2
            java.lang.String r5 = android.util.Base64.encodeToString(r5, r6)
            r0.append(r5)
            java.lang.String r0 = r0.toString()
            r4.append(r0)
        L_0x01f2:
            boolean r0 = android.text.TextUtils.isEmpty(r2)
            if (r0 != 0) goto L_0x0215
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r5 = "&share_qzone_ext_str="
            r0.append(r5)
            byte[] r2 = com.tencent.open.utils.k.i(r2)
            r5 = 2
            java.lang.String r2 = android.util.Base64.encodeToString(r2, r5)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r4.append(r0)
        L_0x0215:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "&req_type="
            r0.append(r2)
            java.lang.String r2 = java.lang.String.valueOf(r8)
            byte[] r2 = com.tencent.open.utils.k.i(r2)
            r5 = 2
            java.lang.String r2 = android.util.Base64.encodeToString(r2, r5)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r4.append(r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "doPublishToQzone, url: "
            r0.append(r2)
            java.lang.String r2 = r4.toString()
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            com.tencent.open.a.f.a(r3, r0)
            android.content.Context r0 = com.tencent.open.utils.e.a()
            r2 = r28
            com.tencent.connect.auth.QQToken r5 = r2.b
            java.lang.String r6 = "shareToNativeQQ"
            java.lang.String[] r6 = new java.lang.String[]{r6}
            java.lang.String r7 = "requireApi"
            com.tencent.connect.a.a.a(r0, r5, r7, r6)
            android.content.Intent r0 = new android.content.Intent
            java.lang.String r5 = "android.intent.action.VIEW"
            r0.<init>(r5)
            java.lang.String r4 = r4.toString()
            android.net.Uri r4 = android.net.Uri.parse(r4)
            r0.setData(r4)
            java.lang.String r4 = r29.getPackageName()
            java.lang.String r5 = "pkg_name"
            r0.putExtra(r5, r4)
            boolean r4 = r2.a(r0)
            if (r4 == 0) goto L_0x02ce
            r3 = 10104(0x2778, float:1.4159E-41)
            r4 = r29
            r5 = 0
            r2.a(r4, r3, r0, r5)
            com.tencent.open.b.d r6 = com.tencent.open.b.d.a()
            r7 = 0
            com.tencent.connect.auth.QQToken r0 = r2.b
            java.lang.String r10 = r0.getAppId()
            java.lang.String r11 = java.lang.String.valueOf(r1)
            long r0 = android.os.SystemClock.elapsedRealtime()
            java.lang.Long r12 = java.lang.Long.valueOf(r0)
            r13 = 0
            r14 = 1
            java.lang.String r8 = "SHARE_CHECK_SDK"
            java.lang.String r9 = "1000"
            java.lang.String r15 = "hasActivityForIntent success"
            r6.a(r7, r8, r9, r10, r11, r12, r13, r14, r15)
            com.tencent.open.b.d r17 = com.tencent.open.b.d.a()
            com.tencent.connect.auth.QQToken r0 = r2.b
            java.lang.String r18 = r0.getOpenId()
            com.tencent.connect.auth.QQToken r0 = r2.b
            java.lang.String r19 = r0.getAppId()
            java.lang.String r20 = "ANDROIDQQ.SHARETOQZ.XX"
            java.lang.String r21 = "11"
            java.lang.String r22 = "3"
            java.lang.String r23 = "1"
            java.lang.String r25 = "0"
            java.lang.String r26 = "1"
            java.lang.String r27 = "0"
            r17.a(r18, r19, r20, r21, r22, r23, r24, r25, r26, r27)
            goto L_0x0316
        L_0x02ce:
            java.lang.String r0 = "doPublishToQzone() target activity not found"
            com.tencent.open.a.f.e(r3, r0)
            com.tencent.open.b.d r4 = com.tencent.open.b.d.a()
            r5 = 1
            com.tencent.connect.auth.QQToken r0 = r2.b
            java.lang.String r8 = r0.getAppId()
            java.lang.String r9 = java.lang.String.valueOf(r1)
            long r0 = android.os.SystemClock.elapsedRealtime()
            java.lang.Long r10 = java.lang.Long.valueOf(r0)
            r11 = 0
            r12 = 1
            java.lang.String r6 = "SHARE_CHECK_SDK"
            java.lang.String r7 = "1000"
            java.lang.String r13 = "hasActivityForIntent fail"
            r4.a(r5, r6, r7, r8, r9, r10, r11, r12, r13)
            com.tencent.open.b.d r17 = com.tencent.open.b.d.a()
            com.tencent.connect.auth.QQToken r0 = r2.b
            java.lang.String r18 = r0.getOpenId()
            com.tencent.connect.auth.QQToken r0 = r2.b
            java.lang.String r19 = r0.getAppId()
            java.lang.String r20 = "ANDROIDQQ.SHARETOQZ.XX"
            java.lang.String r21 = "11"
            java.lang.String r22 = "3"
            java.lang.String r23 = "1"
            java.lang.String r25 = "0"
            java.lang.String r26 = "1"
            java.lang.String r27 = "0"
            r17.a(r18, r19, r20, r21, r22, r23, r24, r25, r26, r27)
        L_0x0316:
            java.lang.String r0 = "openSDK_LOG"
            java.lang.String r1 = "doPublishToQzone() --end"
            com.tencent.open.a.f.c(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.connect.share.QzonePublish.b(android.app.Activity, android.os.Bundle, com.tencent.tauth.IUiListener):void");
    }
}
