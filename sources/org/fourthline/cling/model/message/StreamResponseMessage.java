package org.fourthline.cling.model.message;

import org.fourthline.cling.model.message.UpnpMessage.BodyType;
import org.fourthline.cling.model.message.UpnpResponse.Status;
import org.fourthline.cling.model.message.header.ContentTypeHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.seamless.util.MimeType;

public class StreamResponseMessage extends UpnpMessage<UpnpResponse> {
    public StreamResponseMessage(StreamResponseMessage streamResponseMessage) {
        super((UpnpMessage<O>) streamResponseMessage);
    }

    public StreamResponseMessage(Status status) {
        super(new UpnpResponse(status));
    }

    public StreamResponseMessage(UpnpResponse upnpResponse) {
        super(upnpResponse);
    }

    public StreamResponseMessage(UpnpResponse upnpResponse, String str) {
        super(upnpResponse, BodyType.STRING, str);
    }

    public StreamResponseMessage(String str) {
        super(new UpnpResponse(Status.OK), BodyType.STRING, str);
    }

    public StreamResponseMessage(UpnpResponse upnpResponse, byte[] bArr) {
        super(upnpResponse, BodyType.BYTES, bArr);
    }

    public StreamResponseMessage(byte[] bArr) {
        super(new UpnpResponse(Status.OK), BodyType.BYTES, bArr);
    }

    public StreamResponseMessage(String str, ContentTypeHeader contentTypeHeader) {
        this(str);
        getHeaders().add(Type.CONTENT_TYPE, (UpnpHeader) contentTypeHeader);
    }

    public StreamResponseMessage(String str, MimeType mimeType) {
        this(str, new ContentTypeHeader(mimeType));
    }

    public StreamResponseMessage(byte[] bArr, ContentTypeHeader contentTypeHeader) {
        this(bArr);
        getHeaders().add(Type.CONTENT_TYPE, (UpnpHeader) contentTypeHeader);
    }

    public StreamResponseMessage(byte[] bArr, MimeType mimeType) {
        this(bArr, new ContentTypeHeader(mimeType));
    }
}
