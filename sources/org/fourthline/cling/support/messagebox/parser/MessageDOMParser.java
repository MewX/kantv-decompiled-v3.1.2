package org.fourthline.cling.support.messagebox.parser;

import javax.xml.xpath.XPath;
import org.seamless.xml.DOMParser;
import org.seamless.xml.NamespaceContextMap;
import org.w3c.dom.Document;

public class MessageDOMParser extends DOMParser<MessageDOM> {
    /* access modifiers changed from: protected */
    public MessageDOM createDOM(Document document) {
        return new MessageDOM(document);
    }

    public NamespaceContextMap createDefaultNamespaceContext(String... strArr) {
        AnonymousClass1 r0 = new NamespaceContextMap() {
            /* access modifiers changed from: protected */
            public String getDefaultNamespaceURI() {
                return MessageDOM.NAMESPACE_URI;
            }
        };
        for (String put : strArr) {
            r0.put(put, MessageDOM.NAMESPACE_URI);
        }
        return r0;
    }

    public XPath createXPath() {
        return super.createXPath(createDefaultNamespaceContext("m"));
    }
}
