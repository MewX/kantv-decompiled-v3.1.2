package com.kantv.ui.view;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import com.avos.avoscloud.Messages.OpType;
import com.imkan.tv.R;
import com.kantv.common.utils.Utils;
import com.kantv.ui.utils.ToastUtils;
import com.kantv.ui.view.ShareDialog.onClickback;
import com.tencent.mm.opensdk.modelmsg.SendMessageToWX.Req;
import com.tencent.mm.opensdk.modelmsg.WXMediaMessage;
import com.tencent.mm.opensdk.modelmsg.WXWebpageObject;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.Tencent;
import com.tencent.tauth.UiError;
import debug.KanApplication;
import java.util.ArrayList;

public class ShareDialogImp {
    private final IWXAPI api;
    private final Context mContext;
    private String mNiShareUrl;
    private ShareDialog mShareDialog;
    private Tencent mTencent;
    private String title;

    public String getmNiShareUrl() {
        return this.mNiShareUrl;
    }

    public void setmNiShareUrl(String str) {
        this.mNiShareUrl = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public ShareDialogImp(Context context) {
        this.mContext = context;
        try {
            this.mTencent = Tencent.createInstance("1106453625", Utils.getContext());
        } catch (Exception e) {
            e.printStackTrace();
        }
        String str = "wx70cbf5b9aacb0e47";
        this.api = WXAPIFactory.createWXAPI(context, str, false);
        this.api.registerApp(str);
        this.mShareDialog = new ShareDialog(context, (onClickback) new onClickback() {
            public void onShare(int i) {
                ShareDialogImp.this.onShare(i);
            }
        });
    }

    public ShareDialogImp() {
        this.mContext = KanApplication.getInstance().currentActivity();
        try {
            this.mTencent = Tencent.createInstance("1106453625", this.mContext);
        } catch (Exception e) {
            e.printStackTrace();
        }
        String str = "wx70cbf5b9aacb0e47";
        this.api = WXAPIFactory.createWXAPI(this.mContext, str, false);
        this.api.registerApp(str);
    }

    public void onShare(int i) {
        if (i != 0) {
            String str = "您还未安装微信客户端";
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        String str2 = "imageUrl";
                        String str3 = "targetUrl";
                        String str4 = "summary";
                        String str5 = "title";
                        String str6 = "req_type";
                        String str7 = "您的设备当前未安装QQ！";
                        if (i != 4) {
                            if (i == 5) {
                                if (Utils.isQQClientAvailable(this.mContext)) {
                                    Bundle bundle = new Bundle();
                                    bundle.putInt(str6, 1);
                                    bundle.putString(str5, this.title);
                                    bundle.putString(str4, this.mContext.getString(R.string.share5));
                                    bundle.putString(str3, this.mNiShareUrl);
                                    ArrayList arrayList = new ArrayList();
                                    arrayList.add(this.mContext.getString(R.string.share4));
                                    bundle.putStringArrayList(str2, arrayList);
                                    this.mTencent.shareToQzone((Activity) this.mContext, bundle, new IUiListener() {
                                        public void onCancel() {
                                        }

                                        public void onComplete(Object obj) {
                                        }

                                        public void onError(UiError uiError) {
                                        }
                                    });
                                } else {
                                    ToastUtils.showShort((CharSequence) str7);
                                }
                            }
                        } else if (Utils.isQQClientAvailable(this.mContext)) {
                            Bundle bundle2 = new Bundle();
                            bundle2.putInt(str6, 1);
                            bundle2.putString(str5, getTitle());
                            bundle2.putString(str4, this.mContext.getString(R.string.share5));
                            bundle2.putString(str3, this.mNiShareUrl);
                            bundle2.putString(str2, this.mContext.getString(R.string.share4));
                            this.mTencent.shareToQQ((Activity) this.mContext, bundle2, new IUiListener() {
                                public void onCancel() {
                                }

                                public void onComplete(Object obj) {
                                }

                                public void onError(UiError uiError) {
                                }
                            });
                        } else {
                            ToastUtils.showShort((CharSequence) str7);
                        }
                    } else if (!this.api.isWXAppInstalled()) {
                        ToastUtils.showShort((CharSequence) str);
                    } else {
                        wxShare(2);
                    }
                } else if (!this.api.isWXAppInstalled()) {
                    ToastUtils.showShort((CharSequence) str);
                } else {
                    wxShare(1);
                }
            } else if (!this.api.isWXAppInstalled()) {
                ToastUtils.showShort((CharSequence) str);
            } else {
                wxShare(0);
            }
        }
    }

    public void show() {
        this.mShareDialog.show();
    }

    private void wxShare(int i) {
        WXWebpageObject wXWebpageObject = new WXWebpageObject();
        wXWebpageObject.webpageUrl = this.mNiShareUrl;
        WXMediaMessage wXMediaMessage = new WXMediaMessage(wXWebpageObject);
        wXMediaMessage.title = this.title;
        wXMediaMessage.description = this.mContext.getString(R.string.share5);
        Bitmap decodeResource = BitmapFactory.decodeResource(this.mContext.getResources(), R.drawable.ic_launcher);
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeResource, OpType.modify_VALUE, OpType.modify_VALUE, true);
        decodeResource.recycle();
        wXMediaMessage.thumbData = Utils.bmpToByteArray(createScaledBitmap, true);
        Req req = new Req();
        req.transaction = buildTransaction("webpage");
        req.message = wXMediaMessage;
        req.scene = i;
        this.api.sendReq(req);
    }

    private String buildTransaction(String str) {
        if (str == null) {
            return String.valueOf(System.currentTimeMillis());
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(System.currentTimeMillis());
        return sb.toString();
    }
}
