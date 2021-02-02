package org.jsoup.nodes;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.ArrayList;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Entities.EscapeMode;
import org.jsoup.parser.ParseSettings;
import org.jsoup.parser.Tag;
import org.jsoup.select.Elements;

public class Document extends Element {
    private String location;
    private OutputSettings outputSettings = new OutputSettings();
    private QuirksMode quirksMode = QuirksMode.noQuirks;
    private boolean updateMetaCharset = false;

    public static class OutputSettings implements Cloneable {
        private Charset charset = Charset.forName("UTF-8");
        private EscapeMode escapeMode = EscapeMode.base;
        private int indentAmount = 1;
        private boolean outline = false;
        private boolean prettyPrint = true;
        private Syntax syntax = Syntax.html;

        public enum Syntax {
            html,
            xml
        }

        public EscapeMode escapeMode() {
            return this.escapeMode;
        }

        public OutputSettings escapeMode(EscapeMode escapeMode2) {
            this.escapeMode = escapeMode2;
            return this;
        }

        public Charset charset() {
            return this.charset;
        }

        public OutputSettings charset(Charset charset2) {
            this.charset = charset2;
            return this;
        }

        public OutputSettings charset(String str) {
            charset(Charset.forName(str));
            return this;
        }

        /* access modifiers changed from: 0000 */
        public CharsetEncoder encoder() {
            return this.charset.newEncoder();
        }

        public Syntax syntax() {
            return this.syntax;
        }

        public OutputSettings syntax(Syntax syntax2) {
            this.syntax = syntax2;
            return this;
        }

        public boolean prettyPrint() {
            return this.prettyPrint;
        }

        public OutputSettings prettyPrint(boolean z) {
            this.prettyPrint = z;
            return this;
        }

        public boolean outline() {
            return this.outline;
        }

        public OutputSettings outline(boolean z) {
            this.outline = z;
            return this;
        }

        public int indentAmount() {
            return this.indentAmount;
        }

        public OutputSettings indentAmount(int i) {
            Validate.isTrue(i >= 0);
            this.indentAmount = i;
            return this;
        }

