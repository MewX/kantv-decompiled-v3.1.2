package com.koushikdutta.async.http.socketio;

import android.net.Uri;
import android.text.TextUtils;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.Cancellable;
import com.koushikdutta.async.future.DependentCancellable;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.future.SimpleFuture;
import com.koushikdutta.async.future.TransformFuture;
import com.koushikdutta.async.http.AsyncHttpClient;
import com.koushikdutta.async.http.AsyncHttpClient.WebSocketConnectCallback;
import com.koushikdutta.async.http.WebSocket;
import com.koushikdutta.async.http.socketio.transport.SocketIOTransport;
import com.koushikdutta.async.http.socketio.transport.SocketIOTransport.StringCallback;
import com.koushikdutta.async.http.socketio.transport.WebSocketTransport;
import com.koushikdutta.async.http.socketio.transport.XHRPollingTransport;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

class SocketIOConnection {
    int ackCount;
    Hashtable<String, Acknowledge> acknowledges = new Hashtable<>();
    ArrayList<SocketIOClient> clients = new ArrayList<>();
    Cancellable connecting;
    int heartbeat;
    AsyncHttpClient httpClient;
    long reconnectDelay;
    SocketIORequest request;
    SocketIOTransport transport;

    private interface SelectCallback {
        void onSelect(SocketIOClient socketIOClient);
    }

    public SocketIOConnection(AsyncHttpClient asyncHttpClient, SocketIORequest socketIORequest) {
        this.httpClient = asyncHttpClient;
        this.request = socketIORequest;
        this.reconnectDelay = this.request.config.reconnectDelay;
    }

    public boolean isConnected() {
        SocketIOTransport socketIOTransport = this.transport;
        return socketIOTransport != null && socketIOTransport.isConnected();
    }

    public void emitRaw(int i, SocketIOClient socketIOClient, String str, Acknowledge acknowledge) {
        String str2 = "";
        if (acknowledge != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            int i2 = this.ackCount;
            this.ackCount = i2 + 1;
            sb.append(i2);
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(sb2);
            sb3.append("+");
            String sb4 = sb3.toString();
            this.acknowledges.put(sb2, acknowledge);
            str2 = sb4;
        }
        this.transport.send(String.format(Locale.ENGLISH, "%d:%s:%s:%s", new Object[]{Integer.valueOf(i), str2, socketIOClient.endpoint, str}));
    }

    public void connect(SocketIOClient socketIOClient) {
        if (!this.clients.contains(socketIOClient)) {
            this.clients.add(socketIOClient);
        }
        this.transport.send(String.format(Locale.ENGLISH, "1::%s", new Object[]{socketIOClient.endpoint}));
    }

    public void disconnect(SocketIOClient socketIOClient) {
        boolean z;
        this.clients.remove(socketIOClient);
        Iterator it = this.clients.iterator();
        while (true) {
            if (it.hasNext()) {
                if (!TextUtils.equals(((SocketIOClient) it.next()).endpoint, socketIOClient.endpoint)) {
                    if (TextUtils.isEmpty(socketIOClient.endpoint)) {
                        break;
                    }
                } else {
                    break;
                }
            } else {
                z = true;
                break;
            }
        }
        z = false;
        SocketIOTransport socketIOTransport = this.transport;
        if (z && socketIOTransport != null) {
            socketIOTransport.send(String.format(Locale.ENGLISH, "0::%s", new Object[]{socketIOClient.endpoint}));
        }
        if (this.clients.size() <= 0 && socketIOTransport != null) {
            socketIOTransport.setStringCallback(null);
            socketIOTransport.setClosedCallback(null);
            socketIOTransport.disconnect();
            this.transport = null;
        }
    }

