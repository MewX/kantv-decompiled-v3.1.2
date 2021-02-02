package org.seamless.xhtml;

import java.util.HashSet;
import javax.xml.xpath.XPath;
import org.seamless.xhtml.XHTML.ATTR;
import org.seamless.xml.DOMParser;
import org.seamless.xml.DOMParser.NodeVisitor;
import org.seamless.xml.NamespaceContextMap;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class XHTMLParser extends DOMParser<XHTML> {
    public XHTMLParser() {
        super(XHTML.createSchemaSources());
    }

    /* access modifiers changed from: protected */
    public XHTML createDOM(Document document) {
        if (document != null) {
            return new XHTML(document);
        }
        return null;
    }

    public void checkDuplicateIdentifiers(XHTML xhtml) throws IllegalStateException {
        final HashSet hashSet = new HashSet();
        accept(xhtml.getW3CDocument().getDocumentElement(), new NodeVisitor(1) {
            public void visit(Node node) {
                String attribute = ((Element) node).getAttribute(ATTR.id.name());
                if ("".equals(attribute)) {
                    return;
                }
                if (!hashSet.contains(attribute)) {
                    hashSet.add(attribute);
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Duplicate identifier, override/change value: ");
                sb.append(attribute);
                throw new IllegalStateException(sb.toString());
            }
        });
    }

    public NamespaceContextMap createDefaultNamespaceContext(String... strArr) {
        AnonymousClass2 r0 = new NamespaceContextMap() {
            /* access modifiers changed from: protected */
            public String getDefaultNamespaceURI() {
                return XHTML.NAMESPACE_URI;
            }
        };
        for (String put : strArr) {
            r0.put(put, XHTML.NAMESPACE_URI);
        }
        return r0;
    }

    public XPath createXPath() {
        return super.createXPath(createDefaultNamespaceContext(XHTMLElement.XPATH_PREFIX));
    }
}