        public OutputSettings clone() {
            try {
                OutputSettings outputSettings = (OutputSettings) super.clone();
                outputSettings.charset(this.charset.name());
                outputSettings.escapeMode = EscapeMode.valueOf(this.escapeMode.name());
                return outputSettings;
            } catch (CloneNotSupportedException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public enum QuirksMode {
        noQuirks,
        quirks,
        limitedQuirks
    }

    public String nodeName() {
        return "#document";
    }

    public Document(String str) {
        super(Tag.valueOf("#root", ParseSettings.htmlDefault), str);
        this.location = str;
    }

    public static Document createShell(String str) {
        Validate.notNull(str);
        Document document = new Document(str);
        Element appendElement = document.appendElement("html");
        appendElement.appendElement(TtmlNode.TAG_HEAD);
        appendElement.appendElement(TtmlNode.TAG_BODY);
        return document;
    }

    public String location() {
        return this.location;
    }

    public Element head() {
        return findFirstElementByTagName(TtmlNode.TAG_HEAD, this);
    }

    public Element body() {
        return findFirstElementByTagName(TtmlNode.TAG_BODY, this);
    }

    public String title() {
        Element first = getElementsByTag("title").first();
        return first != null ? StringUtil.normaliseWhitespace(first.text()).trim() : "";
    }

    public void title(String str) {
        Validate.notNull(str);
        String str2 = "title";
        Element first = getElementsByTag(str2).first();
        if (first == null) {
            head().appendElement(str2).text(str);
        } else {
            first.text(str);
        }
    }

    public Element createElement(String str) {
        return new Element(Tag.valueOf(str, ParseSettings.preserveCase), baseUri());
    }

    public Document normalise() {
        String str = "html";
        Element findFirstElementByTagName = findFirstElementByTagName(str, this);
        if (findFirstElementByTagName == null) {
            findFirstElementByTagName = appendElement(str);
        }
        Element head = head();
        String str2 = TtmlNode.TAG_HEAD;
        if (head == null) {
            findFirstElementByTagName.prependElement(str2);
        }
        Element body = body();
        String str3 = TtmlNode.TAG_BODY;
        if (body == null) {
            findFirstElementByTagName.appendElement(str3);
        }
        normaliseTextNodes(head());
        normaliseTextNodes(findFirstElementByTagName);
        normaliseTextNodes(this);
        normaliseStructure(str2, findFirstElementByTagName);
        normaliseStructure(str3, findFirstElementByTagName);
        ensureMetaCharsetElement();
        return this;
    }

    private void normaliseTextNodes(Element element) {
        ArrayList arrayList = new ArrayList();
        for (Node node : element.childNodes) {
            if (node instanceof TextNode) {
                TextNode textNode = (TextNode) node;
                if (!textNode.isBlank()) {
                    arrayList.add(textNode);
                }
            }
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Node node2 = (Node) arrayList.get(size);
            element.removeChild(node2);
            body().prependChild(new TextNode(" ", ""));
            body().prependChild(node2);
        }
    }

    private void normaliseStructure(String str, Element element) {
        Elements elementsByTag = getElementsByTag(str);
        Element first = elementsByTag.first();
        if (elementsByTag.size() > 1) {
            ArrayList<Node> arrayList = new ArrayList<>();
            for (int i = 1; i < elementsByTag.size(); i++) {
                Node node = (Node) elementsByTag.get(i);
                for (Node add : node.childNodes) {
                    arrayList.add(add);
                }
                node.remove();
            }
            for (Node appendChild : arrayList) {
                first.appendChild(appendChild);
            }
        }
        if (!first.parent().equals(element)) {
            element.appendChild(first);
        }
    }

    private Element findFirstElementByTagName(String str, Node node) {
        if (node.nodeName().equals(str)) {
            return (Element) node;
        }
        for (Node findFirstElementByTagName : node.childNodes) {
            Element findFirstElementByTagName2 = findFirstElementByTagName(str, findFirstElementByTagName);
            if (findFirstElementByTagName2 != null) {
                return findFirstElementByTagName2;
            }
        }
        return null;
    }

    public String outerHtml() {
        return super.html();
    }

    public Element text(String str) {
        body().text(str);
        return this;
    }

    public void charset(Charset charset) {
        updateMetaCharsetElement(true);
        this.outputSettings.charset(charset);
        ensureMetaCharsetElement();
    }

    public Charset charset() {
        return this.outputSettings.charset();
    }

    public void updateMetaCharsetElement(boolean z) {
        this.updateMetaCharset = z;
    }

    public boolean updateMetaCharsetElement() {
        return this.updateMetaCharset;
    }

    public Document clone() {
        Document document = (Document) super.clone();
        document.outputSettings = this.outputSettings.clone();
        return document;
    }

    private void ensureMetaCharsetElement() {
        if (this.updateMetaCharset) {
            Syntax syntax = outputSettings().syntax();
            if (syntax == Syntax.html) {
                Element first = select("meta[charset]").first();
                String str = HttpRequest.PARAM_CHARSET;
                if (first != null) {
                    first.attr(str, charset().displayName());
                } else {
                    Element head = head();
                    if (head != null) {
                        head.appendElement("meta").attr(str, charset().displayName());
                    }
                }
                select("meta[name=charset]").remove();
            } else if (syntax == Syntax.xml) {
                Node node = (Node) childNodes().get(0);
                String str2 = "encoding";
                String str3 = "1.0";
                String str4 = "xml";
                String str5 = "version";
                if (node instanceof XmlDeclaration) {
                    XmlDeclaration xmlDeclaration = (XmlDeclaration) node;
                    if (xmlDeclaration.name().equals(str4)) {
                        xmlDeclaration.attr(str2, charset().displayName());
                        if (xmlDeclaration.attr(str5) != null) {
                            xmlDeclaration.attr(str5, str3);
                            return;
                        }
                        return;
                    }
                    XmlDeclaration xmlDeclaration2 = new XmlDeclaration(str4, this.baseUri, false);
                    xmlDeclaration2.attr(str5, str3);
                    xmlDeclaration2.attr(str2, charset().displayName());
                    prependChild(xmlDeclaration2);
                    return;
                }
                XmlDeclaration xmlDeclaration3 = new XmlDeclaration(str4, this.baseUri, false);
                xmlDeclaration3.attr(str5, str3);
                xmlDeclaration3.attr(str2, charset().displayName());
                prependChild(xmlDeclaration3);
            }
        }
    }

    public OutputSettings outputSettings() {
        return this.outputSettings;
    }

    public Document outputSettings(OutputSettings outputSettings2) {
        Validate.notNull(outputSettings2);
        this.outputSettings = outputSettings2;
        return this;
    }

    public QuirksMode quirksMode() {
        return this.quirksMode;
    }

    public Document quirksMode(QuirksMode quirksMode2) {
        this.quirksMode = quirksMode2;
        return this;
    }
}
