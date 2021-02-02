package com.tencent.connect.share;

import android.content.Context;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.BaseApi;

/* compiled from: ProGuard */
public class QzoneShare extends BaseApi {
    public static final String SHARE_TO_QQ_APP_NAME = "appName";
    public static final String SHARE_TO_QQ_AUDIO_URL = "audio_url";
    public static final String SHARE_TO_QQ_EXT_INT = "cflag";
    public static final String SHARE_TO_QQ_EXT_STR = "share_qq_ext_str";
    public static final String SHARE_TO_QQ_IMAGE_LOCAL_URL = "imageLocalUrl";
    public static final String SHARE_TO_QQ_IMAGE_URL = "imageUrl";
    public static final String SHARE_TO_QQ_SITE = "site";
    public static final String SHARE_TO_QQ_SUMMARY = "summary";
    public static final String SHARE_TO_QQ_TARGET_URL = "targetUrl";
    public static final String SHARE_TO_QQ_TITLE = "title";
    public static final String SHARE_TO_QZONE_EXTMAP = "extMap";
    public static final String SHARE_TO_QZONE_KEY_TYPE = "req_type";
    public static final int SHARE_TO_QZONE_TYPE_APP = 6;
    public static final int SHARE_TO_QZONE_TYPE_IMAGE = 5;
    public static final int SHARE_TO_QZONE_TYPE_IMAGE_TEXT = 1;
    public static final int SHARE_TO_QZONE_TYPE_NO_TYPE = 0;
    private boolean c = true;
    private boolean d = false;
    private boolean e = false;
    private boolean f = false;
    public String mViaShareQzoneType = "";

    public void releaseResource() {
    }

    public QzoneShare(Context context, QQToken qQToken) {
        super(qQToken);
    }

