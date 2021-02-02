package master.flame.danmaku.danmaku.model.objectpool;

import master.flame.danmaku.danmaku.model.objectpool.Poolable;

class SynchronizedPool<T extends Poolable<T>> implements Pool<T> {
    private final Object mLock;
    private final Pool<T> mPool;

    public SynchronizedPool(Pool<T> pool) {
        this.mPool = pool;
        this.mLock = this;
    }

    public SynchronizedPool(Pool<T> pool, Object obj) {
        this.mPool = pool;
        this.mLock = obj;
    }

    public T acquire() {
        T acquire;
        synchronized (this.mLock) {
            acquire = this.mPool.acquire();
        }
        return acquire;
    }

    public void release(T t) {
        synchronized (this.mLock) {
            this.mPool.release(t);
        }
    }
}
