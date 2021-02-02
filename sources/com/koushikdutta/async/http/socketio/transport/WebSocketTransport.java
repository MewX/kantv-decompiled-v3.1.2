package com.koushikdutta.async.http.socketio.transport;

import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback.NullDataCallback;
import com.koushikdutta.async.http.WebSocket;
import com.koushikdutta.async.http.socketio.transport.SocketIOTransport.StringCallback;

public class WebSocketTransport implements SocketIOTransport {
    private String sessionId;
    private StringCallback stringCallback;
    private WebSocket webSocket;

    public boolean heartbeats() {
        return true;
    }

    public WebSocketTransport(WebSocket webSocket2, String str) {
        this.webSocket = webSocket2;
        this.sessionId = str;
        this.webSocket.setDataCallback(new NullDataCallback());
    }

    public boolean isConnected() {
        return this.webSocket.isOpen();
    }

    public void setClosedCallback(CompletedCallback completedCallback) {
        this.webSocket.setClosedCallback(completedCallback);
    }

    public void disconnect() {
        this.webSocket.close();
    }

    public AsyncServer getServer() {
        return this.webSocket.getServer();
    }

    public void send(String str) {
        this.webSocket.send(str);
    }

    public void setStringCallback(final StringCallback stringCallback2) {
        if (this.stringCallback != stringCallback2) {
            if (stringCallback2 == null) {
                this.webSocket.setStringCallback(null);
            } else {
                this.webSocket.setStringCallback(new WebSocket.StringCallback() {
                    public void onStringAvailable(String str) {
                        stringCallback2.onStringAvailable(str);
                    }
                });
            }
            this.stringCallback = stringCallback2;
        }
    }

    public String getSessionId() {
        return this.sessionId;
    }
}
