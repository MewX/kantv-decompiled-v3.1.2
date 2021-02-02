package com.kantv.kt_player.ExoPlayer.view;

import android.app.Dialog;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Toast;
import com.kantv.kt_player.R;
import java.util.List;

public class ShareView extends Dialog implements OnClickListener {
    public static final int SHARE_QQ = 4;
    public static final int SHARE_QQ_ZONE = 5;
    public static final int SHARE_WEI_BO = 0;
    public static final int SHARE_WX = 1;
    public static final int SHARE_WX_FRIEND = 2;
    public static final int SHARE_WX_SHOUCHANG = 3;
    private final View contentView = getLayoutInflater().inflate(R.layout.kt_item_videoshare, null);
    private Context mContext;
    private IShareClick mShareClick;
    private String mShareUrl;
    private String shareFilmImgUrl;
    private String sharePlanDesc;
    private String sharePlanTitle;
    private String tvTitle;

    public interface IShareClick {
        void shareClick(int i);
    }

    public ShareView(Context context) {
        super(context, R.style.ShareDialog);
        String str = "";
        this.mShareUrl = str;
        this.tvTitle = str;
        this.sharePlanTitle = str;
        this.sharePlanDesc = str;
        this.shareFilmImgUrl = str;
        this.mContext = context;
        setCanceledOnTouchOutside(true);
        super.setContentView(this.contentView);
        setShareListener();
    }

    public void setShareClick(IShareClick iShareClick) {
        this.mShareClick = iShareClick;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        window.setGravity(80);
        window.setLayout(-1, -2);
    }

    private void setShareListener() {
        this.contentView.findViewById(R.id.dialog_share_exit).setOnClickListener(this);
        this.contentView.findViewById(R.id.dialog_share_bt1).setOnClickListener(this);
        this.contentView.findViewById(R.id.dialog_share_bt2).setOnClickListener(this);
        this.contentView.findViewById(R.id.dialog_share_bt3).setOnClickListener(this);
        this.contentView.findViewById(R.id.dialog_share_bt4).setOnClickListener(this);
        this.contentView.findViewById(R.id.dialog_share_bt5).setOnClickListener(this);
        this.contentView.findViewById(R.id.dialog_share_bt6).setOnClickListener(this);
    }

    public void setmShareUrl(String str) {
        this.mShareUrl = str;
    }

    public void setTvTitle(String str) {
        this.tvTitle = str;
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.dialog_share_exit) {
            if (id == R.id.dialog_share_bt1) {
                IShareClick iShareClick = this.mShareClick;
                if (iShareClick != null) {
                    iShareClick.shareClick(2);
                }
            } else if (id == R.id.dialog_share_bt2) {
                IShareClick iShareClick2 = this.mShareClick;
                if (iShareClick2 != null) {
                    iShareClick2.shareClick(1);
                }
            } else {
                String str = "您的设备当前未安装QQ！";
                if (id == R.id.dialog_share_bt3) {
                    if (isQQClientAvailable(this.mContext)) {
                        IShareClick iShareClick3 = this.mShareClick;
                        if (iShareClick3 != null) {
                            iShareClick3.shareClick(4);
                        }
                    } else {
                        showShort(str);
                    }
                } else if (id == R.id.dialog_share_bt4) {
                    IShareClick iShareClick4 = this.mShareClick;
                    if (iShareClick4 != null) {
                        iShareClick4.shareClick(0);
                    }
                } else if (id == R.id.dialog_share_bt5) {
                    IShareClick iShareClick5 = this.mShareClick;
                    if (iShareClick5 != null) {
                        iShareClick5.shareClick(3);
                    }
                } else if (id == R.id.dialog_share_bt6) {
                    if (isQQClientAvailable(this.mContext)) {
                        IShareClick iShareClick6 = this.mShareClick;
                        if (iShareClick6 != null) {
                            iShareClick6.shareClick(5);
                        }
                    } else {
                        showShort(str);
                    }
                }
            }
        }
        dismiss();
    }

    private void showShort(String str) {
        Toast.makeText(this.mContext, str, 0).show();
    }

    private boolean isQQClientAvailable(Context context) {
        List installedPackages = context.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            for (int i = 0; i < installedPackages.size(); i++) {
                String str = ((PackageInfo) installedPackages.get(i)).packageName;
                if (str.equalsIgnoreCase("com.tencent.qqlite") || str.equalsIgnoreCase("com.tencent.mobileqq")) {
                    return true;
                }
            }
        }
        return false;
    }
}
