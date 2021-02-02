package org.fourthline.cling.support.messagebox.parser;

import javax.xml.xpath.XPath;
import org.seamless.xml.DOMElement;
import org.seamless.xml.DOMElement.ArrayBuilder;
import org.seamless.xml.DOMElement.Builder;
import org.w3c.dom.Element;

public class MessageElement extends DOMElement<MessageElement, MessageElement> {
    public static final String XPATH_PREFIX = "m";

    public MessageElement(XPath xPath, Element element) {
        super(xPath, element);
    }

    /* access modifiers changed from: protected */
    public String prefix(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("m:");
        sb.append(str);
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public Builder<MessageElement> createParentBuilder(DOMElement dOMElement) {
        return new Builder<MessageElement>(dOMElement) {
            public MessageElement build(Element element) {
                return new MessageElement(MessageElement.this.getXpath(), element);
            }
        };
    }

    /* access modifiers changed from: protected */
    public ArrayBuilder<MessageElement> createChildBuilder(DOMElement dOMElement) {
        return new ArrayBuilder<MessageElement>(dOMElement) {
            public MessageElement[] newChildrenArray(int i) {
                return new MessageElement[i];
            }

            public MessageElement build(Element element) {
                return new MessageElement(MessageElement.this.getXpath(), element);
            }
        };
    }
}
