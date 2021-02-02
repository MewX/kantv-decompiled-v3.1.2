package org.fourthline.cling.transport.impl;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLStreamHandlerFactory;
import java.util.List;
import java.util.Map.Entry;
import java.util.logging.Logger;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.message.UpnpMessage.BodyType;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.transport.spi.InitializationException;
import org.fourthline.cling.transport.spi.StreamClient;
import org.seamless.http.Headers;
import org.seamless.util.io.IO;

public class StreamClientImpl implements StreamClient {
    static final String HACK_STREAM_HANDLER_SYSTEM_PROPERTY = "hackStreamHandlerProperty";
    private static final Logger log = Logger.getLogger(StreamClient.class.getName());
    protected final StreamClientConfigurationImpl configuration;

    public void stop() {
    }

    public StreamClientImpl(StreamClientConfigurationImpl streamClientConfigurationImpl) throws InitializationException {
        this.configuration = streamClientConfigurationImpl;
        if (ModelUtil.ANDROID_EMULATOR || ModelUtil.ANDROID_RUNTIME) {
            throw new InitializationException("This client does not work on Android. The design of HttpURLConnection is broken, we can not add additional 'permitted' HTTP methods. Read the Cling manual.");
        }
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Using persistent HTTP stream client connections: ");
        sb.append(streamClientConfigurationImpl.isUsePersistentConnections());
        logger.fine(sb.toString());
        System.setProperty("http.keepAlive", Boolean.toString(streamClientConfigurationImpl.isUsePersistentConnections()));
        String str = HACK_STREAM_HANDLER_SYSTEM_PROPERTY;
        if (System.getProperty(str) == null) {
            log.fine("Setting custom static URLStreamHandlerFactory to work around bad JDK defaults");
            try {
                URL.setURLStreamHandlerFactory((URLStreamHandlerFactory) Class.forName("org.fourthline.cling.transport.impl.FixedSunURLStreamHandler").newInstance());
                System.setProperty(str, "alreadyWorkedAroundTheEvilJDK");
            } catch (Throwable unused) {
                throw new InitializationException("Failed to set modified URLStreamHandlerFactory in this environment. Can't use bundled default client based on HTTPURLConnection, see manual.");
            }
        }
    }

