package org.seamless.xhtml;

import javax.xml.xpath.XPath;
import org.seamless.xhtml.XHTML.ELEMENT;
import org.seamless.xml.DOMElement.ArrayBuilder;
import org.w3c.dom.Element;

public class Head extends XHTMLElement {
    public Head(XPath xPath, Element element) {
        super(xPath, element);
    }

    public XHTMLElement getHeadTitle() {
        return (XHTMLElement) this.CHILD_BUILDER.firstChildOrNull(ELEMENT.title.name());
    }

    public Link[] getLinks() {
        return (Link[]) new ArrayBuilder<Link>(this) {
            public Link build(Element element) {
                return new Link(Head.this.getXpath(), element);
            }

            public Link[] newChildrenArray(int i) {
                return new Link[i];
            }
        }.getChildElements(ELEMENT.link.name());
    }

    public Meta[] getMetas() {
        return (Meta[]) new ArrayBuilder<Meta>(this) {
            public Meta build(Element element) {
                return new Meta(Head.this.getXpath(), element);
            }

            public Meta[] newChildrenArray(int i) {
                return new Meta[i];
            }
        }.getChildElements(ELEMENT.meta.name());
    }

    public XHTMLElement[] getDocumentStyles() {
        return (XHTMLElement[]) this.CHILD_BUILDER.getChildElements(ELEMENT.style.name());
    }

    public XHTMLElement[] getScripts() {
        return (XHTMLElement[]) this.CHILD_BUILDER.getChildElements(ELEMENT.script.name());
    }
}
