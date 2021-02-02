package com.kantv.ui.utils;

import android.app.Dialog;
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
import android.os.Environment;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import androidx.core.content.FileProvider;
import com.google.android.exoplayer2.C;
import com.imkan.tv.R;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.Utils;
import com.kantv.ui.config.Definition.UserPreference;
import java.io.File;
import org.json.JSONObject;

public class DownloadUtils {
    private long downloadId;
    private DownloadManager downloadManager;
    private Context mContext;
    private BroadcastReceiver receiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            DownloadUtils.this.checkStatus();
        }
    };
    private JSONObject versionJson;

    public DownloadUtils(Context context, JSONObject jSONObject) {
        this.mContext = context;
        this.versionJson = jSONObject;
    }

    public void downloadAPK(String str, String str2) {
        Request request = new Request(Uri.parse(str));
        request.setAllowedOverRoaming(false);
        request.setNotificationVisibility(2);
        request.setTitle("Kantv");
        request.setDescription("Apk Downloading");
        request.setVisibleInDownloadsUi(true);
        request.setDestinationInExternalPublicDir("/downloadapk", str2);
        this.downloadManager = (DownloadManager) this.mContext.getSystemService("download");
        this.downloadId = this.downloadManager.enqueue(request);
        this.mContext.registerReceiver(this.receiver, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
    }

    /* access modifiers changed from: private */
    public void checkStatus() {
        Query query = new Query();
        query.setFilterById(new long[]{this.downloadId});
        Cursor query2 = this.downloadManager.query(query);
        if (query2.moveToFirst()) {
            int i = query2.getInt(query2.getColumnIndex("status"));
            if (!(i == 1 || i == 2 || i == 4 || i != 8)) {
                AILog.d("DownloadUtils", "Download status successful");
                if (VERSION.SDK_INT >= 24) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(Environment.getExternalStorageDirectory().getAbsolutePath());
                    sb.append("/downloadapk");
                    String sb2 = sb.toString();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("kantv");
                    sb3.append(this.versionJson.optString("version"));
                    sb3.append(".apk");
                    install(new File(sb2, sb3.toString()));
                } else {
                    install(new File(this.downloadManager.getUriForDownloadedFile(this.downloadId).getPath()));
                }
            }
        }
        query2.close();
    }

    public void install(final File file) {
        String str = "content";
        final Dialog dialog = new Dialog(this.mContext, R.style.MediaTodayDialog);
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.version_update_dialog, null);
        dialog.setContentView(inflate);
        dialog.setCancelable(false);
        TextView textView = (TextView) inflate.findViewById(R.id.latest_version);
        TextView textView2 = (TextView) inflate.findViewById(R.id.update_description);
        textView2.setMovementMethod(ScrollingMovementMethod.getInstance());
        try {
            AILog.d("apk路径==", file.getPath());
            textView2.setText(this.versionJson.getString(str));
            PreferenceUtil.put(Utils.getContext(), UserPreference.VERSION_UPDATE_CONTENT, this.versionJson.getString(str));
            String string = this.versionJson.getString("version");
            AILog.d("版本名称", string);
            StringBuilder sb = new StringBuilder();
            sb.append("最新版本：V");
            sb.append(string);
            textView.setText(sb.toString());
        } catch (Exception e) {
            AILog.d("showUpVersionDialog e", e.getMessage());
        }
        inflate.findViewById(R.id.version_update_btn).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                dialog.dismiss();
                DownloadUtils.this.installAPK(file);
            }
        });
        inflate.findViewById(R.id.close_update).setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                dialog.dismiss();
            }
        });
        try {
            dialog.show();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void installAPK(File file) {
        Uri uri;
        if (file != null && file.exists() && file.isFile()) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            if (VERSION.SDK_INT >= 24) {
                Context context = this.mContext;
                uri = FileProvider.getUriForFile(context, context.getPackageName(), file);
                intent.addFlags(1);
            } else {
                uri = Uri.fromFile(file);
            }
            intent.setDataAndType(uri, "application/vnd.android.package-archive");
            this.mContext.startActivity(intent);
        }
    }
}
