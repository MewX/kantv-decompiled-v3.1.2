package master.flame.danmaku.danmaku.model.objectpool;

import master.flame.danmaku.danmaku.model.objectpool.Poolable;

public interface PoolableManager<T extends Poolable<T>> {
    T newInstance();

    void onAcquired(T t);

    void onReleased(T t);
}
