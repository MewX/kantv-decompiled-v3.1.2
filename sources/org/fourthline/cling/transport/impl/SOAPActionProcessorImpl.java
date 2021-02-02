package org.fourthline.cling.transport.impl;

import com.google.android.gms.analytics.ecommerce.ProductAction;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.FactoryConfigurationError;
import org.fourthline.cling.model.Constants;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.XMLUtil;
import org.fourthline.cling.model.action.ActionArgumentValue;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.control.ActionMessage;
import org.fourthline.cling.model.message.control.ActionRequestMessage;
import org.fourthline.cling.model.message.control.ActionResponseMessage;
import org.fourthline.cling.model.meta.ActionArgument;
import org.fourthline.cling.model.types.ErrorCode;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.transport.spi.SOAPActionProcessor;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

public class SOAPActionProcessorImpl implements SOAPActionProcessor, ErrorHandler {
    private static Logger log = Logger.getLogger(SOAPActionProcessor.class.getName());

    /* access modifiers changed from: protected */
    public DocumentBuilderFactory createDocumentBuilderFactory() throws FactoryConfigurationError {
        return DocumentBuilderFactory.newInstance();
    }

    public void writeBody(ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) throws UnsupportedDataException {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Writing body of ");
        sb.append(actionRequestMessage);
        sb.append(" for: ");
        sb.append(actionInvocation);
        logger.fine(sb.toString());
        try {
            DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
            newInstance.setNamespaceAware(true);
            Document newDocument = newInstance.newDocumentBuilder().newDocument();
            writeBodyRequest(newDocument, writeBodyElement(newDocument), actionRequestMessage, actionInvocation);
            if (log.isLoggable(Level.FINER)) {
                log.finer("===================================== SOAP BODY BEGIN ============================================");
                log.finer(actionRequestMessage.getBodyString());
                log.finer("-===================================== SOAP BODY END ============================================");
            }
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Can't transform message payload: ");
            sb2.append(e);
            throw new UnsupportedDataException(sb2.toString(), e);
        }
    }

    public void writeBody(ActionResponseMessage actionResponseMessage, ActionInvocation actionInvocation) throws UnsupportedDataException {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Writing body of ");
        sb.append(actionResponseMessage);
        sb.append(" for: ");
        sb.append(actionInvocation);
        logger.fine(sb.toString());
        try {
            DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
            newInstance.setNamespaceAware(true);
            Document newDocument = newInstance.newDocumentBuilder().newDocument();
            Element writeBodyElement = writeBodyElement(newDocument);
            if (actionInvocation.getFailure() != null) {
                writeBodyFailure(newDocument, writeBodyElement, actionResponseMessage, actionInvocation);
            } else {
                writeBodyResponse(newDocument, writeBodyElement, actionResponseMessage, actionInvocation);
            }
            if (log.isLoggable(Level.FINER)) {
                log.finer("===================================== SOAP BODY BEGIN ============================================");
                log.finer(actionResponseMessage.getBodyString());
                log.finer("-===================================== SOAP BODY END ============================================");
            }
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Can't transform message payload: ");
            sb2.append(e);
            throw new UnsupportedDataException(sb2.toString(), e);
        }
    }

    public void readBody(ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) throws UnsupportedDataException {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Reading body of ");
        sb.append(actionRequestMessage);
        sb.append(" for: ");
        sb.append(actionInvocation);
        logger.fine(sb.toString());
        if (log.isLoggable(Level.FINER)) {
            log.finer("===================================== SOAP BODY BEGIN ============================================");
            log.finer(actionRequestMessage.getBodyString());
            log.finer("-===================================== SOAP BODY END ============================================");
        }
        String messageBody = getMessageBody(actionRequestMessage);
        try {
            DocumentBuilderFactory createDocumentBuilderFactory = createDocumentBuilderFactory();
            createDocumentBuilderFactory.setNamespaceAware(true);
            DocumentBuilder newDocumentBuilder = createDocumentBuilderFactory.newDocumentBuilder();
            newDocumentBuilder.setErrorHandler(this);
            Document parse = newDocumentBuilder.parse(new InputSource(new StringReader(messageBody)));
            readBodyRequest(parse, readBodyElement(parse), actionRequestMessage, actionInvocation);
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Can't transform message payload: ");
            sb2.append(e);
            throw new UnsupportedDataException(sb2.toString(), e, messageBody);
        }
    }

