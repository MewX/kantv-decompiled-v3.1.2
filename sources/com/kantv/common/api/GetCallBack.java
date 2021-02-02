package com.kantv.common.api;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;
import com.kantv.common.view.CustomProgressDialog;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public abstract class GetCallBack implements Callback<ResponseBody> {
    protected String json = null;
    private Context mContext;
    protected CustomProgressDialog mDialog = null;
    private boolean mIsDialogShow = true;

    public GetCallBack(Context context, boolean z) {
        this.mContext = context;
        this.mIsDialogShow = z;
        if (z) {
            initDialogShow();
        }
    }

    private void initDialogShow() {
        CustomProgressDialog customProgressDialog = this.mDialog;
        if (customProgressDialog == null) {
            this.mDialog = new CustomProgressDialog(this.mContext, "");
            this.mDialog.show();
            this.mDialog.setCanceledOnTouchOutside(true);
            this.mDialog.setOnKeyListener(new OnKeyListener() {
                public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                    if (keyEvent.getKeyCode() == 4) {
                        dialogInterface.cancel();
                    }
                    return false;
                }
            });
        } else {
            customProgressDialog.show();
        }
        Activity activity = (Activity) this.mContext;
        if (activity != null) {
            this.mDialog.setOwnerActivity(activity);
        }
    }

    private void dismissProgressDialog() {
        CustomProgressDialog customProgressDialog = this.mDialog;
        if (customProgressDialog != null) {
            customProgressDialog.cancel();
            this.mDialog = null;
            this.mContext = null;
        }
    }

    public void onResponse(Call<ResponseBody> call, Response<ResponseBody> response) {
        if (response != null) {
            try {
                this.json = ((ResponseBody) response.body()).string().toString();
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            this.json = "";
        }
        if (this.mDialog != null) {
            Activity ownerActivity = this.mDialog.getOwnerActivity();
            if (ownerActivity != null && this.mIsDialogShow && !ownerActivity.isFinishing()) {
                dismissProgressDialog();
            }
        }
    }

    public void onFailure(Call<ResponseBody> call, Throwable th) {
        CustomProgressDialog customProgressDialog = this.mDialog;
        if (customProgressDialog != null) {
            Activity ownerActivity = customProgressDialog.getOwnerActivity();
            if (ownerActivity != null && this.mIsDialogShow && !ownerActivity.isFinishing()) {
                dismissProgressDialog();
            }
        }
    }
}
