package org.fourthline.cling.transport.impl.jetty;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map.Entry;
import java.util.concurrent.Callable;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jetty.client.ContentExchange;
import org.eclipse.jetty.client.HttpClient;
import org.eclipse.jetty.http.HttpFields;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.util.thread.ExecutorThreadPool;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.message.UpnpMessage.BodyType;
import org.fourthline.cling.model.message.UpnpRequest;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.UpnpResponse.Status;
import org.fourthline.cling.model.message.header.ContentTypeHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.transport.spi.AbstractStreamClient;
import org.fourthline.cling.transport.spi.InitializationException;
import org.fourthline.cling.transport.spi.StreamClient;
import org.seamless.util.Exceptions;
import org.seamless.util.MimeType;

public class StreamClientImpl extends AbstractStreamClient<StreamClientConfigurationImpl, HttpContentExchange> {
    /* access modifiers changed from: private */
    public static final Logger log = Logger.getLogger(StreamClient.class.getName());
    protected final HttpClient client = new HttpClient();
    protected final StreamClientConfigurationImpl configuration;

    public static class HttpContentExchange extends ContentExchange {
        protected final HttpClient client;
        protected final StreamClientConfigurationImpl configuration;
        protected Throwable exception;
        protected final StreamRequestMessage requestMessage;

        public HttpContentExchange(StreamClientConfigurationImpl streamClientConfigurationImpl, HttpClient httpClient, StreamRequestMessage streamRequestMessage) {
            super(true);
            this.configuration = streamClientConfigurationImpl;
            this.client = httpClient;
            this.requestMessage = streamRequestMessage;
            applyRequestURLMethod();
            applyRequestHeaders();
            applyRequestBody();
        }

        /* access modifiers changed from: protected */
        public void onConnectionFailed(Throwable th) {
            Logger access$000 = StreamClientImpl.log;
            Level level = Level.WARNING;
            StringBuilder sb = new StringBuilder();
            sb.append("HTTP connection failed: ");
            sb.append(this.requestMessage);
            access$000.log(level, sb.toString(), Exceptions.unwrap(th));
        }

        /* access modifiers changed from: protected */
        public void onException(Throwable th) {
            Logger access$000 = StreamClientImpl.log;
            Level level = Level.WARNING;
            StringBuilder sb = new StringBuilder();
            sb.append("HTTP request failed: ");
            sb.append(this.requestMessage);
            access$000.log(level, sb.toString(), Exceptions.unwrap(th));
        }

        public StreamClientConfigurationImpl getConfiguration() {
            return this.configuration;
        }

        public StreamRequestMessage getRequestMessage() {
            return this.requestMessage;
        }

        /* access modifiers changed from: protected */
        public void applyRequestURLMethod() {
            UpnpRequest upnpRequest = (UpnpRequest) getRequestMessage().getOperation();
            if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                Logger access$000 = StreamClientImpl.log;
                StringBuilder sb = new StringBuilder();
                sb.append("Preparing HTTP request message with method '");
                sb.append(upnpRequest.getHttpMethodName());
                sb.append("': ");
                sb.append(getRequestMessage());
                access$000.fine(sb.toString());
            }
            setURL(upnpRequest.getURI().toString());
            setMethod(upnpRequest.getHttpMethodName());
        }