    public void readBody(ActionResponseMessage actionResponseMessage, ActionInvocation actionInvocation) throws UnsupportedDataException {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Reading body of ");
        sb.append(actionResponseMessage);
        sb.append(" for: ");
        sb.append(actionInvocation);
        logger.fine(sb.toString());
        if (log.isLoggable(Level.FINER)) {
            log.finer("===================================== SOAP BODY BEGIN ============================================");
            log.finer(actionResponseMessage.getBodyString());
            log.finer("-===================================== SOAP BODY END ============================================");
        }
        String messageBody = getMessageBody(actionResponseMessage);
        try {
            DocumentBuilderFactory createDocumentBuilderFactory = createDocumentBuilderFactory();
            createDocumentBuilderFactory.setNamespaceAware(true);
            DocumentBuilder newDocumentBuilder = createDocumentBuilderFactory.newDocumentBuilder();
            newDocumentBuilder.setErrorHandler(this);
            Document parse = newDocumentBuilder.parse(new InputSource(new StringReader(messageBody)));
            Element readBodyElement = readBodyElement(parse);
            ActionException readBodyFailure = readBodyFailure(parse, readBodyElement);
            if (readBodyFailure == null) {
                readBodyResponse(parse, readBodyElement, actionResponseMessage, actionInvocation);
            } else {
                actionInvocation.setFailure(readBodyFailure);
            }
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Can't transform message payload: ");
            sb2.append(e);
            throw new UnsupportedDataException(sb2.toString(), e, messageBody);
        }
    }

    /* access modifiers changed from: protected */
    public void writeBodyFailure(Document document, Element element, ActionResponseMessage actionResponseMessage, ActionInvocation actionInvocation) throws Exception {
        writeFaultElement(document, element, actionInvocation);
        actionResponseMessage.setBody(toString(document));
    }

    /* access modifiers changed from: protected */
    public void writeBodyRequest(Document document, Element element, ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) throws Exception {
        writeActionInputArguments(document, writeActionRequestElement(document, element, actionRequestMessage, actionInvocation), actionInvocation);
        actionRequestMessage.setBody(toString(document));
    }

    /* access modifiers changed from: protected */
    public void writeBodyResponse(Document document, Element element, ActionResponseMessage actionResponseMessage, ActionInvocation actionInvocation) throws Exception {
        writeActionOutputArguments(document, writeActionResponseElement(document, element, actionResponseMessage, actionInvocation), actionInvocation);
        actionResponseMessage.setBody(toString(document));
    }

    /* access modifiers changed from: protected */
    public ActionException readBodyFailure(Document document, Element element) throws Exception {
        return readFaultElement(element);
    }

    /* access modifiers changed from: protected */
    public void readBodyRequest(Document document, Element element, ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) throws Exception {
        readActionInputArguments(readActionRequestElement(element, actionRequestMessage, actionInvocation), actionInvocation);
    }

    /* access modifiers changed from: protected */
    public void readBodyResponse(Document document, Element element, ActionResponseMessage actionResponseMessage, ActionInvocation actionInvocation) throws Exception {
        readActionOutputArguments(readActionResponseElement(element, actionInvocation), actionInvocation);
    }

    /* access modifiers changed from: protected */
    public Element writeBodyElement(Document document) {
        String str = Constants.SOAP_NS_ENVELOPE;
        Element createElementNS = document.createElementNS(str, "s:Envelope");
        Attr createAttributeNS = document.createAttributeNS(str, "s:encodingStyle");
        createAttributeNS.setValue(Constants.SOAP_URI_ENCODING_STYLE);
        createElementNS.setAttributeNode(createAttributeNS);
        document.appendChild(createElementNS);
        Element createElementNS2 = document.createElementNS(str, "s:Body");
        createElementNS.appendChild(createElementNS2);
        return createElementNS2;
    }

