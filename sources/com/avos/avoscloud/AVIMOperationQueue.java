package com.avos.avoscloud;

import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseArray;
import com.avos.avoscloud.im.v2.AVIMOptions;
import com.avos.avoscloud.im.v2.Conversation.AVIMOperation;
import com.avos.avospush.session.MessageQueue;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

class AVIMOperationQueue {
    static ConcurrentHashMap<Integer, Runnable> timeoutCache = new ConcurrentHashMap<>();
    static Handler timeoutHandler = new Handler(timeoutHandlerThread.getLooper());
    static HandlerThread timeoutHandlerThread = new HandlerThread("com.avos.avoscloud.im.v2.timeoutHandlerThread");
    SparseArray<Operation> cache = new SparseArray<>();
    MessageQueue<Operation> operationQueue;

    public static class Operation {
        String conversationId;
        int operation;
        int requestId;
        String sessionId;

        public static Operation getOperation(int i, String str, String str2, int i2) {
            Operation operation2 = new Operation();
            operation2.conversationId = str2;
            operation2.sessionId = str;
            operation2.operation = i;
            operation2.requestId = i2;
            return operation2;
        }
    }

    static {
        timeoutHandlerThread.start();
    }

    public AVIMOperationQueue(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("operation.queue.");
        sb.append(str);
        this.operationQueue = new MessageQueue<>(sb.toString(), Operation.class);
        setupCache();
    }

    private void setupCache() {
        Iterator it = this.operationQueue.iterator();
        while (it.hasNext()) {
            Operation operation = (Operation) it.next();
            if (operation.requestId != -65537) {
                this.cache.put(operation.requestId, operation);
            }
        }
    }

    public void offer(final Operation operation) {
        if (operation.requestId != -65537) {
            this.cache.put(operation.requestId, operation);
            AnonymousClass1 r0 = new Runnable() {
                public void run() {
                    Operation poll = AVIMOperationQueue.this.poll(operation.requestId);
                    if (poll != null) {
                        BroadcastUtil.sendIMLocalBroadcast(poll.sessionId, poll.conversationId, poll.requestId, (Throwable) new AVException(124, "Timeout Exception"), AVIMOperation.getAVIMOperation(poll.operation));
                    }
                }
            };
            timeoutCache.put(Integer.valueOf(operation.requestId), r0);
            timeoutHandler.postDelayed(r0, (long) (AVIMOptions.getGlobalOptions().getTimeoutInSecs() * 1000));
        }
        this.operationQueue.offer(operation);
    }

    public Operation poll(int i) {
        if (i == -65537 || this.cache.get(i) == null) {
            return poll();
        }
        Operation operation = (Operation) this.cache.get(i);
        this.cache.remove(i);
        this.operationQueue.remove(operation);
        Runnable runnable = (Runnable) timeoutCache.get(Integer.valueOf(i));
        timeoutCache.remove(Integer.valueOf(i));
        if (runnable != null) {
            timeoutHandler.removeCallbacks(runnable);
        }
        return operation;
    }

    public Operation poll() {
        return (Operation) this.operationQueue.poll();
    }

    public void clear() {
        this.operationQueue.clear();
        this.cache.clear();
    }

    public boolean isEmpty() {
        return this.operationQueue.isEmpty();
    }
}
