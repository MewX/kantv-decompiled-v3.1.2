package com.tencent.connect.share;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import com.tencent.connect.a.a;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.BaseApi;
import com.tencent.connect.common.Constants;
import com.tencent.connect.common.UIListenerManager;
import com.tencent.open.TDialog;
import com.tencent.open.a.f;
import com.tencent.open.b.d;
import com.tencent.open.utils.b;
import com.tencent.open.utils.c;
import com.tencent.open.utils.e;
import com.tencent.open.utils.k;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.io.File;
import java.util.ArrayList;

/* compiled from: ProGuard */
public class QQShare extends BaseApi {
    public static final int QQ_SHARE_SUMMARY_MAX_LENGTH = 512;
    public static final int QQ_SHARE_TITLE_MAX_LENGTH = 128;
    public static final String SHARE_TO_QQ_APP_NAME = "appName";
    public static final String SHARE_TO_QQ_ARK_INFO = "share_to_qq_ark_info";
    public static final String SHARE_TO_QQ_AUDIO_URL = "audio_url";
    public static final String SHARE_TO_QQ_EXT_INT = "cflag";
    public static final String SHARE_TO_QQ_EXT_STR = "share_qq_ext_str";
    public static final int SHARE_TO_QQ_FLAG_QZONE_AUTO_OPEN = 1;
    public static final int SHARE_TO_QQ_FLAG_QZONE_ITEM_HIDE = 2;
    public static final String SHARE_TO_QQ_IMAGE_LOCAL_URL = "imageLocalUrl";
    public static final String SHARE_TO_QQ_IMAGE_URL = "imageUrl";
    public static final String SHARE_TO_QQ_KEY_TYPE = "req_type";
    public static final String SHARE_TO_QQ_SITE = "site";
    public static final String SHARE_TO_QQ_SUMMARY = "summary";
    public static final String SHARE_TO_QQ_TARGET_URL = "targetUrl";
    public static final String SHARE_TO_QQ_TITLE = "title";
    public static final int SHARE_TO_QQ_TYPE_APP = 6;
    public static final int SHARE_TO_QQ_TYPE_AUDIO = 2;
    public static final int SHARE_TO_QQ_TYPE_DEFAULT = 1;
    public static final int SHARE_TO_QQ_TYPE_IMAGE = 5;
    public String mViaShareQQType = "";

    public void releaseResource() {
    }

    public QQShare(Context context, QQToken qQToken) {
        super(qQToken);
    }

