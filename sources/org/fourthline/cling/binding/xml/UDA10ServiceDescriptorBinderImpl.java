package org.fourthline.cling.binding.xml;

import java.io.StringReader;
import java.util.ArrayList;
import java.util.Locale;
import java.util.logging.Logger;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.fourthline.cling.binding.staging.MutableAction;
import org.fourthline.cling.binding.staging.MutableActionArgument;
import org.fourthline.cling.binding.staging.MutableAllowedValueRange;
import org.fourthline.cling.binding.staging.MutableService;
import org.fourthline.cling.binding.staging.MutableStateVariable;
import org.fourthline.cling.binding.xml.Descriptor.Service.ATTRIBUTE;
import org.fourthline.cling.binding.xml.Descriptor.Service.ELEMENT;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.XMLUtil;
import org.fourthline.cling.model.meta.Action;
import org.fourthline.cling.model.meta.ActionArgument;
import org.fourthline.cling.model.meta.ActionArgument.Direction;
import org.fourthline.cling.model.meta.QueryStateVariableAction;
import org.fourthline.cling.model.meta.RemoteService;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.meta.StateVariable;
import org.fourthline.cling.model.meta.StateVariableEventDetails;
import org.fourthline.cling.model.types.CustomDatatype;
import org.fourthline.cling.model.types.Datatype.Builtin;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

public class UDA10ServiceDescriptorBinderImpl implements ServiceDescriptorBinder, ErrorHandler {
    private static Logger log = Logger.getLogger(ServiceDescriptorBinder.class.getName());

    public <S extends Service> S describe(S s, String str) throws DescriptorBindingException, ValidationException {
        if (str == null || str.length() == 0) {
            throw new DescriptorBindingException("Null or empty descriptor");
        }
        try {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Populating service from XML descriptor: ");
            sb.append(s);
            logger.fine(sb.toString());
            DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
            newInstance.setNamespaceAware(true);
            DocumentBuilder newDocumentBuilder = newInstance.newDocumentBuilder();
            newDocumentBuilder.setErrorHandler(this);
            return describe(s, newDocumentBuilder.parse(new InputSource(new StringReader(str.trim()))));
        } catch (ValidationException e) {
            throw e;
        } catch (Exception e2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not parse service descriptor: ");
            sb2.append(e2.toString());
            throw new DescriptorBindingException(sb2.toString(), e2);
        }
    }

    public <S extends Service> S describe(S s, Document document) throws DescriptorBindingException, ValidationException {
        try {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Populating service from DOM: ");
            sb.append(s);
            logger.fine(sb.toString());
            MutableService mutableService = new MutableService();
            hydrateBasic(mutableService, s);
            hydrateRoot(mutableService, document.getDocumentElement());
            return buildInstance(s, mutableService);
        } catch (ValidationException e) {
            throw e;
        } catch (Exception e2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not parse service DOM: ");
            sb2.append(e2.toString());
            throw new DescriptorBindingException(sb2.toString(), e2);
        }
    }

    /* access modifiers changed from: protected */
    public <S extends Service> S buildInstance(S s, MutableService mutableService) throws ValidationException {
        return mutableService.build(s.getDevice());
    }

    /* access modifiers changed from: protected */
    public void hydrateBasic(MutableService mutableService, Service service) {
        mutableService.serviceId = service.getServiceId();
        mutableService.serviceType = service.getServiceType();
        if (service instanceof RemoteService) {
            RemoteService remoteService = (RemoteService) service;
            mutableService.controlURI = remoteService.getControlURI();
            mutableService.eventSubscriptionURI = remoteService.getEventSubscriptionURI();
            mutableService.descriptorURI = remoteService.getDescriptorURI();
        }
    }

