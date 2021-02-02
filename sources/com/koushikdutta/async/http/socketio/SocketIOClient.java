package com.koushikdutta.async.http.socketio;

import android.text.TextUtils;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.future.SimpleFuture;
import com.koushikdutta.async.http.AsyncHttpClient;
import com.koushikdutta.async.http.socketio.transport.SocketIOTransport;
import org.json.JSONArray;
import org.json.JSONObject;

@Deprecated
public class SocketIOClient extends EventEmitter {
    ConnectCallback connectCallback;
    boolean connected;
    SocketIOConnection connection;
    DisconnectCallback disconnectCallback;
    boolean disconnected;
    String endpoint;
    ErrorCallback errorCallback;
    ExceptionCallback exceptionCallback;
    JSONCallback jsonCallback;
    ReconnectCallback reconnectCallback;
    StringCallback stringCallback;

    private void emitRaw(int i, String str, Acknowledge acknowledge) {
        this.connection.emitRaw(i, this, str, acknowledge);
    }

    public void emit(String str, JSONArray jSONArray) {
        emit(str, jSONArray, null);
    }

    public void emit(String str) {
        emit(str, (Acknowledge) null);
    }

    public void emit(JSONObject jSONObject) {
        emit(jSONObject, (Acknowledge) null);
    }

    public void emit(String str, JSONArray jSONArray, Acknowledge acknowledge) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", str);
            jSONObject.put("args", jSONArray);
            emitRaw(5, jSONObject.toString(), acknowledge);
        } catch (Exception unused) {
        }
    }

    public void emit(String str, Acknowledge acknowledge) {
        emitRaw(3, str, acknowledge);
    }

    public void emit(JSONObject jSONObject, Acknowledge acknowledge) {
        emitRaw(4, jSONObject.toString(), acknowledge);
    }

    public void emitEvent(String str) {
        emitEvent(str, null);
    }

    public void emitEvent(String str, Acknowledge acknowledge) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", str);
            emitRaw(5, jSONObject.toString(), acknowledge);
        } catch (Exception unused) {
        }
    }

    public static Future<SocketIOClient> connect(AsyncHttpClient asyncHttpClient, String str, ConnectCallback connectCallback2) {
        return connect(asyncHttpClient, new SocketIORequest(str), connectCallback2);
    }

    public static Future<SocketIOClient> connect(AsyncHttpClient asyncHttpClient, final SocketIORequest socketIORequest, final ConnectCallback connectCallback2) {
        final SimpleFuture simpleFuture = new SimpleFuture();
        final SocketIOConnection socketIOConnection = new SocketIOConnection(asyncHttpClient, socketIORequest);
        socketIOConnection.clients.add(new SocketIOClient(socketIOConnection, "", new ConnectCallback() {
            public void onConnectCompleted(Exception exc, SocketIOClient socketIOClient) {
                if (exc != null || TextUtils.isEmpty(socketIORequest.getEndpoint())) {
                    ConnectCallback connectCallback = connectCallback2;
                    if (connectCallback != null) {
                        connectCallback.onConnectCompleted(exc, socketIOClient);
                    }
                    simpleFuture.setComplete(exc, socketIOClient);
                    return;
                }
                socketIOConnection.clients.remove(socketIOClient);
                socketIOClient.of(socketIORequest.getEndpoint(), new ConnectCallback() {
                    public void onConnectCompleted(Exception exc, SocketIOClient socketIOClient) {
                        if (connectCallback2 != null) {
                            connectCallback2.onConnectCompleted(exc, socketIOClient);
                        }
                        simpleFuture.setComplete(exc, socketIOClient);
                    }
                });
            }
        }));
        socketIOConnection.reconnect(simpleFuture);
        return simpleFuture;
    }

    public void setExceptionCallback(ExceptionCallback exceptionCallback2) {
        this.exceptionCallback = exceptionCallback2;
    }

    public ExceptionCallback getExceptionCallback() {
        return this.exceptionCallback;
    }

    public ErrorCallback getErrorCallback() {
        return this.errorCallback;
    }

    public void setErrorCallback(ErrorCallback errorCallback2) {
        this.errorCallback = errorCallback2;
    }

    public DisconnectCallback getDisconnectCallback() {
        return this.disconnectCallback;
    }

    public void setDisconnectCallback(DisconnectCallback disconnectCallback2) {
        this.disconnectCallback = disconnectCallback2;
    }

    public ReconnectCallback getReconnectCallback() {
        return this.reconnectCallback;
    }

    public void setReconnectCallback(ReconnectCallback reconnectCallback2) {
        this.reconnectCallback = reconnectCallback2;
    }

    public JSONCallback getJSONCallback() {
        return this.jsonCallback;
    }

    public void setJSONCallback(JSONCallback jSONCallback) {
        this.jsonCallback = jSONCallback;
    }

    public StringCallback getStringCallback() {
        return this.stringCallback;
    }

    public void setStringCallback(StringCallback stringCallback2) {
        this.stringCallback = stringCallback2;
    }

    private SocketIOClient(SocketIOConnection socketIOConnection, String str, ConnectCallback connectCallback2) {
        this.endpoint = str;
        this.connection = socketIOConnection;
        this.connectCallback = connectCallback2;
    }

    public boolean isConnected() {
        return this.connected && !this.disconnected && this.connection.isConnected();
    }

    public void disconnect() {
        this.connection.disconnect(this);
        DisconnectCallback disconnectCallback2 = this.disconnectCallback;
        if (disconnectCallback2 != null) {
            disconnectCallback2.onDisconnect(null);
        }
    }

    public void of(String str, ConnectCallback connectCallback2) {
        SocketIOConnection socketIOConnection = this.connection;
        socketIOConnection.connect(new SocketIOClient(socketIOConnection, str, connectCallback2));
    }

    public void reconnect() {
        this.connection.reconnect(null);
    }

    public SocketIOTransport getTransport() {
        return this.connection.transport;
    }
}
