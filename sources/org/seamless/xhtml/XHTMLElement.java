package org.seamless.xhtml;

import java.util.ArrayList;
import javax.xml.xpath.XPath;
import org.seamless.xhtml.XHTML.ATTR;
import org.seamless.xhtml.XHTML.ELEMENT;
import org.seamless.xml.DOMElement;
import org.seamless.xml.DOMElement.ArrayBuilder;
import org.seamless.xml.DOMElement.Builder;
import org.w3c.dom.Element;

public class XHTMLElement extends DOMElement<XHTMLElement, XHTMLElement> {
    public static final String XPATH_PREFIX = "h";

    public XHTMLElement(XPath xPath, Element element) {
        super(xPath, element);
    }

    /* access modifiers changed from: protected */
    public Builder<XHTMLElement> createParentBuilder(DOMElement dOMElement) {
        return new Builder<XHTMLElement>(dOMElement) {
            public XHTMLElement build(Element element) {
                return new XHTMLElement(XHTMLElement.this.getXpath(), element);
            }
        };
    }

    /* access modifiers changed from: protected */
    public ArrayBuilder<XHTMLElement> createChildBuilder(DOMElement dOMElement) {
        return new ArrayBuilder<XHTMLElement>(dOMElement) {
            public XHTMLElement[] newChildrenArray(int i) {
                return new XHTMLElement[i];
            }

            public XHTMLElement build(Element element) {
                return new XHTMLElement(XHTMLElement.this.getXpath(), element);
            }
        };
    }

    /* access modifiers changed from: protected */
    public String prefix(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("h:");
        sb.append(str);
        return sb.toString();
    }

    public ELEMENT getConstant() {
        return ELEMENT.valueOf(getElementName());
    }

    public XHTMLElement[] getChildren(ELEMENT element) {
        return (XHTMLElement[]) super.getChildren(element.name());
    }

    public XHTMLElement getFirstChild(ELEMENT element) {
        return (XHTMLElement) super.getFirstChild(element.name());
    }

    public XHTMLElement[] findChildren(ELEMENT element) {
        return (XHTMLElement[]) super.findChildren(element.name());
    }

    public XHTMLElement createChild(ELEMENT element) {
        return (XHTMLElement) super.createChild(element.name(), XHTML.NAMESPACE_URI);
    }

    public String getAttribute(ATTR attr) {
        return getAttribute(attr.name());
    }

    public XHTMLElement setAttribute(ATTR attr, String str) {
        super.setAttribute(attr.name(), str);
        return this;
    }

    public String getId() {
        return getAttribute(ATTR.id);
    }

    public XHTMLElement setId(String str) {
        setAttribute(ATTR.id, str);
        return this;
    }

    public String getTitle() {
        return getAttribute(ATTR.title);
    }

    public XHTMLElement setTitle(String str) {
        setAttribute(ATTR.title, str);
        return this;
    }

    public XHTMLElement setClasses(String str) {
        setAttribute(ATTR.CLASS, str);
        return this;
    }

    public XHTMLElement setClasses(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < strArr.length; i++) {
            sb.append(strArr[i]);
            if (i != strArr.length - 1) {
                sb.append(" ");
            }
        }
        setAttribute(ATTR.CLASS, sb.toString());
        return this;
    }

    public String[] getClasses() {
        String attribute = getAttribute(ATTR.CLASS);
        if (attribute == null) {
            return new String[0];
        }
        return attribute.split(" ");
    }

    public Option[] getOptions() {
        return Option.fromString(getAttribute(ATTR.style));
    }

    public Option getOption(String str) {
        Option[] options;
        for (Option option : getOptions()) {
            if (option.getKey().equals(str)) {
                return option;
            }
        }
        return null;
    }

    public Anchor[] findAllAnchors() {
        return findAllAnchors(null, null);
    }

    public Anchor[] findAllAnchors(String str) {
        return findAllAnchors(str, null);
    }

    public Anchor[] findAllAnchors(String str, String str2) {
        XHTMLElement[] findChildrenWithClass = findChildrenWithClass(ELEMENT.a, str2);
        ArrayList arrayList = new ArrayList(findChildrenWithClass.length);
        for (XHTMLElement xHTMLElement : findChildrenWithClass) {
            String attribute = xHTMLElement.getAttribute(ATTR.href);
            if (str == null || (attribute != null && attribute.startsWith(str))) {
                arrayList.add(new Anchor(getXpath(), xHTMLElement.getW3CElement()));
            }
        }
        return (Anchor[]) arrayList.toArray(new Anchor[arrayList.size()]);
    }

    public XHTMLElement[] findChildrenWithClass(ELEMENT element, String str) {
        XHTMLElement[] findChildren;
        ArrayList arrayList = new ArrayList();
        for (XHTMLElement xHTMLElement : findChildren(element)) {
            if (str == null) {
                arrayList.add(xHTMLElement);
            } else {
                String[] classes = xHTMLElement.getClasses();
                int length = classes.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    } else if (classes[i].matches(str)) {
                        arrayList.add(xHTMLElement);
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        return (XHTMLElement[]) arrayList.toArray(this.CHILD_BUILDER.newChildrenArray(arrayList.size()));
    }

    public XHTMLElement setContent(String str) {
        super.setContent(str);
        return this;
    }

    public XHTMLElement setAttribute(String str, String str2) {
        super.setAttribute(str, str2);
        return this;
    }
}
