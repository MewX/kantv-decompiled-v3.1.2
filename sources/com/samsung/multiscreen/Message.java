package com.samsung.multiscreen;

import java.util.Arrays;
import lombok.NonNull;

public class Message {
    static final String MEHOD_APPLICATION_GET = "ms.application.get";
    static final String MEHOD_APPLICATION_INSTALL = "ms.application.install";
    static final String MEHOD_APPLICATION_START = "ms.application.start";
    static final String MEHOD_APPLICATION_STOP = "ms.application.stop";
    static final String MEHOD_WEB_APPLICATION_GET = "ms.webapplication.get";
    static final String MEHOD_WEB_APPLICATION_START = "ms.webapplication.start";
    static final String MEHOD_WEB_APPLICATION_STOP = "ms.webapplication.stop";
    static final String METHOD_EMIT = "ms.channel.emit";
    static final String PROPERTY_APP_NAME = "appName";
    static final String PROPERTY_ARGS = "args";
    static final String PROPERTY_CLIENTS = "clients";
    static final String PROPERTY_DATA = "data";
    static final String PROPERTY_ERROR = "error";
    static final String PROPERTY_EVENT = "event";
    static final String PROPERTY_FROM = "from";
    static final String PROPERTY_ID = "id";
    static final String PROPERTY_LIBRARY = "library";
    static final String PROPERTY_MESSAGE = "message";
    public static final String PROPERTY_MESSAGE_ID = "id";
    static final String PROPERTY_METHOD = "method";
    static final String PROPERTY_MOD_NUMBER = "modelNumber";
    static final String PROPERTY_OS = "os";
    static final String PROPERTY_PARAMS = "params";
    static final String PROPERTY_RESULT = "result";
    static final String PROPERTY_TO = "to";
    static final String PROPERTY_URL = "url";
    static final String PROPERTY_VERSION = "version";
    public static final String TARGET_ALL = "all";
    public static final String TARGET_BROADCAST = "broadcast";
    public static final String TARGET_HOST = "host";
    @NonNull
    private final Channel channel;
    private final Object data;
    @NonNull
    private final String event;
    @NonNull
    private final Client from;
    private final byte[] payload;

    /* access modifiers changed from: protected */
    public boolean canEqual(Object obj) {
        return obj instanceof Message;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Message)) {
            return false;
        }
        Message message = (Message) obj;
        if (!message.canEqual(this)) {
            return false;
        }
        Channel channel2 = getChannel();
        Channel channel3 = message.getChannel();
        if (channel2 != null ? !channel2.equals(channel3) : channel3 != null) {
            return false;
        }
        String event2 = getEvent();
        String event3 = message.getEvent();
        if (event2 != null ? !event2.equals(event3) : event3 != null) {
            return false;
        }
        Object data2 = getData();
        Object data3 = message.getData();
        if (data2 != null ? !data2.equals(data3) : data3 != null) {
            return false;
        }
        Client from2 = getFrom();
        Client from3 = message.getFrom();
        if (from2 != null ? from2.equals(from3) : from3 == null) {
            return Arrays.equals(getPayload(), message.getPayload());
        }
        return false;
    }

    public int hashCode() {
        Channel channel2 = getChannel();
        int i = 43;
        int hashCode = (channel2 == null ? 43 : channel2.hashCode()) + 59;
        String event2 = getEvent();
        int hashCode2 = (hashCode * 59) + (event2 == null ? 43 : event2.hashCode());
        Object data2 = getData();
        int hashCode3 = (hashCode2 * 59) + (data2 == null ? 43 : data2.hashCode());
        Client from2 = getFrom();
        int i2 = hashCode3 * 59;
        if (from2 != null) {
            i = from2.hashCode();
        }
        return ((i2 + i) * 59) + Arrays.hashCode(getPayload());
    }

    Message(@NonNull Channel channel2, @NonNull String str, Object obj, @NonNull Client client, byte[] bArr) {
        if (channel2 == null) {
            throw new NullPointerException("channel");
        } else if (str == null) {
            throw new NullPointerException("event");
        } else if (client != null) {
            this.channel = channel2;
            this.event = str;
            this.data = obj;
            this.from = client;
            this.payload = bArr;
        } else {
            throw new NullPointerException("from");
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Message(event=");
        sb.append(getEvent());
        sb.append(", data=");
        sb.append(getData());
        sb.append(", from=");
        sb.append(getFrom());
        sb.append(")");
        return sb.toString();
    }

    @NonNull
    public Channel getChannel() {
        return this.channel;
    }

    @NonNull
    public String getEvent() {
        return this.event;
    }

    public Object getData() {
        return this.data;
    }

    @NonNull
    public Client getFrom() {
        return this.from;
    }

    public byte[] getPayload() {
        return this.payload;
    }
}
