package com.avos.avospush.session;

import android.os.Handler;
import android.os.HandlerThread;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.avos.avoscloud.AVPersistenceUtils;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.LogUtil.log;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

public class MessageQueue<E> implements Queue<E> {
    private static final String MESSAGE_ZONE = "com.avoscloud.chat.message";
    private static final String QUEUE_KEY = "com.avoscloud.chat.message.queue";
    static Handler serializeHanlder = new Handler(serializeThread.getLooper());
    static HandlerThread serializeThread = new HandlerThread("com.avos.avoscloud.push.messagequeue");
    Queue<E> messages = new ConcurrentLinkedQueue();
    /* access modifiers changed from: private */
    public final String queueKey;
    private final Class<E> type;

    public interface HasId {
        String getId();

        void setId(String str);
    }

    static {
        serializeThread.start();
    }

    public MessageQueue(String str, Class<E> cls) {
        this.type = cls;
        StringBuilder sb = new StringBuilder();
        sb.append("com.avoscloud.chat.message.queue.");
        sb.append(str);
        this.queueKey = sb.toString();
        LinkedList restoreMessageQueue = restoreMessageQueue();
        if (restoreMessageQueue != null && restoreMessageQueue.size() > 0) {
            this.messages.addAll(restoreMessageQueue);
        }
    }

    public boolean addAll(Collection<? extends E> collection) {
        boolean addAll = this.messages.addAll(collection);
        storeMessageQueue();
        return addAll;
    }

    public void clear() {
        this.messages.clear();
        storeMessageQueue();
    }

    public boolean contains(Object obj) {
        return this.messages.contains(obj);
    }

    public boolean containsAll(Collection<?> collection) {
        return this.messages.containsAll(collection);
    }

    public boolean isEmpty() {
        return this.messages.isEmpty();
    }

    public Iterator<E> iterator() {
        return this.messages.iterator();
    }

    public boolean remove(Object obj) {
        boolean remove = this.messages.remove(obj);
        storeMessageQueue();
        return remove;
    }

    public boolean removeAll(Collection<?> collection) {
        boolean removeAll = this.messages.removeAll(collection);
        storeMessageQueue();
        return removeAll;
    }

    public boolean retainAll(Collection<?> collection) {
        boolean retainAll = this.messages.retainAll(collection);
        storeMessageQueue();
        return retainAll;
    }

    public int size() {
        return this.messages.size();
    }

    public Object[] toArray() {
        return this.messages.toArray();
    }

    public <T> T[] toArray(T[] tArr) {
        return this.messages.toArray(tArr);
    }

    public boolean add(E e) {
        boolean add = this.messages.add(e);
        storeMessageQueue();
        return add;
    }

    public boolean offer(E e) {
        boolean offer = this.messages.offer(e);
        storeMessageQueue();
        return offer;
    }

    public E remove() {
        E remove = this.messages.remove();
        storeMessageQueue();
        return remove;
    }

    public E poll() {
        E poll = this.messages.poll();
        storeMessageQueue();
        return poll;
    }

    public E element() {
        E element = this.messages.element();
        storeMessageQueue();
        return element;
    }

    public E peek() {
        return this.messages.peek();
    }

    private void storeMessageQueue() {
        serializeHanlder.post(new Runnable() {
            public void run() {
                String jSONString = JSON.toJSONString((Object) MessageQueue.this.messages, SerializerFeature.SkipTransientField, SerializerFeature.WriteClassName, SerializerFeature.QuoteFieldNames, SerializerFeature.WriteNullNumberAsZero, SerializerFeature.WriteNullBooleanAsFalse);
                AVPersistenceUtils.sharedInstance().savePersistentSettingString(MessageQueue.MESSAGE_ZONE, MessageQueue.this.queueKey, jSONString);
            }
        });
    }

    private synchronized LinkedList<E> restoreMessageQueue() {
        LinkedList<E> linkedList;
        linkedList = new LinkedList<>();
        String persistentSettingString = AVPersistenceUtils.sharedInstance().getPersistentSettingString(MESSAGE_ZONE, this.queueKey, null);
        if (!AVUtils.isBlankString(persistentSettingString)) {
            try {
                linkedList.addAll(JSON.parseArray(persistentSettingString, this.type));
            } catch (Exception e) {
                AVPersistenceUtils.sharedInstance().removePersistentSettingString(MESSAGE_ZONE, this.queueKey);
                log.e(e.getMessage());
            }
        }
        return linkedList;
    }
}
