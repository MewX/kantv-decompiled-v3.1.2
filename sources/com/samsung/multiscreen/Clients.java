package com.samsung.multiscreen;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class Clients {
    private final Channel channel;
    private final Map<String, Client> clients = new HashMap();
    private Client host;
    private Client me;
    private String myClientId;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Clients(clients=");
        sb.append(this.clients);
        sb.append(", myClientId=");
        sb.append(this.myClientId);
        sb.append(", host=");
        sb.append(getHost());
        sb.append(")");
        return sb.toString();
    }

    public Channel getChannel() {
        return this.channel;
    }

    protected Clients(Channel channel2) {
        this.channel = channel2;
    }

    public Client get(String str) {
        return (Client) this.clients.get(str);
    }

    public Client getHost() {
        if (this.host == null) {
            Iterator it = this.clients.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Client client = (Client) it.next();
                if (client.isHost()) {
                    this.host = client;
                    break;
                }
            }
        }
        return this.host;
    }

    public Client me() {
        String str = this.myClientId;
        if (str != null) {
            Client client = get(str);
            if (client != null && !client.equals(this.me)) {
                this.me = client;
            }
        }
        return this.me;
    }

    public boolean isMe(Client client) {
        return client.getId().equals(this.myClientId);
    }

    public int size() {
        return this.clients.size();
    }

    public List<Client> list() {
        return Collections.unmodifiableList(new ArrayList(this.clients.values()));
    }

    /* access modifiers changed from: protected */
    public void setMyClientId(String str) {
        this.myClientId = str;
        Client client = get(this.myClientId);
        if (client != null) {
            this.me = client;
        }
    }

    /* access modifiers changed from: protected */
    public void reset() {
        this.myClientId = null;
        this.clients.clear();
    }

    /* access modifiers changed from: protected */
    public void add(List<Client> list) {
        for (Client add : list) {
            add(add);
        }
    }

    /* access modifiers changed from: protected */
    public void add(Client client) {
        this.clients.put(client.getId(), client);
    }

    /* access modifiers changed from: protected */
    public void remove(Client client) {
        this.clients.remove(client.getId());
    }
}
