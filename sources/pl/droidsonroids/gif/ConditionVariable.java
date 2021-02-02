package pl.droidsonroids.gif;

class ConditionVariable {
    private volatile boolean mCondition;

    ConditionVariable() {
    }

    /* access modifiers changed from: 0000 */
    public synchronized void set(boolean z) {
        if (z) {
            open();
        } else {
            close();
        }
    }

    /* access modifiers changed from: 0000 */
    public synchronized void open() {
        boolean z = this.mCondition;
        this.mCondition = true;
        if (!z) {
            notify();
        }
    }

    /* access modifiers changed from: 0000 */
    public synchronized void close() {
        this.mCondition = false;
    }

    /* access modifiers changed from: 0000 */
    public synchronized void block() throws InterruptedException {
        while (!this.mCondition) {
            wait();
        }
    }
}
