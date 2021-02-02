package com.kantv.common.api;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.Utils;
import com.kantv.common.view.CustomProgressDialog;
import java.net.SocketTimeoutException;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Callback;

public abstract class CommonCallBack implements Callback<ResponseBody> {
    protected String json = null;
    private Context mContext;
    protected CustomProgressDialog mDialog = null;
    private boolean mIsDialogShow = true;

    public CommonCallBack(Context context, boolean z) {
        this.mContext = context;
        this.mIsDialogShow = z;
        if (z) {
            initDialogShow();
        }
    }

    public CommonCallBack() {
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

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0049 A[Catch:{ Exception -> 0x0060 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onResponse(retrofit2.Call<okhttp3.ResponseBody> r2, retrofit2.Response<okhttp3.ResponseBody> r3) {
        /*
            r1 = this;
            if (r3 == 0) goto L_0x0041
            boolean r2 = r3.isSuccessful()     // Catch:{ Exception -> 0x0060 }
            if (r2 == 0) goto L_0x0041
            java.lang.String r2 = com.kantv.common.utils.Utils.interfaceVersion     // Catch:{ Exception -> 0x0060 }
            int r2 = java.lang.Integer.parseInt(r2)     // Catch:{ Exception -> 0x0060 }
            r0 = 100
            if (r2 >= r0) goto L_0x0023
            java.lang.Object r2 = r3.body()     // Catch:{ Exception -> 0x0060 }
            okhttp3.ResponseBody r2 = (okhttp3.ResponseBody) r2     // Catch:{ Exception -> 0x0060 }
            java.lang.String r2 = r2.string()     // Catch:{ Exception -> 0x0060 }
            java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x0060 }
            r1.json = r2     // Catch:{ Exception -> 0x0060 }
            goto L_0x0045
        L_0x0023:
            java.lang.Object r2 = r3.body()     // Catch:{ Exception -> 0x0060 }
            okhttp3.ResponseBody r2 = (okhttp3.ResponseBody) r2     // Catch:{ Exception -> 0x0060 }
            byte[] r2 = r2.bytes()     // Catch:{ Exception -> 0x0060 }
            org.msgpack.core.MessageUnpacker r2 = org.msgpack.core.MessagePack.newDefaultUnpacker(r2)     // Catch:{ Exception -> 0x0060 }
            if (r2 == 0) goto L_0x0045
            org.msgpack.value.ImmutableValue r3 = r2.unpackValue()     // Catch:{ Exception -> 0x0060 }
            java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x0060 }
            r1.json = r3     // Catch:{ Exception -> 0x0060 }
            r2.close()     // Catch:{ Exception -> 0x0060 }
            goto L_0x0045
        L_0x0041:
            java.lang.String r2 = ""
            r1.json = r2     // Catch:{ Exception -> 0x0060 }
        L_0x0045:
            com.kantv.common.view.CustomProgressDialog r2 = r1.mDialog     // Catch:{ Exception -> 0x0060 }
            if (r2 == 0) goto L_0x0064
            com.kantv.common.view.CustomProgressDialog r2 = r1.mDialog     // Catch:{ Exception -> 0x0060 }
            android.app.Activity r2 = r2.getOwnerActivity()     // Catch:{ Exception -> 0x0060 }
            if (r2 != 0) goto L_0x0052
            return
        L_0x0052:
            boolean r3 = r1.mIsDialogShow     // Catch:{ Exception -> 0x0060 }
            if (r3 == 0) goto L_0x0064
            boolean r2 = r2.isFinishing()     // Catch:{ Exception -> 0x0060 }
            if (r2 != 0) goto L_0x0064
            r1.dismissProgressDialog()     // Catch:{ Exception -> 0x0060 }
            goto L_0x0064
        L_0x0060:
            r2 = move-exception
            r2.printStackTrace()
        L_0x0064:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.common.api.CommonCallBack.onResponse(retrofit2.Call, retrofit2.Response):void");
    }

    public void onFailure(Call<ResponseBody> call, Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(th.getMessage());
        sb.append("");
        AILog.i("无网络信息onFailure", sb.toString());
        if (call != null) {
            try {
                th.printStackTrace();
                if (th instanceof SocketTimeoutException) {
                    AILog.i("无网络信息onFailure SocketTimeoutException", th.getMessage());
                    call.cancel();
                    try {
                        new Thread() {
                            public void run() {
                                super.run();
                                Api.getClient().connectionPool().evictAll();
                            }
                        }.start();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (this.mContext != null && Utils.isNetWrok(this.mContext)) {
            Api.setNextDomain();
        }
        CustomProgressDialog customProgressDialog = this.mDialog;
        if (customProgressDialog != null) {
            Activity ownerActivity = customProgressDialog.getOwnerActivity();
            if (ownerActivity != null && this.mIsDialogShow && !ownerActivity.isFinishing()) {
                dismissProgressDialog();
            }
        }
    }
}
