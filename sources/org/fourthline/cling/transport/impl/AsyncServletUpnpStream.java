package org.fourthline.cling.transport.impl;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.util.Enumeration;
import java.util.List;
import java.util.Map.Entry;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.AsyncContext;
import javax.servlet.AsyncEvent;
import javax.servlet.AsyncListener;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.fourthline.cling.model.message.Connection;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.message.UpnpMessage.BodyType;
import org.fourthline.cling.model.message.UpnpRequest;
import org.fourthline.cling.model.message.UpnpRequest.Method;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.protocol.ProtocolFactory;
import org.fourthline.cling.transport.spi.UpnpStream;
import org.seamless.util.io.IO;

public abstract class AsyncServletUpnpStream extends UpnpStream implements AsyncListener {
    private static final Logger log = Logger.getLogger(UpnpStream.class.getName());
    protected final AsyncContext asyncContext;
    protected final HttpServletRequest request;
    protected StreamResponseMessage responseMessage;

    /* access modifiers changed from: protected */
    public abstract Connection createConnection();

    public void onStartAsync(AsyncEvent asyncEvent) throws IOException {
    }

    public AsyncServletUpnpStream(ProtocolFactory protocolFactory, AsyncContext asyncContext2, HttpServletRequest httpServletRequest) {
        super(protocolFactory);
        this.asyncContext = asyncContext2;
        this.request = httpServletRequest;
        asyncContext2.addListener(this);
    }

    /* access modifiers changed from: protected */
    public HttpServletRequest getRequest() {
        return this.request;
    }

    /* access modifiers changed from: protected */
    public HttpServletResponse getResponse() {
        ServletResponse response = this.asyncContext.getResponse();
        if (response != null) {
            return (HttpServletResponse) response;
        }
        throw new IllegalStateException("Couldn't get response from asynchronous context, already timed out");
    }