    /* JADX WARNING: Removed duplicated region for block: B:103:0x035e  */
    /* JADX WARNING: Removed duplicated region for block: B:107:0x039e  */
    /* JADX WARNING: Removed duplicated region for block: B:108:0x03ad  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x00b1  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x00b7  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0191  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x01e5  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x0267  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x026e  */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x02e7  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void shareToQzone(android.app.Activity r29, android.os.Bundle r30, com.tencent.tauth.IUiListener r31) {
        /*
            r28 = this;
            r0 = r28
            r2 = r29
            r1 = r30
            r3 = r31
            java.lang.String r7 = "openSDK_LOG.QzoneShare"
            java.lang.String r4 = "shareToQzone() -- start"
            com.tencent.open.a.f.c(r7, r4)
            r4 = -6
            r5 = 4
            r6 = 0
            if (r1 != 0) goto L_0x0047
            com.tencent.tauth.UiError r1 = new com.tencent.tauth.UiError
            java.lang.String r2 = "传入参数不可以为空"
            r1.<init>(r4, r2, r6)
            r3.onError(r1)
            java.lang.String r1 = "shareToQzone() params is null"
            com.tencent.open.a.f.e(r7, r1)
            com.tencent.open.b.d r8 = com.tencent.open.b.d.a()
            r9 = 1
            com.tencent.connect.auth.QQToken r1 = r0.b
            java.lang.String r12 = r1.getAppId()
            java.lang.String r13 = java.lang.String.valueOf(r5)
            long r1 = android.os.SystemClock.elapsedRealtime()
            java.lang.Long r14 = java.lang.Long.valueOf(r1)
            r15 = 0
            r16 = 1
            java.lang.String r10 = "SHARE_CHECK_SDK"
            java.lang.String r11 = "1000"
            java.lang.String r17 = "传入参数不可以为空"
            r8.a(r9, r10, r11, r12, r13, r14, r15, r16, r17)
            return
        L_0x0047:
            java.lang.String r8 = "title"
            java.lang.String r9 = r1.getString(r8)
            java.lang.String r10 = "summary"
            java.lang.String r11 = r1.getString(r10)
            java.lang.String r12 = "targetUrl"
            java.lang.String r13 = r1.getString(r12)
            java.lang.String r14 = "imageUrl"
            java.util.ArrayList r15 = r1.getStringArrayList(r14)
            java.lang.String r4 = com.tencent.open.utils.k.a(r29)
            java.lang.String r5 = "appName"
            if (r4 != 0) goto L_0x006e
            java.lang.String r4 = r1.getString(r5)
            r20 = r13
            goto L_0x0091
        L_0x006e:
            int r6 = r4.length()
            r20 = r13
            r13 = 20
            if (r6 <= r13) goto L_0x0091
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r21 = r14
            r14 = 0
            java.lang.String r4 = r4.substring(r14, r13)
            r6.append(r4)
            java.lang.String r4 = "..."
            r6.append(r4)
            java.lang.String r4 = r6.toString()
            goto L_0x0093
        L_0x0091:
            r21 = r14
        L_0x0093:
            java.lang.String r6 = "req_type"
            int r6 = r1.getInt(r6)
            r13 = 5
            r14 = 1
            if (r6 == r14) goto L_0x00b1
            if (r6 == r13) goto L_0x00ac
            r13 = 6
            if (r6 == r13) goto L_0x00a7
            java.lang.String r13 = "1"
            r0.mViaShareQzoneType = r13
            goto L_0x00b5
        L_0x00a7:
            java.lang.String r13 = "4"
            r0.mViaShareQzoneType = r13
            goto L_0x00b5
        L_0x00ac:
            java.lang.String r13 = "2"
            r0.mViaShareQzoneType = r13
            goto L_0x00b5
        L_0x00b1:
            java.lang.String r13 = "1"
            r0.mViaShareQzoneType = r13
        L_0x00b5:
            if (r6 == r14) goto L_0x0191
            r13 = 5
            if (r6 == r13) goto L_0x0159
            r13 = 6
            if (r6 == r13) goto L_0x00f9
            boolean r12 = com.tencent.open.utils.k.e(r9)
            if (r12 == 0) goto L_0x00ee
            boolean r12 = com.tencent.open.utils.k.e(r11)
            if (r12 == 0) goto L_0x00ee
            if (r15 == 0) goto L_0x00d5
            int r12 = r15.size()
            if (r12 == 0) goto L_0x00d5
            r12 = 0
            r0.c = r12
            goto L_0x00f0
        L_0x00d5:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r12 = "来自"
            r9.append(r12)
            r9.append(r4)
            java.lang.String r12 = "的分享"
            r9.append(r12)
            java.lang.String r9 = r9.toString()
            r0.c = r14
            goto L_0x00f0
        L_0x00ee:
            r0.c = r14
        L_0x00f0:
            r12 = 0
            r0.d = r12
            r0.e = r14
            r0.f = r12
            goto L_0x019b
        L_0x00f9:
            java.lang.String r13 = "5.0.0"
            boolean r13 = com.tencent.open.utils.k.g(r2, r13)
            if (r13 == 0) goto L_0x013a
            com.tencent.tauth.UiError r1 = new com.tencent.tauth.UiError
            r2 = -15
            java.lang.String r4 = "手Q版本过低，应用分享只支持手Q5.0及其以上版本"
            r5 = 0
            r1.<init>(r2, r4, r5)
            r3.onError(r1)
            java.lang.String r1 = "-->shareToQzone, app share is not support below qq5.0."
            com.tencent.open.a.f.e(r7, r1)
            com.tencent.open.b.d r18 = com.tencent.open.b.d.a()
            r19 = 1
            com.tencent.connect.auth.QQToken r1 = r0.b
            java.lang.String r22 = r1.getAppId()
            r1 = 4
            java.lang.String r23 = java.lang.String.valueOf(r1)
            long r1 = android.os.SystemClock.elapsedRealtime()
            java.lang.Long r24 = java.lang.Long.valueOf(r1)
            r25 = 0
            r26 = 1
            java.lang.String r20 = "SHARE_CHECK_SDK"
            java.lang.String r21 = "1000"
            java.lang.String r27 = "shareToQzone, app share is not support below qq5.0."
            r18.a(r19, r20, r21, r22, r23, r24, r25, r26, r27)
            return
        L_0x013a:
            r13 = 2
            java.lang.Object[] r13 = new java.lang.Object[r13]
            com.tencent.connect.auth.QQToken r14 = r0.b
            java.lang.String r14 = r14.getAppId()
            r19 = 0
            r13[r19] = r14
            java.lang.String r14 = "mqq"
            r20 = 1
            r13[r20] = r14
            java.lang.String r14 = "http://fusion.qq.com/cgi-bin/qzapps/unified_jump?appid=%1$s&from=%2$s&isOpenAppID=1"
            java.lang.String r13 = java.lang.String.format(r14, r13)
            r1.putString(r12, r13)
            r20 = r13
            goto L_0x019b
        L_0x0159:
            com.tencent.tauth.UiError r1 = new com.tencent.tauth.UiError
            java.lang.String r2 = "请选择支持的分享类型"
            r4 = -5
            r5 = 0
            r1.<init>(r4, r2, r5)
            r3.onError(r1)
            java.lang.String r1 = "shareToQzone() error--end请选择支持的分享类型"
            com.tencent.open.a.f.e(r7, r1)
            com.tencent.open.b.d r18 = com.tencent.open.b.d.a()
            r19 = 1
            com.tencent.connect.auth.QQToken r1 = r0.b
            java.lang.String r22 = r1.getAppId()
            r1 = 4
            java.lang.String r23 = java.lang.String.valueOf(r1)
            long r1 = android.os.SystemClock.elapsedRealtime()
            java.lang.Long r24 = java.lang.Long.valueOf(r1)
            r25 = 0
            r26 = 1
            java.lang.String r20 = "SHARE_CHECK_SDK"
            java.lang.String r21 = "1000"
            java.lang.String r27 = "shareToQzone() 请选择支持的分享类型"
            r18.a(r19, r20, r21, r22, r23, r24, r25, r26, r27)
            return
        L_0x0191:
            r12 = 1
            r0.c = r12
            r13 = 0
            r0.d = r13
            r0.e = r12
            r0.f = r13
        L_0x019b:
            boolean r12 = com.tencent.open.utils.k.b()
            if (r12 != 0) goto L_0x01e1
            java.lang.String r12 = "4.5.0"
            boolean r12 = com.tencent.open.utils.k.g(r2, r12)
            if (r12 == 0) goto L_0x01e1
            com.tencent.tauth.UiError r1 = new com.tencent.tauth.UiError
            java.lang.String r2 = "分享图片失败，检测不到SD卡!"
            r4 = -6
            r5 = 0
            r1.<init>(r4, r2, r5)
            r3.onError(r1)
            java.lang.String r1 = "shareToQzone() sdcard is null--end"
            com.tencent.open.a.f.e(r7, r1)
            com.tencent.open.b.d r18 = com.tencent.open.b.d.a()
            r19 = 1
            com.tencent.connect.auth.QQToken r1 = r0.b
            java.lang.String r22 = r1.getAppId()
            r1 = 4
            java.lang.String r23 = java.lang.String.valueOf(r1)
            long r1 = android.os.SystemClock.elapsedRealtime()
            java.lang.Long r24 = java.lang.Long.valueOf(r1)
            r25 = 0
            r26 = 1
            java.lang.String r20 = "SHARE_CHECK_SDK"
            java.lang.String r21 = "1000"
            java.lang.String r27 = "分享图片失败，检测不到SD卡!"
            r18.a(r19, r20, r21, r22, r23, r24, r25, r26, r27)
            return
        L_0x01e1:
            boolean r12 = r0.c
            if (r12 == 0) goto L_0x0261
            boolean r12 = android.text.TextUtils.isEmpty(r20)
            if (r12 == 0) goto L_0x0223
            com.tencent.tauth.UiError r1 = new com.tencent.tauth.UiError
            java.lang.String r2 = "targetUrl为必填项，请补充后分享"
            r4 = -5
            r5 = 0
            r1.<init>(r4, r2, r5)
            r3.onError(r1)
            java.lang.String r1 = "shareToQzone() targetUrl null error--end"
            com.tencent.open.a.f.e(r7, r1)
            com.tencent.open.b.d r18 = com.tencent.open.b.d.a()
            r19 = 1
            com.tencent.connect.auth.QQToken r1 = r0.b
            java.lang.String r22 = r1.getAppId()
            r1 = 4
            java.lang.String r23 = java.lang.String.valueOf(r1)
            long r1 = android.os.SystemClock.elapsedRealtime()
            java.lang.Long r24 = java.lang.Long.valueOf(r1)
            r25 = 0
            r26 = 1
            java.lang.String r20 = "SHARE_CHECK_SDK"
            java.lang.String r21 = "1000"
            java.lang.String r27 = "targetUrl为必填项，请补充后分享"
            r18.a(r19, r20, r21, r22, r23, r24, r25, r26, r27)
            return
        L_0x0223:
            boolean r12 = com.tencent.open.utils.k.g(r20)
            if (r12 != 0) goto L_0x0261
            com.tencent.tauth.UiError r1 = new com.tencent.tauth.UiError
            java.lang.String r2 = "targetUrl有误"
            r4 = -5
            r5 = 0
            r1.<init>(r4, r2, r5)
            r3.onError(r1)
            java.lang.String r1 = "shareToQzone() targetUrl error--end"
            com.tencent.open.a.f.e(r7, r1)
            com.tencent.open.b.d r18 = com.tencent.open.b.d.a()
            r19 = 1
            com.tencent.connect.auth.QQToken r1 = r0.b
            java.lang.String r22 = r1.getAppId()
            r1 = 4
            java.lang.String r23 = java.lang.String.valueOf(r1)
            long r1 = android.os.SystemClock.elapsedRealtime()
            java.lang.Long r24 = java.lang.Long.valueOf(r1)
            r25 = 0
            r26 = 1
            java.lang.String r20 = "SHARE_CHECK_SDK"
            java.lang.String r21 = "1000"
            java.lang.String r27 = "targetUrl有误"
            r18.a(r19, r20, r21, r22, r23, r24, r25, r26, r27)
            return
        L_0x0261:
            boolean r12 = r0.d
            java.lang.String r13 = ""
            if (r12 == 0) goto L_0x026e
            r1.putString(r8, r13)
            r1.putString(r10, r13)
            goto L_0x02e1
        L_0x026e:
            boolean r12 = r0.e
            if (r12 == 0) goto L_0x02b0
            boolean r12 = com.tencent.open.utils.k.e(r9)
            if (r12 == 0) goto L_0x02b0
            com.tencent.tauth.UiError r1 = new com.tencent.tauth.UiError
            java.lang.String r2 = "title不能为空!"
            r4 = -6
            r5 = 0
            r1.<init>(r4, r2, r5)
            r3.onError(r1)
            java.lang.String r1 = "shareToQzone() title is null--end"
            com.tencent.open.a.f.e(r7, r1)
            com.tencent.open.b.d r18 = com.tencent.open.b.d.a()
            r19 = 1
            com.tencent.connect.auth.QQToken r1 = r0.b
            java.lang.String r22 = r1.getAppId()
            r1 = 4
            java.lang.String r23 = java.lang.String.valueOf(r1)
            long r1 = android.os.SystemClock.elapsedRealtime()
            java.lang.Long r24 = java.lang.Long.valueOf(r1)
            r25 = 0
            r26 = 1
            java.lang.String r20 = "SHARE_CHECK_SDK"
            java.lang.String r21 = "1000"
            java.lang.String r27 = "shareToQzone() title is null"
            r18.a(r19, r20, r21, r22, r23, r24, r25, r26, r27)
            return
        L_0x02b0:
            boolean r12 = com.tencent.open.utils.k.e(r9)
            if (r12 != 0) goto L_0x02c9
            int r12 = r9.length()
            r14 = 200(0xc8, float:2.8E-43)
            if (r12 <= r14) goto L_0x02c9
            r12 = 200(0xc8, float:2.8E-43)
            r14 = 0
            java.lang.String r9 = com.tencent.open.utils.k.a(r9, r12, r14, r14)
            r1.putString(r8, r9)
            goto L_0x02ca
        L_0x02c9:
            r14 = 0
        L_0x02ca:
            boolean r8 = com.tencent.open.utils.k.e(r11)
            if (r8 != 0) goto L_0x02e1
            int r8 = r11.length()
            r9 = 600(0x258, float:8.41E-43)
            if (r8 <= r9) goto L_0x02e1
            r8 = 600(0x258, float:8.41E-43)
            java.lang.String r8 = com.tencent.open.utils.k.a(r11, r8, r14, r14)
            r1.putString(r10, r8)
        L_0x02e1:
            boolean r8 = android.text.TextUtils.isEmpty(r4)
            if (r8 != 0) goto L_0x02ea
            r1.putString(r5, r4)
        L_0x02ea:
            if (r15 == 0) goto L_0x035a
            if (r15 == 0) goto L_0x02f5
            int r4 = r15.size()
            if (r4 != 0) goto L_0x02f5
            goto L_0x035a
        L_0x02f5:
            r4 = 0
        L_0x02f6:
            int r5 = r15.size()
            if (r4 >= r5) goto L_0x0316
            java.lang.Object r5 = r15.get(r4)
            java.lang.String r5 = (java.lang.String) r5
            boolean r8 = com.tencent.open.utils.k.g(r5)
            if (r8 != 0) goto L_0x0313
            boolean r5 = com.tencent.open.utils.k.h(r5)
            if (r5 != 0) goto L_0x0313
            r15.remove(r4)
            int r4 = r4 + -1
        L_0x0313:
            r5 = 1
            int r4 = r4 + r5
            goto L_0x02f6
        L_0x0316:
            int r4 = r15.size()
            if (r4 != 0) goto L_0x0354
            com.tencent.tauth.UiError r1 = new com.tencent.tauth.UiError
            java.lang.String r2 = "非法的图片地址!"
            r4 = -6
            r5 = 0
            r1.<init>(r4, r2, r5)
            r3.onError(r1)
            java.lang.String r1 = "shareToQzone() MSG_PARAM_IMAGE_URL_FORMAT_ERROR--end"
            com.tencent.open.a.f.e(r7, r1)
            com.tencent.open.b.d r18 = com.tencent.open.b.d.a()
            r19 = 1
            com.tencent.connect.auth.QQToken r1 = r0.b
            java.lang.String r22 = r1.getAppId()
            r1 = 4
            java.lang.String r23 = java.lang.String.valueOf(r1)
            long r1 = android.os.SystemClock.elapsedRealtime()
            java.lang.Long r24 = java.lang.Long.valueOf(r1)
            r25 = 0
            r26 = 1
            java.lang.String r20 = "SHARE_CHECK_SDK"
            java.lang.String r21 = "1000"
            java.lang.String r27 = "shareToQzone() 非法的图片地址!"
            r18.a(r19, r20, r21, r22, r23, r24, r25, r26, r27)
            return
        L_0x0354:
            r4 = r21
            r1.putStringArrayList(r4, r15)
            goto L_0x0396
        L_0x035a:
            boolean r4 = r0.f
            if (r4 == 0) goto L_0x0396
            com.tencent.tauth.UiError r1 = new com.tencent.tauth.UiError
            java.lang.String r2 = "纯图分享，imageUrl 不能为空"
            r4 = -6
            r5 = 0
            r1.<init>(r4, r2, r5)
            r3.onError(r1)
            java.lang.String r1 = "shareToQzone() imageUrl is null -- end"
            com.tencent.open.a.f.e(r7, r1)
            com.tencent.open.b.d r18 = com.tencent.open.b.d.a()
            r19 = 1
            com.tencent.connect.auth.QQToken r1 = r0.b
            java.lang.String r22 = r1.getAppId()
            r1 = 4
            java.lang.String r23 = java.lang.String.valueOf(r1)
            long r1 = android.os.SystemClock.elapsedRealtime()
            java.lang.Long r24 = java.lang.Long.valueOf(r1)
            r25 = 0
            r26 = 1
            java.lang.String r20 = "SHARE_CHECK_SDK"
            java.lang.String r21 = "1000"
            java.lang.String r27 = "shareToQzone() imageUrl is null"
            r18.a(r19, r20, r21, r22, r23, r24, r25, r26, r27)
            return
        L_0x0396:
            java.lang.String r4 = "4.6.0"
            boolean r4 = com.tencent.open.utils.k.g(r2, r4)
            if (r4 != 0) goto L_0x03ad
            java.lang.String r4 = "shareToQzone() qqver greater than 4.6.0"
            com.tencent.open.a.f.c(r7, r4)
            com.tencent.connect.share.QzoneShare$1 r4 = new com.tencent.connect.share.QzoneShare$1
            r4.<init>(r3, r1, r2)
            com.tencent.connect.share.a.a(r2, r15, r4)
            goto L_0x0449
        L_0x03ad:
            java.lang.String r4 = "4.2.0"
            int r4 = com.tencent.open.utils.h.c(r2, r4)
            if (r4 < 0) goto L_0x0430
            java.lang.String r4 = "4.6.0"
            int r4 = com.tencent.open.utils.h.c(r2, r4)
            if (r4 >= 0) goto L_0x0430
            java.lang.String r4 = "shareToQzone() qqver between 4.2.0 and 4.6.0, will use qqshare"
            com.tencent.open.a.f.d(r7, r4)
            com.tencent.connect.share.QQShare r4 = new com.tencent.connect.share.QQShare
            com.tencent.connect.auth.QQToken r5 = r0.b
            r4.<init>(r2, r5)
            if (r15 == 0) goto L_0x041e
            int r5 = r15.size()
            if (r5 <= 0) goto L_0x041e
            r5 = 0
            java.lang.Object r5 = r15.get(r5)
            java.lang.String r5 = (java.lang.String) r5
            r8 = 5
            if (r6 != r8) goto L_0x0419
            boolean r6 = com.tencent.open.utils.k.h(r5)
            if (r6 != 0) goto L_0x0419
            com.tencent.tauth.UiError r1 = new com.tencent.tauth.UiError
            java.lang.String r2 = "手Q版本过低，纯图分享不支持网路图片"
            r4 = -6
            r5 = 0
            r1.<init>(r4, r2, r5)
            r3.onError(r1)
            java.lang.String r1 = "shareToQzone()手Q版本过低，纯图分享不支持网路图片"
            com.tencent.open.a.f.e(r7, r1)
            com.tencent.open.b.d r18 = com.tencent.open.b.d.a()
            r19 = 1
            com.tencent.connect.auth.QQToken r1 = r0.b
            java.lang.String r22 = r1.getAppId()
            r1 = 4
            java.lang.String r23 = java.lang.String.valueOf(r1)
            long r1 = android.os.SystemClock.elapsedRealtime()
            java.lang.Long r24 = java.lang.Long.valueOf(r1)
            r25 = 0
            r26 = 1
            java.lang.String r20 = "SHARE_CHECK_SDK"
            java.lang.String r21 = "1000"
            java.lang.String r27 = "shareToQzone()手Q版本过低，纯图分享不支持网路图片"
            r18.a(r19, r20, r21, r22, r23, r24, r25, r26, r27)
            return
        L_0x0419:
            java.lang.String r6 = "imageLocalUrl"
            r1.putString(r6, r5)
        L_0x041e:
            java.lang.String r5 = "4.5.0"
            boolean r5 = com.tencent.open.utils.k.g(r2, r5)
            if (r5 != 0) goto L_0x042c
            java.lang.String r5 = "cflag"
            r6 = 1
            r1.putInt(r5, r6)
        L_0x042c:
            r4.shareToQQ(r2, r1, r3)
            goto L_0x0449
        L_0x0430:
            java.lang.String r1 = "shareToQzone() qqver below 4.2.0, will show download dialog"
            com.tencent.open.a.f.d(r7, r1)
            com.tencent.open.TDialog r8 = new com.tencent.open.TDialog
            java.lang.String r4 = r0.a(r13)
            r5 = 0
            com.tencent.connect.auth.QQToken r6 = r0.b
            java.lang.String r3 = ""
            r1 = r8
            r2 = r29
            r1.<init>(r2, r3, r4, r5, r6)
            r8.show()
        L_0x0449:
            java.lang.String r1 = "shareToQzone() --end"
            com.tencent.open.a.f.c(r7, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.connect.share.QzoneShare.shareToQzone(android.app.Activity, android.os.Bundle, com.tencent.tauth.IUiListener):void");
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x00bd  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0116  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0139  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x015c  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0176  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0199  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x01bc  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x01df  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x0223  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0245  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x02d1  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x02eb  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x0316  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x035e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(android.app.Activity r25, android.os.Bundle r26, com.tencent.tauth.IUiListener r27) {
        /*
            r24 = this;
            r1 = r24
            r2 = r25
            r0 = r26
            r3 = r27
            java.lang.String r4 = "openSDK_LOG.QzoneShare"
            java.lang.String r5 = "doshareToQzone() --start"
            com.tencent.open.a.f.c(r4, r5)
            java.lang.StringBuffer r5 = new java.lang.StringBuffer
            java.lang.String r6 = "mqqapi://share/to_qzone?src_type=app&version=1&file_type=news"
            r5.<init>(r6)
            java.lang.String r6 = "imageUrl"
            java.util.ArrayList r6 = r0.getStringArrayList(r6)
            java.lang.String r7 = "title"
            java.lang.String r7 = r0.getString(r7)
            java.lang.String r8 = "summary"
            java.lang.String r8 = r0.getString(r8)
            java.lang.String r9 = "targetUrl"
            java.lang.String r9 = r0.getString(r9)
            java.lang.String r10 = "audio_url"
            java.lang.String r10 = r0.getString(r10)
            r11 = 1
            java.lang.String r12 = "req_type"
            int r11 = r0.getInt(r12, r11)
            java.lang.String r12 = "appName"
            java.lang.String r12 = r0.getString(r12)
            r13 = 0
            java.lang.String r14 = "cflag"
            int r14 = r0.getInt(r14, r13)
            java.lang.String r15 = "share_qq_ext_str"
            java.lang.String r15 = r0.getString(r15)
            java.lang.String r16 = ""
            java.lang.String r13 = "extMap"
            android.os.Bundle r0 = r0.getBundle(r13)     // Catch:{ Exception -> 0x0093 }
            if (r0 == 0) goto L_0x0090
            java.util.Set r13 = r0.keySet()     // Catch:{ Exception -> 0x0093 }
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch:{ Exception -> 0x0093 }
            r3.<init>()     // Catch:{ Exception -> 0x0093 }
            java.util.Iterator r18 = r13.iterator()     // Catch:{ Exception -> 0x0093 }
        L_0x0065:
            boolean r19 = r18.hasNext()     // Catch:{ Exception -> 0x0093 }
            if (r19 == 0) goto L_0x0081
            java.lang.Object r19 = r18.next()     // Catch:{ Exception -> 0x0093 }
            r2 = r19
            java.lang.String r2 = (java.lang.String) r2     // Catch:{ Exception -> 0x0093 }
            r19 = r14
            java.lang.Object r14 = r0.get(r2)     // Catch:{ Exception -> 0x008e }
            r3.put(r2, r14)     // Catch:{ Exception -> 0x008e }
            r2 = r25
            r14 = r19
            goto L_0x0065
        L_0x0081:
            r19 = r14
            int r0 = r13.size()     // Catch:{ Exception -> 0x008e }
            if (r0 <= 0) goto L_0x009b
            java.lang.String r16 = r3.toString()     // Catch:{ Exception -> 0x008e }
            goto L_0x009b
        L_0x008e:
            r0 = move-exception
            goto L_0x0096
        L_0x0090:
            r19 = r14
            goto L_0x009b
        L_0x0093:
            r0 = move-exception
            r19 = r14
        L_0x0096:
            java.lang.String r2 = "ShareToQzone()  --error parse extmap"
            com.tencent.open.a.f.b(r4, r2, r0)
        L_0x009b:
            com.tencent.connect.auth.QQToken r0 = r1.b
            java.lang.String r0 = r0.getAppId()
            com.tencent.connect.auth.QQToken r2 = r1.b
            java.lang.String r2 = r2.getOpenId()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r13 = "openId:"
            r3.append(r13)
            r3.append(r2)
            java.lang.String r3 = r3.toString()
            com.tencent.open.a.f.a(r4, r3)
            if (r6 == 0) goto L_0x0110
            java.lang.StringBuffer r13 = new java.lang.StringBuffer
            r13.<init>()
            int r14 = r6.size()
            r3 = 9
            if (r14 <= r3) goto L_0x00cb
            goto L_0x00cf
        L_0x00cb:
            int r3 = r6.size()
        L_0x00cf:
            r14 = 0
        L_0x00d0:
            if (r14 >= r3) goto L_0x00ef
            java.lang.Object r18 = r6.get(r14)
            java.lang.String r18 = (java.lang.String) r18
            r20 = r6
            java.lang.String r6 = java.net.URLEncoder.encode(r18)
            r13.append(r6)
            int r6 = r3 + -1
            if (r14 == r6) goto L_0x00ea
            java.lang.String r6 = ";"
            r13.append(r6)
        L_0x00ea:
            int r14 = r14 + 1
            r6 = r20
            goto L_0x00d0
        L_0x00ef:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r6 = "&image_url="
            r3.append(r6)
            java.lang.String r6 = r13.toString()
            byte[] r6 = com.tencent.open.utils.k.i(r6)
            r13 = 2
            java.lang.String r6 = android.util.Base64.encodeToString(r6, r13)
            r3.append(r6)
            java.lang.String r3 = r3.toString()
            r5.append(r3)
        L_0x0110:
            boolean r3 = android.text.TextUtils.isEmpty(r7)
            if (r3 != 0) goto L_0x0133
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r6 = "&title="
            r3.append(r6)
            byte[] r6 = com.tencent.open.utils.k.i(r7)
            r7 = 2
            java.lang.String r6 = android.util.Base64.encodeToString(r6, r7)
            r3.append(r6)
            java.lang.String r3 = r3.toString()
            r5.append(r3)
        L_0x0133:
            boolean r3 = android.text.TextUtils.isEmpty(r8)
            if (r3 != 0) goto L_0x0156
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r6 = "&description="
            r3.append(r6)
            byte[] r6 = com.tencent.open.utils.k.i(r8)
            r7 = 2
            java.lang.String r6 = android.util.Base64.encodeToString(r6, r7)
            r3.append(r6)
            java.lang.String r3 = r3.toString()
            r5.append(r3)
        L_0x0156:
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 != 0) goto L_0x0170
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r6 = "&share_id="
            r3.append(r6)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r5.append(r0)
        L_0x0170:
            boolean r0 = android.text.TextUtils.isEmpty(r9)
            if (r0 != 0) goto L_0x0193
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = "&url="
            r0.append(r3)
            byte[] r3 = com.tencent.open.utils.k.i(r9)
            r6 = 2
            java.lang.String r3 = android.util.Base64.encodeToString(r3, r6)
            r0.append(r3)
            java.lang.String r0 = r0.toString()
            r5.append(r0)
        L_0x0193:
            boolean r0 = android.text.TextUtils.isEmpty(r12)
            if (r0 != 0) goto L_0x01b6
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = "&app_name="
            r0.append(r3)
            byte[] r3 = com.tencent.open.utils.k.i(r12)
            r6 = 2
            java.lang.String r3 = android.util.Base64.encodeToString(r3, r6)
            r0.append(r3)
            java.lang.String r0 = r0.toString()
            r5.append(r0)
        L_0x01b6:
            boolean r0 = com.tencent.open.utils.k.e(r2)
            if (r0 != 0) goto L_0x01d9
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = "&open_id="
            r0.append(r3)
            byte[] r2 = com.tencent.open.utils.k.i(r2)
            r3 = 2
            java.lang.String r2 = android.util.Base64.encodeToString(r2, r3)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r5.append(r0)
        L_0x01d9:
            boolean r0 = com.tencent.open.utils.k.e(r10)
            if (r0 != 0) goto L_0x01fc
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "&audioUrl="
            r0.append(r2)
            byte[] r2 = com.tencent.open.utils.k.i(r10)
            r3 = 2
            java.lang.String r2 = android.util.Base64.encodeToString(r2, r3)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r5.append(r0)
        L_0x01fc:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "&req_type="
            r0.append(r2)
            java.lang.String r2 = java.lang.String.valueOf(r11)
            byte[] r2 = com.tencent.open.utils.k.i(r2)
            r3 = 2
            java.lang.String r2 = android.util.Base64.encodeToString(r2, r3)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r5.append(r0)
            boolean r0 = com.tencent.open.utils.k.e(r15)
            if (r0 != 0) goto L_0x023f
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "&share_qq_ext_str="
            r0.append(r2)
            byte[] r2 = com.tencent.open.utils.k.i(r15)
            java.lang.String r2 = android.util.Base64.encodeToString(r2, r3)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r5.append(r0)
        L_0x023f:
            boolean r0 = android.text.TextUtils.isEmpty(r16)
            if (r0 != 0) goto L_0x0262
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "&share_qzone_ext_str="
            r0.append(r2)
            byte[] r2 = com.tencent.open.utils.k.i(r16)
            r3 = 2
            java.lang.String r2 = android.util.Base64.encodeToString(r2, r3)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r5.append(r0)
        L_0x0262:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "&cflag="
            r0.append(r2)
            java.lang.String r2 = java.lang.String.valueOf(r19)
            byte[] r2 = com.tencent.open.utils.k.i(r2)
            r3 = 2
            java.lang.String r2 = android.util.Base64.encodeToString(r2, r3)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r5.append(r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "doshareToQzone, url: "
            r0.append(r2)
            java.lang.String r2 = r5.toString()
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            com.tencent.open.a.f.a(r4, r0)
            android.content.Context r0 = com.tencent.open.utils.e.a()
            com.tencent.connect.auth.QQToken r2 = r1.b
            java.lang.String r3 = "shareToNativeQQ"
            java.lang.String[] r3 = new java.lang.String[]{r3}
            java.lang.String r6 = "requireApi"
            com.tencent.connect.a.a.a(r0, r2, r6, r3)
            android.content.Intent r0 = new android.content.Intent
            java.lang.String r2 = "android.intent.action.VIEW"
            r0.<init>(r2)
            java.lang.String r2 = r5.toString()
            android.net.Uri r2 = android.net.Uri.parse(r2)
            r0.setData(r2)
            java.lang.String r2 = r25.getPackageName()
            java.lang.String r3 = "pkg_name"
            r0.putExtra(r3, r2)
            java.lang.String r2 = "4.6.0"
            r3 = r25
            boolean r2 = com.tencent.open.utils.k.g(r3, r2)
            if (r2 == 0) goto L_0x02eb
            boolean r2 = r1.a(r0)
            if (r2 == 0) goto L_0x02e5
            com.tencent.connect.common.UIListenerManager r2 = com.tencent.connect.common.UIListenerManager.getInstance()
            r5 = 11104(0x2b60, float:1.556E-41)
            r6 = r27
            r2.setListenerWithRequestcode(r5, r6)
            r1.a(r3, r0, r5)
        L_0x02e5:
            java.lang.String r2 = "doShareToQzone() -- QQ Version is < 4.6.0"
            com.tencent.open.a.f.c(r4, r2)
            goto L_0x030f
        L_0x02eb:
            r6 = r27
            java.lang.String r2 = "doShareToQzone() -- QQ Version is > 4.6.0"
            com.tencent.open.a.f.c(r4, r2)
            com.tencent.connect.common.UIListenerManager r2 = com.tencent.connect.common.UIListenerManager.getInstance()
            java.lang.String r5 = "shareToQzone"
            java.lang.Object r2 = r2.setListnerWithAction(r5, r6)
            if (r2 == 0) goto L_0x0303
            java.lang.String r2 = "doShareToQzone() -- do listener onCancel()"
            com.tencent.open.a.f.c(r4, r2)
        L_0x0303:
            boolean r2 = r1.a(r0)
            if (r2 == 0) goto L_0x030f
            r2 = 10104(0x2778, float:1.4159E-41)
            r4 = 0
            r1.a(r3, r2, r0, r4)
        L_0x030f:
            boolean r0 = r1.a(r0)
            r2 = 4
            if (r0 == 0) goto L_0x035e
            com.tencent.open.b.d r3 = com.tencent.open.b.d.a()
            com.tencent.connect.auth.QQToken r0 = r1.b
            java.lang.String r4 = r0.getOpenId()
            com.tencent.connect.auth.QQToken r0 = r1.b
            java.lang.String r5 = r0.getAppId()
            java.lang.String r10 = r1.mViaShareQzoneType
            java.lang.String r6 = "ANDROIDQQ.SHARETOQZ.XX"
            java.lang.String r7 = "11"
            java.lang.String r8 = "3"
            java.lang.String r9 = "0"
            java.lang.String r11 = "0"
            java.lang.String r12 = "1"
            java.lang.String r13 = "0"
            r3.a(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            com.tencent.open.b.d r14 = com.tencent.open.b.d.a()
            r15 = 0
            com.tencent.connect.auth.QQToken r0 = r1.b
            java.lang.String r18 = r0.getAppId()
            java.lang.String r19 = java.lang.String.valueOf(r2)
            long r2 = android.os.SystemClock.elapsedRealtime()
            java.lang.Long r20 = java.lang.Long.valueOf(r2)
            r21 = 0
            r22 = 1
            java.lang.String r16 = "SHARE_CHECK_SDK"
            java.lang.String r17 = "1000"
            java.lang.String r23 = ""
            r14.a(r15, r16, r17, r18, r19, r20, r21, r22, r23)
            goto L_0x03a5
        L_0x035e:
            com.tencent.open.b.d r3 = com.tencent.open.b.d.a()
            com.tencent.connect.auth.QQToken r0 = r1.b
            java.lang.String r4 = r0.getOpenId()
            com.tencent.connect.auth.QQToken r0 = r1.b
            java.lang.String r5 = r0.getAppId()
            java.lang.String r10 = r1.mViaShareQzoneType
            java.lang.String r6 = "ANDROIDQQ.SHARETOQZ.XX"
            java.lang.String r7 = "11"
            java.lang.String r8 = "3"
            java.lang.String r9 = "1"
            java.lang.String r11 = "0"
            java.lang.String r12 = "1"
            java.lang.String r13 = "0"
            r3.a(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            com.tencent.open.b.d r14 = com.tencent.open.b.d.a()
            r15 = 1
            com.tencent.connect.auth.QQToken r0 = r1.b
            java.lang.String r18 = r0.getAppId()
            java.lang.String r19 = java.lang.String.valueOf(r2)
            long r2 = android.os.SystemClock.elapsedRealtime()
            java.lang.Long r20 = java.lang.Long.valueOf(r2)
            r21 = 0
            r22 = 1
            java.lang.String r16 = "SHARE_CHECK_SDK"
            java.lang.String r17 = "1000"
            java.lang.String r23 = "hasActivityForIntent fail"
            r14.a(r15, r16, r17, r18, r19, r20, r21, r22, r23)
        L_0x03a5:
            java.lang.String r0 = "openSDK_LOG"
            java.lang.String r2 = "doShareToQzone() --end"
            com.tencent.open.a.f.c(r0, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.connect.share.QzoneShare.b(android.app.Activity, android.os.Bundle, com.tencent.tauth.IUiListener):void");
    }
}
