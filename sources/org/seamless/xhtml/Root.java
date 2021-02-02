package org.seamless.xhtml;

import javax.xml.xpath.XPath;
import org.seamless.xhtml.XHTML.ELEMENT;
import org.seamless.xml.DOMElement.Builder;
import org.w3c.dom.Element;

public class Root extends XHTMLElement {
    public Root(XPath xPath, Element element) {
        super(xPath, element);
    }

    public Head getHead() {
        return (Head) new Builder<Head>(this) {
            public Head build(Element element) {
                return new Head(Root.this.getXpath(), element);
            }
        }.firstChildOrNull(ELEMENT.head.name());
    }

    public Body getBody() {
        return (Body) new Builder<Body>(this) {
            public Body build(Element element) {
                return new Body(Root.this.getXpath(), element);
            }
        }.firstChildOrNull(ELEMENT.body.name());
    }
}
