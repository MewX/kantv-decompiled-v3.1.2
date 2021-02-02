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
import com.kantv.common.utils.StringUtils;
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
import com.kantv.ui.m3u8downloader.utils.MUtils;
import com.kantv.ui.utils.PreferenceUtil;
import debug.KanApplication;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public class OfflineVideoDetailActivity extends PackageActivity {
    private static final String TAG = "OfflineVideoDetailActivity";
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
    private boolean isNotHeader = false;
    /* access modifiers changed from: private */
    public CommonAdapter<EntityVideo> mAdapter;
    @BindView(2131297026)
    XRecyclerView mRecyclerView;
    private TextView name;
    /* access modifiers changed from: private */
    public List<String> nameList = new ArrayList();
    @BindView(2131297016)
    RelativeLayout noDataLayout;
    private TextView num;
    private ProgressBar progressBar;
    private TextView speed;
    private TextView state;
    private String title = "";

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_offline_video);
        initBase();
        Bundle extras = getIntent().getExtras();
        String str = TAG;
        if (extras != null) {
            this.title = extras.getString("title");
            StringBuilder sb = new StringBuilder();
            sb.append("*** title ");
            sb.append(this.title);
            AILog.d(str, sb.toString());
        }
        String str2 = "";
        if (Environment.getExternalStorageState().equals("mounted")) {
            boolean booleanValue = ((Boolean) PreferenceUtil.get(Utils.getContext(), SettingsManager.ISPHONESDCARD, Boolean.valueOf(true))).booleanValue();
            SettingsManager.isPhoneSdCard = booleanValue;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("iisPhoneSdCard    ");
            sb2.append(booleanValue);
            AILog.d(str, sb2.toString());
            if (booleanValue) {
                SettingsManager.changePath(true, str2, Utils.getContext());
            } else {
                SettingsManager.changePath(false, SettingsManager.getStoragePath(Utils.getContext(), true), Utils.getContext());
                File file = new File(SettingsManager.DIRPATH);
                StringBuilder sb3 = new StringBuilder();
                String str3 = "onCreate2";
                sb3.append(str3);
                sb3.append(file.exists());
                AILog.d(str, sb3.toString());
                getExternalFilesDir(null).getAbsolutePath();
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(SettingsManager.getPhotoDirPath());
                StringBuilder sb4 = new StringBuilder();
                sb4.append(str3);
                sb4.append(file2.exists());
                AILog.d(str, sb4.toString());
                getExternalFilesDir(null).getAbsolutePath();
                if (!file2.exists()) {
                    file2.mkdirs();
                }
            }
        } else {
            SettingsManager.changePath(true, str2, Utils.getContext());
        }
        initView();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN9);
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
                    setItemIsNotShow(true);
                    this.editTV.setText("取消");
                    this.deleteLayout.setVisibility(0);
                    return;
                }
                this.isCheckbox = false;
                setItemIsNotShow(false);
                this.editTV.setText(str);
                this.deleteLayout.setVisibility(8);
                setAllNotCheckbox();
                return;
            case R.id.video_delete /*2131297366*/:
                deleteItem();
                this.isCheckbox = false;
                setItemIsNotShow(false);
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
                        AILog.d(TAG, sb2.toString());
                        deleteFiles(file);
                    }
                }
            }
            List<EntityVideo> list = this.entityVideoList;
            if (list != null) {
                list.clear();
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

    private void setItemIsNotShow(boolean z) {
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
                ImageView imageView = (ImageView) viewHolder.getView(R.id.offline_video_img);
                String str = "-";
                if (!entityVideo.name.isEmpty()) {
                    String[] split = entityVideo.name.split(str);
                    StringBuilder sb = new StringBuilder();
                    sb.append("spName");
                    sb.append(split[0]);
                    String sb2 = sb.toString();
                    String str2 = OfflineVideoDetailActivity.TAG;
                    AILog.d(str2, sb2);
                    if (split.length > 0) {
                        String photoDirPath = SettingsManager.getPhotoDirPath();
                        File file = new File(photoDirPath);
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("initAdapterdirFile.exists()");
                        sb3.append(file.exists());
                        sb3.append("  ");
                        sb3.append(photoDirPath);
                        AILog.d(str2, sb3.toString());
                        if (file.exists()) {
                            String str3 = split[0];
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append(photoDirPath);
                            sb4.append(File.separator);
                            sb4.append(str3);
                            sb4.append(".jpg");
                            File file2 = new File(sb4.toString());
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("photoPath");
                            sb5.append(photoDirPath);
                            sb5.append(File.separator);
                            sb5.append(str3);
                            sb5.append("    ");
                            sb5.append(file2.exists());
                            AILog.d(str2, sb5.toString());
                            if (file2.exists()) {
                                Glide.with(Utils.getContext()).load(file2).into(imageView);
                            }
                        }
                    }
                }
                if (entityVideo.name.contains(str)) {
                    String[] split2 = entityVideo.name.split(str);
                    if (split2.length >= 3) {
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append(split2[0]);
                        sb6.append(" ");
                        sb6.append(split2[1]);
                        viewHolder.setText(R.id.item_offlinevideo_title, sb6.toString());
                    } else {
                        viewHolder.setText(R.id.item_offlinevideo_title, entityVideo.name);
                    }
                }
                viewHolder.setText(R.id.item_offlinevideo_size, OfflineVideoDetailActivity.this.formetFileUnit(entityVideo.size));
                StringBuilder sb7 = new StringBuilder();
                sb7.append(entityVideo.totalpart);
                sb7.append("个视频");
                viewHolder.setText(R.id.item_offlinevideo_num, sb7.toString());
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
                        int i = i - 1;
                        StringBuilder sb = new StringBuilder();
                        sb.append(Param.LOCATION);
                        sb.append(i);
                        String sb2 = sb.toString();
                        String str = OfflineVideoDetailActivity.TAG;
                        AILog.d(str, sb2);
                        if (i < 0) {
                            i = 0;
                        }
                        if (!OfflineVideoDetailActivity.this.isCheckbox) {
                            String str2 = entityVideo.name;
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("*** urll: ");
                            sb3.append(str2);
                            AILog.d(str, sb3.toString());
                            String absolutePath = new File(MUtils.getSaveFileDir(str2), SettingsManager.M3U8).getAbsolutePath();
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("*** url: ");
                            sb4.append(absolutePath);
                            AILog.d(str, sb4.toString());
                            Bundle bundle = new Bundle();
                            bundle.putString("M3U8_URL", absolutePath);
                            bundle.putString("title", entityVideo.name);
                            OfflineVideoDetailActivity.this.gotoActivity(bundle, VideoFullScreenActivity.class);
                        } else if (((EntityVideo) OfflineVideoDetailActivity.this.entityVideoList.get(i)).isNotCheck) {
                            ((EntityVideo) OfflineVideoDetailActivity.this.entityVideoList.get(i)).isNotCheck = false;
                            if (OfflineVideoDetailActivity.this.mAdapter != null) {
                                OfflineVideoDetailActivity.this.mAdapter.notifyDataSetChanged();
                            }
                        } else {
                            ((EntityVideo) OfflineVideoDetailActivity.this.entityVideoList.get(i)).isNotCheck = true;
                            if (OfflineVideoDetailActivity.this.mAdapter != null) {
                                OfflineVideoDetailActivity.this.mAdapter.notifyDataSetChanged();
                            }
                        }
                    }
                });
            }
        };
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mRecyclerView.setLoadingListener(new LoadingListener() {
            public void onRefresh() {
                if (OfflineVideoDetailActivity.this.nameList != null) {
                    OfflineVideoDetailActivity.this.nameList.clear();
                }
                if (OfflineVideoDetailActivity.this.entityVideoList != null) {
                    OfflineVideoDetailActivity.this.entityVideoList.clear();
                }
                OfflineVideoDetailActivity.this.getFileName();
                if (OfflineVideoDetailActivity.this.mAdapter != null) {
                    OfflineVideoDetailActivity.this.mAdapter.notifyDataSetChanged();
                }
                if (OfflineVideoDetailActivity.this.mRecyclerView != null) {
                    OfflineVideoDetailActivity.this.mRecyclerView.refreshComplete();
                }
            }

            public void onLoadMore() {
                OfflineVideoDetailActivity.this.mRecyclerView.loadMoreComplete();
            }
        });
    }

    /* access modifiers changed from: private */
    public String getFileName() {
        String str = "";
        if (SettingsManager.checkSDCard()) {
            String dirPath = SettingsManager.getDirPath();
            StringBuilder sb = new StringBuilder();
            sb.append("downloadPath：：   ");
            sb.append(dirPath);
            String sb2 = sb.toString();
            String str2 = TAG;
            AILog.d(str2, sb2);
            File file = new File(dirPath);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("dir.exists()：：   ");
            sb3.append(file.exists());
            AILog.d(str2, sb3.toString());
            if (file.exists()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    for (File file2 : listFiles) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("file.getName()：：   ");
                        sb4.append(file2.getName());
                        AILog.d(str2, sb4.toString());
                        String name2 = file2.getName();
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("fileName");
                        sb5.append(name2);
                        AILog.d(str2, sb5.toString());
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append("文件名mp4：：   ");
                        sb6.append(name2);
                        AILog.d(str2, sb6.toString());
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
                        AILog.d(str2, sb9.toString());
                        if (file3.exists()) {
                            if (entityVideo.name.contains(this.title)) {
                                this.entityVideoList.add(entityVideo);
                            }
                            this.nameList.add(name2);
                        }
                        if (this.entityVideoList.size() > 0) {
                            this.editTV.setVisibility(0);
                            this.noDataLayout.setVisibility(8);
                            if (this.entityVideoList.size() > 1) {
                                ArrayList arrayList = new ArrayList();
                                for (int i = 0; i < this.entityVideoList.size(); i++) {
                                    EntityVideo entityVideo2 = (EntityVideo) this.entityVideoList.get(i);
                                    String str3 = "-";
                                    if (entityVideo2.name.contains(str3)) {
                                        Matcher matcher = Pattern.compile("[^0-9]").matcher(entityVideo2.name.split(str3)[1]);
                                        if (!StringUtils.isEmpty(matcher.replaceAll(str).trim())) {
                                            arrayList.add(Integer.valueOf(Integer.parseInt(matcher.replaceAll(str).trim())));
                                        }
                                    }
                                }
                                bubbleSort(arrayList);
                            }
                        } else {
                            this.editTV.setVisibility(8);
                        }
                    }
                }
                return str;
            } else if (this.entityVideoList.size() > 0) {
                this.editTV.setVisibility(0);
                this.noDataLayout.setVisibility(8);
            } else {
                this.editTV.setVisibility(8);
            }
        }
        return str;
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

    public void bubbleSort(List<Integer> list) {
        int i;
        int size = list.size();
        while (true) {
            size--;
            i = 0;
            if (size <= 0) {
                break;
            }
            while (i < size) {
                int i2 = i + 1;
                if (((Integer) list.get(i)).intValue() > ((Integer) list.get(i2)).intValue()) {
                    int intValue = ((Integer) list.get(i)).intValue();
                    list.set(i, list.get(i2));
                    list.set(i2, Integer.valueOf(intValue));
                    EntityVideo entityVideo = (EntityVideo) this.entityVideoList.get(i);
                    List<EntityVideo> list2 = this.entityVideoList;
                    list2.set(i, list2.get(i2));
                    this.entityVideoList.set(i2, entityVideo);
                }
                i = i2;
            }
        }
        while (i < list.size()) {
            StringBuilder sb = new StringBuilder();
            sb.append("arr");
            sb.append(list.get(i));
            AILog.d(TAG, sb.toString());
            i++;
        }
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
