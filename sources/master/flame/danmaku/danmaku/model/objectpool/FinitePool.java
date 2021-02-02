package master.flame.danmaku.danmaku.model.objectpool;

import java.io.PrintStream;
import master.flame.danmaku.danmaku.model.objectpool.Poolable;

class FinitePool<T extends Poolable<T>> implements Pool<T> {
    private final boolean mInfinite;
    private final int mLimit;
    private final PoolableManager<T> mManager;
    private int mPoolCount;
    private T mRoot;

    FinitePool(PoolableManager<T> poolableManager) {
        this.mManager = poolableManager;
        this.mLimit = 0;
        this.mInfinite = true;
    }

    FinitePool(PoolableManager<T> poolableManager, int i) {
        if (i > 0) {
            this.mManager = poolableManager;
            this.mLimit = i;
            this.mInfinite = false;
            return;
        }
        throw new IllegalArgumentException("The pool limit must be > 0");
    }

    public T acquire() {
        T t = this.mRoot;
        if (t != null) {
            this.mRoot = (Poolable) t.getNextPoolable();
            this.mPoolCount--;
        } else {
            t = this.mManager.newInstance();
        }
        if (t != null) {
            t.setNextPoolable(null);
            t.setPooled(false);
            this.mManager.onAcquired(t);
        }
        return t;
    }

    public void release(T t) {
        if (!t.isPooled()) {
            if (this.mInfinite || this.mPoolCount < this.mLimit) {
                this.mPoolCount++;
                t.setNextPoolable(this.mRoot);
                t.setPooled(true);
                this.mRoot = t;
            }
            this.mManager.onReleased(t);
            return;
        }
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder();
        sb.append("[FinitePool] Element is already in pool: ");
        sb.append(t);
        printStream.print(sb.toString());
    }
}
