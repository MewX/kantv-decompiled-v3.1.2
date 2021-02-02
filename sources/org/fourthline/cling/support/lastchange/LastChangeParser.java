package org.fourthline.cling.support.lastchange;

import java.io.InputStream;
import java.io.StringReader;
import java.util.Collections;
import java.util.Map.Entry;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.parsers.DocumentBuilderFactory;
import org.fourthline.cling.model.XMLUtil;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;
import org.fourthline.cling.support.shared.AbstractMap.SimpleEntry;
import org.seamless.util.Exceptions;
import org.seamless.util.io.IO;
import org.seamless.xml.DOMParser;
import org.seamless.xml.SAXParser;
import org.seamless.xml.SAXParser.Handler;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public abstract class LastChangeParser extends SAXParser {
    /* access modifiers changed from: private */
    public static final Logger log = Logger.getLogger(LastChangeParser.class.getName());

    public enum CONSTANTS {
        Event,
        InstanceID,
        val;

        public boolean equals(String str) {
            return name().equals(str);
        }
    }

    class InstanceIDHandler extends Handler<InstanceID> {
        InstanceIDHandler(InstanceID instanceID, Handler handler) {
            super(instanceID, handler);
        }

        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            super.startElement(str, str2, str3, attributes);
            Entry[] entryArr = new Entry[attributes.getLength()];
            for (int i = 0; i < entryArr.length; i++) {
                entryArr[i] = new SimpleEntry(attributes.getLocalName(i), attributes.getValue(i));
            }
            try {
                EventedValue createValue = LastChangeParser.this.createValue(str2, entryArr);
                if (createValue != null) {
                    ((InstanceID) getInstance()).getValues().add(createValue);
                }
            } catch (Exception e) {
                Logger access$000 = LastChangeParser.log;
                StringBuilder sb = new StringBuilder();
                sb.append("Error reading event XML, ignoring value: ");
                sb.append(Exceptions.unwrap(e));
                access$000.warning(sb.toString());
            }
        }

        /* access modifiers changed from: protected */
        public boolean isLastElement(String str, String str2, String str3) {
            return CONSTANTS.InstanceID.equals(str2);
        }
    }

    class RootHandler extends Handler<Event> {
        RootHandler(Event event, SAXParser sAXParser) {
            super(event, sAXParser);
        }

        RootHandler(Event event) {
            super(event);
        }

        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            super.startElement(str, str2, str3, attributes);
            if (CONSTANTS.InstanceID.equals(str2)) {
                String value = attributes.getValue(CONSTANTS.val.name());
                if (value != null) {
                    InstanceID instanceID = new InstanceID(new UnsignedIntegerFourBytes(value));
                    ((Event) getInstance()).getInstanceIDs().add(instanceID);
                    new InstanceIDHandler(instanceID, this);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public abstract String getNamespace();

    /* access modifiers changed from: protected */
    public Set<Class<? extends EventedValue>> getEventedVariables() {
        return Collections.EMPTY_SET;
    }

    /* access modifiers changed from: protected */
    public EventedValue createValue(String str, Entry<String, String>[] entryArr) throws Exception {
        for (Class cls : getEventedVariables()) {
            if (cls.getSimpleName().equals(str)) {
                return (EventedValue) cls.getConstructor(new Class[]{Entry[].class}).newInstance(new Object[]{entryArr});
            }
        }
        return null;
    }

    public Event parseResource(String str) throws Exception {
        InputStream inputStream = null;
        try {
            inputStream = Thread.currentThread().getContextClassLoader().getResourceAsStream(str);
            return parse(IO.readLines(inputStream));
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }

    public Event parse(String str) throws Exception {
        if (str == null || str.length() == 0) {
            throw new RuntimeException("Null or empty XML");
        }
        Event event = new Event();
        new RootHandler(event, this);
        if (log.isLoggable(Level.FINE)) {
            log.fine("Parsing 'LastChange' event XML content");
            log.fine("===================================== 'LastChange' BEGIN ============================================");
            log.fine(str);
            log.fine("====================================== 'LastChange' END  ============================================");
        }
        parse(new InputSource(new StringReader(str)));
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Parsed event with instances IDs: ");
        sb.append(event.getInstanceIDs().size());
        logger.fine(sb.toString());
        if (log.isLoggable(Level.FINEST)) {
            for (InstanceID instanceID : event.getInstanceIDs()) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("InstanceID '");
                sb2.append(instanceID.getId());
                sb2.append("' has values: ");
                sb2.append(instanceID.getValues().size());
                logger2.finest(sb2.toString());
                for (EventedValue eventedValue : instanceID.getValues()) {
                    Logger logger3 = log;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(eventedValue.getName());
                    sb3.append(" => ");
                    sb3.append(eventedValue.getValue());
                    logger3.finest(sb3.toString());
                }
            }
        }
        return event;
    }

    public String generate(Event event) throws Exception {
        return XMLUtil.documentToFragmentString(buildDOM(event));
    }

    /* access modifiers changed from: protected */
    public Document buildDOM(Event event) throws Exception {
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        newInstance.setNamespaceAware(true);
        Document newDocument = newInstance.newDocumentBuilder().newDocument();
        generateRoot(event, newDocument);
        return newDocument;
    }

    /* access modifiers changed from: protected */
    public void generateRoot(Event event, Document document) {
        Element createElementNS = document.createElementNS(getNamespace(), CONSTANTS.Event.name());
        document.appendChild(createElementNS);
        generateInstanceIDs(event, document, createElementNS);
    }

    /* access modifiers changed from: protected */
    public void generateInstanceIDs(Event event, Document document, Element element) {
        for (InstanceID instanceID : event.getInstanceIDs()) {
            if (instanceID.getId() != null) {
                Element appendNewElement = XMLUtil.appendNewElement(document, element, CONSTANTS.InstanceID.name());
                appendNewElement.setAttribute(CONSTANTS.val.name(), instanceID.getId().toString());
                for (EventedValue generateEventedValue : instanceID.getValues()) {
                    generateEventedValue(generateEventedValue, document, appendNewElement);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void generateEventedValue(EventedValue eventedValue, Document document, Element element) {
        String name = eventedValue.getName();
        Entry[] attributes = eventedValue.getAttributes();
        if (attributes != null && attributes.length > 0) {
            Element appendNewElement = XMLUtil.appendNewElement(document, element, name);
            for (Entry entry : attributes) {
                appendNewElement.setAttribute((String) entry.getKey(), DOMParser.escape((String) entry.getValue()));
            }
        }
    }
}
