package com.tencent.imsdk;

public enum TIMNetworkStatus {
    TIM_NETWORK_STATUS_CONNECTED(1),
    TIM_NETWORK_STATUS_DISCONNECTED(2),
    TIM_NETWORK_STATUS_CONNECTING(3);
    
    private long value;

    private TIMNetworkStatus(long j) {
        this.value = j;
    }

    /* access modifiers changed from: 0000 */
    public long getValue() {
        return this.value;
    }
}
