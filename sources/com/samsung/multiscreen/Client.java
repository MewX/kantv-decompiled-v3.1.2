package com.samsung.multiscreen;

import java.util.Collections;
import java.util.Map;

public class Client {
    private static final String ATTRIBUTES_KEY = "attributes";
    private static final String CONNECT_TIME_KEY = "connectTime";
    private static final String ID_KEY = "id";
    private static final String IS_HOST_KEY = "isHost";
    private final Map<String, String> attributes;
    private final Channel channel;
    private final long connectTime;
    private final boolean host;
    private final String id;

    private Client(Channel channel2, String str, boolean z, long j, Map<String, String> map) {
        this.channel = channel2;
        this.id = str;
        this.host = z;
        this.connectTime = j;
        this.attributes = map;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Client(id=");
        sb.append(getId());
        sb.append(", host=");
        sb.append(isHost());
        sb.append(", connectTime=");
        sb.append(getConnectTime());
        sb.append(", attributes=");
        sb.append(getAttributes());
        sb.append(")");
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public boolean canEqual(Object obj) {
        return obj instanceof Client;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Client)) {
            return false;
        }
        Client client = (Client) obj;
        if (!client.canEqual(this)) {
            return false;
        }
        String id2 = getId();
        String id3 = client.getId();
        return id2 != null ? id2.equals(id3) : id3 == null;
    }

    public int hashCode() {
        String id2 = getId();
        return 59 + (id2 == null ? 43 : id2.hashCode());
    }

    public Channel getChannel() {
        return this.channel;
    }

    public String getId() {
        return this.id;
    }

    public boolean isHost() {
        return this.host;
    }

    public long getConnectTime() {
        return this.connectTime;
    }

    public Map<String, String> getAttributes() {
        return this.attributes;
    }

    protected static Client create(Channel channel2, Map<String, Object> map) {
        Boolean bool = (Boolean) map.get(IS_HOST_KEY);
        Long l = (Long) map.get(CONNECT_TIME_KEY);
        Channel channel3 = channel2;
        Client client = new Client(channel3, (String) map.get("id"), bool.booleanValue(), l.longValue(), Collections.unmodifiableMap((Map) map.get(ATTRIBUTES_KEY)));
        return client;
    }
}
