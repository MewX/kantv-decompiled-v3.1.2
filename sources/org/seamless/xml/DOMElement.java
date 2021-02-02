package org.seamless.xml;

import java.util.ArrayList;
import java.util.Collection;
import javax.xml.namespace.QName;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import org.seamless.xml.DOMElement;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public abstract class DOMElement<CHILD extends DOMElement, PARENT extends DOMElement> {
    public final ArrayBuilder<CHILD> CHILD_BUILDER = createChildBuilder(this);
    public final Builder<PARENT> PARENT_BUILDER = createParentBuilder(this);
    private Element element;
    private final XPath xpath;

    public abstract class ArrayBuilder<T extends DOMElement> extends Builder<T> {
        public abstract T[] newChildrenArray(int i);

        protected ArrayBuilder(DOMElement dOMElement) {
            super(dOMElement);
        }

        public T[] getChildElements() {
            return buildArray(this.element.getChildren());
        }

        public T[] getChildElements(String str) {
            return buildArray(this.element.getChildren(str));
        }

        /* access modifiers changed from: protected */
        public T[] buildArray(DOMElement[] dOMElementArr) {
            T[] newChildrenArray = newChildrenArray(dOMElementArr.length);
            for (int i = 0; i < newChildrenArray.length; i++) {
                newChildrenArray[i] = build(dOMElementArr[i].getW3CElement());
            }
            return newChildrenArray;
        }
    }

    public abstract class Builder<T extends DOMElement> {
        public DOMElement element;

        public abstract T build(Element element2);

        protected Builder(DOMElement dOMElement) {
            this.element = dOMElement;
        }

        public T firstChildOrNull(String str) {
            DOMElement firstChild = this.element.getFirstChild(str);
            if (firstChild != null) {
                return build(firstChild.getW3CElement());
            }
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public abstract ArrayBuilder<CHILD> createChildBuilder(DOMElement dOMElement);

    /* access modifiers changed from: protected */
    public abstract Builder<PARENT> createParentBuilder(DOMElement dOMElement);

    /* access modifiers changed from: protected */
    public String prefix(String str) {
        return str;
    }

    public DOMElement(XPath xPath, Element element2) {
        this.xpath = xPath;
        this.element = element2;
    }

    public Element getW3CElement() {
        return this.element;
    }

    public String getElementName() {
        return getW3CElement().getNodeName();
    }

    public String getContent() {
        return getW3CElement().getTextContent();
    }

    public DOMElement<CHILD, PARENT> setContent(String str) {
        getW3CElement().setTextContent(str);
        return this;
    }

    public String getAttribute(String str) {
        String attribute = getW3CElement().getAttribute(str);
        if (attribute.length() > 0) {
            return attribute;
        }
        return null;
    }

    public DOMElement setAttribute(String str, String str2) {
        getW3CElement().setAttribute(str, str2);
        return this;
    }

    public PARENT getParent() {
        return this.PARENT_BUILDER.build((Element) getW3CElement().getParentNode());
    }

    public CHILD[] getChildren() {
        NodeList childNodes = getW3CElement().getChildNodes();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == 1) {
                arrayList.add(this.CHILD_BUILDER.build((Element) item));
            }
        }
        return (DOMElement[]) arrayList.toArray(this.CHILD_BUILDER.newChildrenArray(arrayList.size()));
    }

    public CHILD[] getChildren(String str) {
        Collection xPathChildElements = getXPathChildElements(this.CHILD_BUILDER, prefix(str));
        return (DOMElement[]) xPathChildElements.toArray(this.CHILD_BUILDER.newChildrenArray(xPathChildElements.size()));
    }

    public CHILD getRequiredChild(String str) throws ParserException {
        CHILD[] children = getChildren(str);
        if (children.length == 1) {
            return children[0];
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Required single child element of '");
        sb.append(getElementName());
        sb.append("' not found: ");
        sb.append(str);
        throw new ParserException(sb.toString());
    }

    public CHILD[] findChildren(String str) {
        ArrayBuilder<CHILD> arrayBuilder = this.CHILD_BUILDER;
        StringBuilder sb = new StringBuilder();
        sb.append("descendant::");
        sb.append(prefix(str));
        Collection xPathChildElements = getXPathChildElements(arrayBuilder, sb.toString());
        return (DOMElement[]) xPathChildElements.toArray(this.CHILD_BUILDER.newChildrenArray(xPathChildElements.size()));
    }

    public CHILD findChildWithIdentifier(String str) {
        ArrayBuilder<CHILD> arrayBuilder = this.CHILD_BUILDER;
        StringBuilder sb = new StringBuilder();
        sb.append("descendant::");
        sb.append(prefix("*"));
        sb.append("[@id=\"");
        sb.append(str);
        sb.append("\"]");
        Collection xPathChildElements = getXPathChildElements(arrayBuilder, sb.toString());
        if (xPathChildElements.size() == 1) {
            return (DOMElement) xPathChildElements.iterator().next();
        }
        return null;
    }

    public CHILD getFirstChild(String str) {
        ArrayBuilder<CHILD> arrayBuilder = this.CHILD_BUILDER;
        StringBuilder sb = new StringBuilder();
        sb.append(prefix(str));
        sb.append("[1]");
        return getXPathChildElement(arrayBuilder, sb.toString());
    }

    public CHILD createChild(String str) {
        return createChild(str, null);
    }

    public CHILD createChild(String str, String str2) {
        CHILD build = this.CHILD_BUILDER.build(str2 == null ? getW3CElement().getOwnerDocument().createElement(str) : getW3CElement().getOwnerDocument().createElementNS(str2, str));
        getW3CElement().appendChild(build.getW3CElement());
        return build;
    }

    public CHILD appendChild(CHILD child, boolean z) {
        CHILD adoptOrImport = adoptOrImport(getW3CElement().getOwnerDocument(), child, z);
        getW3CElement().appendChild(adoptOrImport.getW3CElement());
        return adoptOrImport;
    }

    public CHILD replaceChild(CHILD child, CHILD child2, boolean z) {
        CHILD adoptOrImport = adoptOrImport(getW3CElement().getOwnerDocument(), child2, z);
        getW3CElement().replaceChild(adoptOrImport.getW3CElement(), child.getW3CElement());
        return adoptOrImport;
    }

    public void replaceEqualChild(DOMElement dOMElement, String str) {
        DOMElement findChildWithIdentifier = findChildWithIdentifier(str);
        findChildWithIdentifier.getParent().replaceChild(findChildWithIdentifier, dOMElement.findChildWithIdentifier(str), true);
    }

    public void removeChild(CHILD child) {
        getW3CElement().removeChild(child.getW3CElement());
    }

    public void removeChildren() {
        NodeList childNodes = getW3CElement().getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            getW3CElement().removeChild(childNodes.item(i));
        }
    }

    /* access modifiers changed from: protected */
    public CHILD adoptOrImport(Document document, CHILD child, boolean z) {
        if (document == null) {
            return child;
        }
        if (z) {
            return this.CHILD_BUILDER.build((Element) document.importNode(child.getW3CElement(), true));
        }
        return this.CHILD_BUILDER.build((Element) document.adoptNode(child.getW3CElement()));
    }

    public String toSimpleXMLString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<");
        sb.append(getElementName());
        NamedNodeMap attributes = getW3CElement().getAttributes();
        for (int i = 0; i < attributes.getLength(); i++) {
            Node item = attributes.item(i);
            sb.append(" ");
            sb.append(item.getNodeName());
            sb.append("=\"");
            sb.append(item.getTextContent());
            sb.append("\"");
        }
        if (getContent().length() > 0) {
            String str = ">";
            sb.append(str);
            sb.append(getContent());
            sb.append("</");
            sb.append(getElementName());
            sb.append(str);
        } else {
            sb.append("/>");
        }
        return sb.toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(") ");
        sb.append(getW3CElement() == null ? "UNBOUND" : getElementName());
        return sb.toString();
    }

    public XPath getXpath() {
        return this.xpath;
    }

    public Collection<PARENT> getXPathParentElements(Builder<CHILD> builder, String str) {
        return getXPathElements(builder, str);
    }

    public Collection<CHILD> getXPathChildElements(Builder<CHILD> builder, String str) {
        return getXPathElements(builder, str);
    }

    public PARENT getXPathParentElement(Builder<PARENT> builder, String str) {
        Node node = (Node) getXPathResult(getW3CElement(), str, XPathConstants.NODE);
        if (node == null || node.getNodeType() != 1) {
            return null;
        }
        return builder.build((Element) node);
    }

    public CHILD getXPathChildElement(Builder<CHILD> builder, String str) {
        Node node = (Node) getXPathResult(getW3CElement(), str, XPathConstants.NODE);
        if (node == null || node.getNodeType() != 1) {
            return null;
        }
        return builder.build((Element) node);
    }

    public Collection getXPathElements(Builder builder, String str) {
        ArrayList arrayList = new ArrayList();
        NodeList nodeList = (NodeList) getXPathResult(getW3CElement(), str, XPathConstants.NODESET);
        for (int i = 0; i < nodeList.getLength(); i++) {
            arrayList.add(builder.build((Element) nodeList.item(i)));
        }
        return arrayList;
    }

    public String getXPathString(XPath xPath, String str) {
        return getXPathResult(getW3CElement(), str, null).toString();
    }

    public Object getXPathResult(String str, QName qName) {
        return getXPathResult(getW3CElement(), str, qName);
    }

    public Object getXPathResult(Node node, String str, QName qName) {
        if (qName != null) {
            return this.xpath.evaluate(str, node, qName);
        }
        try {
            return this.xpath.evaluate(str, node);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
