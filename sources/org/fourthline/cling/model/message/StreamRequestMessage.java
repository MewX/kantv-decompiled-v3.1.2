package org.fourthline.cling.model.message;

import java.net.URI;
import java.net.URL;
import org.fourthline.cling.model.message.UpnpMessage.BodyType;
import org.fourthline.cling.model.message.UpnpRequest.Method;

public class StreamRequestMessage extends UpnpMessage<UpnpRequest> {
    protected Connection connection;

    public StreamRequestMessage(StreamRequestMessage streamRequestMessage) {
        super((UpnpMessage<O>) streamRequestMessage);
        this.connection = streamRequestMessage.getConnection();
    }

    public StreamRequestMessage(UpnpRequest upnpRequest) {
        super(upnpRequest);
    }

    public StreamRequestMessage(Method method, URI uri) {
        super(new UpnpRequest(method, uri));
    }

    public StreamRequestMessage(Method method, URL url) {
        super(new UpnpRequest(method, url));
    }

    public StreamRequestMessage(UpnpRequest upnpRequest, String str) {
        super(upnpRequest, BodyType.STRING, str);
    }

    public StreamRequestMessage(Method method, URI uri, String str) {
        super(new UpnpRequest(method, uri), BodyType.STRING, str);
    }

    public StreamRequestMessage(Method method, URL url, String str) {
        super(new UpnpRequest(method, url), BodyType.STRING, str);
    }

    public StreamRequestMessage(UpnpRequest upnpRequest, byte[] bArr) {
        super(upnpRequest, BodyType.BYTES, bArr);
    }

    public StreamRequestMessage(Method method, URI uri, byte[] bArr) {
        super(new UpnpRequest(method, uri), BodyType.BYTES, bArr);
    }

    public StreamRequestMessage(Method method, URL url, byte[] bArr) {
        super(new UpnpRequest(method, url), BodyType.BYTES, bArr);
    }

    public URI getUri() {
        return ((UpnpRequest) getOperation()).getURI();
    }

    public void setUri(URI uri) {
        ((UpnpRequest) getOperation()).setUri(uri);
    }

    public void setConnection(Connection connection2) {
        this.connection = connection2;
    }

    public Connection getConnection() {
        return this.connection;
    }
}
