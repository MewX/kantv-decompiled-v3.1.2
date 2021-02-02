package com.samsung.multiscreen;

abstract class ProviderThread extends Thread {
    /* access modifiers changed from: 0000 */
    public boolean isTerminate() {
        return false;
    }

    /* access modifiers changed from: 0000 */
    public abstract void terminate();

    ProviderThread(Runnable runnable) {
        super(runnable);
    }
}
