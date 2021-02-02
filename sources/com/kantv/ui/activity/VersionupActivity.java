package com.kantv.ui.activity;

import android.app.DownloadManager;
import android.app.DownloadManager.Query;
import android.app.DownloadManager.Request;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.exoplayer2.C;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.imkan.tv.R;
import com.kantv.common.api.Api;
import com.kantv.common.api.CommonCallBack;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.config.SignConfig;
import com.kantv.ui.photo.PermissionUtil;
import com.kantv.ui.utils.DownloadUtils;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.StatusCode;
import debug.KanApplication;
import java.io.File;
import java.util.Map;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class VersionupActivity extends PackageActivity {
    /* access modifiers changed from: private */
    public long downloadId;
    /* access modifiers changed from: private */
    public DownloadManager downloadManager;
    @BindView(2131296313)
    TextView mBt;
    @BindView(2131296314)
    TextView mInup;
    @BindView(2131296315)
    TextView mPresent;
    /* access modifiers changed from: private */
    public Runnable mQueryProgressRunnable = new Runnable() {
        public void run() {
            VersionupActivity.this.queryState();
            VersionupActivity.this.mMyHandler.postDelayed(VersionupActivity.this.mQueryProgressRunnable, 500);
        }
    };
    private boolean mReceiverTag = false;
    @BindView(2131296316)
    TextView mText;
    @BindView(2131296317)
    TextView mTitle;
    @BindView(2131296483)
    TextView mTitleTv;
    @BindView(2131297355)
    ProgressBar progressBar;
    private BroadcastReceiver receiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            VersionupActivity.this.checkStatus();
        }
    };
    /* access modifiers changed from: private */
    public String str;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131297294)
    LinearLayout titleRightLayout;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_versionup);
        initBase();
        initTitle();
        initVersionUp();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN24);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initTitle() {
        this.titleLeftLayout.setVisibility(0);
        this.mTitleTv.setText("版本更新");
        this.titleRightLayout.setVisibility(4);
        String str2 = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.VERSION_UPDATE_CONTENT, "");
        if (!StringUtils.isEmpty(str2)) {
            this.mText.setText(str2);
        }
    }

    private void initVersionUp() {
        this.downloadManager = (DownloadManager) getSystemService("download");
        this.request.clear();
        this.request.put("noncestr", SignConfig.noncestr);
        this.request.put("timestamp", SignConfig.timestamp);
        this.request.put("sbID", SignConfig.sbID);
        this.request.put("sign", SignConfig.sign);
        String str2 = "2";
        this.request.put("type", str2);
        Map map = this.request;
        StringBuilder sb = new StringBuilder();
        sb.append(Utils.getPackageInfo(this).versionCode);
        sb.append("");
        map.put("up", sb.toString());
        String str3 = "canala";
        if (Utils.isGooglePlayVersion()) {
            this.request.put(str3, str2);
        } else {
            this.request.put(str3, "1");
        }
        this.request.put("devicetype", "0");
        this.request.put("interfaceVersion", Utils.interfaceVersion);
        if (!StringUtils.isEmpty(KanApplication.token)) {
            this.request.put("_token", KanApplication.token);
        }
        Api.getService().version_up(this.request).enqueue(new CommonCallBack(this, true) {
            public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
                super.onResponse(call, response);
                if (!VersionupActivity.this.isDestroy && !StringUtils.isEmpty(this.json)) {
                    JSONObject jsonObject = StringUtils.toJsonObject(this.json);
                    if (jsonObject != null && jsonObject.optString("status").equals(StatusCode.STATUS_OK)) {
                        JSONObject jsonObject2 = StringUtils.toJsonObject(jsonObject.optString("data"));
                        if (jsonObject2 != null) {
                            String str = "version";
                            VersionupActivity.this.str = jsonObject2.optString(str);
                            String str2 = "content";
                            VersionupActivity.this.mText.setText(jsonObject2.optString(str2));
                            PreferenceUtil.put(Utils.getContext(), UserPreference.VERSION_UPDATE_CONTENT, jsonObject2.optString(str2));
                            if (Utils.getPackageInfo(VersionupActivity.this).versionCode < Integer.parseInt(jsonObject2.optString(str))) {
                                VersionupActivity.this.mPresent.setText("当前有版本更新");
                                String optString = jsonObject2.optString("link");
                                if (PermissionUtil.checkPermission(VersionupActivity.this, PackageActivity.PERMISSIONS_STORAGE, 164)) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(Environment.getExternalStorageDirectory().getAbsolutePath());
                                    sb.append("/downloadapk");
                                    File file = new File(sb.toString());
                                    new DownloadUtils(VersionupActivity.this, jsonObject2);
                                    if (!file.exists()) {
                                        file.mkdirs();
                                    }
                                    StringBuilder sb2 = new StringBuilder();
                                    String str3 = "kantv";
                                    sb2.append(str3);
                                    sb2.append(jsonObject2.optString(str));
                                    String str4 = ".apk";
                                    sb2.append(str4);
                                    File file2 = new File(file, sb2.toString());
                                    if (!file2.exists()) {
                                        VersionupActivity versionupActivity = VersionupActivity.this;
                                        StringBuilder sb3 = new StringBuilder();
                                        sb3.append(str3);
                                        sb3.append(jsonObject2.optString(str));
                                        sb3.append(str4);
                                        versionupActivity.downloadAPK(optString, sb3.toString());
                                    } else if (Utils.validateApk(VersionupActivity.this, file2.getAbsolutePath())) {
                                        VersionupActivity.this.initUpdate();
                                    } else {
                                        try {
                                            file2.delete();
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                        VersionupActivity versionupActivity2 = VersionupActivity.this;
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append(str3);
                                        sb4.append(jsonObject2.optString(str));
                                        sb4.append(str4);
                                        versionupActivity2.downloadAPK(optString, sb4.toString());
                                    }
                                }
                            } else {
                                VersionupActivity.this.mPresent.setText("当前已经是最新版本，无需更新！");
                            }
                        }
                    }
                }
            }
        });
    }

    public void downloadAPK(String str2, String str3) {
        this.mInup.setVisibility(0);
        ProgressBar progressBar2 = this.progressBar;
        if (progressBar2 != null) {
            progressBar2.setVisibility(0);
        }
        Request request = new Request(Uri.parse(str2));
        request.setAllowedOverRoaming(false);
        request.setNotificationVisibility(2);
        request.setTitle("看TV");
        request.setDescription("Apk Downloading");
        request.setVisibleInDownloadsUi(true);
        request.setDestinationInExternalPublicDir("/downloadapk", str3);
        this.downloadId = this.downloadManager.enqueue(request);
        if (!this.mReceiverTag) {
            registerReceiver(this.receiver, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
            this.mReceiverTag = true;
        }
        startQuery();
    }

    /* access modifiers changed from: protected */
    public void handleMessages(Message message) {
        super.handleMessages(message);
        if (message.what == 1001) {
            ProgressBar progressBar2 = this.progressBar;
            if (progressBar2 != null) {
                progressBar2.setProgress(message.arg1);
                this.progressBar.setMax(message.arg2);
            }
        }
    }

    /* access modifiers changed from: private */
    public void queryState() {
        Cursor query = this.downloadManager.query(new Query().setFilterById(new long[]{this.downloadId}));
        String str2 = "下载失败";
        if (query == null) {
            Toast.makeText(this, str2, 0).show();
        } else if (!query.moveToFirst()) {
            Toast.makeText(this, str2, 0).show();
            if (!query.isClosed()) {
                query.close();
            }
        } else {
            int i = query.getInt(query.getColumnIndex("bytes_so_far"));
            int i2 = query.getInt(query.getColumnIndex("total_size"));
            Message obtain = Message.obtain();
            if (i2 > 0) {
                obtain.what = 1001;
                obtain.arg1 = i;
                obtain.arg2 = i2;
                this.mMyHandler.sendMessage(obtain);
            }
            if (!query.isClosed()) {
                query.close();
            }
        }
    }

    private void stopQuery() {
        this.mMyHandler.removeCallbacks(this.mQueryProgressRunnable);
    }

    /* access modifiers changed from: private */
    public void checkStatus() {
        Query query = new Query();
        query.setFilterById(new long[]{this.downloadId});
        Cursor query2 = this.downloadManager.query(query);
        if (query2.moveToFirst()) {
            int i = query2.getInt(query2.getColumnIndex("status"));
            if (i == 1) {
                this.mInup.setText("安装包延迟下载，请稍后...");
            } else if (i == 2) {
                this.mInup.setText("安装包正在加载中，请稍后...");
                this.progressBar.setVisibility(0);
            } else if (i == 4) {
                this.mInup.setText("安装包下载已暂停");
                this.progressBar.setVisibility(8);
            } else if (i == 8) {
                initUpdate();
                stopQuery();
            } else if (i == 16) {
                this.mInup.setText("安装包下载失败");
                this.progressBar.setVisibility(8);
                stopQuery();
            }
        }
        query2.close();
    }

    /* access modifiers changed from: private */
    public void initUpdate() {
        this.mInup.setVisibility(8);
        ProgressBar progressBar2 = this.progressBar;
        if (progressBar2 != null) {
            progressBar2.setVisibility(8);
        }
        this.mBt.setVisibility(0);
        this.mBt.setText("立即安装");
        if (VERSION.SDK_INT >= 24) {
            this.mBt.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    VersionupActivity versionupActivity = VersionupActivity.this;
                    StringBuilder sb = new StringBuilder();
                    sb.append(Environment.getExternalStorageDirectory().getAbsolutePath());
                    sb.append("/downloadapk");
                    String sb2 = sb.toString();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("kantv");
                    sb3.append(VersionupActivity.this.str);
                    sb3.append(".apk");
                    versionupActivity.installAPK(new File(sb2, sb3.toString()));
                }
            });
        } else {
            this.mBt.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    if (VersionupActivity.this.downloadManager == null || VersionupActivity.this.downloadManager.getUriForDownloadedFile(VersionupActivity.this.downloadId) == null) {
                        VersionupActivity versionupActivity = VersionupActivity.this;
                        StringBuilder sb = new StringBuilder();
                        sb.append(Environment.getExternalStorageDirectory().getAbsolutePath());
                        sb.append("/downloadapk");
                        String sb2 = sb.toString();
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("kantv");
                        sb3.append(VersionupActivity.this.str);
                        sb3.append(".apk");
                        versionupActivity.installAPK(new File(sb2, sb3.toString()));
                        return;
                    }
                    VersionupActivity.this.installAPK(new File(VersionupActivity.this.downloadManager.getUriForDownloadedFile(VersionupActivity.this.downloadId).getPath()));
                }
            });
        }
    }

    public void installAPK(File file) {
        Uri uri;
        if (file != null && file.exists() && file.isFile()) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            if (VERSION.SDK_INT >= 24) {
                uri = FileProvider.getUriForFile(this, getPackageName(), file);
                intent.addFlags(1);
            } else {
                uri = Uri.fromFile(file);
            }
            intent.setDataAndType(uri, "application/vnd.android.package-archive");
            startActivity(intent);
        }
    }

    private void startQuery() {
        this.mMyHandler.postDelayed(this.mQueryProgressRunnable, 1000);
    }

    @OnClick({2131297292})
    public void onClick(View view) {
        if (view.getId() == R.id.title_left_ll) {
            finish();
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        if (this.mReceiverTag) {
            unregisterReceiver(this.receiver);
            this.mReceiverTag = false;
        }
    }
}
