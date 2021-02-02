package com.avos.avoscloud;

import com.alibaba.fastjson.annotation.JSONType;
import java.util.Collections;
import java.util.List;

@JSONType(ignores = {"expired"})
public class Signature {
    private String nonce;
    private String signature;
    private List<String> signedPeerIds;
    private long timestamp;

    @Deprecated
    public List<String> getSignedPeerIds() {
        if (this.signedPeerIds == null) {
            this.signedPeerIds = Collections.emptyList();
        }
        return this.signedPeerIds;
    }

    @Deprecated
    public void setSignedPeerIds(List<String> list) {
        this.signedPeerIds = list;
    }

    public String getSignature() {
        return this.signature;
    }

    public void setSignature(String str) {
        this.signature = str;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public void setTimestamp(long j) {
        this.timestamp = j;
    }

    public String getNonce() {
        return this.nonce;
    }

    public void setNonce(String str) {
        this.nonce = str;
    }

    /* access modifiers changed from: protected */
    public boolean isExpired() {
        return this.timestamp + 14400 < System.currentTimeMillis() / 1000;
    }
}
