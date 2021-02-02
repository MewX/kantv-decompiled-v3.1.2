package com.kantv.ui.activity;

import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import butterknife.BindView;
import butterknife.OnClick;
import com.bumptech.glide.Glide;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.imkan.tv.R;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.Utils;
import com.kantv.lib.recyclerview.XRecyclerView;
import com.kantv.lib.recyclerview.XRecyclerView.LoadingListener;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.EntityVideo;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.download.SettingsManager;
import com.kantv.ui.download.VideoDownloadManager;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.ToastUtils;
import debug.KanApplication;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public class OfflineVideoActivity extends PackageActivity {
    private static final String TAG = "OfflineVideoActivity";
    @BindView(2131296432)
    LinearLayout cacheLayout;
    @BindView(2131296529)
    TextView cacheNum;
    @BindView(2131296506)
    LinearLayout deleteLayout;
    @BindView(2131297024)
    TextView editTV;
    /* access modifiers changed from: private */
    public List<EntityVideo> entityVideoList = new ArrayList();
    private View headerView;
    /* access modifiers changed from: private */
    public boolean isCheckbox = false;
    /* access modifiers changed from: private */
    public boolean isNotHeader = false;
    /* access modifiers changed from: private */
    public CommonAdapter<EntityVideo> mAdapter;
    @BindView(2131297026)
    XRecyclerView mRecyclerView;
    private TextView name;
    /* access modifiers changed from: private */
    public List<String> nameList = new ArrayList();
    @BindView(2131297015)
    TextView noCacheVideoTip;
    @BindView(2131297016)
    RelativeLayout noDataLayout;
    private TextView num;
    private ProgressBar progressBar;
    private TextView speed;
    private TextView state;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_offline_video);
        initBase();
        VideoDownloadManager.instance();
        VideoDownloadManager.getDownloadingData2();
        VideoDownloadManager.instance();
        if (VideoDownloadManager.entityVideoList.size() > 0) {
            this.noDataLayout.setVisibility(8);
        }
        String str = "";
        if (Environment.getExternalStorageState().equals("mounted")) {
            boolean booleanValue = ((Boolean) PreferenceUtil.get(Utils.getContext(), SettingsManager.ISPHONESDCARD, Boolean.valueOf(true))).booleanValue();
            SettingsManager.isPhoneSdCard = booleanValue;
            StringBuilder sb = new StringBuilder();
            sb.append("iisPhoneSdCard    ");
            sb.append(booleanValue);
            String sb2 = sb.toString();
            String str2 = TAG;
            AILog.d(str2, sb2);
            if (booleanValue) {
                SettingsManager.changePath(true, str, Utils.getContext());
            } else {
                SettingsManager.changePath(false, SettingsManager.getStoragePath(Utils.getContext(), true), Utils.getContext());
                File file = new File(SettingsManager.DIRPATH);
                StringBuilder sb3 = new StringBuilder();
                String str3 = "onCreate2";
                sb3.append(str3);
                sb3.append(file.exists());
                AILog.d(str2, sb3.toString());
                getExternalFilesDir(null).getAbsolutePath();
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(SettingsManager.getPhotoDirPath());
                StringBuilder sb4 = new StringBuilder();
                sb4.append(str3);
                sb4.append(file2.exists());
                AILog.d(str2, sb4.toString());
                getExternalFilesDir(null).getAbsolutePath();
                if (!file2.exists()) {
                    file2.mkdirs();
                }
            }
        } else {
            SettingsManager.changePath(true, str, Utils.getContext());
        }
        initView();
        recoverUrl();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN8);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        String str = (String) PreferenceUtil.get(Utils.getContext(), "download", "");
        if (str.isEmpty()) {
            this.cacheLayout.setVisibility(8);
        } else {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.length() > 0) {
                    JSONArray optJSONArray = jSONObject.optJSONArray("downloadlist");
                    if (optJSONArray != null && optJSONArray.length() == 0) {
                        this.cacheLayout.setVisibility(8);
                    }
                    if (optJSONArray != null && optJSONArray.length() > 0) {
                        this.cacheLayout.setVisibility(0);
                        TextView textView = this.cacheNum;
                        StringBuilder sb = new StringBuilder();
                        sb.append(optJSONArray.length());
                        sb.append("个视频");
                        textView.setText(sb.toString());
                        this.cacheLayout.setOnClickListener(new OnClickListener() {
                            public void onClick(View view) {
                                VideoDownloadManager.instance();
                                VideoDownloadManager.getDownloadingData2();
                                VideoDownloadManager.instance();
                                if (VideoDownloadManager.entityVideoList.size() > 0) {
                                    OfflineVideoActivity.this.gotoActivity(DownloadingActivity.class);
                                } else {
                                    ToastUtils.showShort((CharSequence) "暂无正在缓存的视频");
                                }
                            }
                        });
                        if (this.entityVideoList.size() == 0) {
                            this.noCacheVideoTip.setVisibility(0);
                        }
                    }
                }
            } catch (JSONException e) {
                this.cacheLayout.setVisibility(8);
                e.printStackTrace();
            }
        }
        List<String> list = this.nameList;
        if (list != null) {
            list.clear();
        }
        List<EntityVideo> list2 = this.entityVideoList;
        if (list2 != null) {
            list2.clear();
        }
        getFileName();
        CommonAdapter<EntityVideo> commonAdapter = this.mAdapter;
        if (commonAdapter != null) {
            commonAdapter.notifyDataSetChanged();
        }
        if (this.entityVideoList.size() > 0) {
            this.noCacheVideoTip.setVisibility(8);
        }
    }

    private void initView() {
        this.editTV.setVisibility(8);
        getFileName();
        initAdapter();
    }

    @OnClick({2131296479, 2131296537, 2131296364, 2131297366})
    public void onClick(View view) {
        String str = "编辑";
        switch (view.getId()) {
            case R.id.all_video_choice /*2131296364*/:
                setAllCheckbox();
                return;
            case R.id.common_title_left /*2131296479*/:
                finish();
                return;
            case R.id.edit_ll /*2131296537*/:
                if (this.editTV.getText().equals(str)) {
                    this.isCheckbox = true;
                    setItemtIsNotShow(true);
                    this.editTV.setText("取消");
                    this.deleteLayout.setVisibility(0);
                    return;
                }
                this.isCheckbox = false;
                setItemtIsNotShow(false);
                this.editTV.setText(str);
                this.deleteLayout.setVisibility(8);
                setAllNotCheckbox();
                return;
            case R.id.video_delete /*2131297366*/:
                deleteItem();
                this.isCheckbox = false;
                setItemtIsNotShow(false);
                this.editTV.setText(str);
                this.deleteLayout.setVisibility(8);
                setAllNotCheckbox();
                return;
            default:
                return;
        }
    }

    private void setAllCheckbox() {
        for (int i = 0; i < this.entityVideoList.size(); i++) {
            ((EntityVideo) this.entityVideoList.get(i)).isNotCheck = true;
        }
        CommonAdapter<EntityVideo> commonAdapter = this.mAdapter;
        if (commonAdapter != null) {
            commonAdapter.notifyDataSetChanged();
        }
    }

    private void deleteItem() {
        if (this.entityVideoList.size() > 0) {
            new ArrayList();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.entityVideoList.size(); i++) {
                if (!((EntityVideo) this.entityVideoList.get(i)).isNotCheck) {
                    arrayList.add(this.entityVideoList.get(i));
                } else {
                    String dirPath = SettingsManager.getDirPath();
                    StringBuilder sb = new StringBuilder();
                    sb.append(dirPath);
                    sb.append(File.separator);
                    sb.append(((EntityVideo) this.entityVideoList.get(i)).name);
                    File file = new File(sb.toString());
                    if (file.exists()) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("路径");
                        sb2.append(file.getAbsolutePath());
                        String sb3 = sb2.toString();
                        String str = TAG;
                        AILog.d(str, sb3);
                        deleteFiles(file);
                        List<String> list = this.nameList;
                        if (list != null && list.size() > 0) {
                            String[] split = ((EntityVideo) this.entityVideoList.get(i)).name.split("-");
                            if (!(split == null || split.length == 0)) {
                                for (int i2 = 0; i2 < this.nameList.size(); i2++) {
                                    if (((String) this.nameList.get(i2)).contains(split[0])) {
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append(dirPath);
                                        sb4.append(File.separator);
                                        sb4.append((String) this.nameList.get(i2));
                                        File file2 = new File(sb4.toString());
                                        if (file2.exists()) {
                                            StringBuilder sb5 = new StringBuilder();
                                            sb5.append("子文件路径");
                                            sb5.append(file2.getAbsolutePath());
                                            AILog.d(str, sb5.toString());
                                            deleteFiles(file2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            List<EntityVideo> list2 = this.entityVideoList;
            if (list2 != null) {
                list2.clear();
                this.entityVideoList.addAll(arrayList);
            }
            CommonAdapter<EntityVideo> commonAdapter = this.mAdapter;
            if (commonAdapter != null) {
                commonAdapter.notifyDataSetChanged();
            }
        }
    }

    public void deleteFiles(File file) {
        if (file.isFile()) {
            file.delete();
            return;
        }
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null || listFiles.length == 0) {
                file.delete();
            } else {
                for (File deleteFiles : listFiles) {
                    deleteFiles(deleteFiles);
                }
                file.delete();
            }
        }
    }

    private void setItemtIsNotShow(boolean z) {
        if (z) {
            for (int i = 0; i < this.entityVideoList.size(); i++) {
                ((EntityVideo) this.entityVideoList.get(i)).isNOtShow = true;
            }
        } else {
            for (int i2 = 0; i2 < this.entityVideoList.size(); i2++) {
                ((EntityVideo) this.entityVideoList.get(i2)).isNOtShow = false;
            }
        }
        CommonAdapter<EntityVideo> commonAdapter = this.mAdapter;
        if (commonAdapter != null) {
            commonAdapter.notifyDataSetChanged();
        }
    }

    private void setAllNotCheckbox() {
        for (int i = 0; i < this.entityVideoList.size(); i++) {
            ((EntityVideo) this.entityVideoList.get(i)).isNotCheck = false;
        }
        CommonAdapter<EntityVideo> commonAdapter = this.mAdapter;
        if (commonAdapter != null) {
            commonAdapter.notifyDataSetChanged();
        }
    }

    private void initAdapter() {
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(Utils.getContext()));
        this.mAdapter = new CommonAdapter<EntityVideo>(Utils.getContext(), R.layout.item_offline_video, this.entityVideoList) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, final EntityVideo entityVideo, final int i) {
                String[] strArr;
                ImageView imageView = (ImageView) viewHolder.getView(R.id.offline_video_img);
                if (!entityVideo.name.isEmpty()) {
                    strArr = entityVideo.name.split("-");
                    StringBuilder sb = new StringBuilder();
                    sb.append("spName");
                    sb.append(strArr[0]);
                    String sb2 = sb.toString();
                    String str = OfflineVideoActivity.TAG;
                    AILog.d(str, sb2);
                    if (strArr.length > 0) {
                        String photoDirPath = SettingsManager.getPhotoDirPath();
                        File file = new File(photoDirPath);
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("initAdapterdirFile.exists()");
                        sb3.append(file.exists());
                        sb3.append("  ");
                        sb3.append(photoDirPath);
                        AILog.d(str, sb3.toString());
                        if (file.exists()) {
                            String str2 = strArr[0];
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append(photoDirPath);
                            sb4.append(File.separator);
                            sb4.append(str2);
                            sb4.append(".jpg");
                            File file2 = new File(sb4.toString());
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("photoPath");
                            sb5.append(photoDirPath);
                            sb5.append(File.separator);
                            sb5.append(str2);
                            sb5.append("    ");
                            sb5.append(file2.exists());
                            AILog.d(str, sb5.toString());
                            if (file2.exists()) {
                                Glide.with(Utils.getContext()).load(file2).into(imageView);
                            }
                        }
                    }
                } else {
                    strArr = null;
                }
                viewHolder.setText(R.id.item_offlinevideo_title, strArr[0]);
                viewHolder.setText(R.id.item_offlinevideo_size, OfflineVideoActivity.this.formetFileUnit(entityVideo.size));
                StringBuilder sb6 = new StringBuilder();
                sb6.append(entityVideo.totalpart);
                sb6.append("个视频");
                viewHolder.setText(R.id.item_offlinevideo_num, sb6.toString());
                CheckBox checkBox = (CheckBox) viewHolder.getView(R.id.offline_video_check);
                if (entityVideo.isNOtShow) {
                    checkBox.setVisibility(0);
                } else {
                    checkBox.setVisibility(8);
                }
                if (entityVideo.isNotCheck) {
                    checkBox.setChecked(true);
                } else {
                    checkBox.setChecked(false);
                }
                viewHolder.setOnClickListener(R.id.item_offlinevideo_rl, new OnClickListener() {
                    public void onClick(View view) {
                        int i;
                        if (OfflineVideoActivity.this.isNotHeader) {
                            i = i - 2;
                        } else {
                            i = i - 1;
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append(Param.LOCATION);
                        sb.append(i);
                        AILog.d(OfflineVideoActivity.TAG, sb.toString());
                        if (i < 0) {
                            i = 0;
                        }
                        if (!OfflineVideoActivity.this.isCheckbox) {
                            Bundle bundle = new Bundle();
                            String str = "-";
                            if (entityVideo.name.contains(str)) {
                                bundle.putString("title", entityVideo.name.split(str)[0]);
                                OfflineVideoActivity.this.gotoActivity(bundle, OfflineVideoDetailActivity.class);
                            }
                        } else if (((EntityVideo) OfflineVideoActivity.this.entityVideoList.get(i)).isNotCheck) {
                            ((EntityVideo) OfflineVideoActivity.this.entityVideoList.get(i)).isNotCheck = false;
                            if (OfflineVideoActivity.this.mAdapter != null) {
                                OfflineVideoActivity.this.mAdapter.notifyDataSetChanged();
                            }
                        } else {
                            ((EntityVideo) OfflineVideoActivity.this.entityVideoList.get(i)).isNotCheck = true;
                            if (OfflineVideoActivity.this.mAdapter != null) {
                                OfflineVideoActivity.this.mAdapter.notifyDataSetChanged();
                            }
                        }
                    }
                });
            }
        };
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.setLoadingListener(new LoadingListener() {
            public void onRefresh() {
                if (OfflineVideoActivity.this.nameList != null) {
                    OfflineVideoActivity.this.nameList.clear();
                }
                if (OfflineVideoActivity.this.entityVideoList != null) {
                    OfflineVideoActivity.this.entityVideoList.clear();
                }
                OfflineVideoActivity.this.getFileName();
                if (OfflineVideoActivity.this.mAdapter != null) {
                    OfflineVideoActivity.this.mAdapter.notifyDataSetChanged();
                }
                if (OfflineVideoActivity.this.mRecyclerView != null) {
                    OfflineVideoActivity.this.mRecyclerView.refreshComplete();
                }
                VideoDownloadManager.instance();
                if (VideoDownloadManager.entityVideoList.size() <= 0) {
                    OfflineVideoActivity.this.mRecyclerView.clearHeader();
                }
            }

            public void onLoadMore() {
                OfflineVideoActivity.this.mRecyclerView.loadMoreComplete();
            }
        });
        getDownLoadFileCount();
    }

    private void getDownLoadFileCount() {
        String str = (String) PreferenceUtil.get(Utils.getContext(), "download", "");
        this.isNotHeader = false;
        if (!str.isEmpty()) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String str2 = TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("iniDownload mDownloadDetail     ");
                sb.append(jSONObject.toString());
                AILog.d(str2, sb.toString());
                if (jSONObject.length() > 0) {
                    JSONArray optJSONArray = jSONObject.optJSONArray("downloadlist");
                    if (optJSONArray != null && optJSONArray.length() > 0) {
                        if (this.entityVideoList.size() == 0) {
                            this.noCacheVideoTip.setVisibility(0);
                        }
                        this.cacheLayout.setVisibility(0);
                        TextView textView = this.cacheNum;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(optJSONArray.length());
                        sb2.append("个视频");
                        textView.setText(sb2.toString());
                        this.cacheLayout.setOnClickListener(new OnClickListener() {
                            public void onClick(View view) {
                                VideoDownloadManager.instance();
                                VideoDownloadManager.getDownloadingData2();
                                VideoDownloadManager.instance();
                                if (VideoDownloadManager.entityVideoList.size() > 0) {
                                    OfflineVideoActivity.this.gotoActivity(DownloadingActivity.class);
                                } else {
                                    ToastUtils.showShort((CharSequence) "暂无正在缓存的视频");
                                }
                            }
                        });
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /* access modifiers changed from: private */
    public String getFileName() {
        int i;
        File[] fileArr;
        boolean z;
        String str = "downloadlist";
        String str2 = "";
        if (SettingsManager.checkSDCard()) {
            String dirPath = SettingsManager.getDirPath();
            StringBuilder sb = new StringBuilder();
            sb.append("downloadPath：：   ");
            sb.append(dirPath);
            String sb2 = sb.toString();
            String str3 = TAG;
            AILog.d(str3, sb2);
            File file = new File(dirPath);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("dir.exists()：：   ");
            sb3.append(file.exists());
            AILog.d(str3, sb3.toString());
            char c = 0;
            if (file.exists()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    int length = listFiles.length;
                    int i2 = 0;
                    while (i2 < length) {
                        File file2 = listFiles[i2];
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("file.getName()：：   ");
                        sb4.append(file2.getName());
                        AILog.d(str3, sb4.toString());
                        String name2 = file2.getName();
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("fileName");
                        sb5.append(name2);
                        AILog.d(str3, sb5.toString());
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append("文件名mp4：：   ");
                        sb6.append(name2);
                        AILog.d(str3, sb6.toString());
                        long filesize = getFilesize(file2);
                        EntityVideo entityVideo = new EntityVideo();
                        entityVideo.size = filesize;
                        entityVideo.name = name2;
                        entityVideo.path = file2.getAbsolutePath();
                        StringBuilder sb7 = new StringBuilder();
                        sb7.append(file2.getAbsolutePath());
                        sb7.append(File.separator);
                        sb7.append(SettingsManager.M3U8);
                        String sb8 = sb7.toString();
                        File file3 = new File(sb8);
                        StringBuilder sb9 = new StringBuilder();
                        sb9.append("filePath");
                        sb9.append(sb8);
                        sb9.append("     ");
                        sb9.append(file3.exists());
                        AILog.d(str3, sb9.toString());
                        if (file3.exists()) {
                            String str4 = "-";
                            if (entityVideo.name.contains(str4)) {
                                String[] split = entityVideo.name.split(str4);
                                if (split != null && split.length != 0) {
                                    int i3 = 0;
                                    while (true) {
                                        if (i3 >= this.entityVideoList.size()) {
                                            break;
                                        }
                                        fileArr = listFiles;
                                        if (((EntityVideo) this.entityVideoList.get(i3)).name.contains(split[c])) {
                                            StringBuilder sb10 = new StringBuilder();
                                            sb10.append("fortotalpart");
                                            sb10.append(((EntityVideo) this.entityVideoList.get(i3)).totalpart);
                                            AILog.d(str3, sb10.toString());
                                            EntityVideo entityVideo2 = (EntityVideo) this.entityVideoList.get(i3);
                                            entityVideo2.totalpart++;
                                            EntityVideo entityVideo3 = (EntityVideo) this.entityVideoList.get(i3);
                                            i = i2;
                                            entityVideo3.size += filesize;
                                            z = false;
                                            break;
                                        }
                                        int i4 = i2;
                                        i3++;
                                        listFiles = fileArr;
                                        c = 0;
                                    }
                                } else {
                                    fileArr = listFiles;
                                    i = i2;
                                    i2 = i + 1;
                                    listFiles = fileArr;
                                    c = 0;
                                }
                            }
                            fileArr = listFiles;
                            i = i2;
                            z = true;
                            if (z) {
                                this.entityVideoList.add(entityVideo);
                            }
                            this.nameList.add(name2);
                            String str5 = "download";
                            String str6 = (String) PreferenceUtil.get(Utils.getContext(), str5, str2);
                            if (!str6.isEmpty()) {
                                try {
                                    JSONObject jSONObject = new JSONObject(str6);
                                    if (jSONObject.length() > 0) {
                                        JSONArray optJSONArray = jSONObject.optJSONArray(str);
                                        if (optJSONArray != null && optJSONArray.length() > 0) {
                                            int i5 = 0;
                                            while (true) {
                                                if (i5 >= optJSONArray.length()) {
                                                    break;
                                                }
                                                JSONObject jSONObject2 = (JSONObject) optJSONArray.get(i5);
                                                String optString = jSONObject2.optString("url");
                                                String optString2 = jSONObject2.optString("name");
                                                String optString3 = jSONObject2.optString("part");
                                                String optString4 = jSONObject2.optString("id");
                                                StringBuilder sb11 = new StringBuilder();
                                                sb11.append(optString2);
                                                sb11.append("-(第");
                                                sb11.append(optString3);
                                                sb11.append("集)-");
                                                sb11.append(optString4);
                                                if (file3.getAbsolutePath().contains(sb11.toString())) {
                                                    optJSONArray.remove(i5);
                                                    jSONObject.put(str, optJSONArray);
                                                    PreferenceUtil.put(Utils.getContext(), str5, jSONObject.toString());
                                                    VideoDownloadManager.instance();
                                                    VideoDownloadManager.getDownloadingData3(optString);
                                                    break;
                                                }
                                                i5++;
                                            }
                                        }
                                    }
                                } catch (Exception unused) {
                                }
                            }
                        } else {
                            fileArr = listFiles;
                            i = i2;
                        }
                        if (this.entityVideoList.size() > 0) {
                            this.editTV.setVisibility(0);
                            this.noDataLayout.setVisibility(8);
                        } else {
                            this.editTV.setVisibility(8);
                        }
                        i2 = i + 1;
                        listFiles = fileArr;
                        c = 0;
                    }
                }
                return str2;
            } else if (this.entityVideoList.size() > 0) {
                this.editTV.setVisibility(0);
                this.noDataLayout.setVisibility(8);
            } else {
                this.editTV.setVisibility(8);
            }
        }
        return str2;
    }

    public long getFilesize(File file) {
        long j;
        File[] listFiles = file.listFiles();
        long j2 = 0;
        if (listFiles != null) {
            for (int i = 0; i < listFiles.length; i++) {
                if (listFiles[i].isDirectory()) {
                    j = getFilesize(listFiles[i]);
                } else {
                    j = listFiles[i].length();
                }
                j2 += j;
            }
        }
        return j2;
    }

    private void recoverUrl() {
        String str = TAG;
        AILog.d(str, "recoverUrl");
        VideoDownloadManager.instance();
        if (VideoDownloadManager.entityVideoList.size() > 0) {
            StringBuffer stringBuffer = new StringBuffer();
            int i = 0;
            while (true) {
                VideoDownloadManager.instance();
                if (i < VideoDownloadManager.entityVideoList.size()) {
                    if (i == 0) {
                        VideoDownloadManager.instance();
                        stringBuffer.append(((EntityVideo) VideoDownloadManager.entityVideoList.get(i)).id);
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append(",");
                        VideoDownloadManager.instance();
                        sb.append(((EntityVideo) VideoDownloadManager.entityVideoList.get(i)).id);
                        stringBuffer.append(sb.toString());
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("recoverUrl state 前");
                    sb2.append(stringBuffer.toString());
                    AILog.d(str, sb2.toString());
                    i++;
                } else {
                    VideoDownloadManager.instance();
                    VideoDownloadManager.requestSwitchOver(stringBuffer.toString());
                    return;
                }
            }
        }
    }

    public String formetFileUnit(long j) {
        String str;
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        if (j < 1024) {
            StringBuilder sb = new StringBuilder();
            sb.append(decimalFormat.format((double) j));
            sb.append("B");
            str = sb.toString();
        } else if (j < 1048576) {
            StringBuilder sb2 = new StringBuilder();
            double d = (double) j;
            Double.isNaN(d);
            sb2.append(decimalFormat.format(d / 1024.0d));
            sb2.append("K");
            str = sb2.toString();
        } else if (j < IjkMediaMeta.AV_CH_STEREO_RIGHT) {
            StringBuilder sb3 = new StringBuilder();
            double d2 = (double) j;
            Double.isNaN(d2);
            sb3.append(decimalFormat.format(d2 / 1048576.0d));
            sb3.append("M");
            str = sb3.toString();
        } else {
            StringBuilder sb4 = new StringBuilder();
            double d3 = (double) j;
            Double.isNaN(d3);
            sb4.append(decimalFormat.format(d3 / 1.073741824E9d));
            sb4.append("G");
            str = sb4.toString();
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append("fileSizeString  ");
        sb5.append(str);
        AILog.d(TAG, sb5.toString());
        return str;
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        List<EntityVideo> list = this.entityVideoList;
        if (list != null) {
            list.clear();
        }
    }
}