    /* access modifiers changed from: protected */
    public void hydrateRoot(MutableService mutableService, Element element) throws DescriptorBindingException {
        if (ELEMENT.scpd.equals(element)) {
            NodeList childNodes = element.getChildNodes();
            for (int i = 0; i < childNodes.getLength(); i++) {
                Node item = childNodes.item(i);
                if (item.getNodeType() == 1 && !ELEMENT.specVersion.equals(item)) {
                    if (ELEMENT.actionList.equals(item)) {
                        hydrateActionList(mutableService, item);
                    } else if (ELEMENT.serviceStateTable.equals(item)) {
                        hydrateServiceStateTableList(mutableService, item);
                    } else {
                        Logger logger = log;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Ignoring unknown element: ");
                        sb.append(item.getNodeName());
                        logger.finer(sb.toString());
                    }
                }
            }
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Root element name is not <scpd>: ");
        sb2.append(element.getNodeName());
        throw new DescriptorBindingException(sb2.toString());
    }

    public void hydrateActionList(MutableService mutableService, Node node) throws DescriptorBindingException {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == 1 && ELEMENT.action.equals(item)) {
                MutableAction mutableAction = new MutableAction();
                hydrateAction(mutableAction, item);
                mutableService.actions.add(mutableAction);
            }
        }
    }

    public void hydrateAction(MutableAction mutableAction, Node node) {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == 1) {
                if (ELEMENT.name.equals(item)) {
                    mutableAction.name = XMLUtil.getTextContent(item);
                } else if (ELEMENT.argumentList.equals(item)) {
                    NodeList childNodes2 = item.getChildNodes();
                    for (int i2 = 0; i2 < childNodes2.getLength(); i2++) {
                        Node item2 = childNodes2.item(i2);
                        if (item2.getNodeType() == 1) {
                            MutableActionArgument mutableActionArgument = new MutableActionArgument();
                            hydrateActionArgument(mutableActionArgument, item2);
                            mutableAction.arguments.add(mutableActionArgument);
                        }
                    }
                }
            }
        }
    }

    public void hydrateActionArgument(MutableActionArgument mutableActionArgument, Node node) {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == 1) {
                if (ELEMENT.name.equals(item)) {
                    mutableActionArgument.name = XMLUtil.getTextContent(item);
                } else if (ELEMENT.direction.equals(item)) {
                    String textContent = XMLUtil.getTextContent(item);
                    try {
                        mutableActionArgument.direction = Direction.valueOf(textContent.toUpperCase(Locale.ROOT));
                    } catch (IllegalArgumentException unused) {
                        Logger logger = log;
                        StringBuilder sb = new StringBuilder();
                        sb.append("UPnP specification violation: Invalid action argument direction, assuming 'IN': ");
                        sb.append(textContent);
                        logger.warning(sb.toString());
                        mutableActionArgument.direction = Direction.IN;
                    }
                } else if (ELEMENT.relatedStateVariable.equals(item)) {
                    mutableActionArgument.relatedStateVariable = XMLUtil.getTextContent(item);
                } else if (ELEMENT.retval.equals(item)) {
                    mutableActionArgument.retval = true;
                }
            }
        }
    }

    public void hydrateServiceStateTableList(MutableService mutableService, Node node) {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == 1 && ELEMENT.stateVariable.equals(item)) {
                MutableStateVariable mutableStateVariable = new MutableStateVariable();
                hydrateStateVariable(mutableStateVariable, (Element) item);
                mutableService.stateVariables.add(mutableStateVariable);
            }
        }
    }

    public void hydrateStateVariable(MutableStateVariable mutableStateVariable, Element element) {
        mutableStateVariable.eventDetails = new StateVariableEventDetails(element.getAttribute("sendEvents") != null && element.getAttribute(ATTRIBUTE.sendEvents.toString()).toUpperCase(Locale.ROOT).equals("YES"));
        NodeList childNodes = element.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == 1) {
                if (ELEMENT.name.equals(item)) {
                    mutableStateVariable.name = XMLUtil.getTextContent(item);
                } else if (ELEMENT.dataType.equals(item)) {
                    String textContent = XMLUtil.getTextContent(item);
                    Builtin byDescriptorName = Builtin.getByDescriptorName(textContent);
                    mutableStateVariable.dataType = byDescriptorName != null ? byDescriptorName.getDatatype() : new CustomDatatype(textContent);
                } else if (ELEMENT.defaultValue.equals(item)) {
                    mutableStateVariable.defaultValue = XMLUtil.getTextContent(item);
                } else if (ELEMENT.allowedValueList.equals(item)) {
                    ArrayList arrayList = new ArrayList();
                    NodeList childNodes2 = item.getChildNodes();
                    for (int i2 = 0; i2 < childNodes2.getLength(); i2++) {
                        Node item2 = childNodes2.item(i2);
                        if (item2.getNodeType() == 1 && ELEMENT.allowedValue.equals(item2)) {
                            arrayList.add(XMLUtil.getTextContent(item2));
                        }
                    }
                    mutableStateVariable.allowedValues = arrayList;
                } else if (ELEMENT.allowedValueRange.equals(item)) {
                    MutableAllowedValueRange mutableAllowedValueRange = new MutableAllowedValueRange();
                    NodeList childNodes3 = item.getChildNodes();
                    for (int i3 = 0; i3 < childNodes3.getLength(); i3++) {
                        Node item3 = childNodes3.item(i3);
                        if (item3.getNodeType() == 1) {
                            if (ELEMENT.minimum.equals(item3)) {
                                try {
                                    mutableAllowedValueRange.minimum = Long.valueOf(XMLUtil.getTextContent(item3));
                                } catch (Exception unused) {
                                }
                            } else if (ELEMENT.maximum.equals(item3)) {
                                mutableAllowedValueRange.maximum = Long.valueOf(XMLUtil.getTextContent(item3));
                            } else if (ELEMENT.step.equals(item3)) {
                                mutableAllowedValueRange.step = Long.valueOf(XMLUtil.getTextContent(item3));
                            }
                        }
                    }
                    mutableStateVariable.allowedValueRange = mutableAllowedValueRange;
                }
            }
        }
    }

    public String generate(Service service) throws DescriptorBindingException {
        try {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Generating XML descriptor from service model: ");
            sb.append(service);
            logger.fine(sb.toString());
            return XMLUtil.documentToString(buildDOM(service));
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not build DOM: ");
            sb2.append(e.getMessage());
            throw new DescriptorBindingException(sb2.toString(), e);
        }
    }

    public Document buildDOM(Service service) throws DescriptorBindingException {
        try {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Generating XML descriptor from service model: ");
            sb.append(service);
            logger.fine(sb.toString());
            DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
            newInstance.setNamespaceAware(true);
            Document newDocument = newInstance.newDocumentBuilder().newDocument();
            generateScpd(service, newDocument);
            return newDocument;
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not generate service descriptor: ");
            sb2.append(e.getMessage());
            throw new DescriptorBindingException(sb2.toString(), e);
        }
    }

    private void generateScpd(Service service, Document document) {
        Element createElementNS = document.createElementNS(Descriptor.Service.NAMESPACE_URI, ELEMENT.scpd.toString());
        document.appendChild(createElementNS);
        generateSpecVersion(service, document, createElementNS);
        if (service.hasActions()) {
            generateActionList(service, document, createElementNS);
        }
        generateServiceStateTable(service, document, createElementNS);
    }

    private void generateSpecVersion(Service service, Document document, Element element) {
        Element appendNewElement = XMLUtil.appendNewElement(document, element, (Enum) ELEMENT.specVersion);
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.major, (Object) Integer.valueOf(service.getDevice().getVersion().getMajor()));
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.minor, (Object) Integer.valueOf(service.getDevice().getVersion().getMinor()));
    }

    private void generateActionList(Service service, Document document, Element element) {
        Action[] actions;
        Element appendNewElement = XMLUtil.appendNewElement(document, element, (Enum) ELEMENT.actionList);
        for (Action action : service.getActions()) {
            if (!action.getName().equals(QueryStateVariableAction.ACTION_NAME)) {
                generateAction(action, document, appendNewElement);
            }
        }
    }

    private void generateAction(Action action, Document document, Element element) {
        Element appendNewElement = XMLUtil.appendNewElement(document, element, (Enum) ELEMENT.action);
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.name, (Object) action.getName());
        if (action.hasArguments()) {
            Element appendNewElement2 = XMLUtil.appendNewElement(document, appendNewElement, (Enum) ELEMENT.argumentList);
            for (ActionArgument generateActionArgument : action.getArguments()) {
                generateActionArgument(generateActionArgument, document, appendNewElement2);
            }
        }
    }

    private void generateActionArgument(ActionArgument actionArgument, Document document, Element element) {
        Element appendNewElement = XMLUtil.appendNewElement(document, element, (Enum) ELEMENT.argument);
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.name, (Object) actionArgument.getName());
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.direction, (Object) actionArgument.getDirection().toString().toLowerCase(Locale.ROOT));
        if (actionArgument.isReturnValue()) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("UPnP specification violation: Not producing <retval> element to be compatible with WMP12: ");
            sb.append(actionArgument);
            logger.warning(sb.toString());
        }
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.relatedStateVariable, (Object) actionArgument.getRelatedStateVariableName());
    }

    private void generateServiceStateTable(Service service, Document document, Element element) {
        Element appendNewElement = XMLUtil.appendNewElement(document, element, (Enum) ELEMENT.serviceStateTable);
        for (StateVariable generateStateVariable : service.getStateVariables()) {
            generateStateVariable(generateStateVariable, document, appendNewElement);
        }
    }

    private void generateStateVariable(StateVariable stateVariable, Document document, Element element) {
        Element appendNewElement = XMLUtil.appendNewElement(document, element, (Enum) ELEMENT.stateVariable);
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.name, (Object) stateVariable.getName());
        if (stateVariable.getTypeDetails().getDatatype() instanceof CustomDatatype) {
            XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.dataType, (Object) ((CustomDatatype) stateVariable.getTypeDetails().getDatatype()).getName());
        } else {
            XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.dataType, (Object) stateVariable.getTypeDetails().getDatatype().getBuiltin().getDescriptorName());
        }
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.defaultValue, (Object) stateVariable.getTypeDetails().getDefaultValue());
        if (stateVariable.getEventDetails().isSendEvents()) {
            appendNewElement.setAttribute(ATTRIBUTE.sendEvents.toString(), "yes");
        } else {
            appendNewElement.setAttribute(ATTRIBUTE.sendEvents.toString(), "no");
        }
        if (stateVariable.getTypeDetails().getAllowedValues() != null) {
            Element appendNewElement2 = XMLUtil.appendNewElement(document, appendNewElement, (Enum) ELEMENT.allowedValueList);
            for (String appendNewElementIfNotNull : stateVariable.getTypeDetails().getAllowedValues()) {
                XMLUtil.appendNewElementIfNotNull(document, appendNewElement2, (Enum) ELEMENT.allowedValue, (Object) appendNewElementIfNotNull);
            }
        }
        if (stateVariable.getTypeDetails().getAllowedValueRange() != null) {
            Element appendNewElement3 = XMLUtil.appendNewElement(document, appendNewElement, (Enum) ELEMENT.allowedValueRange);
            XMLUtil.appendNewElementIfNotNull(document, appendNewElement3, (Enum) ELEMENT.minimum, (Object) Long.valueOf(stateVariable.getTypeDetails().getAllowedValueRange().getMinimum()));
            XMLUtil.appendNewElementIfNotNull(document, appendNewElement3, (Enum) ELEMENT.maximum, (Object) Long.valueOf(stateVariable.getTypeDetails().getAllowedValueRange().getMaximum()));
            if (stateVariable.getTypeDetails().getAllowedValueRange().getStep() >= 1) {
                XMLUtil.appendNewElementIfNotNull(document, appendNewElement3, (Enum) ELEMENT.step, (Object) Long.valueOf(stateVariable.getTypeDetails().getAllowedValueRange().getStep()));
            }
        }
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
