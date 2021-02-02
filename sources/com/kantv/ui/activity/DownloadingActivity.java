package com.kantv.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.exoplayer2.C;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.adapter.CommonAdapter;
import com.kantv.ui.adapter.ViewHolder;
import com.kantv.ui.bean.EntityVideo;
import com.kantv.ui.bean.TestEvent;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.download.MyDownLoadService;
import com.kantv.ui.download.SettingsManager;
import com.kantv.ui.download.VideoDownloadManager;
import com.kantv.ui.m3u8downloader.M3U8Downloader;
import com.kantv.ui.m3u8downloader.bean.M3U8Task;
import com.kantv.ui.utils.GlideUtils;
import com.kantv.ui.utils.NetWorkUtils;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.view.AlertDialog;
import debug.KanApplication;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.ResponseBody;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public class DownloadingActivity extends PackageActivity {
    private static final String TAG = "DownloadingActivity";
    /* access modifiers changed from: private */
    public static boolean mobileReDownloadFlag = false;
    @BindView(2131297024)
    TextView actionbarMenu;
    @BindView(2131296483)
    TextView actionbarTitle;
    /* access modifiers changed from: private */
    public boolean bCheckbox = false;
    private long currentTime = 0;
    @BindView(2131296506)
    LinearLayout deleteLayout;
    /* access modifiers changed from: private */
    public List<EntityVideo> entityVideoList = new ArrayList();
    /* access modifiers changed from: private */
    public CommonAdapter<EntityVideo> mAdapter;
    @BindView(2131296532)
    RecyclerView mRecyclerView;
    private List<String> nameList = new ArrayList();
    private boolean networkStatusToastFlag = false;
    private List<String> pauseList = new ArrayList();
    protected Map<String, String> request = new HashMap();
    @BindView(2131296367)
    LinearLayout startLayout;
    @BindView(2131297239)
    LinearLayout startLl;
    @BindView(2131296368)
    LinearLayout stopLayout;
    /* access modifiers changed from: private */
    public String trueUrl = "";

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_downloading);
        initBase();
        EventBus.getDefault().register(this);
        initView();
        initData();
        getFileSize();
        initAdapter();
        initQueue();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN13);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        wifiStatusHandle();
    }

    private void initQueue() {
        for (int i = 0; i < this.entityVideoList.size(); i++) {
            StringBuilder sb = new StringBuilder();
            sb.append("initQueue state 前");
            sb.append(((EntityVideo) this.entityVideoList.get(i)).name);
            sb.append("(第");
            sb.append(((EntityVideo) this.entityVideoList.get(i)).part);
            sb.append("集)");
            sb.append(((EntityVideo) this.entityVideoList.get(i)).state);
            sb.append("   ");
            sb.append(((EntityVideo) this.entityVideoList.get(i)).progress);
            AILog.d(TAG, sb.toString());
        }
        notifyChanged();
    }

    private void initData() {
        VideoDownloadManager.instance();
        VideoDownloadManager.getDownloadingData2();
        VideoDownloadManager.instance();
        this.entityVideoList = VideoDownloadManager.entityVideoList;
    }

    private void initView() {
        this.actionbarTitle.setText("正在缓存");
        this.actionbarMenu.setVisibility(0);
    }

    private void initAdapter() {
        StringBuilder sb = new StringBuilder();
        sb.append("entityVideoList");
        sb.append(this.entityVideoList.size());
        AILog.d(TAG, sb.toString());
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(Utils.getContext()));
        this.mAdapter = new CommonAdapter<EntityVideo>(Utils.getContext(), R.layout.item_downloading, this.entityVideoList) {
            /* access modifiers changed from: protected */
            public void convert(ViewHolder viewHolder, final EntityVideo entityVideo, final int i) {
                StringBuilder sb = new StringBuilder();
                sb.append("string8Bean");
                sb.append(entityVideo.name);
                sb.append("  setProgressText(string8Bean)  ");
                sb.append(DownloadingActivity.this.setProgressText(entityVideo));
                sb.append("     ");
                sb.append(entityVideo.progress);
                String sb2 = sb.toString();
                String str = DownloadingActivity.TAG;
                AILog.d(str, sb2);
                int i2 = (int) (entityVideo.progress * 100.0f);
                StringBuilder sb3 = new StringBuilder();
                sb3.append("initAdapterprogress");
                sb3.append(entityVideo.name);
                sb3.append("  ");
                sb3.append(entityVideo.part);
                sb3.append("    ");
                sb3.append(i2);
                AILog.d(str, sb3.toString());
                CheckBox checkBox = (CheckBox) viewHolder.getView(R.id.item_cache_check);
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
                if (i2 >= 0 && i2 <= 100) {
                    viewHolder.setProgress(R.id.progressbar, i2);
                }
                viewHolder.setText(R.id.item_cache_title, entityVideo.name);
                GlideUtils.loadimage(entityVideo.photo, (ImageView) viewHolder.getView(R.id.video_cache_cover));
                if (entityVideo.size > 0) {
                    viewHolder.setVisible(R.id.videoSizeSum, true);
                    viewHolder.setText(R.id.videoSizeSum, DownloadingActivity.this.formetFileUnit(entityVideo.size * 1024 * 1024));
                }
                String access$000 = DownloadingActivity.this.setProgressText(entityVideo);
                if (entityVideo.state == 2) {
                    AILog.d(str, "下载中");
                    String str2 = "-";
                    if (access$000.contains(str2)) {
                        String[] split = access$000.split(str2);
                        viewHolder.setText(R.id.item_cache_name, split[0]);
                        if (split.length > 1) {
                            viewHolder.setText(R.id.pause, split[1]);
                        }
                    }
                } else {
                    String str3 = "准备缓存";
                    String str4 = "";
                    if (entityVideo.state == -1) {
                        AILog.d(str, "加入队列等待下载");
                        viewHolder.setText(R.id.pause, str4);
                        viewHolder.setText(R.id.item_cache_name, str3);
                    } else if (entityVideo.state == 3) {
                        String str5 = "下载完成";
                        AILog.d(str, str5);
                        viewHolder.setText(R.id.pause, str4);
                        viewHolder.setText(R.id.item_cache_name, str5);
                    } else if (entityVideo.state == 4) {
                        viewHolder.setText(R.id.pause, str4);
                        viewHolder.setText(R.id.item_cache_name, "下载出错了");
                    } else if (entityVideo.state == 6) {
                        viewHolder.setText(R.id.pause, str4);
                        viewHolder.setText(R.id.item_cache_name, "空间不足");
                    } else if (entityVideo.state == 1) {
                        viewHolder.setText(R.id.pause, str4);
                        viewHolder.setText(R.id.item_cache_name, str3);
                    } else {
                        String str6 = "暂停";
                        if (entityVideo.state == 5) {
                            viewHolder.setText(R.id.pause, str4);
                            viewHolder.setText(R.id.item_cache_name, str6);
                        } else if (entityVideo.state == 0) {
                            viewHolder.setText(R.id.pause, str4);
                            viewHolder.setText(R.id.item_cache_name, str6);
                        } else {
                            AILog.d(str, "暂停中");
                            viewHolder.setText(R.id.pause, str4);
                            viewHolder.setText(R.id.item_cache_name, "其他情况");
                        }
                    }
                }
                StringBuilder sb4 = new StringBuilder();
                sb4.append("(第");
                sb4.append(entityVideo.part);
                sb4.append("集）");
                viewHolder.setText(R.id.item_part, sb4.toString());
                viewHolder.setOnClickListener(R.id.item_cache_rl, new OnClickListener() {
                    public void onClick(View view) {
                        StringBuilder sb = new StringBuilder();
                        String str = "url";
                        sb.append(str);
                        sb.append(entityVideo.url);
                        sb.append("   position  ");
                        sb.append(i);
                        String sb2 = sb.toString();
                        String str2 = DownloadingActivity.TAG;
                        AILog.d(str2, sb2);
                        if (!DownloadingActivity.this.isQuicklyClick()) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(entityVideo.name);
                            String str3 = "(第";
                            sb3.append(str3);
                            sb3.append(entityVideo.part);
                            sb3.append("集）");
                            sb3.toString();
                            int i = i;
                            int i2 = 0;
                            if (i < 0) {
                                i = 0;
                            }
                            if (DownloadingActivity.this.bCheckbox) {
                                if (((EntityVideo) DownloadingActivity.this.entityVideoList.get(i)).isNotCheck) {
                                    ((EntityVideo) DownloadingActivity.this.entityVideoList.get(i)).isNotCheck = false;
                                    if (DownloadingActivity.this.mAdapter != null) {
                                        DownloadingActivity.this.mAdapter.notifyDataSetChanged();
                                    }
                                } else {
                                    ((EntityVideo) DownloadingActivity.this.entityVideoList.get(i)).isNotCheck = true;
                                    if (DownloadingActivity.this.mAdapter != null) {
                                        DownloadingActivity.this.mAdapter.notifyDataSetChanged();
                                    }
                                }
                            } else if (!DownloadingActivity.this.mobileStatusRestartDownload()) {
                                VideoDownloadManager.instance();
                                VideoDownloadManager.getDownloadingData2();
                                VideoDownloadManager.instance();
                                if (VideoDownloadManager.entityVideoList.size() > 0) {
                                    while (true) {
                                        VideoDownloadManager.instance();
                                        if (i2 >= VideoDownloadManager.entityVideoList.size()) {
                                            break;
                                        }
                                        VideoDownloadManager.instance();
                                        if (((EntityVideo) VideoDownloadManager.entityVideoList.get(i2)).url.equals(((EntityVideo) DownloadingActivity.this.entityVideoList.get(i)).url)) {
                                            StringBuilder sb4 = new StringBuilder();
                                            sb4.append("setOnClickListenername");
                                            sb4.append(((EntityVideo) DownloadingActivity.this.entityVideoList.get(i)).name);
                                            sb4.append(str3);
                                            sb4.append(((EntityVideo) DownloadingActivity.this.entityVideoList.get(i)).part);
                                            sb4.append("集)");
                                            AILog.d(str2, sb4.toString());
                                            Intent intent = new Intent(DownloadingActivity.this, MyDownLoadService.class);
                                            intent.putExtra(str, ((EntityVideo) DownloadingActivity.this.entityVideoList.get(i)).url);
                                            StringBuilder sb5 = new StringBuilder();
                                            sb5.append(((EntityVideo) DownloadingActivity.this.entityVideoList.get(i)).name);
                                            sb5.append("-(第");
                                            sb5.append(((EntityVideo) DownloadingActivity.this.entityVideoList.get(i)).part);
                                            sb5.append("集)-");
                                            sb5.append(((EntityVideo) DownloadingActivity.this.entityVideoList.get(i2)).id);
                                            intent.putExtra("name", sb5.toString());
                                            DownloadingActivity.this.startService(intent);
                                            break;
                                        }
                                        i2++;
                                    }
                                }
                            }
                        }
                    }
                });
            }
        };
        this.mRecyclerView.setAdapter(this.mAdapter);
    }

    public void RecursionDeleteFile(File file) {
        StringBuilder sb = new StringBuilder();
        sb.append("执行删除文件");
        sb.append(file.getAbsolutePath());
        AILog.d(TAG, sb.toString());
        if (file.isFile()) {
            file.delete();
            return;
        }
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null || listFiles.length == 0) {
                file.delete();
            } else {
                for (File RecursionDeleteFile : listFiles) {
                    RecursionDeleteFile(RecursionDeleteFile);
                }
                file.delete();
            }
        }
    }

    /* access modifiers changed from: private */
    public boolean isQuicklyClick() {
        boolean z;
        if (System.currentTimeMillis() - this.currentTime <= 500) {
            z = true;
            AILog.d("is too quickly click!", "");
        } else {
            z = false;
        }
        this.currentTime = System.currentTimeMillis();
        return z;
    }

    private boolean isQuicklyClick2() {
        boolean z;
        if (System.currentTimeMillis() - this.currentTime <= 700) {
            z = true;
            AILog.d("is too quickly click!", "");
        } else {
            z = false;
        }
        this.currentTime = System.currentTimeMillis();
        return z;
    }

    @OnClick({2131296479, 2131296368, 2131296367, 2131296537, 2131296455, 2131296505})
    public void onClick(View view) {
        int id = view.getId();
        String str = "集)";
        String str2 = "(第";
        String str3 = TAG;
        int i = 0;
        switch (id) {
            case R.id.allstart_ll /*2131296367*/:
                String str4 = "全部开始";
                AILog.d(str3, str4);
                if (!isQuicklyClick2()) {
                    VideoDownloadManager.instance();
                    if (VideoDownloadManager.entityVideoList.size() > 0 && !mobileStatusRestartDownload()) {
                        while (true) {
                            VideoDownloadManager.instance();
                            if (i >= VideoDownloadManager.entityVideoList.size()) {
                                break;
                            } else {
                                VideoDownloadManager.instance();
                                if (((EntityVideo) VideoDownloadManager.entityVideoList.get(i)).state != 1) {
                                    VideoDownloadManager.instance();
                                    if (((EntityVideo) VideoDownloadManager.entityVideoList.get(i)).state != -1) {
                                        VideoDownloadManager.instance();
                                        if (((EntityVideo) VideoDownloadManager.entityVideoList.get(i)).state != 2) {
                                            StringBuilder sb = new StringBuilder();
                                            sb.append(str4);
                                            sb.append(((EntityVideo) this.entityVideoList.get(i)).name);
                                            sb.append(str2);
                                            sb.append(((EntityVideo) this.entityVideoList.get(i)).part);
                                            sb.append(str);
                                            AILog.d(str3, sb.toString());
                                            Intent intent = new Intent(this, MyDownLoadService.class);
                                            intent.putExtra("url", ((EntityVideo) this.entityVideoList.get(i)).url);
                                            StringBuilder sb2 = new StringBuilder();
                                            sb2.append(((EntityVideo) this.entityVideoList.get(i)).name);
                                            sb2.append("-(第");
                                            sb2.append(((EntityVideo) this.entityVideoList.get(i)).part);
                                            sb2.append("集)-");
                                            sb2.append(((EntityVideo) this.entityVideoList.get(i)).id);
                                            intent.putExtra("name", sb2.toString());
                                            startService(intent);
                                        }
                                    }
                                }
                                i++;
                            }
                        }
                    } else {
                        return;
                    }
                }
                break;
            case R.id.allstop_ll /*2131296368*/:
                AILog.d(str3, "全部暂停");
                if (!isQuicklyClick2()) {
                    this.pauseList.clear();
                    VideoDownloadManager.instance();
                    if (VideoDownloadManager.entityVideoList.size() > 0) {
                        while (true) {
                            VideoDownloadManager.instance();
                            if (i >= VideoDownloadManager.entityVideoList.size()) {
                                M3U8Downloader.getInstance().pause(this.pauseList);
                                this.mAdapter.notifyDataSetChanged();
                                break;
                            } else {
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("setOnClickListenername");
                                sb3.append(((EntityVideo) this.entityVideoList.get(i)).name);
                                sb3.append(str2);
                                sb3.append(((EntityVideo) this.entityVideoList.get(i)).part);
                                sb3.append(str);
                                AILog.d(str3, sb3.toString());
                                this.pauseList.add(((EntityVideo) this.entityVideoList.get(i)).url);
                                i++;
                            }
                        }
                    }
                }
                break;
            case R.id.choice_all /*2131296455*/:
                if (!isQuicklyClick()) {
                    setAllCheckbox();
                    break;
                }
                break;
            case R.id.common_title_left /*2131296479*/:
                finish();
                break;
            case R.id.delete /*2131296505*/:
                if (!isQuicklyClick()) {
                    deleterItem();
                    break;
                }
                break;
            case R.id.edit_ll /*2131296537*/:
            case R.id.offline_video_edit /*2131297024*/:
                String str5 = "编辑";
                if (!this.actionbarMenu.getText().equals(str5)) {
                    this.bCheckbox = false;
                    setItemtIsNotShow(false);
                    this.actionbarMenu.setText(str5);
                    this.deleteLayout.setVisibility(8);
                    this.startLl.setVisibility(0);
                    setAllnotCheckbox();
                    break;
                } else {
                    this.bCheckbox = true;
                    setItemtIsNotShow(true);
                    this.actionbarMenu.setText("取消");
                    this.deleteLayout.setVisibility(0);
                    this.startLl.setVisibility(8);
                    break;
                }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(M3U8Task m3U8Task) {
        if (m3U8Task.tag == 10003) {
            removeDownloard();
        } else if (m3U8Task.tag == 0) {
            wifiStatusHandle();
            notifyChanged(m3U8Task);
        }
    }

    private void removeDownloard() {
        StringBuilder sb = new StringBuilder();
        sb.append("entityVideoList.size");
        sb.append(this.entityVideoList.size());
        AILog.d(TAG, sb.toString());
        CommonAdapter<EntityVideo> commonAdapter = this.mAdapter;
        if (commonAdapter != null) {
            commonAdapter.notifyDataSetChanged();
        }
        initAdapter();
    }

    private void notifyChanged(M3U8Task m3U8Task) {
        if (this.entityVideoList.size() > 0) {
            for (int i = 0; i < this.entityVideoList.size(); i++) {
                EntityVideo entityVideo = (EntityVideo) this.entityVideoList.get(i);
                StringBuilder sb = new StringBuilder();
                sb.append("notifyChanged ");
                sb.append(entityVideo.name);
                sb.append("");
                sb.append(entityVideo.part);
                sb.append(" state  ");
                sb.append(entityVideo.state);
                sb.append("    progress_gray  ");
                sb.append(entityVideo.progress);
                AILog.d(TAG, sb.toString());
            }
            CommonAdapter<EntityVideo> commonAdapter = this.mAdapter;
            if (commonAdapter != null) {
                commonAdapter.notifyDataSetChanged();
            }
        }
    }

    private void notifyChanged() {
        if (this.entityVideoList.size() > 0) {
            for (int i = 0; i < this.entityVideoList.size(); i++) {
                EntityVideo entityVideo = (EntityVideo) this.entityVideoList.get(i);
                StringBuilder sb = new StringBuilder();
                sb.append("notifyChangednotifyChanged");
                sb.append(entityVideo.name);
                sb.append("");
                sb.append(entityVideo.part);
                sb.append(" state");
                sb.append(entityVideo.state);
                String sb2 = sb.toString();
                String str = TAG;
                AILog.d(str, sb2);
                StringBuilder sb3 = new StringBuilder();
                sb3.append("isNOtShow");
                sb3.append(((EntityVideo) this.entityVideoList.get(i)).isNOtShow);
                AILog.d(str, sb3.toString());
            }
            CommonAdapter<EntityVideo> commonAdapter = this.mAdapter;
            if (commonAdapter != null) {
                commonAdapter.notifyDataSetChanged();
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

    private void setAllCheckbox() {
        for (int i = 0; i < this.entityVideoList.size(); i++) {
            ((EntityVideo) this.entityVideoList.get(i)).isNotCheck = true;
        }
        CommonAdapter<EntityVideo> commonAdapter = this.mAdapter;
        if (commonAdapter != null) {
            commonAdapter.notifyDataSetChanged();
        }
    }

    private void setAllnotCheckbox() {
        for (int i = 0; i < this.entityVideoList.size(); i++) {
            ((EntityVideo) this.entityVideoList.get(i)).isNotCheck = false;
        }
        CommonAdapter<EntityVideo> commonAdapter = this.mAdapter;
        if (commonAdapter != null) {
            commonAdapter.notifyDataSetChanged();
        }
    }

    private void deleterItem() {
        String str;
        if (this.entityVideoList.size() > 0) {
            String str2 = TAG;
            AILog.d(str2, "删除");
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            int i = 0;
            while (true) {
                str = "";
                if (i >= this.entityVideoList.size()) {
                    break;
                }
                if (((EntityVideo) this.entityVideoList.get(i)).isNotCheck) {
                    arrayList.add(((EntityVideo) this.entityVideoList.get(i)).url);
                    arrayList2.add(((EntityVideo) this.entityVideoList.get(i)).name.trim().replace(" ", str));
                    arrayList3.add(((EntityVideo) this.entityVideoList.get(i)).part);
                    arrayList4.add(((EntityVideo) this.entityVideoList.get(i)).id);
                    if (((EntityVideo) this.entityVideoList.get(i)).state == 2 || ((EntityVideo) this.entityVideoList.get(i)).state == -1 || ((EntityVideo) this.entityVideoList.get(i)).state == 1 || ((EntityVideo) this.entityVideoList.get(i)).state == 4) {
                        M3U8Downloader.getInstance().pause(((EntityVideo) this.entityVideoList.get(i)).url);
                    }
                }
                i++;
            }
            VideoDownloadManager.instance();
            VideoDownloadManager.removeDownloadList(arrayList4);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                VideoDownloadManager.instance();
                VideoDownloadManager.getDownloadingData3((String) arrayList.get(i2));
            }
            getFileName();
            for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                String str3 = (String) arrayList2.get(i3);
                String str4 = (String) arrayList3.get(i3);
                int i4 = 0;
                while (true) {
                    if (i4 >= this.nameList.size()) {
                        break;
                    } else if (!((String) this.nameList.get(i4)).contains(str3) || !((String) this.nameList.get(i4)).contains(str4)) {
                        i4++;
                    } else {
                        String dirPath = SettingsManager.getDirPath();
                        StringBuilder sb = new StringBuilder();
                        sb.append(dirPath);
                        sb.append(File.separator);
                        sb.append((String) this.nameList.get(i4));
                        File file = new File(sb.toString());
                        StringBuilder sb2 = new StringBuilder();
                        String str5 = "路径";
                        sb2.append(str5);
                        sb2.append(file.getAbsolutePath());
                        sb2.append("       ");
                        sb2.append(file.exists());
                        AILog.d(str2, sb2.toString());
                        if (file.exists()) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(str5);
                            sb3.append(file.getAbsolutePath());
                            AILog.d(str2, sb3.toString());
                            RecursionDeleteFile(file);
                        }
                    }
                }
            }
            CommonAdapter<EntityVideo> commonAdapter = this.mAdapter;
            if (commonAdapter != null) {
                commonAdapter.notifyDataSetChanged();
            }
            M3U8Task m3U8Task = new M3U8Task(str);
            m3U8Task.tag = 10003;
            TestEvent testEvent = new TestEvent();
            testEvent.message = "videoplay";
            EventBus.getDefault().post(testEvent);
            EventBus.getDefault().post(m3U8Task);
        }
    }

    private String getFileName() {
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
                        String name = file2.getName();
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("fileName");
                        sb5.append(name);
                        AILog.d(str2, sb5.toString());
                        String absolutePath = file2.getAbsolutePath();
                        File file3 = new File(absolutePath);
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append("filePath");
                        sb6.append(absolutePath);
                        sb6.append("     ");
                        sb6.append(file3.exists());
                        AILog.d(str2, sb6.toString());
                        if (file3.exists()) {
                            this.nameList.add(name);
                        }
                    }
                }
                return str;
            } else if (this.entityVideoList.size() > 0) {
                this.actionbarMenu.setVisibility(0);
            } else {
                this.actionbarMenu.setVisibility(8);
            }
        }
        return str;
    }

    /* access modifiers changed from: private */
    public String setProgressText(EntityVideo entityVideo) {
        switch (entityVideo.getState()) {
            case -1:
                return "加入队列等待下载";
            case 1:
                return "准备中";
            case 2:
                StringBuilder sb = new StringBuilder();
                sb.append("下载中-");
                sb.append(entityVideo.getFormatSpeed());
                return sb.toString();
            case 3:
                return "成功下载";
            case 4:
                return "下载出错了";
            case 5:
                return "暂停中";
            case 6:
                return "存贮空间不足";
            default:
                return "";
        }
    }

    public void getFileSize() {
        String str;
        String str2;
        if (this.entityVideoList.size() > 0) {
            int i = 0;
            while (true) {
                int size = this.entityVideoList.size();
                str = "   progress_gray  ";
                str2 = TAG;
                if (i >= size) {
                    break;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("8yjn  getFileSizename    ");
                sb.append(((EntityVideo) this.entityVideoList.get(i)).name);
                sb.append(str);
                sb.append(((EntityVideo) this.entityVideoList.get(i)).progress);
                AILog.d(str2, sb.toString());
                i++;
            }
            for (int i2 = 0; i2 < this.entityVideoList.size(); i2++) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(((EntityVideo) this.entityVideoList.get(i2)).name.trim().replace(" ", ""));
                sb2.append("-(第");
                sb2.append(((EntityVideo) this.entityVideoList.get(i2)).part);
                sb2.append("集)-");
                sb2.append(((EntityVideo) this.entityVideoList.get(i2)).id);
                String sb3 = sb2.toString();
                StringBuilder sb4 = new StringBuilder();
                sb4.append(SettingsManager.getDirPath());
                sb4.append(File.separator);
                sb4.append(sb3);
                File file = new File(sb4.toString());
                if (file.exists()) {
                    File[] listFiles = file.listFiles();
                    if (listFiles != null) {
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("tsNumble");
                        sb5.append(((EntityVideo) this.entityVideoList.get(i2)).tsNumble);
                        sb5.append("    files.length ");
                        sb5.append(listFiles.length);
                        AILog.d(str2, sb5.toString());
                        if (((EntityVideo) this.entityVideoList.get(i2)).tsNumble != 0) {
                            float length = ((float) listFiles.length) / ((float) ((EntityVideo) this.entityVideoList.get(i2)).tsNumble);
                            ((EntityVideo) this.entityVideoList.get(i2)).progress = length;
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append("getFileSizename    ");
                            sb6.append(sb3);
                            sb6.append(str);
                            sb6.append(length);
                            AILog.d(str2, sb6.toString());
                        }
                    }
                } else {
                    ((EntityVideo) this.entityVideoList.get(i2)).progress = 0.0f;
                }
            }
            for (int i3 = 0; i3 < this.entityVideoList.size(); i3++) {
                StringBuilder sb7 = new StringBuilder();
                sb7.append("9yjn  getFileSizename    ");
                sb7.append(((EntityVideo) this.entityVideoList.get(i3)).name);
                sb7.append(str);
                sb7.append(((EntityVideo) this.entityVideoList.get(i3)).progress);
                AILog.d(str2, sb7.toString());
            }
        }
    }

    public float getOneFileSize(String str, String str2, int i) {
        String str3;
        String str4;
        if (this.entityVideoList.size() > 0) {
            int i2 = 0;
            while (true) {
                int size = this.entityVideoList.size();
                str3 = "   progress_gray  ";
                str4 = TAG;
                if (i2 >= size) {
                    break;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("8yjn  getFileSizename    ");
                sb.append(((EntityVideo) this.entityVideoList.get(i2)).name);
                sb.append(str3);
                sb.append(((EntityVideo) this.entityVideoList.get(i2)).progress);
                AILog.d(str4, sb.toString());
                i2++;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append("-(第");
            sb2.append(str2);
            sb2.append("集)-");
            sb2.append(((EntityVideo) this.entityVideoList.get(i)).id);
            String sb3 = sb2.toString();
            StringBuilder sb4 = new StringBuilder();
            sb4.append(SettingsManager.getDirPath());
            sb4.append(File.separator);
            sb4.append(sb3);
            File file = new File(sb4.toString());
            if (file.exists()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("tsNumble");
                    sb5.append(((EntityVideo) this.entityVideoList.get(i)).tsNumble);
                    sb5.append("    files.length ");
                    sb5.append(listFiles.length);
                    AILog.d(str4, sb5.toString());
                    float length = ((float) listFiles.length) / ((float) ((EntityVideo) this.entityVideoList.get(i)).tsNumble);
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("getFileSizename    ");
                    sb6.append(sb3);
                    sb6.append(str3);
                    sb6.append(length);
                    AILog.d(str4, sb6.toString());
                    return length;
                }
                for (int i3 = 0; i3 < this.entityVideoList.size(); i3++) {
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append("9yjn  getFileSizename    ");
                    sb7.append(((EntityVideo) this.entityVideoList.get(i3)).name);
                    sb7.append(str3);
                    sb7.append(((EntityVideo) this.entityVideoList.get(i3)).progress);
                    AILog.d(str4, sb7.toString());
                }
            }
        }
        return 0.0f;
    }

    public void requestSwitchOver(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("requestSwitchOver");
        sb.append(str);
        String sb2 = sb.toString();
        String str2 = TAG;
        AILog.d(str2, sb2);
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        this.request.put("part_id", str);
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        Api.getService().requestUrl(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!DownloadingActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Thread.currentThread().getName() requestSwitchOver ");
                    sb.append(Thread.currentThread().getName());
                    String sb2 = sb.toString();
                    String str = DownloadingActivity.TAG;
                    AILog.d(str, sb2);
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null) {
                        if (jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                            DownloadingActivity.this.trueUrl = jsonObject.optString("data");
                            String str2 = ",";
                            if (DownloadingActivity.this.trueUrl.contains(str2)) {
                                String[] split = DownloadingActivity.this.trueUrl.split(str2);
                                if (split.length == DownloadingActivity.this.entityVideoList.size()) {
                                    for (int i = 0; i < split.length; i++) {
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append("单集信息json   i  ");
                                        sb3.append(i);
                                        sb3.append(" ");
                                        sb3.append(split[i]);
                                        AILog.d(str, sb3.toString());
                                        VideoDownloadManager.instance();
                                        ((EntityVideo) VideoDownloadManager.entityVideoList.get(i)).url = split[i];
                                        new M3U8Task("").tag = 10000;
                                    }
                                }
                            } else {
                                VideoDownloadManager.instance();
                                if (VideoDownloadManager.entityVideoList.size() == 1) {
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append("单集信息json  一个 trueUrl  ");
                                    sb4.append(DownloadingActivity.this.trueUrl);
                                    AILog.d(str, sb4.toString());
                                    VideoDownloadManager.instance();
                                    ((EntityVideo) VideoDownloadManager.entityVideoList.get(0)).url = DownloadingActivity.this.trueUrl;
                                }
                            }
                        } else {
                            ToastUtils.showShort((CharSequence) "数据请求失败，请稍后再试。。");
                        }
                    }
                }
            }
        });
        StringBuilder sb3 = new StringBuilder();
        sb3.append("trueUrl");
        sb3.append(this.trueUrl);
        AILog.d(str2, sb3.toString());
    }

    private void initAlertDialog(String str, String str2, int i) {
        AlertDialog alertDialog = new AlertDialog(this);
        if (i == 0) {
            String str3 = "去设置";
            alertDialog.builder().setTitle(str).setMsg(str2).setNegativeButton("知道了", new OnClickListener() {
                public void onClick(View view) {
                }
            }).setPositiveButton(str3, new OnClickListener() {
                public void onClick(View view) {
                    Intent intent = new Intent(Utils.getContext(), SetActivity.class);
                    intent.setFlags(C.ENCODING_PCM_MU_LAW);
                    Utils.getContext().startActivity(intent);
                }
            }).show();
        } else if (1 == i) {
            String str4 = "继续";
            alertDialog.builder().setTitle(str).setMsg(str2).setNegativeButton("取消", new OnClickListener() {
                public void onClick(View view) {
                }
            }).setPositiveButton(str4, new OnClickListener() {
                public void onClick(View view) {
                    DownloadingActivity.mobileReDownloadFlag = true;
                    VideoDownloadManager.instance();
                    if (VideoDownloadManager.entityVideoList.size() > 0) {
                        int i = 0;
                        while (true) {
                            VideoDownloadManager.instance();
                            if (i < VideoDownloadManager.entityVideoList.size()) {
                                Intent intent = new Intent(DownloadingActivity.this, MyDownLoadService.class);
                                intent.putExtra("url", ((EntityVideo) DownloadingActivity.this.entityVideoList.get(i)).url);
                                StringBuilder sb = new StringBuilder();
                                sb.append(((EntityVideo) DownloadingActivity.this.entityVideoList.get(i)).name);
                                sb.append("-(第");
                                sb.append(((EntityVideo) DownloadingActivity.this.entityVideoList.get(i)).part);
                                sb.append("集)-");
                                sb.append(((EntityVideo) DownloadingActivity.this.entityVideoList.get(i)).id);
                                intent.putExtra("name", sb.toString());
                                DownloadingActivity.this.startService(intent);
                                i++;
                            } else {
                                return;
                            }
                        }
                    }
                }
            }).show();
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        EventBus.getDefault().unregister(this);
        int i = 0;
        while (true) {
            VideoDownloadManager.instance();
            if (i < VideoDownloadManager.entityVideoList.size()) {
                VideoDownloadManager.instance();
                ((EntityVideo) VideoDownloadManager.entityVideoList.get(i)).isNOtShow = false;
                VideoDownloadManager.instance();
                ((EntityVideo) VideoDownloadManager.entityVideoList.get(i)).isNotCheck = false;
                i++;
            } else {
                return;
            }
        }
    }

    private void wifiStatusHandle() {
        if (!NetWorkUtils.isWifi(Utils.getContext())) {
            boolean booleanValue = ((Boolean) PreferenceUtil.get(Utils.getContext(), "download_type_wifi", Boolean.valueOf(true))).booleanValue();
            if (!mobileReDownloadFlag) {
                if (booleanValue) {
                    this.pauseList.clear();
                    VideoDownloadManager.instance();
                    if (VideoDownloadManager.entityVideoList.size() > 0) {
                        int i = 0;
                        while (true) {
                            VideoDownloadManager.instance();
                            if (i >= VideoDownloadManager.entityVideoList.size()) {
                                break;
                            }
                            StringBuilder sb = new StringBuilder();
                            sb.append("*** no wifi pause video ");
                            sb.append(((EntityVideo) this.entityVideoList.get(i)).name);
                            sb.append("(第");
                            sb.append(((EntityVideo) this.entityVideoList.get(i)).part);
                            sb.append("集)");
                            AILog.d(TAG, sb.toString());
                            this.pauseList.add(((EntityVideo) this.entityVideoList.get(i)).url);
                            i++;
                        }
                        M3U8Downloader.getInstance().pause(this.pauseList);
                    }
                    if (!this.networkStatusToastFlag) {
                        this.networkStatusToastFlag = true;
                        initAlertDialog("提示", "检测到正在使用移动网络，已为您关闭下载", 0);
                    }
                }
            } else if (this.networkStatusToastFlag) {
                this.networkStatusToastFlag = false;
            }
        }
    }

    /* access modifiers changed from: private */
    public boolean mobileStatusRestartDownload() {
        if (!NetWorkUtils.isWifi(Utils.getContext())) {
            if (((Boolean) PreferenceUtil.get(Utils.getContext(), "download_type_wifi", Boolean.valueOf(true))).booleanValue()) {
                initAlertDialog("提示", "非Wifi网络缓存会消耗流量，是否继续？", 1);
                return true;
            }
        }
        return false;
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
}
