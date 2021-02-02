package org.fourthline.cling.transport.impl;

import java.io.StringReader;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.FactoryConfigurationError;
import org.fourthline.cling.model.Constants;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.XMLUtil;
import org.fourthline.cling.model.message.UpnpMessage;
import org.fourthline.cling.model.message.UpnpMessage.BodyType;
import org.fourthline.cling.model.message.gena.IncomingEventRequestMessage;
import org.fourthline.cling.model.message.gena.OutgoingEventRequestMessage;
import org.fourthline.cling.model.meta.StateVariable;
import org.fourthline.cling.model.state.StateVariableValue;
import org.fourthline.cling.transport.spi.GENAEventProcessor;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

public class GENAEventProcessorImpl implements GENAEventProcessor, ErrorHandler {
    private static Logger log = Logger.getLogger(GENAEventProcessor.class.getName());

    /* access modifiers changed from: protected */
    public DocumentBuilderFactory createDocumentBuilderFactory() throws FactoryConfigurationError {
        return DocumentBuilderFactory.newInstance();
    }

    public void writeBody(OutgoingEventRequestMessage outgoingEventRequestMessage) throws UnsupportedDataException {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Writing body of: ");
        sb.append(outgoingEventRequestMessage);
        logger.fine(sb.toString());
        try {
            DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
            newInstance.setNamespaceAware(true);
            Document newDocument = newInstance.newDocumentBuilder().newDocument();
            writeProperties(newDocument, writePropertysetElement(newDocument), outgoingEventRequestMessage);
            outgoingEventRequestMessage.setBody(BodyType.STRING, toString(newDocument));
            if (log.isLoggable(Level.FINER)) {
                log.finer("===================================== GENA BODY BEGIN ============================================");
                log.finer(outgoingEventRequestMessage.getBody().toString());
                log.finer("====================================== GENA BODY END =============================================");
            }
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Can't transform message payload: ");
            sb2.append(e.getMessage());
            throw new UnsupportedDataException(sb2.toString(), e);
        }
    }

    public void readBody(IncomingEventRequestMessage incomingEventRequestMessage) throws UnsupportedDataException {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Reading body of: ");
        sb.append(incomingEventRequestMessage);
        logger.fine(sb.toString());
        if (log.isLoggable(Level.FINER)) {
            log.finer("===================================== GENA BODY BEGIN ============================================");
            log.finer(incomingEventRequestMessage.getBody() != null ? incomingEventRequestMessage.getBody().toString() : "null");
            log.finer("-===================================== GENA BODY END ============================================");
        }
        String messageBody = getMessageBody(incomingEventRequestMessage);
        try {
            DocumentBuilderFactory createDocumentBuilderFactory = createDocumentBuilderFactory();
            createDocumentBuilderFactory.setNamespaceAware(true);
            DocumentBuilder newDocumentBuilder = createDocumentBuilderFactory.newDocumentBuilder();
            newDocumentBuilder.setErrorHandler(this);
            readProperties(readPropertysetElement(newDocumentBuilder.parse(new InputSource(new StringReader(messageBody)))), incomingEventRequestMessage);
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Can't transform message payload: ");
            sb2.append(e.getMessage());
            throw new UnsupportedDataException(sb2.toString(), e, messageBody);
        }
    }

    /* access modifiers changed from: protected */
    public Element writePropertysetElement(Document document) {
        Element createElementNS = document.createElementNS(Constants.NS_UPNP_EVENT_10, "e:propertyset");
        document.appendChild(createElementNS);
        return createElementNS;
    }

    /* access modifiers changed from: protected */
    public Element readPropertysetElement(Document document) {
        Element documentElement = document.getDocumentElement();
        if (documentElement != null && getUnprefixedNodeName(documentElement).equals("propertyset")) {
            return documentElement;
        }
        throw new RuntimeException("Root element was not 'propertyset'");
    }

    /* access modifiers changed from: protected */
    public void writeProperties(Document document, Element element, OutgoingEventRequestMessage outgoingEventRequestMessage) {
        for (StateVariableValue stateVariableValue : outgoingEventRequestMessage.getStateVariableValues()) {
            Element createElementNS = document.createElementNS(Constants.NS_UPNP_EVENT_10, "e:property");
            element.appendChild(createElementNS);
            XMLUtil.appendNewElement(document, createElementNS, stateVariableValue.getStateVariable().getName(), stateVariableValue.toString());
        }
    }

    /* access modifiers changed from: protected */
    public void readProperties(Element element, IncomingEventRequestMessage incomingEventRequestMessage) {
        NodeList childNodes = element.getChildNodes();
        StateVariable[] stateVariables = incomingEventRequestMessage.getService().getStateVariables();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == 1 && getUnprefixedNodeName(item).equals("property")) {
                NodeList childNodes2 = item.getChildNodes();
                for (int i2 = 0; i2 < childNodes2.getLength(); i2++) {
                    Node item2 = childNodes2.item(i2);
                    if (item2.getNodeType() == 1) {
                        String unprefixedNodeName = getUnprefixedNodeName(item2);
                        int length = stateVariables.length;
                        int i3 = 0;
                        while (true) {
                            if (i3 >= length) {
                                break;
                            }
                            StateVariable stateVariable = stateVariables[i3];
                            if (stateVariable.getName().equals(unprefixedNodeName)) {
                                Logger logger = log;
                                StringBuilder sb = new StringBuilder();
                                sb.append("Reading state variable value: ");
                                sb.append(unprefixedNodeName);
                                logger.fine(sb.toString());
                                incomingEventRequestMessage.getStateVariableValues().add(new StateVariableValue(stateVariable, XMLUtil.getTextContent(item2)));
                                break;
                            }
                            i3++;
                        }
                    }
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public String getMessageBody(UpnpMessage upnpMessage) throws UnsupportedDataException {
        if (upnpMessage.isBodyNonEmptyString()) {
            return upnpMessage.getBodyString().trim();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't transform null or non-string/zero-length body of: ");
        sb.append(upnpMessage);
        throw new UnsupportedDataException(sb.toString());
    }

    /* access modifiers changed from: protected */
    public String toString(Document document) throws Exception {
        String documentToString = XMLUtil.documentToString(document);
        while (true) {
            if (!documentToString.endsWith("\n") && !documentToString.endsWith("\r")) {
                return documentToString;
            }
            documentToString = documentToString.substring(0, documentToString.length() - 1);
        }
    }

    /* access modifiers changed from: protected */
    public String getUnprefixedNodeName(Node node) {
        if (node.getPrefix() != null) {
            return node.getNodeName().substring(node.getPrefix().length() + 1);
        }
        return node.getNodeName();
    }

    public void warning(SAXParseException sAXParseException) throws SAXException {
        log.warning(sAXParseException.toString());
    }

    public void error(SAXParseException sAXParseException) throws SAXException {
        throw sAXParseException;
    }

    public void fatalError(SAXParseException sAXParseException) throws SAXException {
        throw sAXParseException;
    }
}
