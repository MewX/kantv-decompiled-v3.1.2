package org.fourthline.cling.model.message.header;

import org.eclipse.jetty.http.MimeTypes;
import org.seamless.util.MimeType;

public class ContentTypeHeader extends UpnpHeader<MimeType> {
    public static final MimeType DEFAULT_CONTENT_TYPE = MimeType.valueOf(MimeTypes.TEXT_XML);
    public static final MimeType DEFAULT_CONTENT_TYPE_UTF8 = MimeType.valueOf("text/xml;charset=\"utf-8\"");

    public ContentTypeHeader() {
        setValue(DEFAULT_CONTENT_TYPE);
    }

    public ContentTypeHeader(MimeType mimeType) {
        setValue(mimeType);
    }

    public ContentTypeHeader(String str) throws InvalidHeaderException {
        setString(str);
    }

    public void setString(String str) throws InvalidHeaderException {
        setValue(MimeType.valueOf(str));
    }

    public String getString() {
        return ((MimeType) getValue()).toString();
    }

    public boolean isUDACompliantXML() {
        return isText() && ((MimeType) getValue()).getSubtype().equals(DEFAULT_CONTENT_TYPE.getSubtype());
    }

    public boolean isText() {
        return getValue() != null && ((MimeType) getValue()).getType().equals(DEFAULT_CONTENT_TYPE.getType());
    }
}
