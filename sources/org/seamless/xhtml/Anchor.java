package org.seamless.xhtml;

import javax.xml.xpath.XPath;
import org.seamless.xhtml.XHTML.ATTR;
import org.w3c.dom.Element;

public class Anchor extends XHTMLElement {
    public Anchor(XPath xPath, Element element) {
        super(xPath, element);
    }

    public String getType() {
        return getAttribute(ATTR.type);
    }

    public Anchor setType(String str) {
        setAttribute(ATTR.type, str);
        return this;
    }

    public Href getHref() {
        return Href.fromString(getAttribute(ATTR.href));
    }

    public Anchor setHref(String str) {
        setAttribute(ATTR.href, str);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(Anchor) ");
        sb.append(getAttribute(ATTR.href));
        return sb.toString();
    }
}
