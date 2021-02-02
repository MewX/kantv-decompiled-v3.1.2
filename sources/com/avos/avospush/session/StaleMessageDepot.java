package com.avos.avospush.session;

import com.avos.avoscloud.AVUtils;

public class StaleMessageDepot {
    private static final int MAXLENGTH = 50;
    MessageQueue<String> messageDepot;

    public StaleMessageDepot(String str) {
        this.messageDepot = new MessageQueue<>(str, String.class);
    }

    public synchronized boolean putStableMessage(String str) {
        if (AVUtils.isBlankString(str)) {
            return true;
        }
        boolean contains = this.messageDepot.contains(str);
        if (!contains) {
            this.messageDepot.offer(str);
            while (this.messageDepot.size() > 50) {
                this.messageDepot.poll();
            }
        }
        return !contains;
    }
}
