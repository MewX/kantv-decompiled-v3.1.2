package com.koushikdutta.async.http.socketio;

import android.net.Uri;
import com.koushikdutta.async.http.AsyncHttpPost;

public class SocketIORequest extends AsyncHttpPost {
    Config config;
    String endpoint;
    String query;

    public static class Config {
        boolean randomizeReconnectDelay = false;
        long reconnectDelay = 1000;
        long reconnectDelayMax = 0;

        public void setRandomizeReconnectDelay(boolean z) {
            this.randomizeReconnectDelay = z;
        }

        public boolean isRandomizeReconnectDelay() {
            return this.randomizeReconnectDelay;
        }

        public void setReconnectDelay(long j) {
            if (j >= 0) {
                this.reconnectDelay = j;
                return;
            }
            throw new IllegalArgumentException("reconnectDelay must be >= 0");
        }

        public long getReconnectDelay() {
            return this.reconnectDelay;
        }

        public void setReconnectDelayMax(long j) {
            if (this.reconnectDelay >= 0) {
                this.reconnectDelayMax = j;
                return;
            }
            throw new IllegalArgumentException("reconnectDelayMax must be >= 0");
        }

        public long getReconnectDelayMax() {
            return this.reconnectDelayMax;
        }
    }

    public SocketIORequest(String str) {
        this(str, "");
    }

    public Config getConfig() {
        return this.config;
    }

    public String getEndpoint() {
        return this.endpoint;
    }

    public String getQuery() {
        return this.query;
    }

    public SocketIORequest(String str, String str2) {
        this(str, str2, null);
    }

    public SocketIORequest(String str, String str2, String str3) {
        this(str, str2, str3, null);
    }

    public SocketIORequest(String str, String str2, String str3, Config config2) {
        String str4;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        if (str3 == null) {
            str4 = "";
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("?");
            sb2.append(str3);
            str4 = sb2.toString();
        }
        sb.append(str4);
        super(Uri.parse(sb.toString()).buildUpon().encodedPath("/socket.io/1/").build().toString());
        if (config2 == null) {
            config2 = new Config();
        }
        this.config = config2;
        this.endpoint = str2;
        this.query = str3;
    }
}
