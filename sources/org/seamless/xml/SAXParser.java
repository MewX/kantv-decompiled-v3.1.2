package org.seamless.xml;

import java.net.URI;
import java.net.URL;
import java.util.HashMap;
import java.util.logging.Logger;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.transform.Source;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.AttributesImpl;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.XMLReaderFactory;

public class SAXParser {
    public static final URI XML_SCHEMA_NAMESPACE = URI.create("http://www.w3.org/2001/xml.xsd");
    public static final URL XML_SCHEMA_RESOURCE = Thread.currentThread().getContextClassLoader().getResource("org/seamless/schemas/xml.xsd");
    /* access modifiers changed from: private */
    public static final Logger log = Logger.getLogger(SAXParser.class.getName());
    private final XMLReader xr;

    public static class Handler<I> extends DefaultHandler {
        protected Attributes attributes;
        protected StringBuilder characters;
        protected I instance;
        protected Handler parent;
        protected SAXParser parser;

        /* access modifiers changed from: protected */
        public boolean isLastElement(String str, String str2, String str3) {
            return false;
        }

        public Handler(I i) {
            this(i, null, null);
        }

        public Handler(I i, SAXParser sAXParser) {
            this(i, sAXParser, null);
        }

        public Handler(I i, Handler handler) {
            this(i, handler.getParser(), handler);
        }

        public Handler(I i, SAXParser sAXParser, Handler handler) {
            this.characters = new StringBuilder();
            this.instance = i;
            this.parser = sAXParser;
            this.parent = handler;
            if (sAXParser != null) {
                sAXParser.setContentHandler(this);
            }
        }

        public I getInstance() {
            return this.instance;
        }

        public SAXParser getParser() {
            return this.parser;
        }

        public Handler getParent() {
            return this.parent;
        }

        /* access modifiers changed from: protected */
        public void switchToParent() {
            SAXParser sAXParser = this.parser;
            if (sAXParser != null) {
                Handler handler = this.parent;
                if (handler != null) {
                    sAXParser.setContentHandler(handler);
                    this.attributes = null;
                }
            }
        }

        public String getCharacters() {
            return this.characters.toString();
        }

        public void startElement(String str, String str2, String str3, Attributes attributes2) throws SAXException {
            this.characters = new StringBuilder();
            this.attributes = new AttributesImpl(attributes2);
            Logger access$000 = SAXParser.log;
            StringBuilder sb = new StringBuilder();
            sb.append(getClass().getSimpleName());
            sb.append(" starting: ");
            sb.append(str2);
            access$000.finer(sb.toString());
        }

        public void characters(char[] cArr, int i, int i2) throws SAXException {
            this.characters.append(cArr, i, i2);
        }

        public void endElement(String str, String str2, String str3) throws SAXException {
            if (isLastElement(str, str2, str3)) {
                Logger access$000 = SAXParser.log;
                StringBuilder sb = new StringBuilder();
                sb.append(getClass().getSimpleName());
                sb.append(": last element, switching to parent: ");
                sb.append(str2);
                access$000.finer(sb.toString());
                switchToParent();
                return;
            }
            Logger access$0002 = SAXParser.log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(getClass().getSimpleName());
            sb2.append(" ending: ");
            sb2.append(str2);
            access$0002.finer(sb2.toString());
        }

        /* access modifiers changed from: protected */
        public Attributes getAttributes() {
            return this.attributes;
        }
    }

    public class SimpleErrorHandler implements ErrorHandler {
        public SimpleErrorHandler() {
        }

        public void warning(SAXParseException sAXParseException) throws SAXException {
            throw new SAXException(sAXParseException);
        }

        public void error(SAXParseException sAXParseException) throws SAXException {
            throw new SAXException(sAXParseException);
        }

        public void fatalError(SAXParseException sAXParseException) throws SAXException {
            throw new SAXException(sAXParseException);
        }
    }

    /* access modifiers changed from: protected */
    public Source[] getSchemaSources() {
        return null;
    }

    public SAXParser() {
        this(null);
    }

    public SAXParser(DefaultHandler defaultHandler) {
        this.xr = create();
        if (defaultHandler != null) {
            this.xr.setContentHandler(defaultHandler);
        }
    }

    public void setContentHandler(ContentHandler contentHandler) {
        this.xr.setContentHandler(contentHandler);
    }

    /* access modifiers changed from: protected */
    public XMLReader create() {
        try {
            if (getSchemaSources() == null) {
                return XMLReaderFactory.createXMLReader();
            }
            SAXParserFactory newInstance = SAXParserFactory.newInstance();
            newInstance.setNamespaceAware(true);
            newInstance.setSchema(createSchema(getSchemaSources()));
            XMLReader xMLReader = newInstance.newSAXParser().getXMLReader();
            xMLReader.setErrorHandler(getErrorHandler());
            return xMLReader;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* access modifiers changed from: protected */
    public Schema createSchema(Source[] sourceArr) {
        try {
            SchemaFactory newInstance = SchemaFactory.newInstance("http://www.w3.org/2001/XMLSchema");
            newInstance.setResourceResolver(new CatalogResourceResolver(new HashMap<URI, URL>() {
                {
                    put(SAXParser.XML_SCHEMA_NAMESPACE, SAXParser.XML_SCHEMA_RESOURCE);
                }
            }));
            return newInstance.newSchema(sourceArr);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* access modifiers changed from: protected */
    public ErrorHandler getErrorHandler() {
        return new SimpleErrorHandler();
    }

    public void parse(InputSource inputSource) throws ParserException {
        try {
            this.xr.parse(inputSource);
        } catch (Exception e) {
            throw new ParserException((Throwable) e);
        }
    }
}
