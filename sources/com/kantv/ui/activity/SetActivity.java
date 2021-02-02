package com.kantv.ui.activity;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.Switch;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.exoplayer2.C;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.imkan.tv.R;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.Utils;
import com.kantv.lib.indicator.DisplayUtil;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.photo.PermissionUtil;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.view.AlertDialog;
import com.tencent.mm.opensdk.constants.ConstantsAPI.WXApp;
import debug.KanApplication;
import java.io.File;

public class SetActivity extends PackageActivity {
    private static final String TAG = "SetActivity";
    @BindView(2131297186)
    LinearLayout setHistroyShow;
    @BindView(2131297187)
    Switch setHistroyShowSwitch;
    @BindView(2131297204)
    LinearLayout signOutLayout;
    @BindView(2131297293)
    ImageView titleLeftImg;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131296482)
    RelativeLayout titleRelateLayout;
    @BindView(2131297295)
    ImageView titleRightImg;
    @BindView(2131296483)
    TextView titleTV;
    @BindView(2131296528)
    Switch typeSwitch;
    @BindView(2131297418)
    TextView wxHelpTv;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_set);
        initBase();
        initStatusBar();
        initTitle();
        initView();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN29);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }

    private void initTitle() {
        this.titleRelateLayout.setBackgroundResource(R.color.tab_top_bg);
        this.titleRelateLayout.setPadding(0, DisplayUtil.dipToPix(Utils.getContext(), 20), 0, 0);
        this.titleRelateLayout.setLayoutParams(new LayoutParams(-1, DisplayUtil.dipToPix(Utils.getContext(), 64)));
        this.titleLeftLayout.setVisibility(0);
        this.titleLeftImg.setImageResource(R.drawable.nav_white);
        this.titleTV.setText("设置");
        this.titleTV.setTextColor(getResources().getColor(R.color.white));
        this.titleTV.setTextSize(18.0f);
        this.titleRightImg.setVisibility(8);
    }

    private void initView() {
        if (((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
            this.signOutLayout.setVisibility(0);
        } else {
            this.signOutLayout.setVisibility(8);
        }
        this.wxHelpTv.setText((String) PreferenceUtil.get(Utils.getContext(), "weixing", "kantvhelp3"));
        String str = "download_type_wifi";
        boolean booleanValue = ((Boolean) PreferenceUtil.get(Utils.getContext(), str, Boolean.valueOf(true))).booleanValue();
        this.typeSwitch.setChecked(booleanValue);
        this.typeSwitch.setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                String str = "download_type_wifi";
                String str2 = SetActivity.TAG;
                if (z) {
                    AILog.d(str2, "*** switch change true ***");
                    PreferenceUtil.put(Utils.getContext(), str, Boolean.valueOf(true));
                    return;
                }
                AILog.d(str2, "*** switch change false ***");
                PreferenceUtil.put(Utils.getContext(), str, Boolean.valueOf(false));
            }
        });
        ((Boolean) PreferenceUtil.get(Utils.getContext(), str, Boolean.valueOf(true))).booleanValue();
        this.setHistroyShowSwitch.setChecked(booleanValue);
        this.setHistroyShowSwitch.setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                String str = "download_type_wifi";
                String str2 = SetActivity.TAG;
                if (z) {
                    AILog.d(str2, "*** switch change true ***");
                    PreferenceUtil.put(Utils.getContext(), str, Boolean.valueOf(true));
                    return;
                }
                AILog.d(str2, "*** switch change false ***");
                PreferenceUtil.put(Utils.getContext(), str, Boolean.valueOf(false));
            }
        });
    }

    @OnClick({2131297204, 2131297292, 2131297113, 2131296459, 2131296498, 2131297088, 2131297184, 2131297185})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.clearCache /*2131296459*/:
                if (havePermissionForWriteStorage()) {
                    deleteMovies();
                    ToastUtils.showShort((CharSequence) "清除首页缓存成功！");
                    return;
                }
                return;
            case R.id.customHelp /*2131296498*/:
                gotoActivity(FeedBackActivity.class);
                return;
            case R.id.request_film_ll /*2131297088*/:
                gotoActivity(ForumActivity.class);
                return;
            case R.id.safecenter /*2131297113*/:
                if (((Boolean) PreferenceUtil.get(Utils.getContext(), "Login_State", Boolean.valueOf(false))).booleanValue()) {
                    gotoActivity(SafeCenterActivity.class);
                    return;
                } else {
                    gotoActivity(AccountLoginActivity.class);
                    return;
                }
            case R.id.setCachePath /*2131297184*/:
                gotoActivity(FilePathSetActivity.class);
                return;
            case R.id.setDownloadType /*2131297185*/:
                Switch switchR = this.typeSwitch;
                if (switchR == null) {
                    return;
                }
                if (switchR.isChecked()) {
                    this.typeSwitch.setChecked(false);
                    return;
                } else {
                    this.typeSwitch.setChecked(true);
                    return;
                }
            case R.id.sign_out /*2131297204*/:
                initAlertDialog("提示", "是否要退出登录？", "0");
                return;
            case R.id.title_left_ll /*2131297292*/:
                finish();
                return;
            default:
                return;
        }
    }

    private boolean havePermissionForWriteStorage() {
        return PermissionUtil.checkPermission(this, PERMISSIONS_STORAGE, 164);
    }

    private void deleteMovies() {
        StringBuilder sb = new StringBuilder();
        sb.append(Environment.getExternalStorageDirectory());
        sb.append(File.separator);
        sb.append("Kantv");
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(Environment.getExternalStorageDirectory());
        sb3.append(File.separator);
        sb3.append("Kantvphoto");
        String sb4 = sb3.toString();
        File file = new File(sb2);
        File file2 = new File(sb4);
        if (file.exists()) {
            recursionDeleteFile(file);
        }
        if (file2.exists()) {
            recursionDeleteFile(file2);
        }
    }

    public static void recursionDeleteFile(File file) {
        if (file.isFile()) {
            file.delete();
            return;
        }
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null || listFiles.length == 0) {
                file.delete();
            } else {
                for (File recursionDeleteFile : listFiles) {
                    recursionDeleteFile(recursionDeleteFile);
                }
                file.delete();
            }
        }
    }

    private void initAlertDialog(String str, String str2, final String str3) {
        new AlertDialog(this).builder().setTitle(str).setMsg(str2).setNegativeButton("取消", new OnClickListener() {
            public void onClick(View view) {
                KanApplication.getDefaultTracker().send(new EventBuilder().setCategory(UserPreference.ANALYZE65).build());
            }
        }).setPositiveButton("确定", new OnClickListener() {
            public void onClick(View view) {
                if (str3.equals("0")) {
                    KanApplication.exitLogin();
                    PreferenceUtil.remove(Utils.getContext(), "Login_State");
                    SetActivity.this.signOutLayout.setVisibility(8);
                } else if (str3.equals("1")) {
                    try {
                        Intent intent = new Intent("android.intent.action.MAIN");
                        ComponentName componentName = new ComponentName(WXApp.WXAPP_PACKAGE_NAME, "com.tencent.mm.ui.LauncherUI");
                        intent.addCategory("android.intent.category.LAUNCHER");
                        intent.addFlags(C.ENCODING_PCM_MU_LAW);
                        intent.setComponent(componentName);
                        SetActivity.this.startActivity(intent);
                    } catch (ActivityNotFoundException unused) {
                        ToastUtils.showShort((CharSequence) "检查到您手机没有安装微信，请安装后使用该功能");
                    }
                }
            }
        }).show();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }
}
