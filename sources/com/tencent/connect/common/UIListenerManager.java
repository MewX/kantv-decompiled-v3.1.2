package com.tencent.connect.common;

import android.content.Intent;
import com.avos.avospush.session.ConversationControlPacket.ConversationControlOp;
import com.tencent.open.a.f;
import com.tencent.open.utils.h;
import com.tencent.open.utils.k;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
public class UIListenerManager {
    private static UIListenerManager a;
    private Map<String, ApiTask> b = Collections.synchronizedMap(new HashMap());

    /* compiled from: ProGuard */
    public class ApiTask {
        public IUiListener mListener;
        public int mRequestCode;

        public ApiTask(int i, IUiListener iUiListener) {
            this.mRequestCode = i;
            this.mListener = iUiListener;
        }
    }

    public static UIListenerManager getInstance() {
        if (a == null) {
            a = new UIListenerManager();
        }
        return a;
    }

    private UIListenerManager() {
        if (this.b == null) {
            this.b = Collections.synchronizedMap(new HashMap());
        }
    }

    public Object setListenerWithRequestcode(int i, IUiListener iUiListener) {
        ApiTask apiTask;
        String a2 = h.a(i);
        if (a2 == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("setListener action is null! rquestCode=");
            sb.append(i);
            f.e("openSDK_LOG.UIListenerManager", sb.toString());
            return null;
        }
        synchronized (this.b) {
            apiTask = (ApiTask) this.b.put(a2, new ApiTask(i, iUiListener));
        }
        if (apiTask == null) {
            return null;
        }
        return apiTask.mListener;
    }

    public Object setListnerWithAction(String str, IUiListener iUiListener) {
        ApiTask apiTask;
        int a2 = h.a(str);
        if (a2 == -1) {
            StringBuilder sb = new StringBuilder();
            sb.append("setListnerWithAction fail, action = ");
            sb.append(str);
            f.e("openSDK_LOG.UIListenerManager", sb.toString());
            return null;
        }
        synchronized (this.b) {
            apiTask = (ApiTask) this.b.put(str, new ApiTask(a2, iUiListener));
        }
        if (apiTask == null) {
            return null;
        }
        return apiTask.mListener;
    }

