package org.fourthline.cling.model.message;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.UnsupportedEncodingException;
import org.fourthline.cling.model.message.UpnpOperation;
import org.fourthline.cling.model.message.header.ContentTypeHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.seamless.util.MimeType;

public abstract class UpnpMessage<O extends UpnpOperation> {
    private Object body;
    private BodyType bodyType = BodyType.STRING;
    private UpnpHeaders headers = new UpnpHeaders();
    private O operation;
    private int udaMajorVersion = 1;
    private int udaMinorVersion = 0;

    public enum BodyType {
        STRING,
        BYTES
    }

    protected UpnpMessage(UpnpMessage<O> upnpMessage) {
        this.operation = upnpMessage.getOperation();
        this.headers = upnpMessage.getHeaders();
        this.body = upnpMessage.getBody();
        this.bodyType = upnpMessage.getBodyType();
        this.udaMajorVersion = upnpMessage.getUdaMajorVersion();
        this.udaMinorVersion = upnpMessage.getUdaMinorVersion();
    }

    protected UpnpMessage(O o) {
        this.operation = o;
    }

    protected UpnpMessage(O o, BodyType bodyType2, Object obj) {
        this.operation = o;
        this.bodyType = bodyType2;
        this.body = obj;
    }

    public int getUdaMajorVersion() {
        return this.udaMajorVersion;
    }

    public void setUdaMajorVersion(int i) {
        this.udaMajorVersion = i;
    }

    public int getUdaMinorVersion() {
        return this.udaMinorVersion;
    }

    public void setUdaMinorVersion(int i) {
        this.udaMinorVersion = i;
    }

    public UpnpHeaders getHeaders() {
        return this.headers;
    }

    public void setHeaders(UpnpHeaders upnpHeaders) {
        this.headers = upnpHeaders;
    }

    public Object getBody() {
        return this.body;
    }

    public void setBody(String str) {
        this.bodyType = BodyType.STRING;
        this.body = str;
    }

    public void setBody(BodyType bodyType2, Object obj) {
        this.bodyType = bodyType2;
        this.body = obj;
    }

    public void setBodyCharacters(byte[] bArr) throws UnsupportedEncodingException {
        String str;
        BodyType bodyType2 = BodyType.STRING;
        if (getContentTypeCharset() != null) {
            str = getContentTypeCharset();
        } else {
            str = "UTF-8";
        }
        setBody(bodyType2, new String(bArr, str));
    }

    public boolean hasBody() {
        return getBody() != null;
    }

    public BodyType getBodyType() {
        return this.bodyType;
    }

    public void setBodyType(BodyType bodyType2) {
        this.bodyType = bodyType2;
    }

    public String getBodyString() {
        try {
            if (!hasBody()) {
                return null;
            }
            if (!getBodyType().equals(BodyType.STRING)) {
                return new String((byte[]) getBody(), "UTF-8");
            }
            String str = (String) getBody();
            if (str.charAt(0) == 65279) {
                str = str.substring(1);
            }
            return str;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public byte[] getBodyBytes() {
        try {
            if (!hasBody()) {
                return null;
            }
            if (getBodyType().equals(BodyType.STRING)) {
                return getBodyString().getBytes();
            }
            return (byte[]) getBody();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public O getOperation() {
        return this.operation;
    }

    public boolean isContentTypeMissingOrText() {
        ContentTypeHeader contentTypeHeader = getContentTypeHeader();
        if (contentTypeHeader != null && !contentTypeHeader.isText()) {
            return false;
        }
        return true;
    }

    public ContentTypeHeader getContentTypeHeader() {
        return (ContentTypeHeader) getHeaders().getFirstHeader(Type.CONTENT_TYPE, ContentTypeHeader.class);
    }

    public boolean isContentTypeText() {
        ContentTypeHeader contentTypeHeader = getContentTypeHeader();
        return contentTypeHeader != null && contentTypeHeader.isText();
    }

    public boolean isContentTypeTextUDA() {
        ContentTypeHeader contentTypeHeader = getContentTypeHeader();
        return contentTypeHeader != null && contentTypeHeader.isUDACompliantXML();
    }

    public String getContentTypeCharset() {
        ContentTypeHeader contentTypeHeader = getContentTypeHeader();
        if (contentTypeHeader != null) {
            return (String) ((MimeType) contentTypeHeader.getValue()).getParameters().get(HttpRequest.PARAM_CHARSET);
        }
        return null;
    }

    public boolean hasHostHeader() {
        return getHeaders().getFirstHeader(Type.HOST) != null;
    }

    public boolean isBodyNonEmptyString() {
        return hasBody() && getBodyType().equals(BodyType.STRING) && getBodyString().length() > 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(") ");
        sb.append(getOperation().toString());
        return sb.toString();
    }
}
