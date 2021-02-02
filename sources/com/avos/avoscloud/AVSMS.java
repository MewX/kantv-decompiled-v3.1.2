package com.avos.avoscloud;

import java.util.HashMap;
import java.util.Map;

public class AVSMS {
    public static void requestSMSCode(String str, AVSMSOption aVSMSOption) throws AVException {
        requestSMSCodeInBackground(str, aVSMSOption, true, new RequestMobileCodeCallback() {
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                }
            }
        });
        if (AVExceptionHolder.exists()) {
            throw AVExceptionHolder.remove();
        }
    }

    public static void requestSMSCodeInBackground(String str, AVSMSOption aVSMSOption, RequestMobileCodeCallback requestMobileCodeCallback) {
        requestSMSCodeInBackground(str, aVSMSOption, false, requestMobileCodeCallback);
    }

    private static void requestSMSCodeInBackground(String str, AVSMSOption aVSMSOption, boolean z, final RequestMobileCodeCallback requestMobileCodeCallback) {
        Map map;
        if (AVUtils.isBlankString(str) || !AVUtils.checkMobilePhoneNumber(str)) {
            requestMobileCodeCallback.internalDone(new AVException((int) AVException.INVALID_PHONE_NUMBER, "Invalid Phone Number"));
        }
        if (aVSMSOption == null) {
            map = new HashMap();
        } else {
            map = aVSMSOption.getOptionMaps();
        }
        map.put(AVUser.SMS_PHONE_NUMBER, str);
        String str2 = "requestSmsCode";
        PaasClient.storageInstance().postObject(str2, AVUtils.jsonStringFromMapWithNull(map), z, false, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                RequestMobileCodeCallback requestMobileCodeCallback = requestMobileCodeCallback;
                if (requestMobileCodeCallback != null) {
                    requestMobileCodeCallback.internalDone(null, null);
                }
            }

            public void onFailure(Throwable th, String str) {
                RequestMobileCodeCallback requestMobileCodeCallback = requestMobileCodeCallback;
                if (requestMobileCodeCallback != null) {
                    requestMobileCodeCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            }
        }, null, null);
    }

    public static void verifySMSCode(String str, String str2) throws AVException {
        verifySMSCodeInBackground(str, str2, true, new AVMobilePhoneVerifyCallback() {
            public boolean mustRunOnUIThread() {
                return false;
            }

            public void done(AVException aVException) {
                if (aVException != null) {
                    AVExceptionHolder.add(aVException);
                }
            }
        });
        if (AVExceptionHolder.exists()) {
            throw AVExceptionHolder.remove();
        }
    }

    public static void verifySMSCodeInBackground(String str, String str2, AVMobilePhoneVerifyCallback aVMobilePhoneVerifyCallback) {
        verifySMSCodeInBackground(str, str2, false, aVMobilePhoneVerifyCallback);
    }

    private static void verifySMSCodeInBackground(String str, String str2, boolean z, final AVMobilePhoneVerifyCallback aVMobilePhoneVerifyCallback) {
        if (AVUtils.isBlankString(str) || !AVUtils.checkMobileVerifyCode(str)) {
            aVMobilePhoneVerifyCallback.internalDone(new AVException((int) AVException.INVALID_PHONE_NUMBER, "Invalid Verify Code"));
        }
        String format = String.format("verifySmsCode/%s", new Object[]{str});
        HashMap hashMap = new HashMap();
        hashMap.put(AVUser.SMS_PHONE_NUMBER, str2);
        PaasClient.storageInstance().postObject(format, AVUtils.restfulServerData(hashMap), z, false, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                AVMobilePhoneVerifyCallback aVMobilePhoneVerifyCallback = aVMobilePhoneVerifyCallback;
                if (aVMobilePhoneVerifyCallback != null) {
                    aVMobilePhoneVerifyCallback.internalDone(null, null);
                }
            }

            public void onFailure(Throwable th, String str) {
                AVMobilePhoneVerifyCallback aVMobilePhoneVerifyCallback = aVMobilePhoneVerifyCallback;
                if (aVMobilePhoneVerifyCallback != null) {
                    aVMobilePhoneVerifyCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            }
        }, null, null);
    }
}
