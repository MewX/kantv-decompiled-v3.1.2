package com.avos.avoscloud;

import com.avos.avospush.session.MessageQueue;
import com.avos.avospush.session.MessageQueue.HasId;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

class PendingMessageCache<E extends HasId> {
    private MessageQueue<E> messages;
    private Map<String, E> msgMapping;

    public static class Message implements HasId {
        String cid;
        public String id;
        public String msg;
        boolean requestReceipt;
        public long timestamp;

        public String getId() {
            return this.id;
        }

        public void setId(String str) {
            this.id = str;
        }

        public static Message getMessage(String str, String str2, boolean z, String str3) {
            Message message = new Message();
            message.msg = str;
            message.setId(str2);
            message.requestReceipt = z;
            message.cid = str3;
            return message;
        }
    }

    PendingMessageCache(String str, Class<E> cls) {
        this.messages = new MessageQueue<>(str, cls);
        setupMapping();
    }

    private void setupMapping() {
        this.msgMapping = new ConcurrentHashMap();
        Iterator it = this.messages.iterator();
        while (it.hasNext()) {
            HasId hasId = (HasId) it.next();
            if (!AVUtils.isBlankString(hasId.getId())) {
                this.msgMapping.put(hasId.getId(), hasId);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void offer(E e) {
        if (!AVUtils.isBlankString(e.getId())) {
            this.msgMapping.put(e.getId(), e);
        }
        this.messages.offer(e);
    }

    /* access modifiers changed from: 0000 */
    public E poll(String str) {
        if (AVUtils.isBlankString(str) || !this.msgMapping.containsKey(str)) {
            return poll();
        }
        E e = (HasId) this.msgMapping.remove(str);
        this.messages.remove(e);
        return e;
    }

    /* access modifiers changed from: 0000 */
    public E poll() {
        return (HasId) this.messages.poll();
    }

    public void clear() {
        this.messages.clear();
        this.msgMapping.clear();
    }

    public boolean isEmpty() {
        return this.messages.isEmpty();
    }
}
