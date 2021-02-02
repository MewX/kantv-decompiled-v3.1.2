package com.koushikdutta.async.dns;

import com.koushikdutta.async.AsyncDatagramSocket;
import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.future.Cancellable;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.future.SimpleFuture;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Random;
import javax.jmdns.impl.constants.DNSConstants;

public class Dns {
    private static int setFlag(int i, int i2, int i3) {
        return i | (i2 << i3);
    }

    public static Future<DnsResponse> lookup(String str) {
        return lookup(AsyncServer.getDefault(), str, false, null);
    }

    private static int setQuery(int i) {
        return setFlag(i, 0, 0);
    }

    private static int setRecursion(int i) {
        return setFlag(i, 1, 8);
    }

    private static void addName(ByteBuffer byteBuffer, String str) {
        String[] split;
        for (String str2 : str.split("\\.")) {
            byteBuffer.put((byte) str2.length());
            byteBuffer.put(str2.getBytes());
        }
        byteBuffer.put(0);
    }

    public static Future<DnsResponse> lookup(AsyncServer asyncServer, String str) {
        return lookup(asyncServer, str, false, null);
    }

    public static Cancellable multicastLookup(AsyncServer asyncServer, String str, FutureCallback<DnsResponse> futureCallback) {
        return lookup(asyncServer, str, true, futureCallback);
    }

    public static Cancellable multicastLookup(String str, FutureCallback<DnsResponse> futureCallback) {
        return multicastLookup(AsyncServer.getDefault(), str, futureCallback);
    }

    public static Future<DnsResponse> lookup(AsyncServer asyncServer, String str, final boolean z, final FutureCallback<DnsResponse> futureCallback) {
        final AsyncDatagramSocket asyncDatagramSocket;
        ByteBuffer order = ByteBufferList.obtain(1024).order(ByteOrder.BIG_ENDIAN);
        short nextInt = (short) new Random().nextInt();
        short query = (short) setQuery(0);
        if (!z) {
            query = (short) setRecursion(query);
        }
        order.putShort(nextInt);
        order.putShort(query);
        order.putShort(z ? (short) 1 : 2);
        order.putShort(0);
        order.putShort(0);
        order.putShort(0);
        addName(order, str);
        order.putShort(z ? (short) 12 : 1);
        order.putShort(1);
        if (!z) {
            addName(order, str);
            order.putShort(28);
            order.putShort(1);
        }
        order.flip();
        String str2 = DNSConstants.MDNS_GROUP;
        if (!z) {
            try {
                asyncDatagramSocket = asyncServer.connectDatagram(new InetSocketAddress("8.8.8.8", 53));
            } catch (Exception e) {
                SimpleFuture simpleFuture = new SimpleFuture();
                simpleFuture.setComplete(e);
                if (z) {
                    futureCallback.onCompleted(e, null);
                }
                return simpleFuture;
            }
        } else {
            asyncDatagramSocket = AsyncServer.getDefault().openDatagram(new InetSocketAddress(0), true);
            Field declaredField = DatagramSocket.class.getDeclaredField("impl");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(asyncDatagramSocket.getSocket());
            Method declaredMethod = obj.getClass().getDeclaredMethod("join", new Class[]{InetAddress.class});
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(obj, new Object[]{InetAddress.getByName(str2)});
            ((DatagramSocket) asyncDatagramSocket.getSocket()).setBroadcast(true);
        }
        final AnonymousClass1 r3 = new SimpleFuture<DnsResponse>() {
            /* access modifiers changed from: protected */
            public void cleanup() {
                super.cleanup();
                asyncDatagramSocket.close();
            }
        };
        asyncDatagramSocket.setDataCallback(new DataCallback() {
            public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                try {
                    DnsResponse parse = DnsResponse.parse(byteBufferList);
                    parse.source = asyncDatagramSocket.getRemoteAddress();
                    if (!z) {
                        asyncDatagramSocket.close();
                        r3.setComplete(parse);
                    } else {
                        futureCallback.onCompleted(null, parse);
                    }
                } catch (Exception unused) {
                }
                byteBufferList.recycle();
            }
        });
        if (!z) {
            asyncDatagramSocket.write(new ByteBufferList(order));
        } else {
            asyncDatagramSocket.send(new InetSocketAddress(str2, 5353), order);
        }
        return r3;
    }
}