    public StreamClientConfigurationImpl getConfiguration() {
        return this.configuration;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:44:0x0133, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x013c, code lost:
        if (log.isLoggable(java.util.logging.Level.FINE) != false) goto L_0x013e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x013e, code lost:
        r0 = log;
        r1 = new java.lang.StringBuilder();
        r1.append("Could not read error stream: ");
        r1.append(r8);
        r0.fine(r1.toString());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0154, code lost:
        if (r2 != null) goto L_0x0156;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0156, code lost:
        r2.disconnect();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x0159, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x017c, code lost:
        r8 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x017f, code lost:
        r2.disconnect();
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:15:0x008d, B:39:0x0125] */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x00b1 A[SYNTHETIC, Splitter:B:23:0x00b1] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00d1 A[SYNTHETIC, Splitter:B:28:0x00d1] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0178  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x017f  */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:54:0x015c=Splitter:B:54:0x015c, B:15:0x008d=Splitter:B:15:0x008d} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public org.fourthline.cling.model.message.StreamResponseMessage sendRequest(org.fourthline.cling.model.message.StreamRequestMessage r8) {
        /*
            r7 = this;
            java.lang.String r0 = "HTTP request failed: "
            org.fourthline.cling.model.message.UpnpOperation r1 = r8.getOperation()
            org.fourthline.cling.model.message.UpnpRequest r1 = (org.fourthline.cling.model.message.UpnpRequest) r1
            java.util.logging.Logger r2 = log
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Preparing HTTP request message with method '"
            r3.append(r4)
            java.lang.String r4 = r1.getHttpMethodName()
            r3.append(r4)
            java.lang.String r4 = "': "
            r3.append(r4)
            r3.append(r8)
            java.lang.String r3 = r3.toString()
            r2.fine(r3)
            java.net.URI r2 = r1.getURI()
            java.net.URL r2 = org.seamless.util.URIUtil.toURL(r2)
            r3 = 0
            java.net.URLConnection r2 = r2.openConnection()     // Catch:{ ProtocolException -> 0x015a, IOException -> 0x00ad, Exception -> 0x008b, all -> 0x0087 }
            java.net.HttpURLConnection r2 = (java.net.HttpURLConnection) r2     // Catch:{ ProtocolException -> 0x015a, IOException -> 0x00ad, Exception -> 0x008b, all -> 0x0087 }
            java.lang.String r1 = r1.getHttpMethodName()     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            r2.setRequestMethod(r1)     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            org.fourthline.cling.transport.impl.StreamClientConfigurationImpl r1 = r7.configuration     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            int r1 = r1.getTimeoutSeconds()     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            int r1 = r1 * 1000
            r2.setReadTimeout(r1)     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            org.fourthline.cling.transport.impl.StreamClientConfigurationImpl r1 = r7.configuration     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            int r1 = r1.getTimeoutSeconds()     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            int r1 = r1 * 1000
            r2.setConnectTimeout(r1)     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            r7.applyRequestProperties(r2, r8)     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            r7.applyRequestBody(r2, r8)     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            java.util.logging.Logger r1 = log     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            r4.<init>()     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            java.lang.String r5 = "Sending HTTP request: "
            r4.append(r5)     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            r4.append(r8)     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            java.lang.String r4 = r4.toString()     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            r1.fine(r4)     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            java.io.InputStream r1 = r2.getInputStream()     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            org.fourthline.cling.model.message.StreamResponseMessage r8 = r7.createResponse(r2, r1)     // Catch:{ ProtocolException -> 0x0084, IOException -> 0x0082, Exception -> 0x0080 }
            if (r2 == 0) goto L_0x007f
            r2.disconnect()
        L_0x007f:
            return r8
        L_0x0080:
            r1 = move-exception
            goto L_0x008d
        L_0x0082:
            r1 = move-exception
            goto L_0x00af
        L_0x0084:
            r1 = move-exception
            goto L_0x015c
        L_0x0087:
            r8 = move-exception
            r2 = r3
            goto L_0x017d
        L_0x008b:
            r1 = move-exception
            r2 = r3
        L_0x008d:
            java.util.logging.Logger r4 = log     // Catch:{ all -> 0x017c }
            java.util.logging.Level r5 = java.util.logging.Level.WARNING     // Catch:{ all -> 0x017c }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ all -> 0x017c }
            r6.<init>()     // Catch:{ all -> 0x017c }
            r6.append(r0)     // Catch:{ all -> 0x017c }
            r6.append(r8)     // Catch:{ all -> 0x017c }
            java.lang.String r8 = r6.toString()     // Catch:{ all -> 0x017c }
            java.lang.Throwable r0 = org.seamless.util.Exceptions.unwrap(r1)     // Catch:{ all -> 0x017c }
            r4.log(r5, r8, r0)     // Catch:{ all -> 0x017c }
            if (r2 == 0) goto L_0x00ac
            r2.disconnect()
        L_0x00ac:
            return r3
        L_0x00ad:
            r1 = move-exception
            r2 = r3
        L_0x00af:
            if (r2 != 0) goto L_0x00d1
            java.util.logging.Logger r4 = log     // Catch:{ all -> 0x017c }
            java.util.logging.Level r5 = java.util.logging.Level.WARNING     // Catch:{ all -> 0x017c }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ all -> 0x017c }
            r6.<init>()     // Catch:{ all -> 0x017c }
            r6.append(r0)     // Catch:{ all -> 0x017c }
            r6.append(r8)     // Catch:{ all -> 0x017c }
            java.lang.String r8 = r6.toString()     // Catch:{ all -> 0x017c }
            java.lang.Throwable r0 = org.seamless.util.Exceptions.unwrap(r1)     // Catch:{ all -> 0x017c }
            r4.log(r5, r8, r0)     // Catch:{ all -> 0x017c }
            if (r2 == 0) goto L_0x00d0
            r2.disconnect()
        L_0x00d0:
            return r3
        L_0x00d1:
            boolean r0 = r1 instanceof java.net.SocketTimeoutException     // Catch:{ all -> 0x017c }
            if (r0 == 0) goto L_0x0101
            java.util.logging.Logger r0 = log     // Catch:{ all -> 0x017c }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x017c }
            r1.<init>()     // Catch:{ all -> 0x017c }
            java.lang.String r4 = "Timeout of "
            r1.append(r4)     // Catch:{ all -> 0x017c }
            org.fourthline.cling.transport.impl.StreamClientConfigurationImpl r4 = r7.getConfiguration()     // Catch:{ all -> 0x017c }
            int r4 = r4.getTimeoutSeconds()     // Catch:{ all -> 0x017c }
            r1.append(r4)     // Catch:{ all -> 0x017c }
            java.lang.String r4 = " seconds while waiting for HTTP request to complete, aborting: "
            r1.append(r4)     // Catch:{ all -> 0x017c }
            r1.append(r8)     // Catch:{ all -> 0x017c }
            java.lang.String r8 = r1.toString()     // Catch:{ all -> 0x017c }
            r0.info(r8)     // Catch:{ all -> 0x017c }
            if (r2 == 0) goto L_0x0100
            r2.disconnect()
        L_0x0100:
            return r3
        L_0x0101:
            java.util.logging.Logger r8 = log     // Catch:{ all -> 0x017c }
            java.util.logging.Level r0 = java.util.logging.Level.FINE     // Catch:{ all -> 0x017c }
            boolean r8 = r8.isLoggable(r0)     // Catch:{ all -> 0x017c }
            if (r8 == 0) goto L_0x0125
            java.util.logging.Logger r8 = log     // Catch:{ all -> 0x017c }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x017c }
            r0.<init>()     // Catch:{ all -> 0x017c }
            java.lang.String r4 = "Exception occurred, trying to read the error stream: "
            r0.append(r4)     // Catch:{ all -> 0x017c }
            java.lang.Throwable r1 = org.seamless.util.Exceptions.unwrap(r1)     // Catch:{ all -> 0x017c }
            r0.append(r1)     // Catch:{ all -> 0x017c }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x017c }
            r8.fine(r0)     // Catch:{ all -> 0x017c }
        L_0x0125:
            java.io.InputStream r8 = r2.getErrorStream()     // Catch:{ Exception -> 0x0133 }
            org.fourthline.cling.model.message.StreamResponseMessage r8 = r7.createResponse(r2, r8)     // Catch:{ Exception -> 0x0133 }
            if (r2 == 0) goto L_0x0132
            r2.disconnect()
        L_0x0132:
            return r8
        L_0x0133:
            r8 = move-exception
            java.util.logging.Logger r0 = log     // Catch:{ all -> 0x017c }
            java.util.logging.Level r1 = java.util.logging.Level.FINE     // Catch:{ all -> 0x017c }
            boolean r0 = r0.isLoggable(r1)     // Catch:{ all -> 0x017c }
            if (r0 == 0) goto L_0x0154
            java.util.logging.Logger r0 = log     // Catch:{ all -> 0x017c }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x017c }
            r1.<init>()     // Catch:{ all -> 0x017c }
            java.lang.String r4 = "Could not read error stream: "
            r1.append(r4)     // Catch:{ all -> 0x017c }
            r1.append(r8)     // Catch:{ all -> 0x017c }
            java.lang.String r8 = r1.toString()     // Catch:{ all -> 0x017c }
            r0.fine(r8)     // Catch:{ all -> 0x017c }
        L_0x0154:
            if (r2 == 0) goto L_0x0159
            r2.disconnect()
        L_0x0159:
            return r3
        L_0x015a:
            r1 = move-exception
            r2 = r3
        L_0x015c:
            java.util.logging.Logger r4 = log     // Catch:{ all -> 0x017c }
            java.util.logging.Level r5 = java.util.logging.Level.WARNING     // Catch:{ all -> 0x017c }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ all -> 0x017c }
            r6.<init>()     // Catch:{ all -> 0x017c }
            r6.append(r0)     // Catch:{ all -> 0x017c }
            r6.append(r8)     // Catch:{ all -> 0x017c }
            java.lang.String r8 = r6.toString()     // Catch:{ all -> 0x017c }
            java.lang.Throwable r0 = org.seamless.util.Exceptions.unwrap(r1)     // Catch:{ all -> 0x017c }
            r4.log(r5, r8, r0)     // Catch:{ all -> 0x017c }
            if (r2 == 0) goto L_0x017b
            r2.disconnect()
        L_0x017b:
            return r3
        L_0x017c:
            r8 = move-exception
        L_0x017d:
            if (r2 == 0) goto L_0x0182
            r2.disconnect()
        L_0x0182:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.transport.impl.StreamClientImpl.sendRequest(org.fourthline.cling.model.message.StreamRequestMessage):org.fourthline.cling.model.message.StreamResponseMessage");
    }

    /* access modifiers changed from: protected */
    public void applyRequestProperties(HttpURLConnection httpURLConnection, StreamRequestMessage streamRequestMessage) {
        httpURLConnection.setInstanceFollowRedirects(false);
        if (!streamRequestMessage.getHeaders().containsKey(Type.USER_AGENT)) {
            httpURLConnection.setRequestProperty(Type.USER_AGENT.getHttpName(), getConfiguration().getUserAgentValue(streamRequestMessage.getUdaMajorVersion(), streamRequestMessage.getUdaMinorVersion()));
        }
        applyHeaders(httpURLConnection, streamRequestMessage.getHeaders());
    }

    /* access modifiers changed from: protected */
    public void applyHeaders(HttpURLConnection httpURLConnection, Headers headers) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Writing headers on HttpURLConnection: ");
        sb.append(headers.size());
        logger.fine(sb.toString());
        for (Entry entry : headers.entrySet()) {
            for (String str : (List) entry.getValue()) {
                String str2 = (String) entry.getKey();
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Setting header '");
                sb2.append(str2);
                sb2.append("': ");
                sb2.append(str);
                logger2.fine(sb2.toString());
                httpURLConnection.setRequestProperty(str2, str);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void applyRequestBody(HttpURLConnection httpURLConnection, StreamRequestMessage streamRequestMessage) throws IOException {
        if (streamRequestMessage.hasBody()) {
            httpURLConnection.setDoOutput(true);
            if (streamRequestMessage.getBodyType().equals(BodyType.STRING)) {
                IO.writeUTF8(httpURLConnection.getOutputStream(), streamRequestMessage.getBodyString());
            } else if (streamRequestMessage.getBodyType().equals(BodyType.BYTES)) {
                IO.writeBytes(httpURLConnection.getOutputStream(), streamRequestMessage.getBodyBytes());
            }
            httpURLConnection.getOutputStream().flush();
            return;
        }
        httpURLConnection.setDoOutput(false);
    }

    /* access modifiers changed from: protected */
    public StreamResponseMessage createResponse(HttpURLConnection httpURLConnection, InputStream inputStream) throws Exception {
        byte[] bArr = null;
        if (httpURLConnection.getResponseCode() == -1) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Received an invalid HTTP response: ");
            sb.append(httpURLConnection.getURL());
            logger.warning(sb.toString());
            log.warning("Is your Cling-based server sending connection heartbeats with RemoteClientInfo#isRequestCancelled? This client can't handle heartbeats, read the manual.");
            return null;
        }
        UpnpResponse upnpResponse = new UpnpResponse(httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage());
        Logger logger2 = log;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Received response: ");
        sb2.append(upnpResponse);
        logger2.fine(sb2.toString());
        StreamResponseMessage streamResponseMessage = new StreamResponseMessage(upnpResponse);
        streamResponseMessage.setHeaders(new UpnpHeaders(httpURLConnection.getHeaderFields()));
        if (inputStream != null) {
            try {
                bArr = IO.readBytes(inputStream);
            } catch (Throwable th) {
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        }
        if (inputStream != null) {
            inputStream.close();
        }
        if (bArr != null && bArr.length > 0 && streamResponseMessage.isContentTypeMissingOrText()) {
            log.fine("Response contains textual entity body, converting then setting string on message");
            streamResponseMessage.setBodyCharacters(bArr);
        } else if (bArr == null || bArr.length <= 0) {
            log.fine("Response did not contain entity body");
        } else {
            log.fine("Response contains binary entity body, setting bytes on message");
            streamResponseMessage.setBody(BodyType.BYTES, bArr);
        }
        Logger logger3 = log;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Response message complete: ");
        sb3.append(streamResponseMessage);
        logger3.fine(sb3.toString());
        return streamResponseMessage;
    }
}
