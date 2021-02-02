package com.avos.avoscloud;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.avos.avoscloud.SignatureFactory.SignatureException;
import com.tencent.open.SocialOperation;
import java.util.HashMap;
import java.util.List;

public class AVUserSignatureFactory implements SignatureFactory {
    private static final String RTM_SIGN_ENDPOINT = "rtm/sign";
    private String sessionToken;

    public Signature createBlacklistSignature(String str, String str2, List<String> list, String str3) throws SignatureException {
        return null;
    }

    public Signature createConversationSignature(String str, String str2, List<String> list, String str3) throws SignatureException {
        return null;
    }

    public Signature createGroupSignature(String str, String str2, List<String> list, String str3) throws SignatureException {
        return null;
    }

    public AVUserSignatureFactory(String str) {
        this.sessionToken = str;
    }

    public Signature createSignature(String str, List<String> list) throws SignatureException {
        final StringBuffer stringBuffer = new StringBuffer();
        HashMap hashMap = new HashMap();
        hashMap.put("session_token", this.sessionToken);
        PaasClient.storageInstance().postObject(RTM_SIGN_ENDPOINT, JSON.toJSONString(hashMap), true, false, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                if (aVException != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("failed to create signature. cause:");
                    sb.append(aVException.getMessage());
                    AVExceptionHolder.add(new SignatureException(SignatureFactory.SIGNATURE_FAILED_LOGIN, sb.toString()));
                    return;
                }
                stringBuffer.append(str);
            }

            public void onFailure(Throwable th, String str) {
                AVExceptionHolder.add(new SignatureException(SignatureFactory.SIGNATURE_FAILED_LOGIN, str));
            }
        }, null, null);
        if (!AVExceptionHolder.exists()) {
            return parseSiparseSignaturegnature(stringBuffer.toString());
        }
        throw ((SignatureException) AVExceptionHolder.remove());
    }

    private Signature parseSiparseSignaturegnature(String str) throws SignatureException {
        if (!AVUtils.isBlankString(str)) {
            Signature signature = new Signature();
            try {
                JSONObject parseObject = JSON.parseObject(str);
                signature.setNonce(parseObject.getString("nonce"));
                signature.setSignature(parseObject.getString(SocialOperation.GAME_SIGNATURE));
                signature.setTimestamp(parseObject.getLong("timestamp").longValue());
                return signature;
            } catch (Exception unused) {
                StringBuilder sb = new StringBuilder();
                sb.append("singnature content parse error: ");
                sb.append(str);
                throw new SignatureException(SignatureFactory.SIGNATURE_FAILED_LOGIN, sb.toString());
            }
        } else {
            throw new SignatureException(SignatureFactory.SIGNATURE_FAILED_LOGIN, "singnature is empty");
        }
    }
}
