package org.seamless.xml;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.net.URI;
import java.net.URL;
import java.util.HashMap;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.xml.namespace.NamespaceContext;
import javax.xml.namespace.QName;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathFactory;
import org.seamless.xml.DOM;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

public abstract class DOMParser<D extends DOM> implements ErrorHandler, EntityResolver {
    public static final URL XML_SCHEMA_RESOURCE = Thread.currentThread().getContextClassLoader().getResource("org/seamless/schemas/xml.xsd");
    private static Logger log = Logger.getLogger(DOMParser.class.getName());
    protected Schema schema;
    protected Source[] schemaSources;

    public static abstract class NodeVisitor {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        /* access modifiers changed from: private */
        public short nodeType;

        public boolean isHalted() {
            return false;
        }

        public abstract void visit(Node node);

        static {
            Class<DOMParser> cls = DOMParser.class;
        }

        protected NodeVisitor(short s) {
            this.nodeType = s;
        }
    }

    /* access modifiers changed from: protected */
    public abstract D createDOM(Document document);

    public DOMParser() {
        this(null);
    }

    public DOMParser(Source[] sourceArr) {
        this.schemaSources = sourceArr;
    }

    public Schema getSchema() {
        if (this.schema == null) {
            try {
                SchemaFactory newInstance = SchemaFactory.newInstance("http://www.w3.org/2001/XMLSchema");
                newInstance.setResourceResolver(new CatalogResourceResolver(new HashMap<URI, URL>() {
                    {
                        put(DOM.XML_SCHEMA_NAMESPACE, DOMParser.XML_SCHEMA_RESOURCE);
                    }
                }));
                if (this.schemaSources != null) {
                    this.schema = newInstance.newSchema(this.schemaSources);
                } else {
                    this.schema = newInstance.newSchema();
                }
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        return this.schema;
    }

    public DocumentBuilderFactory createFactory(boolean z) throws ParserException {
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        try {
            newInstance.setNamespaceAware(true);
            if (z) {
                newInstance.setXIncludeAware(true);
                newInstance.setFeature("http://apache.org/xml/features/xinclude/fixup-base-uris", false);
                newInstance.setFeature("http://apache.org/xml/features/xinclude/fixup-language", false);
                newInstance.setSchema(getSchema());
                newInstance.setFeature("http://apache.org/xml/features/validation/dynamic", true);
            }
            return newInstance;
        } catch (ParserConfigurationException e) {
            throw new ParserException((Throwable) e);
        }
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:6:0x000f */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x001b  */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x001d  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0023  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x002c  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0032 A[Catch:{ Exception -> 0x0041 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public javax.xml.transform.Transformer createTransformer(java.lang.String r6, int r7, boolean r8) throws org.seamless.xml.ParserException {
        /*
            r5 = this;
            javax.xml.transform.TransformerFactory r0 = javax.xml.transform.TransformerFactory.newInstance()     // Catch:{ Exception -> 0x0041 }
            if (r7 <= 0) goto L_0x000f
            java.lang.String r1 = "indent-number"
            java.lang.Integer r2 = java.lang.Integer.valueOf(r7)     // Catch:{ IllegalArgumentException -> 0x000f }
            r0.setAttribute(r1, r2)     // Catch:{ IllegalArgumentException -> 0x000f }
        L_0x000f:
            javax.xml.transform.Transformer r0 = r0.newTransformer()     // Catch:{ Exception -> 0x0041 }
            java.lang.String r1 = "omit-xml-declaration"
            java.lang.String r2 = "no"
            java.lang.String r3 = "yes"
            if (r8 == 0) goto L_0x001d
            r4 = r2
            goto L_0x001e
        L_0x001d:
            r4 = r3
        L_0x001e:
            r0.setOutputProperty(r1, r4)     // Catch:{ Exception -> 0x0041 }
            if (r8 == 0) goto L_0x0028
            java.lang.String r8 = "http://www.oracle.com/xml/is-standalone"
            r0.setOutputProperty(r8, r3)     // Catch:{ IllegalArgumentException -> 0x0028 }
        L_0x0028:
            java.lang.String r8 = "indent"
            if (r7 <= 0) goto L_0x002d
            r2 = r3
        L_0x002d:
            r0.setOutputProperty(r8, r2)     // Catch:{ Exception -> 0x0041 }
            if (r7 <= 0) goto L_0x003b
            java.lang.String r8 = "{http://xml.apache.org/xslt}indent-amount"
            java.lang.String r7 = java.lang.Integer.toString(r7)     // Catch:{ Exception -> 0x0041 }
            r0.setOutputProperty(r8, r7)     // Catch:{ Exception -> 0x0041 }
        L_0x003b:
            java.lang.String r7 = "method"
            r0.setOutputProperty(r7, r6)     // Catch:{ Exception -> 0x0041 }
            return r0
        L_0x0041:
            r6 = move-exception
            org.seamless.xml.ParserException r7 = new org.seamless.xml.ParserException
            r7.<init>(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.xml.DOMParser.createTransformer(java.lang.String, int, boolean):javax.xml.transform.Transformer");
    }

    public D createDocument() {
        try {
            return createDOM(createFactory(false).newDocumentBuilder().newDocument());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public D parse(URL url) throws ParserException {
        return parse(url, true);
    }

    public D parse(String str) throws ParserException {
        return parse(str, true);
    }

    public D parse(File file) throws ParserException {
        return parse(file, true);
    }

    public D parse(InputStream inputStream) throws ParserException {
        return parse(inputStream, true);
    }

    public D parse(URL url, boolean z) throws ParserException {
        if (url != null) {
            try {
                return parse(url.openStream(), z);
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Parsing URL failed: ");
                sb.append(url);
                throw new ParserException(sb.toString(), e);
            }
        } else {
            throw new IllegalArgumentException("Can't parse null URL");
        }
    }

    public D parse(String str, boolean z) throws ParserException {
        if (str != null) {
            return parse(new InputSource(new StringReader(str)), z);
        }
        throw new IllegalArgumentException("Can't parse null string");
    }

    public D parse(File file, boolean z) throws ParserException {
        if (file != null) {
            try {
                return parse(file.toURI().toURL(), z);
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Parsing file failed: ");
                sb.append(file);
                throw new ParserException(sb.toString(), e);
            }
        } else {
            throw new IllegalArgumentException("Can't parse null file");
        }
    }

    public D parse(InputStream inputStream, boolean z) throws ParserException {
        return parse(new InputSource(inputStream), z);
    }

    public D parse(InputSource inputSource, boolean z) throws ParserException {
        try {
            DocumentBuilder newDocumentBuilder = createFactory(z).newDocumentBuilder();
            newDocumentBuilder.setEntityResolver(this);
            newDocumentBuilder.setErrorHandler(this);
            Document parse = newDocumentBuilder.parse(inputSource);
            parse.normalizeDocument();
            return createDOM(parse);
        } catch (Exception e) {
            throw unwrapException(e);
        }
    }

    public void validate(URL url) throws ParserException {
        if (url != null) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Validating XML of URL: ");
            sb.append(url);
            logger.fine(sb.toString());
            validate((Source) new StreamSource(url.toString()));
            return;
        }
        throw new IllegalArgumentException("Can't validate null URL");
    }

    public void validate(String str) throws ParserException {
        if (str != null) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Validating XML string characters: ");
            sb.append(str.length());
            logger.fine(sb.toString());
            validate((Source) new SAXSource(new InputSource(new StringReader(str))));
            return;
        }
        throw new IllegalArgumentException("Can't validate null string");
    }

    public void validate(Document document) throws ParserException {
        validate((Source) new DOMSource(document));
    }

    public void validate(DOM dom) throws ParserException {
        validate((Source) new DOMSource(dom.getW3CDocument()));
    }

    public void validate(Source source) throws ParserException {
        try {
            Validator newValidator = getSchema().newValidator();
            newValidator.setErrorHandler(this);
            newValidator.validate(source);
        } catch (Exception e) {
            throw unwrapException(e);
        }
    }

    public XPathFactory createXPathFactory() {
        return XPathFactory.newInstance();
    }

    public XPath createXPath(NamespaceContext namespaceContext) {
        XPath newXPath = createXPathFactory().newXPath();
        newXPath.setNamespaceContext(namespaceContext);
        return newXPath;
    }

    public XPath createXPath(XPathFactory xPathFactory, NamespaceContext namespaceContext) {
        XPath newXPath = xPathFactory.newXPath();
        newXPath.setNamespaceContext(namespaceContext);
        return newXPath;
    }

    public Object getXPathResult(DOM dom, XPath xPath, String str, QName qName) {
        return getXPathResult((Node) dom.getW3CDocument(), xPath, str, qName);
    }

    public Object getXPathResult(DOMElement dOMElement, XPath xPath, String str, QName qName) {
        return getXPathResult((Node) dOMElement.getW3CElement(), xPath, str, qName);
    }

    public Object getXPathResult(Node node, XPath xPath, String str, QName qName) {
        try {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Evaluating xpath query: ");
            sb.append(str);
            logger.fine(sb.toString());
            return xPath.evaluate(str, node, qName);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public String print(DOM dom) throws ParserException {
        return print(dom, 4, true);
    }

    public String print(DOM dom, int i) throws ParserException {
        return print(dom, i, true);
    }

    public String print(DOM dom, boolean z) throws ParserException {
        return print(dom, 4, z);
    }

    public String print(DOM dom, int i, boolean z) throws ParserException {
        return print(dom.getW3CDocument(), i, z);
    }

    public String print(Document document, int i, boolean z) throws ParserException {
        removeIgnorableWSNodes(document.getDocumentElement());
        return print((Source) new DOMSource(document.getDocumentElement()), i, z);
    }

    public String print(String str, int i, boolean z) throws ParserException {
        return print((Source) new StreamSource(new StringReader(str)), i, z);
    }

    public String print(Source source, int i, boolean z) throws ParserException {
        try {
            Transformer createTransformer = createTransformer("xml", i, z);
            createTransformer.setOutputProperty("encoding", "utf-8");
            StringWriter stringWriter = new StringWriter();
            createTransformer.transform(source, new StreamResult(stringWriter));
            stringWriter.flush();
            return stringWriter.toString();
        } catch (Exception e) {
            throw new ParserException((Throwable) e);
        }
    }

    public String printHTML(Document document) throws ParserException {
        return printHTML(document, 4, true, true);
    }

    public String printHTML(Document document, int i, boolean z, boolean z2) throws ParserException {
        Document document2 = (Document) document.cloneNode(true);
        accept(document2.getDocumentElement(), new NodeVisitor(4) {
            public void visit(Node node) {
                CDATASection cDATASection = (CDATASection) node;
                cDATASection.getParentNode().setTextContent(cDATASection.getData());
            }
        });
        removeIgnorableWSNodes(document2.getDocumentElement());
        try {
            Transformer createTransformer = createTransformer("html", i, z);
            if (z2) {
                createTransformer.setOutputProperty("doctype-public", "-//W3C//DTD HTML 4.01 Transitional//EN");
                createTransformer.setOutputProperty("doctype-system", "http://www.w3.org/TR/html4/loose.dtd");
            }
            StringWriter stringWriter = new StringWriter();
            createTransformer.transform(new DOMSource(document2), new StreamResult(stringWriter));
            stringWriter.flush();
            return stringWriter.toString().replaceFirst("\\s*<META http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">", "").replaceFirst("<html xmlns=\"http://www.w3.org/1999/xhtml\">", "<html>");
        } catch (Exception e) {
            throw new ParserException((Throwable) e);
        }
    }

    public void removeIgnorableWSNodes(Element element) {
        Node firstChild = element.getFirstChild();
        while (firstChild != null) {
            Node nextSibling = firstChild.getNextSibling();
            if (isIgnorableWSNode(firstChild)) {
                element.removeChild(firstChild);
            } else if (firstChild.getNodeType() == 1) {
                removeIgnorableWSNodes((Element) firstChild);
            }
            firstChild = nextSibling;
        }
    }

    public boolean isIgnorableWSNode(Node node) {
        return node.getNodeType() == 3 && node.getTextContent().matches("[\\t\\n\\x0B\\f\\r\\s]+");
    }

    public void warning(SAXParseException sAXParseException) throws SAXException {
        log.warning(sAXParseException.toString());
    }

    public void error(SAXParseException sAXParseException) throws SAXException {
        throw new SAXException(new ParserException(sAXParseException));
    }

    public void fatalError(SAXParseException sAXParseException) throws SAXException {
        throw new SAXException(new ParserException(sAXParseException));
    }

    /* access modifiers changed from: protected */
    public ParserException unwrapException(Exception exc) {
        if (exc.getCause() == null || !(exc.getCause() instanceof ParserException)) {
            return new ParserException((Throwable) exc);
        }
        return (ParserException) exc.getCause();
    }

    public InputSource resolveEntity(String str, String str2) throws SAXException, IOException {
        InputSource inputSource;
        if (str2.startsWith("file://")) {
            inputSource = new InputSource(new FileInputStream(new File(URI.create(str2))));
        } else {
            inputSource = new InputSource(new ByteArrayInputStream(new byte[0]));
        }
        inputSource.setPublicId(str);
        inputSource.setSystemId(str2);
        return inputSource;
    }

    public static String escape(String str) {
        return escape(str, false, false);
    }

    public static String escape(String str, boolean z, boolean z2) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            String str2 = charAt != '\"' ? charAt != '&' ? charAt != '<' ? charAt != '>' ? null : "&#62;" : "&#60;" : "&#38;" : "&#34;";
            if (str2 != null) {
                sb.append(str2);
            } else {
                sb.append(charAt);
            }
        }
        String sb2 = sb.toString();
        if (z2) {
            Matcher matcher = Pattern.compile("(\\n+)(\\s*)(.*)").matcher(sb2);
            StringBuffer stringBuffer = new StringBuffer();
            while (matcher.find()) {
                String group = matcher.group(2);
                StringBuilder sb3 = new StringBuilder();
                for (int i2 = 0; i2 < group.length(); i2++) {
                    sb3.append("&#160;");
                }
                StringBuilder sb4 = new StringBuilder();
                sb4.append("$1");
                sb4.append(sb3.toString());
                sb4.append("$3");
                matcher.appendReplacement(stringBuffer, sb4.toString());
            }
            matcher.appendTail(stringBuffer);
            sb2 = stringBuffer.toString();
        }
        if (z) {
            sb2 = sb2.replaceAll("\n", "<br/>");
        }
        return sb2;
    }

    public static String stripElements(String str) {
        if (str == null) {
            return null;
        }
        return str.replaceAll("<([a-zA-Z]|/).*?>", "");
    }

    public static void accept(Node node, NodeVisitor nodeVisitor) {
        if (node != null && !nodeVisitor.isHalted()) {
            NodeList childNodes = node.getChildNodes();
            for (int i = 0; i < childNodes.getLength(); i++) {
                Node item = childNodes.item(i);
                if (item.getNodeType() == nodeVisitor.nodeType) {
                    nodeVisitor.visit(item);
                    if (nodeVisitor.isHalted()) {
                        break;
                    }
                }
                accept(item, nodeVisitor);
            }
        }
    }

    public static String wrap(String str, String str2) {
        return wrap(str, null, str2);
    }

    public static String wrap(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append("<");
        sb.append(str);
        if (str2 != null) {
            sb.append(" xmlns=\"");
            sb.append(str2);
            sb.append("\"");
        }
        String str4 = ">";
        sb.append(str4);
        sb.append(str3);
        sb.append("</");
        sb.append(str);
        sb.append(str4);
        return sb.toString();
    }
}
