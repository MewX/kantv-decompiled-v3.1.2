package com.kantv.ui.viewmodel;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.Toast;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.bean.DanmuBean;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.NotificationsUtils;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.flt_tencent_im.FltTencentImPlugin.ISecretKey.SecretKeyCallBack;
import com.kantv.flt_tencent_im.utils.TUIKitConstants.Selection;
import com.kantv.ui.BuildConfig;
import com.kantv.ui.activity.AccountLoginActivity;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.activity.WebViewActivity;
import com.kantv.ui.activity.WxHaoActivity;
import com.kantv.ui.bean.MineBean;
import com.kantv.ui.bean.MineBean.DataBean;
import com.kantv.ui.bean.MsgCountBean;
import com.kantv.ui.bean.MsgCountBean.InfoCountBean;
import com.kantv.ui.bean.UserInfoBean;
import com.kantv.ui.config.Definition;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.utils.DateUtil;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.view.AlertDialog;
import com.kantv.video.KTVideoPlayer;
import com.tandong.bottomview.view.BottomView;
import debug.KanApplication;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;
import org.msgpack.core.MessagePack;
import org.msgpack.core.MessageUnpacker;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.http.Field;

public class CommonViewModel {
    public static final int MSG_TYPE_NEW = 1;
    public static final int MSG_TYPE_VIDEO = 0;
    public static final String TAG = "CommonViewModel";

