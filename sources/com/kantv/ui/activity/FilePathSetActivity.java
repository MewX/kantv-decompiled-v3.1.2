package com.kantv.ui.activity;

import android.content.Context;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.imkan.tv.R;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.Utils;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.download.SettingsManager;
import com.kantv.ui.utils.PreferenceUtil;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class FilePathSetActivity extends PackageActivity {
    private static final String TAG = "FilePathSetActivity";
    private long SDcardTotalSize = 0;
    private long SDcardUseSize = 0;
    @BindView(2131296774)
    CheckBox checkBox_phone;
    @BindView(2131297140)
    CheckBox checkBox_sd;
    private boolean isphonesdcard;
    private String path = "";
    @BindView(2131296776)
    TextView phonesd_tv;
    @BindView(2131297143)
    RelativeLayout sdLayout;
    @BindView(2131297142)
    ImageView sd_iv;
    @BindView(2131297141)
    TextView sddescribe_tv;
    @BindView(2131296775)
    ImageView sdp_iv;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_cachepath);
        initBase();
        StringBuilder sb = new StringBuilder();
        String str = "onCreate";
        sb.append(str);
        sb.append(Environment.getExternalStorageState().equals("mounted"));
        String sb2 = sb.toString();
        String str2 = TAG;
        AILog.d(str2, sb2);
        initView();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str);
        sb3.append(SettingsManager.DIRPATH);
        AILog.d(str2, sb3.toString());
    }

    private void initView() {
        this.checkBox_phone.setSelected(true);
        boolean equals = Environment.getExternalStorageState().equals("mounted");
        String str = TAG;
        String str2 = "，可用空间";
        String str3 = "总空间";
        if (equals) {
            this.path = getStoragePath(this, true);
            if (!this.path.isEmpty()) {
                this.sdLayout.setVisibility(0);
            } else {
                this.sdLayout.setVisibility(8);
            }
            readSDCard();
            readSystem();
            TextView textView = this.phonesd_tv;
            StringBuilder sb = new StringBuilder();
            sb.append(str3);
            sb.append(SettingsManager.formetFileSize(this.SDcardTotalSize));
            sb.append(str2);
            sb.append(SettingsManager.formetFileSize(this.SDcardUseSize));
            textView.setText(sb.toString());
            Context context = Utils.getContext();
            Boolean valueOf = Boolean.valueOf(true);
            String str4 = SettingsManager.ISPHONESDCARD;
            this.isphonesdcard = ((Boolean) PreferenceUtil.get(context, str4, valueOf)).booleanValue();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str4);
            sb2.append(this.isphonesdcard);
            AILog.d(str, sb2.toString());
            if (this.isphonesdcard) {
                this.checkBox_sd.setChecked(false);
                this.checkBox_phone.setChecked(true);
                SettingsManager.changePath(true, "", Utils.getContext());
                this.sdp_iv.setImageDrawable(getResources().getDrawable(R.drawable.phonel));
                this.sd_iv.setImageDrawable(getResources().getDrawable(R.drawable.sd));
            } else {
                this.checkBox_sd.setChecked(true);
                this.checkBox_phone.setChecked(false);
                SettingsManager.changePath(false, this.path, Utils.getContext());
                this.sdp_iv.setImageDrawable(getResources().getDrawable(R.drawable.phone));
                this.sd_iv.setImageDrawable(getResources().getDrawable(R.drawable.sdl));
            }
        } else {
            readSDCard();
            readSystem();
            TextView textView2 = this.phonesd_tv;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str3);
            sb3.append(SettingsManager.formetFileSize(this.SDcardTotalSize));
            sb3.append(str2);
            sb3.append(SettingsManager.formetFileSize(this.SDcardUseSize));
            textView2.setText(sb3.toString());
            this.checkBox_sd.setChecked(false);
            this.checkBox_phone.setChecked(true);
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append("SettingsManager");
        sb4.append(SettingsManager.DIRPATH);
        AILog.d(str, sb4.toString());
    }

    private String getStoragePath(Context context, boolean z) {
        String str = TAG;
        StorageManager storageManager = (StorageManager) context.getSystemService("storage");
        try {
            Class cls = Class.forName("android.os.storage.StorageVolume");
            Method method = storageManager.getClass().getMethod("getVolumeList", new Class[0]);
            Method method2 = cls.getMethod("getPath", new Class[0]);
            Method method3 = cls.getMethod("isRemovable", new Class[0]);
            Object invoke = method.invoke(storageManager, new Object[0]);
            StringBuilder sb = new StringBuilder();
            sb.append("is_removale");
            sb.append(z);
            AILog.d(str, sb.toString());
            int length = Array.getLength(invoke);
            for (int i = 0; i < length; i++) {
                Object obj = Array.get(invoke, i);
                String str2 = (String) method2.invoke(obj, new Object[0]);
                if (z == ((Boolean) method3.invoke(obj, new Object[0])).booleanValue()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("is_removale2");
                    sb2.append(str2);
                    AILog.d(str, sb2.toString());
                    this.sddescribe_tv.setText(SettingsManager.getSd(new File(str2)));
                    return str2;
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e2) {
            e2.printStackTrace();
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
        }
        return "";
    }

    private void readSDCard() {
        if ("mounted".equals(Environment.getExternalStorageState())) {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long blockSize = (long) statFs.getBlockSize();
            long blockCount = (long) statFs.getBlockCount();
            long availableBlocks = (long) statFs.getAvailableBlocks();
            StringBuilder sb = new StringBuilder();
            sb.append("block大小:");
            sb.append(blockSize);
            sb.append(",block数目:");
            sb.append(blockCount);
            sb.append(",总大小:");
            long j = blockCount * blockSize;
            sb.append(j);
            String str = "B";
            sb.append(str);
            String sb2 = sb.toString();
            String str2 = TAG;
            AILog.d(str2, sb2);
            this.SDcardTotalSize += j;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("可用的block数目：:");
            sb3.append(availableBlocks);
            sb3.append(",剩余空间:");
            long j2 = availableBlocks * blockSize;
            sb3.append(j2);
            sb3.append(str);
            AILog.d(str2, sb3.toString());
            this.SDcardUseSize += j2;
        }
    }

    private void readSystem() {
        StatFs statFs = new StatFs(Environment.getRootDirectory().getPath());
        long blockSize = (long) statFs.getBlockSize();
        long blockCount = (long) statFs.getBlockCount();
        long availableBlocks = (long) statFs.getAvailableBlocks();
        StringBuilder sb = new StringBuilder();
        sb.append("block大小:");
        sb.append(blockSize);
        sb.append(",block数目:");
        sb.append(blockCount);
        sb.append(",总大小:");
        long j = blockCount * blockSize;
        sb.append(j);
        String str = "B";
        sb.append(str);
        String sb2 = sb.toString();
        String str2 = TAG;
        AILog.d(str2, sb2);
        this.SDcardTotalSize += j;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("可用的block数目：:");
        sb3.append(availableBlocks);
        sb3.append(",可用大小:");
        long j2 = availableBlocks * blockSize;
        sb3.append(j2);
        sb3.append(str);
        AILog.d(str2, sb3.toString());
        this.SDcardUseSize += j2;
    }

    @OnClick({2131297044, 2131297143, 2131296479})
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.common_title_left) {
            String str = SettingsManager.ISPHONESDCARD;
            if (id == R.id.phone_layout) {
                this.checkBox_sd.setChecked(false);
                this.checkBox_phone.setChecked(true);
                PreferenceUtil.put(Utils.getContext(), str, Boolean.valueOf(true));
                SettingsManager.changePath(true, "", Utils.getContext());
                this.sdp_iv.setImageDrawable(getResources().getDrawable(R.drawable.phonel));
                this.sd_iv.setImageDrawable(getResources().getDrawable(R.drawable.sd));
            } else if (id == R.id.sd_layout && Environment.getExternalStorageState().equals("mounted")) {
                this.checkBox_sd.setChecked(true);
                this.checkBox_phone.setChecked(false);
                PreferenceUtil.put(Utils.getContext(), str, Boolean.valueOf(false));
                SettingsManager.changePath(false, this.path, getApplicationContext());
                File file = new File(SettingsManager.DIRPATH);
                getExternalFilesDir(null).getAbsolutePath();
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(SettingsManager.getPhotoDirPath());
                getExternalFilesDir(null).getAbsolutePath();
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                this.sdp_iv.setImageDrawable(getResources().getDrawable(R.drawable.phone));
                this.sd_iv.setImageDrawable(getResources().getDrawable(R.drawable.sdl));
            }
        } else {
            finish();
        }
    }
}