        /* access modifiers changed from: protected */
        public void applyRequestHeaders() {
            UpnpHeaders headers = getRequestMessage().getHeaders();
            if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                Logger access$000 = StreamClientImpl.log;
                StringBuilder sb = new StringBuilder();
                sb.append("Writing headers on HttpContentExchange: ");
                sb.append(headers.size());
                access$000.fine(sb.toString());
            }
            if (!headers.containsKey(Type.USER_AGENT)) {
                setRequestHeader(Type.USER_AGENT.getHttpName(), getConfiguration().getUserAgentValue(getRequestMessage().getUdaMajorVersion(), getRequestMessage().getUdaMinorVersion()));
            }
            for (Entry entry : headers.entrySet()) {
                for (String str : (List) entry.getValue()) {
                    String str2 = (String) entry.getKey();
                    if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                        Logger access$0002 = StreamClientImpl.log;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Setting header '");
                        sb2.append(str2);
                        sb2.append("': ");
                        sb2.append(str);
                        access$0002.fine(sb2.toString());
                    }
                    addRequestHeader(str2, str);
                }
            }
        }

        /* access modifiers changed from: protected */
        public void applyRequestBody() {
            if (getRequestMessage().hasBody()) {
                String str = "Content-Length";
                if (getRequestMessage().getBodyType() == BodyType.STRING) {
                    if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                        Logger access$000 = StreamClientImpl.log;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Writing textual request body: ");
                        sb.append(getRequestMessage());
                        access$000.fine(sb.toString());
                    }
                    MimeType mimeType = getRequestMessage().getContentTypeHeader() != null ? (MimeType) getRequestMessage().getContentTypeHeader().getValue() : ContentTypeHeader.DEFAULT_CONTENT_TYPE_UTF8;
                    String contentTypeCharset = getRequestMessage().getContentTypeCharset() != null ? getRequestMessage().getContentTypeCharset() : "UTF-8";
                    setRequestContentType(mimeType.toString());
                    try {
                        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(getRequestMessage().getBodyString(), contentTypeCharset);
                        setRequestHeader(str, String.valueOf(byteArrayBuffer.length()));
                        setRequestContent(byteArrayBuffer);
                    } catch (UnsupportedEncodingException e) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Unsupported character encoding: ");
                        sb2.append(contentTypeCharset);
                        throw new RuntimeException(sb2.toString(), e);
                    }
                } else {
                    if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                        Logger access$0002 = StreamClientImpl.log;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Writing binary request body: ");
                        sb3.append(getRequestMessage());
                        access$0002.fine(sb3.toString());
                    }
                    if (getRequestMessage().getContentTypeHeader() != null) {
                        setRequestContentType(((MimeType) getRequestMessage().getContentTypeHeader().getValue()).toString());
                        ByteArrayBuffer byteArrayBuffer2 = new ByteArrayBuffer(getRequestMessage().getBodyBytes());
                        setRequestHeader(str, String.valueOf(byteArrayBuffer2.length()));
                        setRequestContent(byteArrayBuffer2);
                        return;
                    }
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Missing content type header in request message: ");
                    sb4.append(this.requestMessage);
                    throw new RuntimeException(sb4.toString());
                }
            }
        }

        /* access modifiers changed from: protected */
        public StreamResponseMessage createResponse() {
            UpnpResponse upnpResponse = new UpnpResponse(getResponseStatus(), Status.getByStatusCode(getResponseStatus()).getStatusMsg());
            if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                Logger access$000 = StreamClientImpl.log;
                StringBuilder sb = new StringBuilder();
                sb.append("Received response: ");
                sb.append(upnpResponse);
                access$000.fine(sb.toString());
            }
            StreamResponseMessage streamResponseMessage = new StreamResponseMessage(upnpResponse);
            UpnpHeaders upnpHeaders = new UpnpHeaders();
            HttpFields responseFields = getResponseFields();
            for (String str : responseFields.getFieldNamesCollection()) {
                for (String add : responseFields.getValuesCollection(str)) {
                    upnpHeaders.add(str, add);
                }
            }
            streamResponseMessage.setHeaders(upnpHeaders);
            byte[] responseContentBytes = getResponseContentBytes();
            if (responseContentBytes != null && responseContentBytes.length > 0 && streamResponseMessage.isContentTypeMissingOrText()) {
                if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                    StreamClientImpl.log.fine("Response contains textual entity body, converting then setting string on message");
                }
                try {
                    streamResponseMessage.setBodyCharacters(responseContentBytes);
                } catch (UnsupportedEncodingException e) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Unsupported character encoding: ");
                    sb2.append(e);
                    throw new RuntimeException(sb2.toString(), e);
                }
            } else if (responseContentBytes != null && responseContentBytes.length > 0) {
                if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                    StreamClientImpl.log.fine("Response contains binary entity body, setting bytes on message");
                }
                streamResponseMessage.setBody(BodyType.BYTES, responseContentBytes);
            } else if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                StreamClientImpl.log.fine("Response did not contain entity body");
            }
            if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                Logger access$0002 = StreamClientImpl.log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Response message complete: ");
                sb3.append(streamResponseMessage);
                access$0002.fine(sb3.toString());
            }
            return streamResponseMessage;
        }
    }

    /* access modifiers changed from: protected */
    public boolean logExecutionException(Throwable th) {
        return false;
    }

    public StreamClientImpl(StreamClientConfigurationImpl streamClientConfigurationImpl) throws InitializationException {
        this.configuration = streamClientConfigurationImpl;
        log.info("Starting Jetty HttpClient...");
        this.client.setThreadPool(new ExecutorThreadPool(getConfiguration().getRequestExecutorService()) {
            /* access modifiers changed from: protected */
            public void doStop() throws Exception {
            }
        });
        this.client.setTimeout((long) ((streamClientConfigurationImpl.getTimeoutSeconds() + 5) * 1000));
        this.client.setConnectTimeout((streamClientConfigurationImpl.getTimeoutSeconds() + 5) * 1000);
        this.client.setMaxRetries(streamClientConfigurationImpl.getRequestRetryCount());
        try {
            this.client.start();
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Could not start Jetty HTTP client: ");
            sb.append(e);
            throw new InitializationException(sb.toString(), e);
        }
    }

    public StreamClientConfigurationImpl getConfiguration() {
        return this.configuration;
    }

    /* access modifiers changed from: protected */
    public HttpContentExchange createRequest(StreamRequestMessage streamRequestMessage) {
        return new HttpContentExchange(getConfiguration(), this.client, streamRequestMessage);
    }

    /* access modifiers changed from: protected */
    public Callable<StreamResponseMessage> createCallable(final StreamRequestMessage streamRequestMessage, final HttpContentExchange httpContentExchange) {
        return new Callable<StreamResponseMessage>() {
            public StreamResponseMessage call() throws Exception {
                if (StreamClientImpl.log.isLoggable(Level.FINE)) {
                    Logger access$000 = StreamClientImpl.log;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Sending HTTP request: ");
                    sb.append(streamRequestMessage);
                    access$000.fine(sb.toString());
                }
                StreamClientImpl.this.client.send(httpContentExchange);
                int waitForDone = httpContentExchange.waitForDone();
                if (waitForDone == 7) {
                    try {
                        return httpContentExchange.createResponse();
                    } catch (Throwable th) {
                        Logger access$0002 = StreamClientImpl.log;
                        Level level = Level.WARNING;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Error reading response: ");
                        sb2.append(streamRequestMessage);
                        access$0002.log(level, sb2.toString(), Exceptions.unwrap(th));
                        return null;
                    }
                } else if (waitForDone == 11 || waitForDone == 9) {
                    return null;
                } else {
                    Logger access$0003 = StreamClientImpl.log;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Unhandled HTTP exchange status: ");
                    sb3.append(waitForDone);
                    access$0003.warning(sb3.toString());
                    return null;
                }
            }
        };
    }

    /* access modifiers changed from: protected */
    public void abort(HttpContentExchange httpContentExchange) {
        httpContentExchange.cancel();
    }

    public void stop() {
        try {
            this.client.stop();
        } catch (Exception e) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Error stopping HTTP client: ");
            sb.append(e);
            logger.info(sb.toString());
        }
    }
}
