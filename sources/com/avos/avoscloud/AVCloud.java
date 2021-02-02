package com.avos.avoscloud;

import com.avos.avoscloud.LogUtil.log;
import com.avos.avospush.session.ConversationControlPacket.ConversationControlOp;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

public class AVCloud {
    private static boolean isProduction = true;

    public static void setProductionMode(boolean z) {
        isProduction = z;
    }

    public static boolean isProductionMode() {
        return isProduction;
    }

    public static <T> T callFunction(String str, Map<String, ?> map) throws AVException {
        final AtomicReference atomicReference = new AtomicReference();
        PaasClient cloudInstance = PaasClient.cloudInstance();
        StringBuilder sb = new StringBuilder();
        sb.append("functions/");
        sb.append(str);
        cloudInstance.postObject(sb.toString(), AVUtils.restfulServerData(map), getProductionHeader(), true, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                atomicReference.set(AVCloud.convertCloudResponse(str));
            }

            public void onFailure(Throwable th, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(th);
                log.d(sb.toString());
                AVExceptionHolder.add(AVErrorUtils.createException(th, str));
            }
        });
        if (!AVExceptionHolder.exists()) {
            return atomicReference.get();
        }
        throw AVExceptionHolder.remove();
    }

    public static <T> void callFunctionInBackground(String str, Map<String, ?> map, final FunctionCallback<T> functionCallback) {
        PaasClient cloudInstance = PaasClient.cloudInstance();
        StringBuilder sb = new StringBuilder();
        sb.append("functions/");
        sb.append(str);
        cloudInstance.postObject(sb.toString(), AVUtils.restfulServerData(map), getProductionHeader(), false, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                FunctionCallback functionCallback = functionCallback;
                if (functionCallback != null) {
                    functionCallback.internalDone(AVCloud.convertCloudResponse(str), aVException);
                }
            }

            public void onFailure(Throwable th, String str) {
                FunctionCallback functionCallback = functionCallback;
                if (functionCallback != null) {
                    functionCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            }
        });
    }

    public static Object convertCloudResponse(String str) {
        try {
            Object obj = ((Map) AVUtils.getFromJSON(str, Map.class)).get(ConversationControlOp.MEMBER_COUNT_QUERY_RESULT);
            if (obj instanceof Collection) {
                return AVUtils.getObjectFrom((Collection) obj);
            }
            if (obj instanceof Map) {
                return AVUtils.getObjectFrom((Map) obj);
            }
            return obj;
        } catch (Exception e) {
            log.e("Error during response parse", e);
            return null;
        }
    }

    public static <T> void rpcFunctionInBackground(String str, Object obj, FunctionCallback<T> functionCallback) {
        rpcFunctionInBackground(str, obj, false, functionCallback);
    }

    public static <T> T rpcFunction(String str, Object obj) throws AVException {
        final AtomicReference atomicReference = new AtomicReference();
        rpcFunctionInBackground(str, obj, true, new FunctionCallback<T>() {
            /* access modifiers changed from: protected */
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(T t, AVException aVException) {
                if (aVException == null) {
                    atomicReference.set(t);
                } else {
                    AVExceptionHolder.add(aVException);
                }
            }
        });
        if (!AVExceptionHolder.exists()) {
            return atomicReference.get();
        }
        throw AVExceptionHolder.remove();
    }

    private static Map<String, String> getProductionHeader() {
        HashMap hashMap = new HashMap();
        hashMap.put("X-LC-Prod", isProduction ? "1" : "0");
        return hashMap;
    }

    private static <T> void rpcFunctionInBackground(String str, Object obj, boolean z, final FunctionCallback<T> functionCallback) {
        String restfulCloudData = AVUtils.restfulCloudData(obj);
        PaasClient cloudInstance = PaasClient.cloudInstance();
        StringBuilder sb = new StringBuilder();
        sb.append("call/");
        sb.append(str);
        cloudInstance.postObject(sb.toString(), restfulCloudData, getProductionHeader(), z, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                functionCallback.internalDone(AVCloud.convertCloudResponse(str), aVException);
            }

            public void onFailure(Throwable th, String str) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(th);
                log.d(sb.toString());
                functionCallback.internalDone(null, AVErrorUtils.createException(th, str));
            }
        });
    }
}
