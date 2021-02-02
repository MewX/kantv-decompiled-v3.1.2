package org.seamless.xml;

import java.io.InputStream;
import java.io.Reader;
import java.net.URI;
import java.net.URL;
import java.util.Map;
import java.util.logging.Logger;
import org.w3c.dom.ls.LSInput;
import org.w3c.dom.ls.LSResourceResolver;

public class CatalogResourceResolver implements LSResourceResolver {
    private static Logger log = Logger.getLogger(CatalogResourceResolver.class.getName());
    private final Map<URI, URL> catalog;

    private static final class Input implements LSInput {
        InputStream in;

        public String getBaseURI() {
            return null;
        }

        public boolean getCertifiedText() {
            return false;
        }

        public Reader getCharacterStream() {
            return null;
        }

        public String getEncoding() {
            return null;
        }

        public String getPublicId() {
            return null;
        }

        public String getStringData() {
            return null;
        }

        public String getSystemId() {
            return null;
        }

        public void setBaseURI(String str) {
        }

        public void setByteStream(InputStream inputStream) {
        }

        public void setCertifiedText(boolean z) {
        }

        public void setCharacterStream(Reader reader) {
        }

        public void setEncoding(String str) {
        }

        public void setPublicId(String str) {
        }

        public void setStringData(String str) {
        }

        public void setSystemId(String str) {
        }

        public Input(InputStream inputStream) {
            this.in = inputStream;
        }

        public InputStream getByteStream() {
            return this.in;
        }
    }

    public CatalogResourceResolver(Map<URI, URL> map) {
        this.catalog = map;
    }

    public LSInput resolveResource(String str, String str2, String str3, String str4, String str5) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Trying to resolve system identifier URI in catalog: ");
        sb.append(str4);
        logger.finest(sb.toString());
        URL url = (URL) this.catalog.get(URI.create(str4));
        if (url != null) {
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Loading catalog resource: ");
            sb2.append(url);
            logger2.finest(sb2.toString());
            try {
                Input input = new Input(url.openStream());
                input.setBaseURI(str5);
                input.setSystemId(str4);
                input.setPublicId(str3);
                return input;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        } else {
            Logger logger3 = log;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("System identifier not found in catalog, continuing with default resolution (this most likely means remote HTTP request!): ");
            sb3.append(str4);
            logger3.info(sb3.toString());
            return null;
        }
    }
}
