package com.koushikdutta.async;

import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

public class AsyncSemaphore {
    Semaphore semaphore = new Semaphore(0);

    public void acquire() throws InterruptedException {
        ThreadQueue orCreateThreadQueue = ThreadQueue.getOrCreateThreadQueue(Thread.currentThread());
        AsyncSemaphore asyncSemaphore = orCreateThreadQueue.waiter;
        orCreateThreadQueue.waiter = this;
        Semaphore semaphore2 = orCreateThreadQueue.queueSemaphore;
        try {
            if (!this.semaphore.tryAcquire()) {
                while (true) {
                    Runnable remove = orCreateThreadQueue.remove();
                    if (remove == null) {
                        semaphore2.acquire(Math.max(1, semaphore2.availablePermits()));
                        if (this.semaphore.tryAcquire()) {
                            orCreateThreadQueue.waiter = asyncSemaphore;
                            return;
                        }
                    } else {
                        remove.run();
                    }
                }
            }
        } finally {
            orCreateThreadQueue.waiter = asyncSemaphore;
        }
    }

    public boolean tryAcquire(long j, TimeUnit timeUnit) throws InterruptedException {
        long convert = TimeUnit.MILLISECONDS.convert(j, timeUnit);
        ThreadQueue orCreateThreadQueue = ThreadQueue.getOrCreateThreadQueue(Thread.currentThread());
        AsyncSemaphore asyncSemaphore = orCreateThreadQueue.waiter;
        orCreateThreadQueue.waiter = this;
        Semaphore semaphore2 = orCreateThreadQueue.queueSemaphore;
        try {
            if (this.semaphore.tryAcquire()) {
                return true;
            }
            long currentTimeMillis = System.currentTimeMillis();
            while (true) {
                Runnable remove = orCreateThreadQueue.remove();
                if (remove != null) {
                    remove.run();
                } else if (!semaphore2.tryAcquire(Math.max(1, semaphore2.availablePermits()), convert, TimeUnit.MILLISECONDS)) {
                    orCreateThreadQueue.waiter = asyncSemaphore;
                    return false;
                } else if (this.semaphore.tryAcquire()) {
                    orCreateThreadQueue.waiter = asyncSemaphore;
                    return true;
                } else if (System.currentTimeMillis() - currentTimeMillis >= convert) {
                    orCreateThreadQueue.waiter = asyncSemaphore;
                    return false;
                }
            }
        } finally {
            orCreateThreadQueue.waiter = asyncSemaphore;
        }
    }

    public void release() {
        this.semaphore.release();
        ThreadQueue.release(this);
    }
}
