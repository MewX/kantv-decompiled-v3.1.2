package org.fourthline.cling.transport.impl;

import com.sun.net.httpserver.HttpExchange;
import java.util.logging.Logger;
import org.fourthline.cling.model.message.Connection;
import org.fourthline.cling.protocol.ProtocolFactory;
import org.fourthline.cling.transport.spi.UpnpStream;

public abstract class HttpExchangeUpnpStream extends UpnpStream {
    private static Logger log = Logger.getLogger(UpnpStream.class.getName());
    private HttpExchange httpExchange;

    /* access modifiers changed from: protected */
    public abstract Connection createConnection();

    public HttpExchangeUpnpStream(ProtocolFactory protocolFactory, HttpExchange httpExchange2) {
        super(protocolFactory);
        this.httpExchange = httpExchange2;
    }

    public HttpExchange getHttpExchange() {
        return this.httpExchange;
    }

    /* JADX WARNING: type inference failed for: r3v24 */
    /* JADX WARNING: type inference failed for: r3v25, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r3v26 */
    /* JADX WARNING: type inference failed for: r3v29, types: [java.io.OutputStream] */
    /* JADX WARNING: type inference failed for: r3v31 */
    /* JADX WARNING: type inference failed for: r3v32 */
    /* JADX WARNING: type inference failed for: r3v33 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x01a9 A[Catch:{ all -> 0x0187, Throwable -> 0x01ea }] */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r10 = this;
            r0 = -1
            java.util.logging.Logger r2 = log     // Catch:{ Throwable -> 0x01ea }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01ea }
            r3.<init>()     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r4 = "Processing HTTP request: "
            r3.append(r4)     // Catch:{ Throwable -> 0x01ea }
            com.sun.net.httpserver.HttpExchange r4 = r10.getHttpExchange()     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r4 = r4.getRequestMethod()     // Catch:{ Throwable -> 0x01ea }
            r3.append(r4)     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r4 = " "
            r3.append(r4)     // Catch:{ Throwable -> 0x01ea }
            com.sun.net.httpserver.HttpExchange r4 = r10.getHttpExchange()     // Catch:{ Throwable -> 0x01ea }
            java.net.URI r4 = r4.getRequestURI()     // Catch:{ Throwable -> 0x01ea }
            r3.append(r4)     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r3 = r3.toString()     // Catch:{ Throwable -> 0x01ea }
            r2.fine(r3)     // Catch:{ Throwable -> 0x01ea }
            org.fourthline.cling.model.message.StreamRequestMessage r2 = new org.fourthline.cling.model.message.StreamRequestMessage     // Catch:{ Throwable -> 0x01ea }
            com.sun.net.httpserver.HttpExchange r3 = r10.getHttpExchange()     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r3 = r3.getRequestMethod()     // Catch:{ Throwable -> 0x01ea }
            org.fourthline.cling.model.message.UpnpRequest$Method r3 = org.fourthline.cling.model.message.UpnpRequest.Method.getByHttpName(r3)     // Catch:{ Throwable -> 0x01ea }
            com.sun.net.httpserver.HttpExchange r4 = r10.getHttpExchange()     // Catch:{ Throwable -> 0x01ea }
            java.net.URI r4 = r4.getRequestURI()     // Catch:{ Throwable -> 0x01ea }
            r2.<init>(r3, r4)     // Catch:{ Throwable -> 0x01ea }
            org.fourthline.cling.model.message.UpnpOperation r3 = r2.getOperation()     // Catch:{ Throwable -> 0x01ea }
            org.fourthline.cling.model.message.UpnpRequest r3 = (org.fourthline.cling.model.message.UpnpRequest) r3     // Catch:{ Throwable -> 0x01ea }
            org.fourthline.cling.model.message.UpnpRequest$Method r3 = r3.getMethod()     // Catch:{ Throwable -> 0x01ea }
            org.fourthline.cling.model.message.UpnpRequest$Method r4 = org.fourthline.cling.model.message.UpnpRequest.Method.UNKNOWN     // Catch:{ Throwable -> 0x01ea }
            boolean r3 = r3.equals(r4)     // Catch:{ Throwable -> 0x01ea }
            if (r3 != 0) goto L_0x01ad
            org.fourthline.cling.model.message.UpnpOperation r3 = r2.getOperation()     // Catch:{ Throwable -> 0x01ea }
            org.fourthline.cling.model.message.UpnpRequest r3 = (org.fourthline.cling.model.message.UpnpRequest) r3     // Catch:{ Throwable -> 0x01ea }
            com.sun.net.httpserver.HttpExchange r4 = r10.getHttpExchange()     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r4 = r4.getProtocol()     // Catch:{ Throwable -> 0x01ea }
            java.util.Locale r5 = java.util.Locale.ROOT     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r4 = r4.toUpperCase(r5)     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r5 = "HTTP/1.1"
            boolean r4 = r4.equals(r5)     // Catch:{ Throwable -> 0x01ea }
            if (r4 == 0) goto L_0x0079
            r4 = 1
            goto L_0x007a
        L_0x0079:
            r4 = 0
        L_0x007a:
            r3.setHttpMinorVersion(r4)     // Catch:{ Throwable -> 0x01ea }
            java.util.logging.Logger r3 = log     // Catch:{ Throwable -> 0x01ea }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01ea }
            r4.<init>()     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r5 = "Created new request message: "
            r4.append(r5)     // Catch:{ Throwable -> 0x01ea }
            r4.append(r2)     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r4 = r4.toString()     // Catch:{ Throwable -> 0x01ea }
            r3.fine(r4)     // Catch:{ Throwable -> 0x01ea }
            org.fourthline.cling.model.message.Connection r3 = r10.createConnection()     // Catch:{ Throwable -> 0x01ea }
            r2.setConnection(r3)     // Catch:{ Throwable -> 0x01ea }
            org.fourthline.cling.model.message.UpnpHeaders r3 = new org.fourthline.cling.model.message.UpnpHeaders     // Catch:{ Throwable -> 0x01ea }
            com.sun.net.httpserver.HttpExchange r4 = r10.getHttpExchange()     // Catch:{ Throwable -> 0x01ea }
            com.sun.net.httpserver.Headers r4 = r4.getRequestHeaders()     // Catch:{ Throwable -> 0x01ea }
            r3.<init>(r4)     // Catch:{ Throwable -> 0x01ea }
            r2.setHeaders(r3)     // Catch:{ Throwable -> 0x01ea }
            r3 = 0
            com.sun.net.httpserver.HttpExchange r4 = r10.getHttpExchange()     // Catch:{ all -> 0x01a6 }
            java.io.InputStream r4 = r4.getRequestBody()     // Catch:{ all -> 0x01a6 }
            byte[] r5 = org.seamless.util.io.IO.readBytes(r4)     // Catch:{ all -> 0x01a3 }
            if (r4 == 0) goto L_0x00bc
            r4.close()     // Catch:{ Throwable -> 0x01ea }
        L_0x00bc:
            java.util.logging.Logger r4 = log     // Catch:{ Throwable -> 0x01ea }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01ea }
            r6.<init>()     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r7 = "Reading request body bytes: "
            r6.append(r7)     // Catch:{ Throwable -> 0x01ea }
            int r7 = r5.length     // Catch:{ Throwable -> 0x01ea }
            r6.append(r7)     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r6 = r6.toString()     // Catch:{ Throwable -> 0x01ea }
            r4.fine(r6)     // Catch:{ Throwable -> 0x01ea }
            int r4 = r5.length     // Catch:{ Throwable -> 0x01ea }
            if (r4 <= 0) goto L_0x00e7
            boolean r4 = r2.isContentTypeMissingOrText()     // Catch:{ Throwable -> 0x01ea }
            if (r4 == 0) goto L_0x00e7
            java.util.logging.Logger r4 = log     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r6 = "Request contains textual entity body, converting then setting string on message"
            r4.fine(r6)     // Catch:{ Throwable -> 0x01ea }
            r2.setBodyCharacters(r5)     // Catch:{ Throwable -> 0x01ea }
            goto L_0x00fe
        L_0x00e7:
            int r4 = r5.length     // Catch:{ Throwable -> 0x01ea }
            if (r4 <= 0) goto L_0x00f7
            java.util.logging.Logger r4 = log     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r6 = "Request contains binary entity body, setting bytes on message"
            r4.fine(r6)     // Catch:{ Throwable -> 0x01ea }
            org.fourthline.cling.model.message.UpnpMessage$BodyType r4 = org.fourthline.cling.model.message.UpnpMessage.BodyType.BYTES     // Catch:{ Throwable -> 0x01ea }
            r2.setBody(r4, r5)     // Catch:{ Throwable -> 0x01ea }
            goto L_0x00fe
        L_0x00f7:
            java.util.logging.Logger r4 = log     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r5 = "Request did not contain entity body"
            r4.fine(r5)     // Catch:{ Throwable -> 0x01ea }
        L_0x00fe:
            org.fourthline.cling.model.message.StreamResponseMessage r2 = r10.process(r2)     // Catch:{ Throwable -> 0x01ea }
            if (r2 == 0) goto L_0x018e
            java.util.logging.Logger r4 = log     // Catch:{ Throwable -> 0x01ea }
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01ea }
            r5.<init>()     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r6 = "Preparing HTTP response message: "
            r5.append(r6)     // Catch:{ Throwable -> 0x01ea }
            r5.append(r2)     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r5 = r5.toString()     // Catch:{ Throwable -> 0x01ea }
            r4.fine(r5)     // Catch:{ Throwable -> 0x01ea }
            com.sun.net.httpserver.HttpExchange r4 = r10.getHttpExchange()     // Catch:{ Throwable -> 0x01ea }
            com.sun.net.httpserver.Headers r4 = r4.getResponseHeaders()     // Catch:{ Throwable -> 0x01ea }
            org.fourthline.cling.model.message.UpnpHeaders r5 = r2.getHeaders()     // Catch:{ Throwable -> 0x01ea }
            r4.putAll(r5)     // Catch:{ Throwable -> 0x01ea }
            boolean r4 = r2.hasBody()     // Catch:{ Throwable -> 0x01ea }
            if (r4 == 0) goto L_0x0134
            byte[] r4 = r2.getBodyBytes()     // Catch:{ Throwable -> 0x01ea }
            goto L_0x0135
        L_0x0134:
            r4 = r3
        L_0x0135:
            if (r4 == 0) goto L_0x0139
            int r5 = r4.length     // Catch:{ Throwable -> 0x01ea }
            goto L_0x013a
        L_0x0139:
            r5 = -1
        L_0x013a:
            java.util.logging.Logger r6 = log     // Catch:{ Throwable -> 0x01ea }
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01ea }
            r7.<init>()     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r8 = "Sending HTTP response message: "
            r7.append(r8)     // Catch:{ Throwable -> 0x01ea }
            r7.append(r2)     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r8 = " with content length: "
            r7.append(r8)     // Catch:{ Throwable -> 0x01ea }
            r7.append(r5)     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r7 = r7.toString()     // Catch:{ Throwable -> 0x01ea }
            r6.fine(r7)     // Catch:{ Throwable -> 0x01ea }
            com.sun.net.httpserver.HttpExchange r6 = r10.getHttpExchange()     // Catch:{ Throwable -> 0x01ea }
            org.fourthline.cling.model.message.UpnpOperation r7 = r2.getOperation()     // Catch:{ Throwable -> 0x01ea }
            org.fourthline.cling.model.message.UpnpResponse r7 = (org.fourthline.cling.model.message.UpnpResponse) r7     // Catch:{ Throwable -> 0x01ea }
            int r7 = r7.getStatusCode()     // Catch:{ Throwable -> 0x01ea }
            long r8 = (long) r5     // Catch:{ Throwable -> 0x01ea }
            r6.sendResponseHeaders(r7, r8)     // Catch:{ Throwable -> 0x01ea }
            if (r5 <= 0) goto L_0x019e
            java.util.logging.Logger r5 = log     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r6 = "Response message has body, writing bytes to stream..."
            r5.fine(r6)     // Catch:{ Throwable -> 0x01ea }
            com.sun.net.httpserver.HttpExchange r5 = r10.getHttpExchange()     // Catch:{ all -> 0x0187 }
            java.io.OutputStream r3 = r5.getResponseBody()     // Catch:{ all -> 0x0187 }
            org.seamless.util.io.IO.writeBytes(r3, r4)     // Catch:{ all -> 0x0187 }
            r3.flush()     // Catch:{ all -> 0x0187 }
            if (r3 == 0) goto L_0x019e
            r3.close()     // Catch:{ Throwable -> 0x01ea }
            goto L_0x019e
        L_0x0187:
            r2 = move-exception
            if (r3 == 0) goto L_0x018d
            r3.close()     // Catch:{ Throwable -> 0x01ea }
        L_0x018d:
            throw r2     // Catch:{ Throwable -> 0x01ea }
        L_0x018e:
            java.util.logging.Logger r3 = log     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r4 = "Sending HTTP response status: 404"
            r3.fine(r4)     // Catch:{ Throwable -> 0x01ea }
            com.sun.net.httpserver.HttpExchange r3 = r10.getHttpExchange()     // Catch:{ Throwable -> 0x01ea }
            r4 = 404(0x194, float:5.66E-43)
            r3.sendResponseHeaders(r4, r0)     // Catch:{ Throwable -> 0x01ea }
        L_0x019e:
            r10.responseSent(r2)     // Catch:{ Throwable -> 0x01ea }
            goto L_0x024d
        L_0x01a3:
            r2 = move-exception
            r3 = r4
            goto L_0x01a7
        L_0x01a6:
            r2 = move-exception
        L_0x01a7:
            if (r3 == 0) goto L_0x01ac
            r3.close()     // Catch:{ Throwable -> 0x01ea }
        L_0x01ac:
            throw r2     // Catch:{ Throwable -> 0x01ea }
        L_0x01ad:
            java.util.logging.Logger r2 = log     // Catch:{ Throwable -> 0x01ea }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01ea }
            r3.<init>()     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r4 = "Method not supported by UPnP stack: "
            r3.append(r4)     // Catch:{ Throwable -> 0x01ea }
            com.sun.net.httpserver.HttpExchange r4 = r10.getHttpExchange()     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r4 = r4.getRequestMethod()     // Catch:{ Throwable -> 0x01ea }
            r3.append(r4)     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r3 = r3.toString()     // Catch:{ Throwable -> 0x01ea }
            r2.fine(r3)     // Catch:{ Throwable -> 0x01ea }
            java.lang.RuntimeException r2 = new java.lang.RuntimeException     // Catch:{ Throwable -> 0x01ea }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01ea }
            r3.<init>()     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r4 = "Method not supported: "
            r3.append(r4)     // Catch:{ Throwable -> 0x01ea }
            com.sun.net.httpserver.HttpExchange r4 = r10.getHttpExchange()     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r4 = r4.getRequestMethod()     // Catch:{ Throwable -> 0x01ea }
            r3.append(r4)     // Catch:{ Throwable -> 0x01ea }
            java.lang.String r3 = r3.toString()     // Catch:{ Throwable -> 0x01ea }
            r2.<init>(r3)     // Catch:{ Throwable -> 0x01ea }
            throw r2     // Catch:{ Throwable -> 0x01ea }
        L_0x01ea:
            r2 = move-exception
            java.util.logging.Logger r3 = log
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "Exception occured during UPnP stream processing: "
            r4.append(r5)
            r4.append(r2)
            java.lang.String r4 = r4.toString()
            r3.fine(r4)
            java.util.logging.Logger r3 = log
            java.util.logging.Level r4 = java.util.logging.Level.FINE
            boolean r3 = r3.isLoggable(r4)
            if (r3 == 0) goto L_0x022b
            java.util.logging.Logger r3 = log
            java.util.logging.Level r4 = java.util.logging.Level.FINE
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Cause: "
            r5.append(r6)
            java.lang.Throwable r6 = org.seamless.util.Exceptions.unwrap(r2)
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            java.lang.Throwable r6 = org.seamless.util.Exceptions.unwrap(r2)
            r3.log(r4, r5, r6)
        L_0x022b:
            com.sun.net.httpserver.HttpExchange r3 = r10.httpExchange     // Catch:{ IOException -> 0x0233 }
            r4 = 500(0x1f4, float:7.0E-43)
            r3.sendResponseHeaders(r4, r0)     // Catch:{ IOException -> 0x0233 }
            goto L_0x024a
        L_0x0233:
            r0 = move-exception
            java.util.logging.Logger r1 = log
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Couldn't send error response: "
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r1.warning(r0)
        L_0x024a:
            r10.responseException(r2)
        L_0x024d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.transport.impl.HttpExchangeUpnpStream.run():void");
    }
}
