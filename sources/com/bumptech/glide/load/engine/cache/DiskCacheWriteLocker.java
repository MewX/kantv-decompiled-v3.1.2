package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.Key;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

final class DiskCacheWriteLocker {
    private final Map<Key, WriteLock> locks = new HashMap();
    private final WriteLockPool writeLockPool = new WriteLockPool();

    private static class WriteLock {
        int interestedThreads;
        final Lock lock;

        private WriteLock() {
            this.lock = new ReentrantLock();
        }
    }

    private static class WriteLockPool {
        private static final int MAX_POOL_SIZE = 10;
        private final Queue<WriteLock> pool;

        private WriteLockPool() {
            this.pool = new ArrayDeque();
        }

        /* access modifiers changed from: 0000 */
        public WriteLock obtain() {
            WriteLock writeLock;
            synchronized (this.pool) {
                writeLock = (WriteLock) this.pool.poll();
            }
            return writeLock == null ? new WriteLock() : writeLock;
        }

        /* access modifiers changed from: 0000 */
        public void offer(WriteLock writeLock) {
            synchronized (this.pool) {
                if (this.pool.size() < 10) {
                    this.pool.offer(writeLock);
                }
            }
        }
    }

    DiskCacheWriteLocker() {
    }

    /* access modifiers changed from: 0000 */
    public void acquire(Key key) {
        WriteLock writeLock;
        synchronized (this) {
            writeLock = (WriteLock) this.locks.get(key);
            if (writeLock == null) {
                writeLock = this.writeLockPool.obtain();
                this.locks.put(key, writeLock);
            }
            writeLock.interestedThreads++;
        }
        writeLock.lock.lock();
    }

    /* access modifiers changed from: 0000 */
    public void release(Key key) {
        WriteLock writeLock;
        synchronized (this) {
            writeLock = (WriteLock) this.locks.get(key);
            if (writeLock != null) {
                if (writeLock.interestedThreads > 0) {
                    int i = writeLock.interestedThreads - 1;
                    writeLock.interestedThreads = i;
                    if (i == 0) {
                        WriteLock writeLock2 = (WriteLock) this.locks.remove(key);
                        if (writeLock2.equals(writeLock)) {
                            this.writeLockPool.offer(writeLock2);
                        } else {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Removed the wrong lock, expected to remove: ");
                            sb.append(writeLock);
                            sb.append(", but actually removed: ");
                            sb.append(writeLock2);
                            sb.append(", key: ");
                            sb.append(key);
                            throw new IllegalStateException(sb.toString());
                        }
                    }
                }
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Cannot release a lock that is not held, key: ");
            sb2.append(key);
            sb2.append(", interestedThreads: ");
            sb2.append(writeLock == null ? 0 : writeLock.interestedThreads);
            throw new IllegalArgumentException(sb2.toString());
        }
        writeLock.lock.unlock();
    }
}