    /* access modifiers changed from: 0000 */
    public void reconnect(DependentCancellable dependentCancellable) {
        if (!isConnected()) {
            Cancellable cancellable = this.connecting;
            if (cancellable == null || cancellable.isDone() || this.connecting.isCancelled()) {
                this.request.logi("Reconnecting socket.io");
                this.connecting = ((AnonymousClass2) this.httpClient.executeString(this.request, null).then(new TransformFuture<SocketIOTransport, String>() {
                    /* access modifiers changed from: protected */
                    public void transform(String str) throws Exception {
                        String[] split = str.split(":");
                        final String str2 = split[0];
                        if (!"".equals(split[1])) {
                            SocketIOConnection.this.heartbeat = (Integer.parseInt(split[1]) / 2) * 1000;
                        } else {
                            SocketIOConnection.this.heartbeat = 0;
                        }
                        HashSet hashSet = new HashSet(Arrays.asList(split[3].split(",")));
                        final SimpleFuture simpleFuture = new SimpleFuture();
                        String str3 = "websocket";
                        if (hashSet.contains(str3)) {
                            SocketIOConnection.this.httpClient.websocket(Uri.parse(SocketIOConnection.this.request.getUri().toString()).buildUpon().appendPath(str3).appendPath(str2).build().toString(), (String) null, (WebSocketConnectCallback) null).setCallback(new FutureCallback<WebSocket>() {
                                public void onCompleted(Exception exc, WebSocket webSocket) {
                                    if (exc != null) {
                                        simpleFuture.setComplete(exc);
                                    } else {
                                        simpleFuture.setComplete(new WebSocketTransport(webSocket, str2));
                                    }
                                }
                            });
                        } else {
                            String str4 = "xhr-polling";
                            if (hashSet.contains(str4)) {
                                simpleFuture.setComplete(new XHRPollingTransport(SocketIOConnection.this.httpClient, Uri.parse(SocketIOConnection.this.request.getUri().toString()).buildUpon().appendPath(str4).appendPath(str2).build().toString(), str2));
                            } else {
                                throw new SocketIOException("transport not supported");
                            }
                        }
                        setComplete((Future<T>) simpleFuture);
                    }
                })).setCallback((FutureCallback) new FutureCallback<SocketIOTransport>() {
                    public void onCompleted(Exception exc, SocketIOTransport socketIOTransport) {
                        if (exc != null) {
                            SocketIOConnection.this.reportDisconnect(exc);
                            return;
                        }
                        SocketIOConnection socketIOConnection = SocketIOConnection.this;
                        socketIOConnection.reconnectDelay = socketIOConnection.request.config.reconnectDelay;
                        SocketIOConnection socketIOConnection2 = SocketIOConnection.this;
                        socketIOConnection2.transport = socketIOTransport;
                        socketIOConnection2.attach();
                    }
                });
                if (dependentCancellable != null) {
                    dependentCancellable.setParent(this.connecting);
                }
                return;
            }
            if (dependentCancellable != null) {
                dependentCancellable.setParent(this.connecting);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void setupHeartbeat() {
        new Runnable() {
            public void run() {
                SocketIOTransport socketIOTransport = SocketIOConnection.this.transport;
                if (SocketIOConnection.this.heartbeat > 0 && socketIOTransport != null && socketIOTransport.isConnected()) {
                    socketIOTransport.send("2:::");
                    socketIOTransport.getServer().postDelayed(this, (long) SocketIOConnection.this.heartbeat);
                }
            }
        }.run();
    }

    /* access modifiers changed from: private */
    public void select(String str, SelectCallback selectCallback) {
        Iterator it = this.clients.iterator();
        while (it.hasNext()) {
            SocketIOClient socketIOClient = (SocketIOClient) it.next();
            if (str == null || TextUtils.equals(socketIOClient.endpoint, str)) {
                selectCallback.onSelect(socketIOClient);
            }
        }
    }

    private void delayReconnect() {
        if (this.transport == null && this.clients.size() != 0) {
            boolean z = false;
            Iterator it = this.clients.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (((SocketIOClient) it.next()).disconnected) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (z) {
                this.httpClient.getServer().postDelayed(new Runnable() {
                    public void run() {
                        SocketIOConnection.this.reconnect(null);
                    }
                }, nextReconnectDelay(this.reconnectDelay));
                this.reconnectDelay *= 2;
                if (this.request.config.reconnectDelayMax > 0) {
                    this.reconnectDelay = Math.min(this.reconnectDelay, this.request.config.reconnectDelayMax);
                }
            }
        }
    }

    private long nextReconnectDelay(long j) {
        if (j < 2 || j > 4611686018427387903L || !this.request.config.randomizeReconnectDelay) {
            return j;
        }
        long j2 = j >> 1;
        double d = (double) j;
        double random = Math.random();
        Double.isNaN(d);
        return j2 + ((long) (d * random));
    }

    /* access modifiers changed from: private */
    public void reportDisconnect(final Exception exc) {
        String str = "socket.io disconnected";
        if (exc != null) {
            this.request.loge(str, exc);
        } else {
            this.request.logi(str);
        }
        select(null, new SelectCallback() {
            public void onSelect(SocketIOClient socketIOClient) {
                if (socketIOClient.connected) {
                    socketIOClient.disconnected = true;
                    DisconnectCallback disconnectCallback = socketIOClient.getDisconnectCallback();
                    if (disconnectCallback != null) {
                        disconnectCallback.onDisconnect(exc);
                        return;
                    }
                    return;
                }
                ConnectCallback connectCallback = socketIOClient.connectCallback;
                if (connectCallback != null) {
                    connectCallback.onConnectCompleted(exc, socketIOClient);
                }
            }
        });
        delayReconnect();
    }

    /* access modifiers changed from: private */
    public void reportConnect(String str) {
        select(str, new SelectCallback() {
            public void onSelect(SocketIOClient socketIOClient) {
                if (!socketIOClient.isConnected()) {
                    if (!socketIOClient.connected) {
                        socketIOClient.connected = true;
                        ConnectCallback connectCallback = socketIOClient.connectCallback;
                        if (connectCallback != null) {
                            connectCallback.onConnectCompleted(null, socketIOClient);
                        }
                    } else if (socketIOClient.disconnected) {
                        socketIOClient.disconnected = false;
                        ReconnectCallback reconnectCallback = socketIOClient.reconnectCallback;
                        if (reconnectCallback != null) {
                            reconnectCallback.onReconnect();
                        }
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void reportJson(String str, final JSONObject jSONObject, final Acknowledge acknowledge) {
        select(str, new SelectCallback() {
            public void onSelect(SocketIOClient socketIOClient) {
                JSONCallback jSONCallback = socketIOClient.jsonCallback;
                if (jSONCallback != null) {
                    jSONCallback.onJSON(jSONObject, acknowledge);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void reportString(String str, final String str2, final Acknowledge acknowledge) {
        select(str, new SelectCallback() {
            public void onSelect(SocketIOClient socketIOClient) {
                StringCallback stringCallback = socketIOClient.stringCallback;
                if (stringCallback != null) {
                    stringCallback.onString(str2, acknowledge);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void reportEvent(String str, final String str2, final JSONArray jSONArray, final Acknowledge acknowledge) {
        select(str, new SelectCallback() {
            public void onSelect(SocketIOClient socketIOClient) {
                socketIOClient.onEvent(str2, jSONArray, acknowledge);
            }
        });
    }

    /* access modifiers changed from: private */
    public void reportError(String str, final String str2) {
        select(str, new SelectCallback() {
            public void onSelect(SocketIOClient socketIOClient) {
                ErrorCallback errorCallback = socketIOClient.errorCallback;
                if (errorCallback != null) {
                    errorCallback.onError(str2);
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public Acknowledge acknowledge(String str, final String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        final String replaceAll = str.replaceAll("\\+$", "");
        return new Acknowledge() {
            public void acknowledge(JSONArray jSONArray) {
                String str = "";
                if (jSONArray != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append("+");
                    sb.append(jSONArray.toString());
                    str = sb.toString();
                }
                SocketIOTransport socketIOTransport = SocketIOConnection.this.transport;
                if (socketIOTransport == null) {
                    final SocketIOException socketIOException = new SocketIOException("not connected to server");
                    SocketIOConnection.this.select(str2, new SelectCallback() {
                        public void onSelect(SocketIOClient socketIOClient) {
                            ExceptionCallback exceptionCallback = socketIOClient.exceptionCallback;
                            if (exceptionCallback != null) {
                                exceptionCallback.onException(socketIOException);
                            }
                        }
                    });
                    return;
                }
                socketIOTransport.send(String.format(Locale.ENGLISH, "6:::%s%s", new Object[]{replaceAll, str}));
            }
        };
    }

    /* access modifiers changed from: private */
    public void attach() {
        if (this.transport.heartbeats()) {
            setupHeartbeat();
        }
        this.transport.setClosedCallback(new CompletedCallback() {
            public void onCompleted(Exception exc) {
                SocketIOConnection socketIOConnection = SocketIOConnection.this;
                socketIOConnection.transport = null;
                socketIOConnection.reportDisconnect(exc);
            }
        });
        this.transport.setStringCallback(new StringCallback() {
            public void onStringAvailable(String str) {
                try {
                    String[] split = str.split(":", 4);
                    switch (Integer.parseInt(split[0])) {
                        case 0:
                            SocketIOConnection.this.transport.disconnect();
                            SocketIOConnection.this.reportDisconnect(null);
                            break;
                        case 1:
                            SocketIOConnection.this.reportConnect(split[2]);
                            break;
                        case 2:
                            SocketIOConnection.this.transport.send("2::");
                            break;
                        case 3:
                            SocketIOConnection.this.reportString(split[2], split[3], SocketIOConnection.this.acknowledge(split[1], split[2]));
                            break;
                        case 4:
                            SocketIOConnection.this.reportJson(split[2], new JSONObject(split[3]), SocketIOConnection.this.acknowledge(split[1], split[2]));
                            break;
                        case 5:
                            JSONObject jSONObject = new JSONObject(split[3]);
                            SocketIOConnection.this.reportEvent(split[2], jSONObject.getString("name"), jSONObject.optJSONArray("args"), SocketIOConnection.this.acknowledge(split[1], split[2]));
                            break;
                        case 6:
                            String[] split2 = split[3].split("\\+", 2);
                            Acknowledge acknowledge = (Acknowledge) SocketIOConnection.this.acknowledges.remove(split2[0]);
                            if (acknowledge != null) {
                                acknowledge.acknowledge(split2.length == 2 ? new JSONArray(split2[1]) : null);
                                break;
                            } else {
                                return;
                            }
                        case 7:
                            SocketIOConnection.this.reportError(split[2], split[3]);
                            break;
                        case 8:
                            break;
                        default:
                            throw new SocketIOException("unknown code");
                    }
                } catch (Exception e) {
                    SocketIOConnection.this.transport.setClosedCallback(null);
                    SocketIOConnection.this.transport.disconnect();
                    SocketIOConnection socketIOConnection = SocketIOConnection.this;
                    socketIOConnection.transport = null;
                    socketIOConnection.reportDisconnect(e);
                }
            }
        });
        select(null, new SelectCallback() {
            public void onSelect(SocketIOClient socketIOClient) {
                if (!TextUtils.isEmpty(socketIOClient.endpoint)) {
                    SocketIOConnection.this.connect(socketIOClient);
                }
            }
        });
    }
}
