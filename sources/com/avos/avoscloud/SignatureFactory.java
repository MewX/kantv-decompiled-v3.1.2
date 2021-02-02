package com.avos.avoscloud;

import java.util.List;

public interface SignatureFactory {
    public static final int SIGNATURE_FAILED_LOGIN = 4102;

    public static class SignatureException extends AVException {
        public SignatureException(int i, String str) {
            super(i, str);
        }
    }

    Signature createBlacklistSignature(String str, String str2, List<String> list, String str3) throws SignatureException;

    Signature createConversationSignature(String str, String str2, List<String> list, String str3) throws SignatureException;

    @Deprecated
    Signature createGroupSignature(String str, String str2, List<String> list, String str3) throws SignatureException;

    Signature createSignature(String str, List<String> list) throws SignatureException;
}