    /* access modifiers changed from: protected */
    public Element readBodyElement(Document document) {
        Element documentElement = document.getDocumentElement();
        if (documentElement == null || !getUnprefixedNodeName(documentElement).equals("Envelope")) {
            throw new RuntimeException("Response root element was not 'Envelope'");
        }
        NodeList childNodes = documentElement.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == 1 && getUnprefixedNodeName(item).equals("Body")) {
                return (Element) item;
            }
        }
        throw new RuntimeException("Response envelope did not contain 'Body' child element");
    }

    /* access modifiers changed from: protected */
    public Element writeActionRequestElement(Document document, Element element, ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Writing action request element: ");
        sb.append(actionInvocation.getAction().getName());
        logger.fine(sb.toString());
        String actionNamespace = actionRequestMessage.getActionNamespace();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("u:");
        sb2.append(actionInvocation.getAction().getName());
        Element createElementNS = document.createElementNS(actionNamespace, sb2.toString());
        element.appendChild(createElementNS);
        return createElementNS;
    }

    /* access modifiers changed from: protected */
    public Element readActionRequestElement(Element element, ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) {
        NodeList childNodes = element.getChildNodes();
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Looking for action request element matching namespace:");
        sb.append(actionRequestMessage.getActionNamespace());
        logger.fine(sb.toString());
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == 1) {
                String unprefixedNodeName = getUnprefixedNodeName(item);
                if (unprefixedNodeName.equals(actionInvocation.getAction().getName())) {
                    if (item.getNamespaceURI() == null || !item.getNamespaceURI().equals(actionRequestMessage.getActionNamespace())) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Illegal or missing namespace on action request element: ");
                        sb2.append(item);
                        throw new UnsupportedDataException(sb2.toString());
                    }
                    Logger logger2 = log;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Reading action request element: ");
                    sb3.append(unprefixedNodeName);
                    logger2.fine(sb3.toString());
                    return (Element) item;
                }
            }
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append("Could not read action request element matching namespace: ");
        sb4.append(actionRequestMessage.getActionNamespace());
        throw new UnsupportedDataException(sb4.toString());
    }

    /* access modifiers changed from: protected */
    public Element writeActionResponseElement(Document document, Element element, ActionResponseMessage actionResponseMessage, ActionInvocation actionInvocation) {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Writing action response element: ");
        sb.append(actionInvocation.getAction().getName());
        logger.fine(sb.toString());
        String actionNamespace = actionResponseMessage.getActionNamespace();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("u:");
        sb2.append(actionInvocation.getAction().getName());
        sb2.append("Response");
        Element createElementNS = document.createElementNS(actionNamespace, sb2.toString());
        element.appendChild(createElementNS);
        return createElementNS;
    }

    /* access modifiers changed from: protected */
    public Element readActionResponseElement(Element element, ActionInvocation actionInvocation) {
        NodeList childNodes = element.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == 1) {
                String unprefixedNodeName = getUnprefixedNodeName(item);
                StringBuilder sb = new StringBuilder();
                sb.append(actionInvocation.getAction().getName());
                sb.append("Response");
                if (unprefixedNodeName.equals(sb.toString())) {
                    Logger logger = log;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Reading action response element: ");
                    sb2.append(getUnprefixedNodeName(item));
                    logger.fine(sb2.toString());
                    return (Element) item;
                }
            }
        }
        log.fine("Could not read action response element");
        return null;
    }

    /* access modifiers changed from: protected */
    public void writeActionInputArguments(Document document, Element element, ActionInvocation actionInvocation) {
        ActionArgument[] inputArguments;
        for (ActionArgument actionArgument : actionInvocation.getAction().getInputArguments()) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Writing action input argument: ");
            sb.append(actionArgument.getName());
            logger.fine(sb.toString());
            XMLUtil.appendNewElement(document, element, actionArgument.getName(), actionInvocation.getInput(actionArgument) != null ? actionInvocation.getInput(actionArgument).toString() : "");
        }
    }

    public void readActionInputArguments(Element element, ActionInvocation actionInvocation) throws ActionException {
        actionInvocation.setInput((ActionArgumentValue<S>[]) readArgumentValues(element.getChildNodes(), actionInvocation.getAction().getInputArguments()));
    }

    /* access modifiers changed from: protected */
    public void writeActionOutputArguments(Document document, Element element, ActionInvocation actionInvocation) {
        ActionArgument[] outputArguments;
        for (ActionArgument actionArgument : actionInvocation.getAction().getOutputArguments()) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Writing action output argument: ");
            sb.append(actionArgument.getName());
            logger.fine(sb.toString());
            XMLUtil.appendNewElement(document, element, actionArgument.getName(), actionInvocation.getOutput(actionArgument) != null ? actionInvocation.getOutput(actionArgument).toString() : "");
        }
    }

    /* access modifiers changed from: protected */
    public void readActionOutputArguments(Element element, ActionInvocation actionInvocation) throws ActionException {
        actionInvocation.setOutput((ActionArgumentValue<S>[]) readArgumentValues(element.getChildNodes(), actionInvocation.getAction().getOutputArguments()));
    }

    /* access modifiers changed from: protected */
    public void writeFaultElement(Document document, Element element, ActionInvocation actionInvocation) {
        Element createElementNS = document.createElementNS(Constants.SOAP_NS_ENVELOPE, "s:Fault");
        element.appendChild(createElementNS);
        XMLUtil.appendNewElement(document, createElementNS, "faultcode", "s:Client");
        String str = "UPnPError";
        XMLUtil.appendNewElement(document, createElementNS, "faultstring", str);
        Element createElement = document.createElement(ProductAction.ACTION_DETAIL);
        createElementNS.appendChild(createElement);
        Element createElementNS2 = document.createElementNS(Constants.NS_UPNP_CONTROL_10, str);
        createElement.appendChild(createElementNS2);
        int errorCode = actionInvocation.getFailure().getErrorCode();
        String message = actionInvocation.getFailure().getMessage();
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Writing fault element: ");
        sb.append(errorCode);
        sb.append(" - ");
        sb.append(message);
        logger.fine(sb.toString());
        XMLUtil.appendNewElement(document, createElementNS2, "errorCode", Integer.toString(errorCode));
        XMLUtil.appendNewElement(document, createElementNS2, "errorDescription", message);
    }

    /* access modifiers changed from: protected */
    public ActionException readFaultElement(Element element) {
        NodeList childNodes = element.getChildNodes();
        String str = null;
        String str2 = null;
        boolean z = false;
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            short s = 1;
            if (item.getNodeType() == 1 && getUnprefixedNodeName(item).equals("Fault")) {
                NodeList childNodes2 = item.getChildNodes();
                String str3 = str2;
                String str4 = str;
                int i2 = 0;
                while (i2 < childNodes2.getLength()) {
                    Node item2 = childNodes2.item(i2);
                    if (item2.getNodeType() == s && getUnprefixedNodeName(item2).equals(ProductAction.ACTION_DETAIL)) {
                        NodeList childNodes3 = item2.getChildNodes();
                        String str5 = str3;
                        String str6 = str4;
                        int i3 = 0;
                        while (i3 < childNodes3.getLength()) {
                            Node item3 = childNodes3.item(i3);
                            if (item3.getNodeType() == s && getUnprefixedNodeName(item3).equals("UPnPError")) {
                                NodeList childNodes4 = item3.getChildNodes();
                                String str7 = str5;
                                String str8 = str6;
                                int i4 = 0;
                                while (i4 < childNodes4.getLength()) {
                                    Node item4 = childNodes4.item(i4);
                                    if (item4.getNodeType() == s) {
                                        if (getUnprefixedNodeName(item4).equals("errorCode")) {
                                            str8 = XMLUtil.getTextContent(item4);
                                        }
                                        if (getUnprefixedNodeName(item4).equals("errorDescription")) {
                                            str7 = XMLUtil.getTextContent(item4);
                                        }
                                    }
                                    i4++;
                                    s = 1;
                                }
                                str6 = str8;
                                str5 = str7;
                            }
                            i3++;
                            s = 1;
                        }
                        str4 = str6;
                        str3 = str5;
                    }
                    i2++;
                    s = 1;
                }
                str = str4;
                str2 = str3;
                z = true;
            }
        }
        if (str != null) {
            try {
                int intValue = Integer.valueOf(str).intValue();
                ErrorCode byCode = ErrorCode.getByCode(intValue);
                String str9 = " - ";
                String str10 = "Reading fault element: ";
                if (byCode != null) {
                    Logger logger = log;
                    StringBuilder sb = new StringBuilder();
                    sb.append(str10);
                    sb.append(byCode.getCode());
                    sb.append(str9);
                    sb.append(str2);
                    logger.fine(sb.toString());
                    return new ActionException(byCode, str2, false);
                }
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str10);
                sb2.append(intValue);
                sb2.append(str9);
                sb2.append(str2);
                logger2.fine(sb2.toString());
                return new ActionException(intValue, str2);
            } catch (NumberFormatException unused) {
                throw new RuntimeException("Error code was not a number");
            }
        } else if (!z) {
            return null;
        } else {
            throw new RuntimeException("Received fault element but no error code");
        }
    }

    /* access modifiers changed from: protected */
    public String getMessageBody(ActionMessage actionMessage) throws UnsupportedDataException {
        if (actionMessage.isBodyNonEmptyString()) {
            return actionMessage.getBodyString().trim();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't transform null or non-string/zero-length body of: ");
        sb.append(actionMessage);
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

    /* access modifiers changed from: protected */
    public ActionArgumentValue[] readArgumentValues(NodeList nodeList, ActionArgument[] actionArgumentArr) throws ActionException {
        List matchingNodes = getMatchingNodes(nodeList, actionArgumentArr);
        ActionArgumentValue[] actionArgumentValueArr = new ActionArgumentValue[actionArgumentArr.length];
        int i = 0;
        while (i < actionArgumentArr.length) {
            ActionArgument actionArgument = actionArgumentArr[i];
            Node findActionArgumentNode = findActionArgumentNode(matchingNodes, actionArgument);
            if (findActionArgumentNode != null) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Reading action argument: ");
                sb.append(actionArgument.getName());
                logger.fine(sb.toString());
                actionArgumentValueArr[i] = createValue(actionArgument, XMLUtil.getTextContent(findActionArgumentNode));
                i++;
            } else {
                ErrorCode errorCode = ErrorCode.ARGUMENT_VALUE_INVALID;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Could not find argument '");
                sb2.append(actionArgument.getName());
                sb2.append("' node");
                throw new ActionException(errorCode, sb2.toString());
            }
        }
        return actionArgumentValueArr;
    }

    /* access modifiers changed from: protected */
    public List<Node> getMatchingNodes(NodeList nodeList, ActionArgument[] actionArgumentArr) throws ActionException {
        ArrayList arrayList = new ArrayList();
        for (ActionArgument actionArgument : actionArgumentArr) {
            arrayList.add(actionArgument.getName());
            arrayList.addAll(Arrays.asList(actionArgument.getAliases()));
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < nodeList.getLength(); i++) {
            Node item = nodeList.item(i);
            if (item.getNodeType() == 1 && arrayList.contains(getUnprefixedNodeName(item))) {
                arrayList2.add(item);
            }
        }
        if (arrayList2.size() >= actionArgumentArr.length) {
            return arrayList2;
        }
        ErrorCode errorCode = ErrorCode.ARGUMENT_VALUE_INVALID;
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid number of input or output arguments in XML message, expected ");
        sb.append(actionArgumentArr.length);
        sb.append(" but found ");
        sb.append(arrayList2.size());
        throw new ActionException(errorCode, sb.toString());
    }

    /* access modifiers changed from: protected */
    public ActionArgumentValue createValue(ActionArgument actionArgument, String str) throws ActionException {
        try {
            return new ActionArgumentValue(actionArgument, str);
        } catch (InvalidValueException e) {
            ErrorCode errorCode = ErrorCode.ARGUMENT_VALUE_INVALID;
            StringBuilder sb = new StringBuilder();
            sb.append("Wrong type or invalid value for '");
            sb.append(actionArgument.getName());
            sb.append("': ");
            sb.append(e.getMessage());
            throw new ActionException(errorCode, sb.toString(), (Throwable) e);
        }
    }

    /* access modifiers changed from: protected */
    public Node findActionArgumentNode(List<Node> list, ActionArgument actionArgument) {
        for (Node node : list) {
            if (actionArgument.isNameOrAlias(getUnprefixedNodeName(node))) {
                return node;
            }
        }
        return null;
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