    /* access modifiers changed from: protected */
    public void complete() {
        try {
            this.asyncContext.complete();
        } catch (IllegalStateException e) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Error calling servlet container's AsyncContext#complete() method: ");
            sb.append(e);
            logger.info(sb.toString());
        }
    }

    public void run() {
        try {
            StreamRequestMessage readRequestMessage = readRequestMessage();
            if (log.isLoggable(Level.FINER)) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Processing new request message: ");
                sb.append(readRequestMessage);
                logger.finer(sb.toString());
            }
            this.responseMessage = process(readRequestMessage);
            if (this.responseMessage != null) {
                if (log.isLoggable(Level.FINER)) {
                    Logger logger2 = log;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Preparing HTTP response message: ");
                    sb2.append(this.responseMessage);
                    logger2.finer(sb2.toString());
                }
                writeResponseMessage(this.responseMessage);
            } else {
                if (log.isLoggable(Level.FINER)) {
                    log.finer("Sending HTTP response status: 404");
                }
                getResponse().setStatus(404);
            }
        } catch (Throwable th) {
            complete();
            throw th;
        }
        complete();
    }

    public void onComplete(AsyncEvent asyncEvent) throws IOException {
        if (log.isLoggable(Level.FINER)) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Completed asynchronous processing of HTTP request: ");
            sb.append(asyncEvent.getSuppliedRequest());
            logger.finer(sb.toString());
        }
        responseSent(this.responseMessage);
    }

    public void onTimeout(AsyncEvent asyncEvent) throws IOException {
        if (log.isLoggable(Level.FINER)) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Asynchronous processing of HTTP request timed out: ");
            sb.append(asyncEvent.getSuppliedRequest());
            logger.finer(sb.toString());
        }
        responseException(new Exception("Asynchronous request timed out"));
    }

    public void onError(AsyncEvent asyncEvent) throws IOException {
        if (log.isLoggable(Level.FINER)) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Asynchronous processing of HTTP request error: ");
            sb.append(asyncEvent.getThrowable());
            logger.finer(sb.toString());
        }
        responseException(asyncEvent.getThrowable());
    }

    /* access modifiers changed from: protected */
    public StreamRequestMessage readRequestMessage() throws IOException {
        String method = getRequest().getMethod();
        String requestURI = getRequest().getRequestURI();
        if (log.isLoggable(Level.FINER)) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Processing HTTP request: ");
            sb.append(method);
            sb.append(" ");
            sb.append(requestURI);
            logger.finer(sb.toString());
        }
        try {
            StreamRequestMessage streamRequestMessage = new StreamRequestMessage(Method.getByHttpName(method), URI.create(requestURI));
            if (!((UpnpRequest) streamRequestMessage.getOperation()).getMethod().equals(Method.UNKNOWN)) {
                streamRequestMessage.setConnection(createConnection());
                UpnpHeaders upnpHeaders = new UpnpHeaders();
                Enumeration headerNames = getRequest().getHeaderNames();
                while (headerNames.hasMoreElements()) {
                    String str = (String) headerNames.nextElement();
                    Enumeration headers = getRequest().getHeaders(str);
                    while (headers.hasMoreElements()) {
                        upnpHeaders.add(str, (String) headers.nextElement());
                    }
                }
                streamRequestMessage.setHeaders(upnpHeaders);
                ServletInputStream servletInputStream = null;
                try {
                    servletInputStream = getRequest().getInputStream();
                    byte[] readBytes = IO.readBytes((InputStream) servletInputStream);
                    if (log.isLoggable(Level.FINER)) {
                        Logger logger2 = log;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Reading request body bytes: ");
                        sb2.append(readBytes.length);
                        logger2.finer(sb2.toString());
                    }
                    if (readBytes.length > 0 && streamRequestMessage.isContentTypeMissingOrText()) {
                        if (log.isLoggable(Level.FINER)) {
                            log.finer("Request contains textual entity body, converting then setting string on message");
                        }
                        streamRequestMessage.setBodyCharacters(readBytes);
                    } else if (readBytes.length > 0) {
                        if (log.isLoggable(Level.FINER)) {
                            log.finer("Request contains binary entity body, setting bytes on message");
                        }
                        streamRequestMessage.setBody(BodyType.BYTES, readBytes);
                    } else if (log.isLoggable(Level.FINER)) {
                        log.finer("Request did not contain entity body");
                    }
                    return streamRequestMessage;
                } finally {
                    if (servletInputStream != null) {
                        servletInputStream.close();
                    }
                }
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Method not supported: ");
                sb3.append(method);
                throw new RuntimeException(sb3.toString());
            }
        } catch (IllegalArgumentException e) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Invalid request URI: ");
            sb4.append(requestURI);
            throw new RuntimeException(sb4.toString(), e);
        }
    }

    /* access modifiers changed from: protected */
    public void writeResponseMessage(StreamResponseMessage streamResponseMessage) throws IOException {
        if (log.isLoggable(Level.FINER)) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Sending HTTP response status: ");
            sb.append(((UpnpResponse) streamResponseMessage.getOperation()).getStatusCode());
            logger.finer(sb.toString());
        }
        getResponse().setStatus(((UpnpResponse) streamResponseMessage.getOperation()).getStatusCode());
        for (Entry entry : streamResponseMessage.getHeaders().entrySet()) {
            for (String addHeader : (List) entry.getValue()) {
                getResponse().addHeader((String) entry.getKey(), addHeader);
            }
        }
        getResponse().setDateHeader("Date", System.currentTimeMillis());
        byte[] bodyBytes = streamResponseMessage.hasBody() ? streamResponseMessage.getBodyBytes() : null;
        int length = bodyBytes != null ? bodyBytes.length : -1;
        if (length > 0) {
            getResponse().setContentLength(length);
            log.finer("Response message has body, writing bytes to stream...");
            IO.writeBytes((OutputStream) getResponse().getOutputStream(), bodyBytes);
        }
    }
}