    public IUiListener getListnerWithRequestCode(int i) {
        String a2 = h.a(i);
        if (a2 != null) {
            return getListnerWithAction(a2);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("getListner action is null! rquestCode=");
        sb.append(i);
        f.e("openSDK_LOG.UIListenerManager", sb.toString());
        return null;
    }

    public IUiListener getListnerWithAction(String str) {
        ApiTask apiTask;
        if (str == null) {
            f.e("openSDK_LOG.UIListenerManager", "getListnerWithAction action is null!");
            return null;
        }
        synchronized (this.b) {
            apiTask = (ApiTask) this.b.get(str);
            this.b.remove(str);
        }
        if (apiTask == null) {
            return null;
        }
        return apiTask.mListener;
    }

    public void handleDataToListener(Intent intent, IUiListener iUiListener) {
        String str = "openSDK_LOG.UIListenerManager";
        f.c(str, "handleDataToListener");
        if (intent == null) {
            iUiListener.onCancel();
            return;
        }
        String stringExtra = intent.getStringExtra(Constants.KEY_ACTION);
        String str2 = "";
        if ("action_login".equals(stringExtra)) {
            int intExtra = intent.getIntExtra(Constants.KEY_ERROR_CODE, 0);
            if (intExtra == 0) {
                String stringExtra2 = intent.getStringExtra(Constants.KEY_RESPONSE);
                if (stringExtra2 != null) {
                    try {
                        iUiListener.onComplete(k.d(stringExtra2));
                    } catch (JSONException e) {
                        iUiListener.onError(new UiError(-4, Constants.MSG_JSON_ERROR, stringExtra2));
                        f.b(str, "OpenUi, onActivityResult, json error", e);
                    }
                } else {
                    f.b(str, "OpenUi, onActivityResult, onComplete");
                    iUiListener.onComplete(new JSONObject());
                }
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("OpenUi, onActivityResult, onError = ");
                sb.append(intExtra);
                sb.append(str2);
                f.e(str, sb.toString());
                iUiListener.onError(new UiError(intExtra, intent.getStringExtra(Constants.KEY_ERROR_MSG), intent.getStringExtra(Constants.KEY_ERROR_DETAIL)));
            }
        } else if ("action_share".equals(stringExtra)) {
            String stringExtra3 = intent.getStringExtra(ConversationControlOp.MEMBER_COUNT_QUERY_RESULT);
            String stringExtra4 = intent.getStringExtra("response");
            if ("cancel".equals(stringExtra3)) {
                iUiListener.onCancel();
            } else if ("error".equals(stringExtra3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(stringExtra4);
                sb2.append(str2);
                iUiListener.onError(new UiError(-6, "unknown error", sb2.toString()));
            } else if ("complete".equals(stringExtra3)) {
                try {
                    iUiListener.onComplete(new JSONObject(stringExtra4 == null ? "{\"ret\": 0}" : stringExtra4));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(stringExtra4);
                    sb3.append(str2);
                    iUiListener.onError(new UiError(-4, "json error", sb3.toString()));
                }
            }
        }
    }

    private IUiListener a(int i, IUiListener iUiListener) {
        String str = "openSDK_LOG.UIListenerManager";
        if (i == 11101) {
            f.e(str, "登录的接口回调不能重新构建，暂时无法提供，先记录下来这种情况是否存在");
        } else if (i == 11105) {
            f.e(str, "Social Api 的接口回调需要使用param来重新构建，暂时无法提供，先记录下来这种情况是否存在");
        } else if (i == 11106) {
            f.e(str, "Social Api 的H5接口回调需要使用param来重新构建，暂时无法提供，先记录下来这种情况是否存在");
        }
        return iUiListener;
    }

    public boolean onActivityResult(int i, int i2, Intent intent, IUiListener iUiListener) {
        StringBuilder sb = new StringBuilder();
        sb.append("onActivityResult req=");
        sb.append(i);
        sb.append(" res=");
        sb.append(i2);
        String str = "openSDK_LOG.UIListenerManager";
        f.c(str, sb.toString());
        IUiListener listnerWithRequestCode = getListnerWithRequestCode(i);
        if (listnerWithRequestCode == null) {
            if (iUiListener != null) {
                listnerWithRequestCode = a(i, iUiListener);
            } else {
                f.e(str, "onActivityResult can't find the listener");
                return false;
            }
        }
        if (i2 != -1) {
            listnerWithRequestCode.onCancel();
        } else if (intent == null) {
            String str2 = "onActivityResult intent data is null.";
            listnerWithRequestCode.onError(new UiError(-6, str2, str2));
            return true;
        } else {
            String stringExtra = intent.getStringExtra(Constants.KEY_ACTION);
            boolean equals = "action_login".equals(stringExtra);
            String str3 = Constants.MSG_JSON_ERROR;
            String str4 = Constants.KEY_RESPONSE;
            String str5 = Constants.KEY_ERROR_DETAIL;
            String str6 = Constants.KEY_ERROR_MSG;
            String str7 = Constants.KEY_ERROR_CODE;
            String str8 = "";
            if (equals) {
                int intExtra = intent.getIntExtra(str7, 0);
                if (intExtra == 0) {
                    String stringExtra2 = intent.getStringExtra(str4);
                    if (stringExtra2 != null) {
                        try {
                            listnerWithRequestCode.onComplete(k.d(stringExtra2));
                        } catch (JSONException e) {
                            listnerWithRequestCode.onError(new UiError(-4, str3, stringExtra2));
                            f.b(str, "OpenUi, onActivityResult, json error", e);
                        }
                    } else {
                        f.b(str, "OpenUi, onActivityResult, onComplete");
                        listnerWithRequestCode.onComplete(new JSONObject());
                    }
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("OpenUi, onActivityResult, onError = ");
                    sb2.append(intExtra);
                    sb2.append(str8);
                    f.e(str, sb2.toString());
                    listnerWithRequestCode.onError(new UiError(intExtra, intent.getStringExtra(str6), intent.getStringExtra(str5)));
                }
            } else if ("action_share".equals(stringExtra)) {
                String stringExtra3 = intent.getStringExtra(ConversationControlOp.MEMBER_COUNT_QUERY_RESULT);
                String stringExtra4 = intent.getStringExtra("response");
                if ("cancel".equals(stringExtra3)) {
                    listnerWithRequestCode.onCancel();
                } else if ("error".equals(stringExtra3)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(stringExtra4);
                    sb3.append(str8);
                    listnerWithRequestCode.onError(new UiError(-6, "unknown error", sb3.toString()));
                } else if ("complete".equals(stringExtra3)) {
                    try {
                        listnerWithRequestCode.onComplete(new JSONObject(stringExtra4 == null ? "{\"ret\": 0}" : stringExtra4));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(stringExtra4);
                        sb4.append(str8);
                        listnerWithRequestCode.onError(new UiError(-4, "json error", sb4.toString()));
                    }
                }
            } else {
                int intExtra2 = intent.getIntExtra(str7, 0);
                if (intExtra2 == 0) {
                    String stringExtra5 = intent.getStringExtra(str4);
                    if (stringExtra5 != null) {
                        try {
                            listnerWithRequestCode.onComplete(k.d(stringExtra5));
                        } catch (JSONException unused) {
                            listnerWithRequestCode.onError(new UiError(-4, str3, stringExtra5));
                        }
                    } else {
                        listnerWithRequestCode.onComplete(new JSONObject());
                    }
                } else {
                    listnerWithRequestCode.onError(new UiError(intExtra2, intent.getStringExtra(str6), intent.getStringExtra(str5)));
                }
            }
        }
        return true;
    }
}
