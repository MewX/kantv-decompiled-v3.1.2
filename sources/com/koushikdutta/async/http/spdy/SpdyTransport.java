package com.koushikdutta.async.http.spdy;

import com.koushikdutta.async.http.Protocol;
import com.samsung.multiscreen.Message;
import java.util.List;
import java.util.Locale;
import org.eclipse.jetty.http.HttpHeaderValues;

final class SpdyTransport {
    private static final List<String> HTTP_2_PROHIBITED_HEADERS = Util.immutableList((T[]) new String[]{"connection", Message.TARGET_HOST, HttpHeaderValues.KEEP_ALIVE, "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade"});
    private static final List<String> SPDY_3_PROHIBITED_HEADERS = Util.immutableList((T[]) new String[]{"connection", Message.TARGET_HOST, HttpHeaderValues.KEEP_ALIVE, "proxy-connection", "transfer-encoding"});

    SpdyTransport() {
    }

    static boolean isProhibitedHeader(Protocol protocol, String str) {
        if (protocol == Protocol.SPDY_3) {
            return SPDY_3_PROHIBITED_HEADERS.contains(str.toLowerCase(Locale.US));
        }
        if (protocol == Protocol.HTTP_2) {
            return HTTP_2_PROHIBITED_HEADERS.contains(str.toLowerCase(Locale.US));
        }
        throw new AssertionError(protocol);
    }
}
