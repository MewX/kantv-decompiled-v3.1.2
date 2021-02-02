package org.seamless.xhtml;

import javax.xml.xpath.XPath;
import org.seamless.xhtml.XHTML.ATTR;
import org.w3c.dom.Element;

public class Link extends XHTMLElement {
    public Link(XPath xPath, Element element) {
        super(xPath, element);
    }

    public Href getHref() {
        return Href.fromString(getAttribute(ATTR.href));
    }

    public String getRel() {
        return getAttribute(ATTR.rel);
    }

    public String getRev() {
        return getAttribute(ATTR.rev);
    }
}
