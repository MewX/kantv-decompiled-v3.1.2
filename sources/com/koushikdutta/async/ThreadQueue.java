package com.koushikdutta.async;

import java.util.LinkedList;
import java.util.WeakHashMap;
import java.util.concurrent.Semaphore;

public class ThreadQueue extends LinkedList<Runnable> {
    private static final WeakHashMap<Thread, ThreadQueue> mThreadQueues = new WeakHashMap<>();
    Semaphore queueSemaphore = new Semaphore(0);
    AsyncSemaphore waiter;

    static ThreadQueue getOrCreateThreadQueue(Thread thread) {
        ThreadQueue threadQueue;
        synchronized (mThreadQueues) {
            threadQueue = (ThreadQueue) mThreadQueues.get(thread);
            if (threadQueue == null) {
                threadQueue = new ThreadQueue();
                mThreadQueues.put(thread, threadQueue);
            }
        }
        return threadQueue;
    }

    static void release(AsyncSemaphore asyncSemaphore) {
        synchronized (mThreadQueues) {
            for (ThreadQueue threadQueue : mThreadQueues.values()) {
                if (threadQueue.waiter == asyncSemaphore) {
                    threadQueue.queueSemaphore.release();
                }
            }
        }
    }

    public boolean add(Runnable runnable) {
        boolean add;
        synchronized (this) {
            add = super.add(runnable);
        }
        return add;
    }

    public boolean remove(Object obj) {
        boolean remove;
        synchronized (this) {
            remove = super.remove(obj);
        }
        return remove;
    }

    public Runnable remove() {
        synchronized (this) {
            if (isEmpty()) {
                return null;
            }
            Runnable runnable = (Runnable) super.remove();
            return runnable;
        }
    }
}