    public static void UploadLocation(String str, String str2, String str3) {
        String str4 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("initLocationData hasData:");
        sb.append(str);
        String str5 = ",";
        sb.append(str5);
        sb.append(str2);
        sb.append(str5);
        sb.append(str3);
        AILog.d(str4, sb.toString());
        Map commonMap = getCommonMap();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        String str6 = "";
        sb2.append(str6);
        commonMap.put("lat", sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str2);
        sb3.append(str6);
        commonMap.put("lng", sb3.toString());
        commonMap.put("gps", str3);
        Api.getService().locationIndex(commonMap).enqueue(new CommonCallBack() {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
            }
        });
    }

    public static void checkHadBindEmak(Context context, View view, View view2) {
        if (!TextUtils.isEmpty((String) PreferenceUtil.get(Utils.getContext(), "token", ""))) {
            Call uinfo = Api.getService().uinfo(getCommonMap());
            final Context context2 = context;
            final View view3 = view;
            final View view4 = view2;
            AnonymousClass2 r1 = new CommonCallBack((Activity) context, false) {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                    Context context = context2;
                    if (context != null && !((Activity) context).isFinishing() && !StringUtils.isEmpty(this.json)) {
                        try {
                            MineBean mineBean = (MineBean) new Gson().fromJson(this.json, MineBean.class);
                            if (mineBean != null && mineBean.getStatus() == Integer.parseInt(StatusCode.STATUS_OK)) {
                                DataBean data = mineBean.getData();
                                if (data != null && TextUtils.isEmpty(data.getUserInfo().getMail())) {
                                    view3.setVisibility(0);
                                    if (view4 != null) {
                                        view4.setVisibility(8);
                                    }
                                }
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            };
            uinfo.enqueue(r1);
        }
    }

    public static boolean checkNotification(final Context context, String str, String str2, String str3) {
        boolean isNotificationEnabled = NotificationsUtils.isNotificationEnabled(context);
        if (str3.equals(UserPreference.SEARCH_MUST_OPEN_PUSH) || str3.equals(UserPreference.COLLECT_MUST_OPEN_PUSH)) {
            String str4 = "0";
            if (((String) PreferenceUtil.get(str3, str4)).equals(str4)) {
                return true;
            }
        } else {
            Map commonMap = getCommonMap();
            StringBuilder sb = new StringBuilder();
            sb.append(isNotificationEnabled ? 1 : 0);
            sb.append("");
            commonMap.put("notify", sb.toString());
            Api.getService().uploadNotification(commonMap).enqueue(new CommonCallBack() {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    super.onResponse(call, response);
                }
            });
        }
        if (!isNotificationEnabled) {
            new AlertDialog(context).builder().setTitle(str).setMsg(str2).setNegativeButton("取消", new OnClickListener() {
                public void onClick(View view) {
                }
            }).setPositiveButton("立即开启", new OnClickListener() {
                public void onClick(View view) {
                    Intent intent = new Intent();
                    intent.addFlags(C.ENCODING_PCM_MU_LAW);
                    if (VERSION.SDK_INT >= 9) {
                        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                        intent.setData(Uri.fromParts("package", Utils.getContext().getPackageName(), null));
                    } else if (VERSION.SDK_INT <= 8) {
                        intent.setAction("android.intent.action.VIEW");
                        intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
                        intent.putExtra("com.android.settings.ApplicationPkgName", Utils.getContext().getPackageName());
                    }
                    context.startActivity(intent);
                }
            }).show();
        }
        return isNotificationEnabled;
    }

    public static boolean play_delay(boolean z, KTVideoPlayer kTVideoPlayer, final VideoPlayActivity videoPlayActivity) {
        if (kTVideoPlayer == null || kTVideoPlayer.player == null) {
            AILog.d(TAG, "定时退出没有消费：play：null");
            return false;
        }
        int play_delay_state = kTVideoPlayer.player.getPlay_delay_state();
        int current_play_delay = kTVideoPlayer.player.getCurrent_play_delay();
        int play_delay_state2 = kTVideoPlayer.player.getPlay_delay_state();
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("定时退出当前模式：");
        sb.append(play_delay_state);
        AILog.d(str, sb.toString());
        if (play_delay_state == -1) {
            AILog.d(TAG, "定时退出没有消费：没有开启");
            return false;
        }
        String str2 = ",";
        String str3 = "定时退出没有消费：开启了，但是没到时间 ";
        if (play_delay_state == -2) {
            if (!z) {
                String str4 = TAG;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str3);
                sb2.append(current_play_delay);
                sb2.append(str2);
                sb2.append(play_delay_state);
                AILog.d(str4, sb2.toString());
                return false;
            }
        } else if ((play_delay_state == 30 || play_delay_state == 60) && play_delay_state2 != current_play_delay) {
            String str5 = TAG;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str3);
            sb3.append(current_play_delay);
            sb3.append(str2);
            sb3.append(play_delay_state);
            AILog.d(str5, sb3.toString());
            return false;
        }
        try {
            videoPlayActivity.runOnUiThread(new Runnable() {
                public void run() {
                    if (!videoPlayActivity.isPause) {
                        VideoPlayActivity videoPlayActivity = videoPlayActivity;
                        Toast.makeText(videoPlayActivity, videoPlayActivity.getResources().getString(R.string.play_over_begin), 1).show();
                        videoPlayActivity.finish();
                    }
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }

    public static void initAlertDialog(Context context, String str, String str2, String str3, String str4, OnClickListener onClickListener, OnClickListener onClickListener2) {
        AlertDialog msg = new AlertDialog(context).builder().setTitle(str).setMsg(str2);
        if (onClickListener == null) {
            onClickListener = new OnClickListener() {
                public void onClick(View view) {
                }
            };
        }
        AlertDialog positiveButton = msg.setPositiveButton(str3, onClickListener);
        if (onClickListener2 == null) {
            onClickListener2 = new OnClickListener() {
                public void onClick(View view) {
                }
            };
        }
        positiveButton.setNegativeButton(str4, onClickListener2).show();
    }

    public static void showLoginDialog(final Context context) {
        Context context2 = context;
        initAlertDialog(context2, "提示", "您当前还未登录，是否前往登录？", "确定", "取消", new OnClickListener() {
            public void onClick(View view) {
                context.startActivity(new Intent(context, AccountLoginActivity.class));
            }
        }, null);
    }

    public static void showLoginOfflineDialog(final Context context) {
        Context context2 = context;
        initAlertDialog(context2, "提示", "您的账号已经在另外一台设备上登录，是否重新登录？", "确定", "取消", new OnClickListener() {
            public void onClick(View view) {
                KanApplication.clearLogin();
                context.startActivity(new Intent(context, AccountLoginActivity.class));
            }
        }, null);
    }

    public static void showExitDialog(Context context) {
        Context context2 = context;
        initAlertDialog(context2, "提示", "是否要退出登录？", "确定", "取消", new OnClickListener() {
            public void onClick(View view) {
                KanApplication.exitLogin();
            }
        }, null);
    }

    public static void getAdData() {
        Api.getService().startup(getCommonMap()).enqueue(new CommonCallBack(Utils.getContext(), false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        DateUtil.timeStamp2Date(String.valueOf(System.currentTimeMillis() / 1000), "yyyy-MM-dd");
                        PreferenceUtil.put(Utils.getContext(), UserPreference.AD_DATA, this.json);
                    }
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
            }
        });
    }

    public static void inputUserBean(String str, Context context, String str2, String str3) {
        String str4 = "hometown";
        String str5 = UserPreference.CITY;
        String str6 = UserPreference.PROVINCE;
        String str7 = UserPreference.AREA;
        String str8 = "";
        try {
            Gson gson = new Gson();
            PreferenceUtil.put(Utils.getContext(), UserPreference.USER_INFO, str);
            UserInfoBean userInfoBean = (UserInfoBean) gson.fromJson(str, UserInfoBean.class);
            StringBuilder sb = new StringBuilder();
            sb.append(userInfoBean.getUid());
            sb.append(str8);
            PreferenceUtil.put(Utils.getContext(), "uid", sb.toString());
            PreferenceUtil.put(Utils.getContext(), "ACCOUNTID", str2);
            PreferenceUtil.put(Utils.getContext(), "token", str3);
            PreferenceUtil.put(Utils.getContext(), "Login_State", Boolean.valueOf(true));
            PreferenceUtil.put(Utils.getContext(), UserPreference.MOBILE, userInfoBean.getMobile());
            PreferenceUtil.put(Utils.getContext(), UserPreference.MOBILE_CODE, userInfoBean.getCode());
            PreferenceUtil.put(Utils.getContext(), UserPreference.MAIL, userInfoBean.getMail());
            PreferenceUtil.put(Utils.getContext(), "name", userInfoBean.getName());
            PreferenceUtil.put(Utils.getContext(), UserPreference.SEX, Integer.toString(userInfoBean.getGender()));
            PreferenceUtil.put(Utils.getContext(), "Photo", userInfoBean.getPhoto());
            PreferenceUtil.put(Utils.getContext(), UserPreference.BIRTHDAY, userInfoBean.getBirthday());
            PreferenceUtil.put(Utils.getContext(), UserPreference.ABOUT_ME, userInfoBean.getAboutme());
            PreferenceUtil.put(Utils.getContext(), UserPreference.NAME_TIME, String.valueOf(System.currentTimeMillis() / 1000));
            Context context2 = Utils.getContext();
            String str9 = UserPreference.EDIT_BIRTH;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(userInfoBean.getModify());
            sb2.append(str8);
            PreferenceUtil.put(context2, str9, sb2.toString());
            try {
                JSONObject jsonObject = StringUtils.toJsonObject(str);
                String str10 = "country";
                if (!StringUtils.isJSONKeyAndValueEmpty(jsonObject, str7, new JSONObject())) {
                    if (!StringUtils.isEmpty(jsonObject.optJSONObject(str7).optString(str10))) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("area_code_");
                        sb3.append(jsonObject.optJSONObject(str7).optString(str10));
                        String sb4 = sb3.toString();
                        PreferenceUtil.put(Utils.getContext(), UserPreference.AREA_CODE, sb4);
                        PreferenceUtil.put(Utils.getContext(), str7, context.getResources().getString(context.getResources().getIdentifier(sb4, "string", BuildConfig.APPLICATION_ID)));
                    }
                }
                if (!StringUtils.isJSONKeyAndValueEmpty(jsonObject, str4, new JSONObject())) {
                    JSONObject jSONObject = jsonObject.getJSONObject(str4);
                    if (jSONObject.has(str10)) {
                        Context context3 = Utils.getContext();
                        String str11 = UserPreference.CONTRY;
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append(jSONObject.get(str10));
                        sb5.append(str8);
                        PreferenceUtil.put(context3, str11, sb5.toString());
                    }
                    if (jSONObject.has(str6)) {
                        Context context4 = Utils.getContext();
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append(jSONObject.get(str6));
                        sb6.append(str8);
                        PreferenceUtil.put(context4, str6, sb6.toString());
                    }
                    if (jSONObject.has(str5)) {
                        Context context5 = Utils.getContext();
                        StringBuilder sb7 = new StringBuilder();
                        sb7.append(jSONObject.get(str5));
                        sb7.append(str8);
                        PreferenceUtil.put(context5, str5, sb7.toString());
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (StringUtils.isEmpty((String) PreferenceUtil.get(Utils.getContext(), UserPreference.AREA_DATA, str8))) {
                String bootDomain = Api.getBootDomain();
                StringBuilder sb8 = new StringBuilder();
                sb8.append(bootDomain);
                sb8.append("/area/area.json");
                Api.getService().getAreaJson(sb8.toString()).enqueue(new Callback<ResponseBody>() {
                    public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                        if (response != null) {
                            try {
                                if (response.isSuccessful()) {
                                    PreferenceUtil.put(Utils.getContext(), UserPreference.AREA_DATA, ((ResponseBody) response.body()).string().toString());
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    }

                    public void onFailure(Call<ResponseBody> call, Throwable th) {
                        th.printStackTrace();
                    }
                });
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static Map getUser() {
        HashMap hashMap = new HashMap();
        String str = "";
        UserInfoBean userInfoBean = (UserInfoBean) new Gson().fromJson((String) PreferenceUtil.get(UserPreference.USER_INFO, str), UserInfoBean.class);
        if (userInfoBean == null) {
            return null;
        }
        hashMap.put("code", userInfoBean.getCode());
        hashMap.put("iso_code", userInfoBean.getIso_code());
        hashMap.put(UserPreference.MOBILE, userInfoBean.getMobile());
        StringBuilder sb = new StringBuilder();
        sb.append(userInfoBean.getUid());
        sb.append(str);
        hashMap.put("uid", sb.toString());
        hashMap.put("name", userInfoBean.getName());
        hashMap.put("photo", userInfoBean.getPhoto());
        hashMap.put(UserPreference.BIRTHDAY, userInfoBean.getBirthday());
        hashMap.put(UserPreference.MAIL, userInfoBean.getMail());
        hashMap.put("verify", Integer.valueOf(userInfoBean.getVerify()));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(userInfoBean.getGender());
        sb2.append(str);
        hashMap.put("gender", sb2.toString());
        hashMap.put(UserPreference.ABOUT_ME, userInfoBean.getAboutme());
        hashMap.put(UserPreference.BACKGROUND, userInfoBean.getBackground());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(userInfoBean.getModify());
        sb3.append(str);
        hashMap.put("modify", sb3.toString());
        return hashMap;
    }

    public static void getArea() {
        String str = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.AREA_DATA, "");
        String bootDomain = Api.getBootDomain();
        StringBuilder sb = new StringBuilder();
        sb.append(bootDomain);
        sb.append("/area/area.json");
        Api.getService().getAreaJson(sb.toString()).enqueue(new Callback<ResponseBody>() {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                if (response != null) {
                    try {
                        if (response.isSuccessful()) {
                            PreferenceUtil.put(Utils.getContext(), UserPreference.AREA_DATA, ((ResponseBody) response.body()).string().toString());
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                th.printStackTrace();
            }
        });
    }

    public static Uri startPhotoZoom(Context context, Uri uri, int i) {
        Intent intent = new Intent("com.android.camera.action.CROP");
        intent.setDataAndType(uri, "image/*");
        String str = "noFaceDetection";
        if (VERSION.SDK_INT >= 24) {
            intent.putExtra(str, false);
            intent.addFlags(1);
            intent.addFlags(2);
        }
        intent.putExtra("crop", "true");
        intent.putExtra("aspectX", 1);
        intent.putExtra("aspectY", 1);
        intent.putExtra("outputX", 200);
        intent.putExtra("outputY", 200);
        String str2 = "return-data";
        intent.putExtra(str2, true);
        String str3 = "outputFormat";
        intent.putExtra(str3, CompressFormat.JPEG.toString());
        StringBuilder sb = new StringBuilder();
        sb.append("file://");
        sb.append(context.getExternalCacheDir().getPath());
        sb.append("/crop.jpg");
        Uri parse = Uri.parse(sb.toString());
        File file = new File(parse.getPath());
        if (file.exists()) {
            file.delete();
        }
        intent.putExtra("output", parse);
        intent.putExtra(str3, CompressFormat.JPEG.toString());
        intent.putExtra(str, true);
        intent.putExtra(str2, false);
        intent.putExtra(str3, CompressFormat.JPEG.toString());
        ((Activity) context).startActivityForResult(intent, i);
        return parse;
    }

    public static void tongJiOperate(@Field("type") String str, @Field("tvid") String str2) {
        Map commonMap = getCommonMap();
        commonMap.put("type", str);
        commonMap.put("tvid", str2);
        Api.getService().tongJiOperate(commonMap).enqueue(new CommonCallBack() {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
            }
        });
    }

    public static void tongJiShare(@Field("url") String str, @Field("seo") String str2, @Field("id") String str3) {
        Map commonMap = getCommonMap();
        commonMap.put("url", str);
        commonMap.put("seo", str2);
        commonMap.put("id", str3);
        Api.getService().tongJiShare(commonMap).enqueue(new CommonCallBack() {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
            }
        });
    }

    public static Map<String, String> getCommonMap() {
        HashMap hashMap = new HashMap();
        hashMap.put("noncestr", SignConfig.noncestr);
        hashMap.put("timestamp", SignConfig.timestamp);
        hashMap.put("sbID", SignConfig.sbID);
        hashMap.put("sign", SignConfig.sign);
        StringBuilder sb = new StringBuilder();
        sb.append(Build.BRAND);
        sb.append(" ");
        sb.append(Build.MODEL);
        hashMap.put("device", sb.toString());
        hashMap.put("os", VERSION.RELEASE);
        hashMap.put("app_ver", Utils.getPackageInfo(Utils.getContext()).versionName);
        hashMap.put("interfaceVersion", Utils.interfaceVersion);
        hashMap.put("_token", (String) PreferenceUtil.get(Utils.getContext(), "token", ""));
        return hashMap;
    }

    public static void msgSend(String str, String str2, String str3, CommonCallBack commonCallBack) {
        Map commonMap = getCommonMap();
        commonMap.put("page", str);
        commonMap.put("pageSize", str2);
        commonMap.put("type", str3);
        Api.getService().msgSend(commonMap).enqueue(commonCallBack);
    }

    public static void msgReceive(String str, String str2, String str3, CommonCallBack commonCallBack) {
        Map commonMap = getCommonMap();
        commonMap.put("page", str);
        commonMap.put("pageSize", str2);
        commonMap.put("type", str3);
        Api.getService().msgReceive(commonMap).enqueue(commonCallBack);
    }

    public static void likeReceive(String str, String str2, String str3, CommonCallBack commonCallBack) {
        Map commonMap = getCommonMap();
        commonMap.put("page", str);
        commonMap.put("pageSize", str2);
        commonMap.put("type", str3);
        Api.getService().likeReceive(commonMap).enqueue(commonCallBack);
    }

    public static String getJsonData(Context context, String str) {
        String str2 = "";
        try {
            if (StringUtils.isEmpty(str)) {
                return str2;
            }
            JSONObject jSONObject = new JSONObject(str.replace("null", str2));
            if (jSONObject.getInt("status") == 200) {
                str2 = jSONObject.getString("data");
            } else {
                ToastUtils.show((CharSequence) jSONObject.getString("msg"), 1);
            }
            return str2;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getJsonData(String str) {
        String str2 = "";
        try {
            if (StringUtils.isEmpty(str)) {
                return str2;
            }
            JSONObject jSONObject = new JSONObject(str.replace("null", str2));
            if (jSONObject.getInt("status") == 200) {
                str2 = jSONObject.getString("data");
            } else {
                jSONObject.getString("msg");
            }
            return str2;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static JsonObject getJsonDataWithGson(Context context, String str) {
        JsonObject jsonObject = null;
        try {
            if (StringUtils.isEmpty(str)) {
                return null;
            }
            JsonObject asJsonObject = new JsonParser().parse(str.replace("null", "")).getAsJsonObject();
            if (asJsonObject.get("status").getAsInt() == 200) {
                jsonObject = asJsonObject.get("data").getAsJsonObject();
            } else {
                ToastUtils.show((CharSequence) asJsonObject.get("msg").getAsString(), 1);
            }
            return jsonObject;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static JsonObject getJsonDataWithGson(String str) {
        JsonObject jsonObject = null;
        try {
            if (StringUtils.isEmpty(str)) {
                return null;
            }
            JsonObject asJsonObject = new JsonParser().parse(str.replace("null", "")).getAsJsonObject();
            if (asJsonObject.get("status").getAsInt() == 200) {
                jsonObject = asJsonObject.get("data").getAsJsonObject();
            } else {
                asJsonObject.get("msg").getAsString();
            }
            return jsonObject;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void getMessageCount() {
        Api.getService().getMsgCount(getCommonMap()).enqueue(new CommonCallBack() {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                try {
                    InfoCountBean info_count = ((MsgCountBean) new Gson().fromJson(CommonViewModel.getJsonData(this.json), MsgCountBean.class)).getInfo_count();
                    int new_like = info_count.getNew_like();
                    PreferenceUtil.put(UserPreference.MSG_COMMENT_COUNT, Integer.valueOf(info_count.getNew_msg()));
                    PreferenceUtil.put(UserPreference.MSG_LIKE_COUNT, Integer.valueOf(new_like));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    public static void getWxCode(String str, CommonCallBack commonCallBack) {
        Map commonMap = getCommonMap();
        commonMap.put("getCode", str);
        Api.getService().getWxCode(commonMap).enqueue(commonCallBack);
    }

    public static String responseToJson(Response<ResponseBody> response) {
        String str = "";
        if (response == null) {
            return str;
        }
        try {
            if (!response.isSuccessful()) {
                return str;
            }
            if (Integer.parseInt(Utils.interfaceVersion) < 100) {
                return ((ResponseBody) response.body()).string().toString();
            }
            MessageUnpacker newDefaultUnpacker = MessagePack.newDefaultUnpacker(((ResponseBody) response.body()).bytes());
            if (newDefaultUnpacker == null) {
                return str;
            }
            String obj = newDefaultUnpacker.unpackValue().toString();
            newDefaultUnpacker.close();
            return obj;
        } catch (IOException e) {
            e.printStackTrace();
            return str;
        }
    }

    public static void mastWxHao(Activity activity, int i, JSONObject jSONObject) {
        String str = "wxSubscribeCode_ttl";
        String str2 = "wxSubscribeCode_title";
        String str3 = "wxSubscribeCode_photo";
        String str4 = "wxSubscribeCode_name";
        String str5 = "wxSubscribeCode";
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("wx");
            if (jSONObject2 != null) {
                String str6 = "";
                String string = !jSONObject2.isNull(str5) ? jSONObject2.getString(str5) : str6;
                String string2 = !jSONObject2.isNull(str4) ? jSONObject2.getString(str4) : str6;
                String string3 = !jSONObject2.isNull(str3) ? jSONObject2.getString(str3) : str6;
                String string4 = !jSONObject2.isNull(str2) ? jSONObject2.getString(str2) : str6;
                int i2 = 180;
                if (!jSONObject2.isNull(str)) {
                    i2 = jSONObject2.getInt(str);
                }
                String str7 = TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("scode：");
                sb.append(string);
                sb.append(" text:");
                sb.append(string2);
                sb.append(" photo:");
                sb.append(string3);
                sb.append(" ");
                sb.append(string4);
                AILog.i(str7, sb.toString());
                if (string != null && !string.equals(str6)) {
                    Intent intent = new Intent();
                    intent.setClass(activity, WxHaoActivity.class);
                    intent.putExtra("scode", string);
                    intent.putExtra(MimeTypes.BASE_TYPE_TEXT, string2);
                    intent.putExtra("photo", string3);
                    intent.putExtra("title", string4);
                    intent.putExtra("time", i2);
                    activity.startActivityForResult(intent, i);
                }
            }
        } catch (Exception unused) {
        }
    }

    public static void commentAlertDialog(Activity activity, String str, String str2, String str3, OnClickListener onClickListener, String str4, OnClickListener onClickListener2) {
        new AlertDialog(activity).builder().setTitle(str).setMsg(str2).setNegativeButton(str4, onClickListener2).setPositiveButton(str3, onClickListener).show();
    }

    public static void openGpsDialog(final Activity activity) {
        commentAlertDialog(activity, activity.getResources().getString(R.string.open_gps_title), activity.getResources().getString(R.string.open_gps_tips), activity.getResources().getString(R.string.open_now), new OnClickListener() {
            public void onClick(View view) {
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", activity.getApplicationContext().getPackageName(), null));
                activity.startActivity(intent);
            }
        }, activity.getString(R.string.cancel), new OnClickListener() {
            public void onClick(View view) {
            }
        });
    }

    public static boolean isMustOpenGps() {
        String str = "0";
        String str2 = (String) PreferenceUtil.get(UserPreference.COMMENT_MUST_OPEN_GPS, str);
        if (!str2.equals(str) && str2.equals("1")) {
            return true;
        }
        return false;
    }

    public static void openCamera(final Activity activity) {
        commentAlertDialog(activity, activity.getResources().getString(R.string.open_camera_file_title), activity.getResources().getString(R.string.open_camera_file_tips), activity.getResources().getString(R.string.open_now), new OnClickListener() {
            public void onClick(View view) {
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", activity.getApplicationContext().getPackageName(), null));
                activity.startActivity(intent);
            }
        }, activity.getString(R.string.cancel), new OnClickListener() {
            public void onClick(View view) {
            }
        });
    }

    public static void openWriteStore(final Activity activity) {
        commentAlertDialog(activity, activity.getResources().getString(R.string.open_write_file_title), activity.getResources().getString(R.string.open_write_file_tips), activity.getResources().getString(R.string.open_now), new OnClickListener() {
            public void onClick(View view) {
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", activity.getApplicationContext().getPackageName(), null));
                activity.startActivity(intent);
            }
        }, activity.getString(R.string.cancel), new OnClickListener() {
            public void onClick(View view) {
            }
        });
    }

    public static void getSuggestKeyWords(String str, CommonCallBack commonCallBack) {
        Map commonMap = getCommonMap();
        commonMap.put("keywords", str);
        Api.getService().getSuggest(commonMap).enqueue(commonCallBack);
    }

    public static void searchTogether(String str, String str2, String str3, CommonCallBack commonCallBack) {
        Map commonMap = getCommonMap();
        commonMap.put("keywords", str);
        commonMap.put("page", str2);
        commonMap.put("seo", str3);
        Api.getService().searchTogether(commonMap).enqueue(commonCallBack);
    }

    public static void adsShow(long j, String str) {
        String str2 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("ad tongji show");
        sb.append(j);
        AILog.d(str2, sb.toString());
        Map commonMap = getCommonMap();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(j);
        sb2.append("");
        commonMap.put("id", sb2.toString());
        commonMap.put("title", str);
        Api.getService().adsShow(commonMap).enqueue(new CommonCallBack() {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
            }
        });
    }

    public static void adsClick(long j) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("ad tongji click");
        sb.append(j);
        AILog.d(str, sb.toString());
        Map commonMap = getCommonMap();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(j);
        sb2.append("");
        commonMap.put("id", sb2.toString());
        Api.getService().adsClick(commonMap).enqueue(new CommonCallBack() {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
            }
        });
    }

    public static boolean bindAd(Context context, String str, ImageView imageView) {
        String str2 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("parse");
        sb.append(str);
        AILog.i(str2, sb.toString());
        boolean z = false;
        try {
            JSONObject jsonObject = StringUtils.toJsonObject(str);
            if (jsonObject == null) {
                return false;
            }
            if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                JSONArray jsonArray = StringUtils.toJsonArray(jsonObject.optString("data"));
                if (StringUtils.isJSONArrayNotEmpty(jsonArray)) {
                    final JSONObject jSONobject = StringUtils.getJSONobject(jsonArray, 0);
                    String optString = jSONobject.optString("photo");
                    if (StringUtils.isEmpty(optString)) {
                        return false;
                    }
                    imageView.setOnClickListener(new OnClickListener() {
                        public void onClick(View view) {
                            try {
                                CommonViewModel.adsClick(jSONobject.optLong("_id"));
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            Bundle bundle = new Bundle();
                            String str = "opentype";
                            String str2 = "url";
                            if (StringUtils.isEmpty(jSONobject.optString(str)) || !jSONobject.optString(str).equals("0")) {
                                String str3 = "title";
                                bundle.putString(str3, jSONobject.optString(str3));
                                bundle.putString(str2, jSONobject.optString(str2));
                                Intent intent = new Intent(Utils.getContext(), WebViewActivity.class);
                                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                                intent.putExtras(bundle);
                                Utils.getContext().startActivity(intent);
                                return;
                            }
                            Intent intent2 = new Intent();
                            intent2.setAction("android.intent.action.VIEW");
                            intent2.setData(Uri.parse(jSONobject.optString(str2)));
                            intent2.setFlags(C.ENCODING_PCM_MU_LAW);
                            Utils.getContext().startActivity(intent2);
                        }
                    });
                    if (optString.substring(optString.length() - 3, optString.length()).equals("gif")) {
                        Glide.with(context).load(optString).asGif().placeholder((int) R.drawable.welcome_head).diskCacheStrategy(DiskCacheStrategy.ALL).into(imageView);
                    } else {
                        Glide.with(context).load(optString).placeholder((int) R.drawable.welcome_head).skipMemoryCache(false).diskCacheStrategy(DiskCacheStrategy.ALL).into(imageView);
                    }
                    z = true;
                }
            }
            getAdData();
            return z;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void getDanmuList(final String str, String str2, final String str3, final KTVideoPlayer kTVideoPlayer) {
        Map commonMap = getCommonMap();
        commonMap.put("tvid", str);
        commonMap.put("part", str2);
        StringBuilder sb = new StringBuilder();
        sb.append(str3);
        sb.append("");
        commonMap.put("seg", sb.toString());
        String str4 = TAG;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getDanmuList tvid:");
        sb2.append(str);
        sb2.append(" part:");
        sb2.append(str2);
        sb2.append(" seg：");
        sb2.append(str3);
        AILog.d(str4, sb2.toString());
        Api.getService().getDanMuList(commonMap).enqueue(new CommonCallBack() {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!StringUtils.isEmpty(this.json)) {
                    Gson gson = new Gson();
                    ArrayList arrayList = new ArrayList();
                    try {
                        JsonArray asJsonArray = CommonViewModel.getJsonDataWithGson(this.json).getAsJsonArray(Selection.LIST);
                        for (int i = 0; i < asJsonArray.size(); i++) {
                            DanmuBean danmuBean = (DanmuBean) gson.fromJson(asJsonArray.get(i), DanmuBean.class);
                            danmuBean.setTvId(str);
                            arrayList.add(danmuBean);
                        }
                        String str = VideoPlayActivity.TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("getDanmuList ");
                        sb.append(arrayList.size());
                        AILog.d(str, sb.toString());
                        kTVideoPlayer.addDanmuList(Integer.valueOf(str3).intValue(), arrayList);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                super.onFailure(call, th);
            }
        });
    }

    public static void showShortVideoDialog(Context context) {
        final BottomView bottomView = new BottomView(context, (int) R.style.BottomViewTheme_Defalut, (int) R.layout.item_short_video_introduction);
        bottomView.setAnimation(R.style.BottomToTopAnim);
        ImageView imageView = (ImageView) bottomView.getView().findViewById(R.id.short_video_tro_center);
        try {
            bottomView.showBottomView(true);
            imageView.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    bottomView.dismissBottomView();
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void pullDomain(final List<String> list) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("### get domain ### pullDomain:");
        sb.append(list);
        sb.append(" ");
        AILog.i(str, sb.toString());
        if (list == null) {
            return;
        }
        if (list == null || list.size() != 0) {
            String str2 = (String) list.remove(0);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append("/checkapp/ioscheck.json");
            final String sb3 = sb2.toString();
            if (!sb3.contains("https")) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("https://");
                sb4.append(sb3);
                sb3 = sb4.toString();
            }
            Api.getService().getBootJson(sb3).enqueue(new Callback<ResponseBody>() {
                public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                    String str = UserPreference.COMMENT_MUST_OPEN_GPS;
                    String str2 = UserPreference.COLLECT_MUST_OPEN_PUSH;
                    String str3 = UserPreference.SEARCH_MUST_OPEN_PUSH;
                    try {
                        String replace = ((ResponseBody) response.body()).string().replace("null", "");
                        String str4 = CommonViewModel.TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("### getBootJson ### onResponse:");
                        sb.append(sb3);
                        sb.append(" ");
                        sb.append(replace);
                        AILog.i(str4, sb.toString());
                        JSONObject jsonObject = StringUtils.toJsonObject(replace);
                        try {
                            JSONObject jSONObject = jsonObject.getJSONObject("limitInfo");
                            String string = jSONObject.getString(str3);
                            String string2 = jSONObject.getString(str2);
                            String string3 = jSONObject.getString(str);
                            PreferenceUtil.put(str3, string);
                            PreferenceUtil.put(str2, string2);
                            PreferenceUtil.put(str, string3);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        AILog.json(jsonObject.toString());
                        String string4 = jsonObject.getString("apidomain");
                        Api.addDefaultApiDomains(string4);
                        String string5 = jsonObject.getString("jsondomain");
                        Api.addDefaultBootDomains(string5);
                        PreferenceUtil.put(Definition.BACKUP_HOST_DOMAINS, string5);
                        PreferenceUtil.put(Definition.API_DOMAINS, string4);
                        Api.setSingletonNull();
                        Api.setDomain((String) Api.API_DOMAIN.get(0));
                    } catch (Exception e2) {
                        CommonViewModel.pullDomain(list);
                        e2.printStackTrace();
                    }
                }

                public void onFailure(Call<ResponseBody> call, Throwable th) {
                    String str = CommonViewModel.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("### getBootJson ### onFailure ");
                    sb.append(sb3);
                    AILog.i(str, sb.toString());
                    CommonViewModel.pullDomain(list);
                }
            });
        }
    }

    public static void getSecretKey(String str, final SecretKeyCallBack secretKeyCallBack) {
        AILog.d(TAG, "getSecretKey");
        Api.getService().getSecretKey(str).enqueue(new Callback<ResponseBody>() {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                if (response != null) {
                    try {
                        if (response.isSuccessful()) {
                            String string = ((ResponseBody) response.body()).string();
                            String str = CommonViewModel.TAG;
                            StringBuilder sb = new StringBuilder();
                            sb.append("getSecretKey onResponse ");
                            sb.append(string);
                            AILog.d(str, sb.toString());
                            JSONObject jSONObject = new JSONObject(string);
                            if (jSONObject.optInt("status") == 200) {
                                JSONObject optJSONObject = jSONObject.optJSONObject("data");
                                secretKeyCallBack.onSecretKeyCall(optJSONObject.optString("usersig"), optJSONObject.optInt("pifx_time"));
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }

            public void onFailure(Call<ResponseBody> call, Throwable th) {
                AILog.d(CommonViewModel.TAG, "getSecretKey onFailure ");
                th.printStackTrace();
            }
        });
    }
}