    public void shareToQQ(Activity activity, Bundle bundle, IUiListener iUiListener) {
        String str;
        Activity activity2 = activity;
        Bundle bundle2 = bundle;
        IUiListener iUiListener2 = iUiListener;
        String str2 = "openSDK_LOG.QQShare";
        f.c(str2, "shareToQQ() -- start.");
        String string = bundle2.getString("imageUrl");
        String str3 = "title";
        String string2 = bundle2.getString(str3);
        String str4 = "summary";
        String string3 = bundle2.getString(str4);
        String str5 = "targetUrl";
        String string4 = bundle2.getString(str5);
        String string5 = bundle2.getString("imageLocalUrl");
        int i = bundle2.getInt("req_type", 1);
        StringBuilder sb = new StringBuilder();
        sb.append("shareToQQ -- type: ");
        sb.append(i);
        f.c(str2, sb.toString());
        if (i == 1) {
            this.mViaShareQQType = "1";
        } else if (i == 2) {
            this.mViaShareQQType = "3";
        } else if (i == 5) {
            this.mViaShareQQType = "2";
        } else if (i == 6) {
            this.mViaShareQQType = "4";
        }
        if (i == 6) {
            if (k.f(activity2, "5.0.0")) {
                iUiListener2.onError(new UiError(-15, Constants.MSG_PARAM_APPSHARE_TOO_LOW, null));
                f.e(str2, "shareToQQ, app share is not support below qq5.0.");
                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQQ, app share is not support below qq5.0.");
                return;
            }
            string4 = String.format("http://fusion.qq.com/cgi-bin/qzapps/unified_jump?appid=%1$s&from=%2$s&isOpenAppID=1", new Object[]{this.b.getAppId(), "mqq"});
            bundle2.putString(str5, string4);
        }
        if (k.b() || !k.f(activity2, "4.5.0")) {
            String str6 = Constants.MSG_PARAM_IMAGE_URL_FORMAT_ERROR;
            if (i == 5) {
                if (k.f(activity2, "4.3.0")) {
                    iUiListener2.onError(new UiError(-6, Constants.MSG_PARAM_QQ_VERSION_ERROR, null));
                    f.e(str2, "shareToQQ, version below 4.3 is not support.");
                    d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQQ, version below 4.3 is not support.");
                    return;
                } else if (!k.h(string5)) {
                    iUiListener2.onError(new UiError(-6, str6, null));
                    f.e(str2, "shareToQQ -- error: 非法的图片地址!");
                    d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_PARAM_IMAGE_URL_FORMAT_ERROR);
                    return;
                }
            }
            String str7 = "https://";
            String str8 = "http://";
            if (i != 5) {
                if (TextUtils.isEmpty(string4) || (!string4.startsWith(str8) && !string4.startsWith(str7))) {
                    iUiListener2.onError(new UiError(-6, Constants.MSG_PARAM_ERROR, null));
                    f.e(str2, "shareToQQ, targetUrl is empty or illegal..");
                    d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQQ, targetUrl is empty or illegal..");
                    return;
                } else if (TextUtils.isEmpty(string2)) {
                    iUiListener2.onError(new UiError(-6, Constants.MSG_PARAM_TITLE_NULL_ERROR, null));
                    f.e(str2, "shareToQQ, title is empty.");
                    d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQQ, title is empty.");
                    return;
                }
            }
            if (TextUtils.isEmpty(string) || string.startsWith(str8) || string.startsWith(str7) || new File(string).exists()) {
                if (TextUtils.isEmpty(string2) || string2.length() <= 128) {
                    str = null;
                } else {
                    str = null;
                    bundle2.putString(str3, k.a(string2, 128, (String) null, (String) null));
                }
                if (!TextUtils.isEmpty(string3) && string3.length() > 512) {
                    bundle2.putString(str4, k.a(string3, 512, str, str));
                }
                boolean z = true;
                if (bundle2.getInt("cflag", 0) != 1) {
                    z = false;
                }
                if (k.a((Context) activity2, z)) {
                    f.c(str2, "shareToQQ, support share");
                    b(activity, bundle, iUiListener);
                } else {
                    try {
                        f.d(str2, "shareToQQ, don't support share, will show download dialog");
                        TDialog tDialog = new TDialog(activity, "", a(""), null, this.b);
                        tDialog.show();
                    } catch (RuntimeException e) {
                        f.b(str2, " shareToQQ, TDialog.show not in main thread", e);
                        e.printStackTrace();
                        iUiListener2.onError(new UiError(-6, Constants.MSG_NOT_CALL_ON_MAIN_THREAD, null));
                    }
                }
                f.c(str2, "shareToQQ() -- end.");
                return;
            }
            iUiListener2.onError(new UiError(-6, str6, null));
            f.e(str2, "shareToQQ, image url is emprty or illegal.");
            d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQQ, image url is emprty or illegal.");
            return;
        }
        iUiListener2.onError(new UiError(-6, Constants.MSG_SHARE_NOSD_ERROR, null));
        f.e(str2, "shareToQQ sdcard is null--end");
        d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQQ sdcard is null");
    }

    private void b(Activity activity, Bundle bundle, IUiListener iUiListener) {
        Activity activity2 = activity;
        Bundle bundle2 = bundle;
        IUiListener iUiListener2 = iUiListener;
        String str = "openSDK_LOG.QQShare";
        f.c(str, "shareToMobileQQ() -- start.");
        String str2 = "imageUrl";
        String string = bundle2.getString(str2);
        final String string2 = bundle2.getString("title");
        final String string3 = bundle2.getString("summary");
        StringBuilder sb = new StringBuilder();
        sb.append("shareToMobileQQ -- imageUrl: ");
        sb.append(string);
        f.a(str, sb.toString());
        if (!TextUtils.isEmpty(string)) {
            String str3 = "4.3.0";
            if (!k.g(string)) {
                bundle2.putString(str2, null);
                if (k.f(activity2, str3)) {
                    f.b(str, "shareToMobileQQ -- QQ Version is < 4.3.0 ");
                    c(activity, bundle, iUiListener);
                } else {
                    f.b(str, "shareToMobileQQ -- QQ Version is > 4.3.0 ");
                    final Bundle bundle3 = bundle;
                    final IUiListener iUiListener3 = iUiListener;
                    final Activity activity3 = activity;
                    AnonymousClass2 r0 = new c() {
                        public void a(int i, ArrayList<String> arrayList) {
                        }

                        public void a(int i, String str) {
                            if (i == 0) {
                                bundle3.putString("imageLocalUrl", str);
                            } else if (TextUtils.isEmpty(string2) && TextUtils.isEmpty(string3)) {
                                IUiListener iUiListener = iUiListener3;
                                if (iUiListener != null) {
                                    iUiListener.onError(new UiError(-6, Constants.MSG_SHARE_GETIMG_ERROR, null));
                                    f.e("openSDK_LOG.QQShare", "shareToMobileQQ -- error: 获取分享图片失败!");
                                }
                                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, QQShare.this.b.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_SHARE_GETIMG_ERROR);
                                return;
                            }
                            QQShare.this.c(activity3, bundle3, iUiListener3);
                        }
                    };
                    a.a((Context) activity2, string, (c) r0);
                }
            } else if (!TextUtils.isEmpty(string2) || !TextUtils.isEmpty(string3)) {
                if (!k.f(activity2, str3)) {
                    c(activity, bundle, iUiListener);
                } else {
                    b bVar = new b(activity2);
                    final Bundle bundle4 = bundle;
                    final IUiListener iUiListener4 = iUiListener;
                    final Activity activity4 = activity;
                    AnonymousClass1 r02 = new c() {
                        public void a(int i, ArrayList<String> arrayList) {
                        }

                        public void a(int i, String str) {
                            if (i == 0) {
                                bundle4.putString("imageLocalUrl", str);
                            } else if (TextUtils.isEmpty(string2) && TextUtils.isEmpty(string3)) {
                                IUiListener iUiListener = iUiListener4;
                                if (iUiListener != null) {
                                    iUiListener.onError(new UiError(-6, Constants.MSG_SHARE_GETIMG_ERROR, null));
                                    f.e("openSDK_LOG.QQShare", "shareToMobileQQ -- error: 获取分享图片失败!");
                                }
                                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, QQShare.this.b.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_SHARE_GETIMG_ERROR);
                                return;
                            }
                            QQShare.this.c(activity4, bundle4, iUiListener4);
                        }
                    };
                    bVar.a(string, (c) r02);
                }
            } else {
                if (iUiListener2 != null) {
                    String str4 = Constants.MSG_SHARE_NOSD_ERROR;
                    iUiListener2.onError(new UiError(-6, str4, null));
                    f.e(str, str4);
                }
                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_SHARE_NOSD_ERROR);
                return;
            }
        } else {
            c(activity, bundle, iUiListener);
        }
        f.c(str, "shareToMobileQQ() -- end");
    }

    /* access modifiers changed from: private */
    public void c(Activity activity, Bundle bundle, IUiListener iUiListener) {
        int i;
        int i2;
        Activity activity2 = activity;
        Bundle bundle2 = bundle;
        IUiListener iUiListener2 = iUiListener;
        String str = "openSDK_LOG.QQShare";
        f.c(str, "doShareToQQ() -- start");
        StringBuffer stringBuffer = new StringBuffer("mqqapi://share/to_fri?src_type=app&version=1&file_type=news");
        String string = bundle2.getString("imageUrl");
        String string2 = bundle2.getString("title");
        String string3 = bundle2.getString("summary");
        String string4 = bundle2.getString("targetUrl");
        String string5 = bundle2.getString("audio_url");
        int i3 = bundle2.getInt("req_type", 1);
        String string6 = bundle2.getString(SHARE_TO_QQ_ARK_INFO);
        int i4 = bundle2.getInt("cflag", 0);
        String string7 = bundle2.getString("share_qq_ext_str");
        String a = k.a((Context) activity);
        if (a == null) {
            a = bundle2.getString("appName");
        }
        String str2 = a;
        String string8 = bundle2.getString("imageLocalUrl");
        String appId = this.b.getAppId();
        String openId = this.b.getOpenId();
        StringBuilder sb = new StringBuilder();
        int i5 = i4;
        sb.append("doShareToQQ -- openid: ");
        sb.append(openId);
        f.a(str, sb.toString());
        if (!TextUtils.isEmpty(string)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("&image_url=");
            sb2.append(Base64.encodeToString(k.i(string), 2));
            stringBuffer.append(sb2.toString());
        }
        if (!TextUtils.isEmpty(string8)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("&file_data=");
            sb3.append(Base64.encodeToString(k.i(string8), 2));
            stringBuffer.append(sb3.toString());
        }
        if (!TextUtils.isEmpty(string2)) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("&title=");
            sb4.append(Base64.encodeToString(k.i(string2), 2));
            stringBuffer.append(sb4.toString());
        }
        if (!TextUtils.isEmpty(string3)) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append("&description=");
            sb5.append(Base64.encodeToString(k.i(string3), 2));
            stringBuffer.append(sb5.toString());
        }
        if (!TextUtils.isEmpty(appId)) {
            StringBuilder sb6 = new StringBuilder();
            sb6.append("&share_id=");
            sb6.append(appId);
            stringBuffer.append(sb6.toString());
        }
        if (!TextUtils.isEmpty(string4)) {
            StringBuilder sb7 = new StringBuilder();
            sb7.append("&url=");
            sb7.append(Base64.encodeToString(k.i(string4), 2));
            stringBuffer.append(sb7.toString());
        }
        if (!TextUtils.isEmpty(str2)) {
            if (str2.length() > 20) {
                StringBuilder sb8 = new StringBuilder();
                sb8.append(str2.substring(0, 20));
                sb8.append("...");
                str2 = sb8.toString();
            }
            StringBuilder sb9 = new StringBuilder();
            sb9.append("&app_name=");
            sb9.append(Base64.encodeToString(k.i(str2), 2));
            stringBuffer.append(sb9.toString());
        }
        if (!TextUtils.isEmpty(openId)) {
            StringBuilder sb10 = new StringBuilder();
            sb10.append("&open_id=");
            sb10.append(Base64.encodeToString(k.i(openId), 2));
            stringBuffer.append(sb10.toString());
        }
        if (!TextUtils.isEmpty(string5)) {
            StringBuilder sb11 = new StringBuilder();
            sb11.append("&audioUrl=");
            sb11.append(Base64.encodeToString(k.i(string5), 2));
            stringBuffer.append(sb11.toString());
        }
        StringBuilder sb12 = new StringBuilder();
        sb12.append("&req_type=");
        sb12.append(Base64.encodeToString(k.i(String.valueOf(i3)), 2));
        stringBuffer.append(sb12.toString());
        if (!TextUtils.isEmpty(string6)) {
            StringBuilder sb13 = new StringBuilder();
            sb13.append("&share_to_qq_ark_info=");
            sb13.append(Base64.encodeToString(k.i(string6), 2));
            stringBuffer.append(sb13.toString());
        }
        if (!TextUtils.isEmpty(string7)) {
            StringBuilder sb14 = new StringBuilder();
            sb14.append("&share_qq_ext_str=");
            sb14.append(Base64.encodeToString(k.i(string7), 2));
            stringBuffer.append(sb14.toString());
        }
        StringBuilder sb15 = new StringBuilder();
        sb15.append("&cflag=");
        sb15.append(Base64.encodeToString(k.i(String.valueOf(i5)), 2));
        stringBuffer.append(sb15.toString());
        StringBuilder sb16 = new StringBuilder();
        sb16.append("doShareToQQ -- url: ");
        sb16.append(stringBuffer.toString());
        f.a(str, sb16.toString());
        a.a(e.a(), this.b, "requireApi", "shareToNativeQQ");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(stringBuffer.toString()));
        intent.putExtra("pkg_name", activity.getPackageName());
        Activity activity3 = activity;
        if (k.f(activity3, "4.6.0")) {
            f.c(str, "doShareToQQ, qqver below 4.6.");
            if (a(intent)) {
                UIListenerManager.getInstance().setListenerWithRequestcode(Constants.REQUEST_OLD_SHARE, iUiListener);
                a(activity3, intent, (int) Constants.REQUEST_OLD_SHARE);
            }
            i2 = i5;
            i = 1;
        } else {
            IUiListener iUiListener3 = iUiListener;
            f.c(str, "doShareToQQ, qqver greater than 4.6.");
            if (UIListenerManager.getInstance().setListnerWithAction("shareToQQ", iUiListener3) != null) {
                f.c(str, "doShareToQQ, last listener is not null, cancel it.");
            }
            if (a(intent)) {
                i = 1;
                a(activity3, Constants.REQUEST_QQ_SHARE, intent, true);
            } else {
                i = 1;
            }
            i2 = i5;
        }
        String str3 = i2 == i ? Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE : Constants.VIA_REPORT_TYPE_SHARE_TO_QQ;
        if (a(intent)) {
            d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_SHARE_TO_QQ, str3, "3", "0", this.mViaShareQQType, "0", "1", "0");
            d.a().a(0, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "");
        } else {
            d.a().a(this.b.getOpenId(), this.b.getAppId(), Constants.VIA_SHARE_TO_QQ, str3, "3", "1", this.mViaShareQQType, "0", "1", "0");
            d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.b.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "hasActivityForIntent fail");
        }
        f.c(str, "doShareToQQ() --end");
    }
}
