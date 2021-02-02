package com.avos.avoscloud;

import com.alibaba.fastjson.JSON;
import java.util.HashMap;
import java.util.Map;

public class AVCaptcha {
    private static final String CAPTCHA_CODE = "captcha_code";
    private static final String CAPTCHA_TOKEN = "captcha_token";
    private static final String CAPTCHA_URL = "captcha_url";
    private static final String VALIDATE_TOKEN = "validate_token";

    public static void requestCaptchaInBackground(AVCaptchaOption aVCaptchaOption, final AVCallback<AVCaptchaDigest> aVCallback) {
        if (aVCallback != null) {
            PaasClient.storageInstance().getObject("requestCaptcha", getOptionParams(aVCaptchaOption), false, null, new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    AVCaptchaDigest aVCaptchaDigest = new AVCaptchaDigest();
                    if (!AVUtils.isBlankString(str)) {
                        Map map = (Map) JSON.parseObject(str, HashMap.class);
                        if (map != null) {
                            String str2 = AVCaptcha.CAPTCHA_TOKEN;
                            if (map.containsKey(str2)) {
                                aVCaptchaDigest.setNonce((String) map.get(str2));
                            }
                            String str3 = AVCaptcha.CAPTCHA_URL;
                            if (map.containsKey(str3)) {
                                aVCaptchaDigest.setUrl((String) map.get(str3));
                            }
                        }
                    }
                    aVCallback.internalDone(aVCaptchaDigest, null);
                }

                public void onFailure(Throwable th, String str) {
                    aVCallback.internalDone(null, AVErrorUtils.createException(th, str));
                }
            });
        }
    }

    public static void verifyCaptchaCodeInBackground(String str, AVCaptchaDigest aVCaptchaDigest, final AVCallback<String> aVCallback) {
        if (aVCallback != null) {
            if (AVUtils.isBlankString(str)) {
                throw new IllegalArgumentException("captchaCode cannot be null.");
            } else if (aVCaptchaDigest == null) {
                throw new IllegalArgumentException("digest cannot be null.");
            } else if (!AVUtils.isBlankString(aVCaptchaDigest.getNonce())) {
                HashMap hashMap = new HashMap();
                hashMap.put(CAPTCHA_CODE, str);
                hashMap.put(CAPTCHA_TOKEN, aVCaptchaDigest.getNonce());
                String jsonStringFromMapWithNull = AVUtils.jsonStringFromMapWithNull(hashMap);
                PaasClient.storageInstance().postObject("verifyCaptcha", jsonStringFromMapWithNull, false, new GenericObjectCallback() {
                    public void onSuccess(String str, AVException aVException) {
                        if (!AVUtils.isBlankString(str)) {
                            Map map = (Map) JSON.parseObject(str, HashMap.class);
                            if (map != null) {
                                String str2 = "validate_token";
                                if (map.containsKey(str2)) {
                                    aVCallback.internalDone(map.get(str2), null);
                                    return;
                                }
                            }
                        }
                        aVCallback.internalDone(null, null);
                    }

                    public void onFailure(Throwable th, String str) {
                        aVCallback.internalDone(AVErrorUtils.createException(th, str));
                    }
                });
            } else {
                throw new IllegalArgumentException("nonce in digest cannot be null.");
            }
        }
    }

    private static AVRequestParams getOptionParams(AVCaptchaOption aVCaptchaOption) {
        AVRequestParams aVRequestParams = new AVRequestParams();
        if (aVCaptchaOption != null) {
            if (aVCaptchaOption.getHeight() > 0) {
                aVRequestParams.put("height", Integer.valueOf(aVCaptchaOption.getHeight()));
            }
            if (aVCaptchaOption.getWidth() > 0) {
                aVRequestParams.put("width", Integer.valueOf(aVCaptchaOption.getWidth()));
            }
        }
        return aVRequestParams;
    }
}
