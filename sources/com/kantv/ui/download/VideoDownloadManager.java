package com.kantv.ui.download;

import android.text.TextUtils;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.bean.EntityVideo;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.m3u8downloader.M3U8Downloader;
import com.kantv.ui.m3u8downloader.M3U8DownloaderConfig;
import com.kantv.ui.m3u8downloader.OnM3U8DownloadListener;
import com.kantv.ui.m3u8downloader.bean.M3U8Task;
import com.kantv.ui.m3u8downloader.server.EncryptM3U8Server;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import okhttp3.ResponseBody;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class VideoDownloadManager {
    static final String[] PERMISSIONS = {"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"};
    private static final String TAG = "VideoDownloadManager";
    public static String currentState = "暂停中";
    private static VideoDownloadManager downloadManager;
    public static List<String> entityTrueVideoList = new ArrayList();
    public static List<EntityVideo> entityVideoList = new ArrayList();
    private String dirPath;
    private String encryptKey = "1375b6c94ef2c696d8b80b52ae35e969";
    private EncryptM3U8Server m3u8Server = new EncryptM3U8Server();
    private OnM3U8DownloadListener onM3U8DownloadListener = new OnM3U8DownloadListener() {
        public void onDownloadItem(M3U8Task m3U8Task, long j, int i, int i2) {
            super.onDownloadItem(m3U8Task, j, i, i2);
        }

        public void onDownloadSuccess(M3U8Task m3U8Task) {
            super.onDownloadSuccess(m3U8Task);
            AILog.d(VideoDownloadManager.TAG, "OnM3U8DownloadListeneronDownloadSuccess");
            VideoDownloadManager.notifyChanged(m3U8Task);
            m3U8Task.tag = 10003;
            VideoDownloadManager.onFinishDownload(m3U8Task.getUrl());
            EventBus.getDefault().post(m3U8Task);
        }

        public void onDownloadPending(M3U8Task m3U8Task) {
            super.onDownloadPending(m3U8Task);
            AILog.d(VideoDownloadManager.TAG, "OnM3U8DownloadListeneronDownloadPending");
            VideoDownloadManager.currentState = "下载中";
            m3U8Task.tag = 0;
            VideoDownloadManager.notifyChanged(m3U8Task);
            EventBus.getDefault().post(m3U8Task);
        }

        public void onDownloadPause(M3U8Task m3U8Task) {
            super.onDownloadPause(m3U8Task);
            AILog.d(VideoDownloadManager.TAG, "OnM3U8DownloadListeneronDownloadPause");
            VideoDownloadManager.currentState = "暂停中";
            m3U8Task.tag = 0;
            VideoDownloadManager.notifyChanged(m3U8Task);
            EventBus.getDefault().post(m3U8Task);
        }

        public void onDownloadProgress(M3U8Task m3U8Task) {
            super.onDownloadProgress(m3U8Task);
            AILog.d(VideoDownloadManager.TAG, "OnM3U8DownloadListeneronDownloadProgress");
            VideoDownloadManager.currentState = "下载中";
            m3U8Task.tag = 0;
            VideoDownloadManager.notifyChanged(m3U8Task);
            EventBus.getDefault().post(m3U8Task);
        }

        public void onDownloadPrepare(M3U8Task m3U8Task) {
            super.onDownloadPrepare(m3U8Task);
            AILog.d(VideoDownloadManager.TAG, "OnM3U8DownloadListeneronDownloadPrepare");
            VideoDownloadManager.currentState = "准备中";
            m3U8Task.tag = 0;
            VideoDownloadManager.notifyChanged(m3U8Task);
            EventBus.getDefault().post(m3U8Task);
        }

        public void onDownloadError(M3U8Task m3U8Task, Throwable th) {
            super.onDownloadError(m3U8Task, th);
            StringBuilder sb = new StringBuilder();
            sb.append("OnM3U8DownloadListeneronDownloadError");
            sb.append(th.getMessage());
            String sb2 = sb.toString();
            String str = VideoDownloadManager.TAG;
            AILog.d(str, sb2);
            VideoDownloadManager.currentState = "下载出错";
            StringBuilder sb3 = new StringBuilder();
            sb3.append("onDownloadError");
            sb3.append(th.toString());
            AILog.d(str, sb3.toString());
            m3U8Task.tag = 0;
            VideoDownloadManager.notifyChanged(m3U8Task);
            EventBus.getDefault().post(m3U8Task);
        }
    };

    public static VideoDownloadManager instance() {
        if (downloadManager == null) {
            synchronized (VideoDownloadManager.class) {
                downloadManager = new VideoDownloadManager();
            }
        }
        return downloadManager;
    }

    public VideoDownloadManager() {
        initView();
    }

    private void initView() {
        this.dirPath = SettingsManager.DIRPATH;
        File file = new File(this.dirPath);
        if (!file.exists()) {
            file.mkdir();
        }
        M3U8DownloaderConfig.build(Utils.getContext()).setSaveDir(this.dirPath).setDebugMode(true);
        M3U8Downloader.getInstance().setOnM3U8DownloadListener(this.onM3U8DownloadListener);
        M3U8Downloader.getInstance().setEncryptKey(this.encryptKey);
    }

    public static void ClikcDownload(String str, String str2, boolean z) {
        if (!TextUtils.isEmpty(str2)) {
            String replace = str2.trim().replace(" ", "");
            StringBuilder sb = new StringBuilder();
            sb.append("mName");
            sb.append(replace);
            String sb2 = sb.toString();
            String str3 = TAG;
            AILog.d(str3, sb2);
            if (M3U8Downloader.getInstance().checkM3U8IsExist(replace)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("本地文件已下载，正在播放中！！！");
                sb3.append(M3U8Downloader.getInstance().getM3U8Path(str));
                AILog.d(str3, sb3.toString());
                ArrayList arrayList = new ArrayList();
                arrayList.add(str);
                instance();
                removeDownloadList(arrayList);
                instance();
                getDownloadingData3(str);
                return;
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append("setOnItemClickListener url = ");
            sb4.append(str2);
            sb4.append(" url ");
            sb4.append(str);
            AILog.d(str3, sb4.toString());
            M3U8Downloader.getInstance().download(str, replace, z);
        }
    }

    public static void getDownloadingData2() {
        String str = (String) PreferenceUtil.get(Utils.getContext(), "download", "");
        StringBuilder sb = new StringBuilder();
        sb.append("downloadPf");
        sb.append(str);
        String sb2 = sb.toString();
        String str2 = TAG;
        AILog.d(str2, sb2);
        if (!str.isEmpty()) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                StringBuilder sb3 = new StringBuilder();
                sb3.append("iniDownload mDownloadDetail     ");
                sb3.append(jSONObject.toString());
                AILog.d(str2, sb3.toString());
                if (jSONObject.length() > 0) {
                    JSONArray optJSONArray = jSONObject.optJSONArray("downloadlist");
                    if (optJSONArray != null && optJSONArray.length() > 0) {
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            JSONObject jSONObject2 = (JSONObject) optJSONArray.get(i);
                            String optString = jSONObject2.optString("name");
                            String optString2 = jSONObject2.optString("part");
                            String optString3 = jSONObject2.optString("url");
                            String optString4 = jSONObject2.optString("id");
                            long optLong = jSONObject2.optLong("size");
                            int optInt = jSONObject2.optInt("tssize");
                            int optInt2 = jSONObject2.optInt("state");
                            String optString5 = jSONObject2.optString("photo");
                            long optLong2 = jSONObject2.optLong("time");
                            if (i > entityVideoList.size() - 1) {
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("getDownloadingData2");
                                sb4.append(entityVideoList.size());
                                sb4.append("  i   ");
                                sb4.append(i);
                                AILog.d(str2, sb4.toString());
                                EntityVideo entityVideo = new EntityVideo();
                                entityVideo.name = optString;
                                entityVideo.url = optString3;
                                entityVideo.part = optString2;
                                entityVideo.id = optString4;
                                entityVideo.tsNumble = optInt;
                                entityVideo.state = optInt2;
                                entityVideo.photo = optString5;
                                entityVideo.time = optLong2;
                                entityVideo.size = optLong;
                                entityVideoList.add(entityVideo);
                            }
                        }
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("entityVideoList");
                        sb5.append(entityVideoList.size());
                        AILog.d(str2, sb5.toString());
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public static void getDownloadingData3(String str) {
        if (entityVideoList.size() > 0) {
            int i = 0;
            while (i < entityVideoList.size()) {
                String str2 = ((EntityVideo) entityVideoList.get(i)).url;
                String[] strArr = new String[0];
                String str3 = "m3u8";
                if (str2.contains(str3)) {
                    strArr = str2.split(str3);
                }
                String[] strArr2 = new String[0];
                if (str.contains(str3)) {
                    strArr2 = str.split(str3);
                }
                if (strArr.length != 0 && strArr2.length != 0) {
                    if (strArr[0].equals(strArr2[0])) {
                        entityVideoList.remove(i);
                        return;
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public static void setDownloadList(int i, int i2, Object obj) {
        String str = "downloadlist";
        String str2 = "download";
        String str3 = (String) PreferenceUtil.get(Utils.getContext(), str2, "");
        StringBuilder sb = new StringBuilder();
        sb.append("downloadPf");
        sb.append(str3);
        String sb2 = sb.toString();
        String str4 = TAG;
        AILog.d(str4, sb2);
        if (!str3.isEmpty()) {
            try {
                JSONObject jSONObject = new JSONObject(str3);
                StringBuilder sb3 = new StringBuilder();
                sb3.append("iniDownload mDownloadDetail     ");
                sb3.append(jSONObject.toString());
                AILog.d(str4, sb3.toString());
                if (jSONObject.length() > 0) {
                    JSONArray optJSONArray = jSONObject.optJSONArray(str);
                    if (optJSONArray != null && optJSONArray.length() > 0) {
                        int i3 = 0;
                        while (true) {
                            if (i3 >= optJSONArray.length()) {
                                break;
                            } else if (i == i3) {
                                JSONObject jSONObject2 = (JSONObject) optJSONArray.get(i3);
                                setJsonObject(jSONObject2, i2, obj);
                                optJSONArray.put(i3, jSONObject2);
                                break;
                            } else {
                                i3++;
                            }
                        }
                        jSONObject.put(str, optJSONArray);
                        PreferenceUtil.put(Utils.getContext(), str2, jSONObject.toString());
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("加入电视mDownloadDetail");
                        sb4.append(jSONObject.toString());
                        AILog.d(str4, sb4.toString());
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public static void removeDownloadList(List<String> list) {
        String str = "downloadlist";
        String str2 = "download";
        String str3 = (String) PreferenceUtil.get(Utils.getContext(), str2, "");
        StringBuilder sb = new StringBuilder();
        sb.append("downloadPf");
        sb.append(list.size());
        sb.append("      ");
        sb.append(list.toString());
        String sb2 = sb.toString();
        String str4 = TAG;
        AILog.d(str4, sb2);
        if (!str3.isEmpty()) {
            try {
                JSONObject jSONObject = new JSONObject(str3);
                StringBuilder sb3 = new StringBuilder();
                sb3.append("iniDownload mDownloadDetail     ");
                sb3.append(jSONObject.toString());
                AILog.d(str4, sb3.toString());
                if (jSONObject.length() > 0) {
                    JSONArray optJSONArray = jSONObject.optJSONArray(str);
                    JSONArray jSONArray = new JSONArray();
                    if (optJSONArray != null && optJSONArray.length() > 0) {
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            JSONObject jSONObject2 = (JSONObject) optJSONArray.get(i);
                            if (!list.contains(jSONObject2.optString("id"))) {
                                jSONArray.put(jSONObject2);
                            }
                        }
                        jSONObject.put(str, jSONArray);
                        PreferenceUtil.put(Utils.getContext(), str2, jSONObject.toString());
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("removeDownloadList,  size");
                        sb4.append(jSONArray.length());
                        sb4.append("     =");
                        sb4.append(jSONObject.toString());
                        AILog.d(str4, sb4.toString());
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public static JSONObject setJsonObject(JSONObject jSONObject, int i, Object obj) {
        if (i == 5) {
            try {
                jSONObject.put("state", ((Integer) obj).intValue());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jSONObject;
    }

    public static void onFinishDownload(String str) {
        String str2;
        String str3 = "downloadlist";
        String str4 = "m3u8";
        String str5 = "download";
        String str6 = (String) PreferenceUtil.get(Utils.getContext(), str5, "");
        StringBuilder sb = new StringBuilder();
        sb.append("downloadPf");
        sb.append(str6);
        String sb2 = sb.toString();
        String str7 = TAG;
        AILog.d(str7, sb2);
        if (!str6.isEmpty()) {
            try {
                JSONObject jSONObject = new JSONObject(str6);
                StringBuilder sb3 = new StringBuilder();
                sb3.append("iniDownload mDownloadDetail     ");
                sb3.append(jSONObject.toString());
                AILog.d(str7, sb3.toString());
                if (jSONObject.length() > 0) {
                    JSONArray optJSONArray = jSONObject.optJSONArray(str3);
                    if (optJSONArray != null && optJSONArray.length() > 0) {
                        int i = 0;
                        while (true) {
                            str2 = "url";
                            if (i >= optJSONArray.length()) {
                                i = -1;
                                break;
                            }
                            String optString = ((JSONObject) optJSONArray.get(i)).optString(str2);
                            String[] strArr = new String[0];
                            if (optString.contains(str4)) {
                                strArr = optString.split(str4);
                            }
                            String[] strArr2 = new String[0];
                            if (str.contains(str4)) {
                                strArr2 = str.split(str4);
                            }
                            if (strArr.length > 0 && strArr2.length > 0 && strArr[0].equals(strArr2[0])) {
                                break;
                            }
                            i++;
                        }
                        if (i != -1) {
                            optJSONArray.remove(i);
                        }
                        jSONObject.put(str3, optJSONArray);
                        PreferenceUtil.put(Utils.getContext(), str5, jSONObject.toString());
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("加入电视mDownloadDetail ");
                        sb4.append(jSONObject.toString());
                        AILog.d(str7, sb4.toString());
                        getDownloadingData3(str);
                        if (optJSONArray != null && optJSONArray.length() > 0) {
                            JSONObject jSONObject2 = (JSONObject) optJSONArray.get(0);
                            jSONObject2.optString("name");
                            jSONObject2.optString("part");
                            jSONObject2.optString(str2);
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("positionTag");
                            sb5.append(str);
                            sb5.append(" downloadArray.length()  ");
                            sb5.append(optJSONArray.length());
                            AILog.d(str7, sb5.toString());
                            if (optJSONArray.length() > 0) {
                                optJSONArray.length();
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public static void notifyChanged(M3U8Task m3U8Task) {
        for (int i = 0; i < entityVideoList.size(); i++) {
            String str = ((EntityVideo) entityVideoList.get(i)).url;
            String[] strArr = new String[0];
            String str2 = "m3u8";
            if (str.contains(str2)) {
                strArr = str.split(str2);
            }
            String url = m3U8Task.getUrl();
            String[] strArr2 = new String[0];
            if (url.contains(str2)) {
                strArr2 = url.split(str2);
            }
            if (!(strArr == null || strArr2 == null || strArr.length == 0 || strArr2.length == 0 || !strArr[0].equals(strArr2[0]))) {
                if (m3U8Task.getProgress() > 0.0f && m3U8Task.getProgress() <= 1.0f && m3U8Task.getState() == 2) {
                    ((EntityVideo) entityVideoList.get(i)).progress = m3U8Task.getProgress();
                }
                ((EntityVideo) entityVideoList.get(i)).state = m3U8Task.getState();
                ((EntityVideo) entityVideoList.get(i)).speed = m3U8Task.getSpeed();
            }
        }
        for (int i2 = 0; i2 < entityVideoList.size(); i2++) {
        }
    }

    public static void requestSwitchOver(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("requestSwitchOver");
        sb.append(str);
        AILog.d(TAG, sb.toString());
        HashMap hashMap = new HashMap();
        hashMap.put("noncestr", SignConfig.noncestr);
        hashMap.put("timestamp", SignConfig.timestamp);
        hashMap.put("sbID", SignConfig.sbID);
        hashMap.put("sign", SignConfig.sign);
        hashMap.put("part_id", str);
        hashMap.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().requestUrl(hashMap).enqueue(new CommonCallBack(Utils.getContext(), false) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            VideoDownloadManager.entityTrueVideoList.clear();
                            String optString = jsonObject.optString("data");
                            String str = ",";
                            if (optString.contains(str)) {
                                String[] split = optString.split(str);
                                int length = split.length;
                                VideoDownloadManager.instance();
                                if (length == VideoDownloadManager.entityVideoList.size()) {
                                    for (String add : split) {
                                        VideoDownloadManager.entityTrueVideoList.add(add);
                                        VideoDownloadManager.replaceUrl();
                                    }
                                }
                            } else {
                                VideoDownloadManager.instance();
                                if (VideoDownloadManager.entityVideoList.size() == 1) {
                                    VideoDownloadManager.entityTrueVideoList.add(optString);
                                    VideoDownloadManager.replaceUrl();
                                }
                            }
                        } else {
                            ToastUtils.showShort((CharSequence) "数据请求失败，请稍后再试。。");
                        }
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public static void replaceUrl() {
        for (int i = 0; i < entityVideoList.size(); i++) {
            EntityVideo entityVideo = (EntityVideo) entityVideoList.get(i);
            if (entityVideo.state == 4 || entityVideo.state == 5 || entityVideo.state == 0) {
                int i2 = 0;
                while (true) {
                    instance();
                    if (i2 >= entityTrueVideoList.size()) {
                        break;
                    }
                    if (i == i2) {
                        instance();
                        ((EntityVideo) entityVideoList.get(i)).url = (String) entityTrueVideoList.get(i2);
                    }
                    i2++;
                }
            }
        }
    }
}
