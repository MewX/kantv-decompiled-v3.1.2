package master.flame.danmaku.danmaku.model.objectpool;

import master.flame.danmaku.danmaku.model.objectpool.Poolable;

public interface Pool<T extends Poolable<T>> {
    T acquire();

    void release(T t);
}
