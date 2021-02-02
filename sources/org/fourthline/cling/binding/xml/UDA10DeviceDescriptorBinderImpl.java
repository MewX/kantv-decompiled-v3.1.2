package org.fourthline.cling.binding.xml;

import java.io.StringReader;
import java.net.URI;
import java.net.URL;
import java.util.logging.Logger;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.fourthline.cling.binding.staging.MutableDevice;
import org.fourthline.cling.binding.staging.MutableIcon;
import org.fourthline.cling.binding.staging.MutableService;
import org.fourthline.cling.binding.xml.Descriptor.Device.ELEMENT;
import org.fourthline.cling.model.Namespace;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.XMLUtil;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.meta.DeviceDetails;
import org.fourthline.cling.model.meta.Icon;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.meta.RemoteDevice;
import org.fourthline.cling.model.meta.RemoteService;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.profile.RemoteClientInfo;
import org.fourthline.cling.model.types.DLNACaps;
import org.fourthline.cling.model.types.DLNADoc;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.model.types.ServiceId;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.model.types.UDN;
import org.seamless.util.Exceptions;
import org.seamless.util.MimeType;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

public class UDA10DeviceDescriptorBinderImpl implements DeviceDescriptorBinder, ErrorHandler {
    private static Logger log = Logger.getLogger(DeviceDescriptorBinder.class.getName());

    public <D extends Device> D describe(D d, String str) throws DescriptorBindingException, ValidationException {
        if (str == null || str.length() == 0) {
            throw new DescriptorBindingException("Null or empty descriptor");
        }
        try {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Populating device from XML descriptor: ");
            sb.append(d);
            logger.fine(sb.toString());
            DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
            newInstance.setNamespaceAware(true);
            DocumentBuilder newDocumentBuilder = newInstance.newDocumentBuilder();
            newDocumentBuilder.setErrorHandler(this);
            return describe(d, newDocumentBuilder.parse(new InputSource(new StringReader(str.trim()))));
        } catch (ValidationException e) {
            throw e;
        } catch (Exception e2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not parse device descriptor: ");
            sb2.append(e2.toString());
            throw new DescriptorBindingException(sb2.toString(), e2);
        }
    }

    public <D extends Device> D describe(D d, Document document) throws DescriptorBindingException, ValidationException {
        try {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Populating device from DOM: ");
            sb.append(d);
            logger.fine(sb.toString());
            MutableDevice mutableDevice = new MutableDevice();
            hydrateRoot(mutableDevice, document.getDocumentElement());
            return buildInstance(d, mutableDevice);
        } catch (ValidationException e) {
            throw e;
        } catch (Exception e2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not parse device DOM: ");
            sb2.append(e2.toString());
            throw new DescriptorBindingException(sb2.toString(), e2);
        }
    }

    public <D extends Device> D buildInstance(D d, MutableDevice mutableDevice) throws ValidationException {
        return mutableDevice.build(d);
    }

    /* access modifiers changed from: protected */
    public void hydrateRoot(MutableDevice mutableDevice, Element element) throws DescriptorBindingException {
        if (element.getNamespaceURI() == null || !element.getNamespaceURI().equals(Descriptor.Device.NAMESPACE_URI)) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Wrong XML namespace declared on root element: ");
            sb.append(element.getNamespaceURI());
            logger.warning(sb.toString());
        }
        if (element.getNodeName().equals(ELEMENT.root.name())) {
            NodeList childNodes = element.getChildNodes();
            Node node = null;
            for (int i = 0; i < childNodes.getLength(); i++) {
                Node item = childNodes.item(i);
                if (item.getNodeType() == 1) {
                    if (ELEMENT.specVersion.equals(item)) {
                        hydrateSpecVersion(mutableDevice, item);
                    } else if (ELEMENT.URLBase.equals(item)) {
                        try {
                            String textContent = XMLUtil.getTextContent(item);
                            if (textContent != null && textContent.length() > 0) {
                                mutableDevice.baseURL = new URL(textContent);
                            }
                        } catch (Exception e) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Invalid URLBase: ");
                            sb2.append(e.getMessage());
                            throw new DescriptorBindingException(sb2.toString());
                        }
                    } else if (!ELEMENT.device.equals(item)) {
                        Logger logger2 = log;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Ignoring unknown element: ");
                        sb3.append(item.getNodeName());
                        logger2.finer(sb3.toString());
                    } else if (node == null) {
                        node = item;
                    } else {
                        throw new DescriptorBindingException("Found multiple <device> elements in <root>");
                    }
                }
            }
            if (node != null) {
                hydrateDevice(mutableDevice, node);
                return;
            }
            throw new DescriptorBindingException("No <device> element in <root>");
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append("Root element name is not <root>: ");
        sb4.append(element.getNodeName());
        throw new DescriptorBindingException(sb4.toString());
    }

    public void hydrateSpecVersion(MutableDevice mutableDevice, Node node) throws DescriptorBindingException {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == 1) {
                if (ELEMENT.major.equals(item)) {
                    String trim = XMLUtil.getTextContent(item).trim();
                    String str = "1";
                    if (!trim.equals(str)) {
                        Logger logger = log;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Unsupported UDA major version, ignoring: ");
                        sb.append(trim);
                        logger.warning(sb.toString());
                        trim = str;
                    }
                    mutableDevice.udaVersion.major = Integer.valueOf(trim).intValue();
                } else if (ELEMENT.minor.equals(item)) {
                    String trim2 = XMLUtil.getTextContent(item).trim();
                    String str2 = "0";
                    if (!trim2.equals(str2)) {
                        Logger logger2 = log;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Unsupported UDA minor version, ignoring: ");
                        sb2.append(trim2);
                        logger2.warning(sb2.toString());
                        trim2 = str2;
                    }
                    mutableDevice.udaVersion.minor = Integer.valueOf(trim2).intValue();
                }
            }
        }
    }

    public void hydrateDevice(MutableDevice mutableDevice, Node node) throws DescriptorBindingException {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == 1) {
                if (ELEMENT.deviceType.equals(item)) {
                    mutableDevice.deviceType = XMLUtil.getTextContent(item);
                } else if (ELEMENT.friendlyName.equals(item)) {
                    mutableDevice.friendlyName = XMLUtil.getTextContent(item);
                } else if (ELEMENT.manufacturer.equals(item)) {
                    mutableDevice.manufacturer = XMLUtil.getTextContent(item);
                } else if (ELEMENT.manufacturerURL.equals(item)) {
                    mutableDevice.manufacturerURI = parseURI(XMLUtil.getTextContent(item));
                } else if (ELEMENT.modelDescription.equals(item)) {
                    mutableDevice.modelDescription = XMLUtil.getTextContent(item);
                } else if (ELEMENT.modelName.equals(item)) {
                    mutableDevice.modelName = XMLUtil.getTextContent(item);
                } else if (ELEMENT.modelNumber.equals(item)) {
                    mutableDevice.modelNumber = XMLUtil.getTextContent(item);
                } else if (ELEMENT.modelURL.equals(item)) {
                    mutableDevice.modelURI = parseURI(XMLUtil.getTextContent(item));
                } else if (ELEMENT.presentationURL.equals(item)) {
                    mutableDevice.presentationURI = parseURI(XMLUtil.getTextContent(item));
                } else if (ELEMENT.UPC.equals(item)) {
                    mutableDevice.upc = XMLUtil.getTextContent(item);
                } else if (ELEMENT.serialNumber.equals(item)) {
                    mutableDevice.serialNumber = XMLUtil.getTextContent(item);
                } else if (ELEMENT.UDN.equals(item)) {
                    mutableDevice.udn = UDN.valueOf(XMLUtil.getTextContent(item));
                } else if (ELEMENT.iconList.equals(item)) {
                    hydrateIconList(mutableDevice, item);
                } else if (ELEMENT.serviceList.equals(item)) {
                    hydrateServiceList(mutableDevice, item);
                } else if (ELEMENT.deviceList.equals(item)) {
                    hydrateDeviceList(mutableDevice, item);
                } else {
                    boolean equals = ELEMENT.X_DLNADOC.equals(item);
                    String str = Descriptor.Device.DLNA_PREFIX;
                    if (equals && str.equals(item.getPrefix())) {
                        String textContent = XMLUtil.getTextContent(item);
                        try {
                            mutableDevice.dlnaDocs.add(DLNADoc.valueOf(textContent));
                        } catch (InvalidValueException unused) {
                            Logger logger = log;
                            StringBuilder sb = new StringBuilder();
                            sb.append("Invalid X_DLNADOC value, ignoring value: ");
                            sb.append(textContent);
                            logger.info(sb.toString());
                        }
                    } else if (ELEMENT.X_DLNACAP.equals(item) && str.equals(item.getPrefix())) {
                        mutableDevice.dlnaCaps = DLNACaps.valueOf(XMLUtil.getTextContent(item));
                    }
                }
            }
        }
    }

    public void hydrateIconList(MutableDevice mutableDevice, Node node) throws DescriptorBindingException {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == 1 && ELEMENT.icon.equals(item)) {
                MutableIcon mutableIcon = new MutableIcon();
                NodeList childNodes2 = item.getChildNodes();
                for (int i2 = 0; i2 < childNodes2.getLength(); i2++) {
                    Node item2 = childNodes2.item(i2);
                    if (item2.getNodeType() == 1) {
                        if (ELEMENT.width.equals(item2)) {
                            mutableIcon.width = Integer.valueOf(XMLUtil.getTextContent(item2)).intValue();
                        } else if (ELEMENT.height.equals(item2)) {
                            mutableIcon.height = Integer.valueOf(XMLUtil.getTextContent(item2)).intValue();
                        } else if (ELEMENT.depth.equals(item2)) {
                            String textContent = XMLUtil.getTextContent(item2);
                            try {
                                mutableIcon.depth = Integer.valueOf(textContent).intValue();
                            } catch (NumberFormatException e) {
                                Logger logger = log;
                                StringBuilder sb = new StringBuilder();
                                sb.append("Invalid icon depth '");
                                sb.append(textContent);
                                sb.append("', using 16 as default: ");
                                sb.append(e);
                                logger.warning(sb.toString());
                                mutableIcon.depth = 16;
                            }
                        } else if (ELEMENT.url.equals(item2)) {
                            mutableIcon.uri = parseURI(XMLUtil.getTextContent(item2));
                        } else if (ELEMENT.mimetype.equals(item2)) {
                            try {
                                mutableIcon.mimeType = XMLUtil.getTextContent(item2);
                                MimeType.valueOf(mutableIcon.mimeType);
                            } catch (IllegalArgumentException unused) {
                                Logger logger2 = log;
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("Ignoring invalid icon mime type: ");
                                sb2.append(mutableIcon.mimeType);
                                logger2.warning(sb2.toString());
                                mutableIcon.mimeType = "";
                            }
                        }
                    }
                }
                mutableDevice.icons.add(mutableIcon);
            }
        }
    }

    public void hydrateServiceList(MutableDevice mutableDevice, Node node) throws DescriptorBindingException {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == 1 && ELEMENT.service.equals(item)) {
                NodeList childNodes2 = item.getChildNodes();
                try {
                    MutableService mutableService = new MutableService();
                    for (int i2 = 0; i2 < childNodes2.getLength(); i2++) {
                        Node item2 = childNodes2.item(i2);
                        if (item2.getNodeType() == 1) {
                            if (ELEMENT.serviceType.equals(item2)) {
                                mutableService.serviceType = ServiceType.valueOf(XMLUtil.getTextContent(item2));
                            } else if (ELEMENT.serviceId.equals(item2)) {
                                mutableService.serviceId = ServiceId.valueOf(XMLUtil.getTextContent(item2));
                            } else if (ELEMENT.SCPDURL.equals(item2)) {
                                mutableService.descriptorURI = parseURI(XMLUtil.getTextContent(item2));
                            } else if (ELEMENT.controlURL.equals(item2)) {
                                mutableService.controlURI = parseURI(XMLUtil.getTextContent(item2));
                            } else if (ELEMENT.eventSubURL.equals(item2)) {
                                mutableService.eventSubscriptionURI = parseURI(XMLUtil.getTextContent(item2));
                            }
                        }
                    }
                    mutableDevice.services.add(mutableService);
                } catch (InvalidValueException e) {
                    Logger logger = log;
                    StringBuilder sb = new StringBuilder();
                    sb.append("UPnP specification violation, skipping invalid service declaration. ");
                    sb.append(e.getMessage());
                    logger.warning(sb.toString());
                }
            }
        }
    }

    public void hydrateDeviceList(MutableDevice mutableDevice, Node node) throws DescriptorBindingException {
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == 1 && ELEMENT.device.equals(item)) {
                MutableDevice mutableDevice2 = new MutableDevice();
                mutableDevice2.parentDevice = mutableDevice;
                mutableDevice.embeddedDevices.add(mutableDevice2);
                hydrateDevice(mutableDevice2, item);
            }
        }
    }

    public String generate(Device device, RemoteClientInfo remoteClientInfo, Namespace namespace) throws DescriptorBindingException {
        try {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Generating XML descriptor from device model: ");
            sb.append(device);
            logger.fine(sb.toString());
            return XMLUtil.documentToString(buildDOM(device, remoteClientInfo, namespace));
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not build DOM: ");
            sb2.append(e.getMessage());
            throw new DescriptorBindingException(sb2.toString(), e);
        }
    }

    public Document buildDOM(Device device, RemoteClientInfo remoteClientInfo, Namespace namespace) throws DescriptorBindingException {
        try {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Generating DOM from device model: ");
            sb.append(device);
            logger.fine(sb.toString());
            DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
            newInstance.setNamespaceAware(true);
            Document newDocument = newInstance.newDocumentBuilder().newDocument();
            generateRoot(namespace, device, newDocument, remoteClientInfo);
            return newDocument;
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not generate device descriptor: ");
            sb2.append(e.getMessage());
            throw new DescriptorBindingException(sb2.toString(), e);
        }
    }

    /* access modifiers changed from: protected */
    public void generateRoot(Namespace namespace, Device device, Document document, RemoteClientInfo remoteClientInfo) {
        Element createElementNS = document.createElementNS(Descriptor.Device.NAMESPACE_URI, ELEMENT.root.toString());
        document.appendChild(createElementNS);
        generateSpecVersion(namespace, device, document, createElementNS);
        generateDevice(namespace, device, document, createElementNS, remoteClientInfo);
    }

    /* access modifiers changed from: protected */
    public void generateSpecVersion(Namespace namespace, Device device, Document document, Element element) {
        Element appendNewElement = XMLUtil.appendNewElement(document, element, (Enum) ELEMENT.specVersion);
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.major, (Object) Integer.valueOf(device.getVersion().getMajor()));
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.minor, (Object) Integer.valueOf(device.getVersion().getMinor()));
    }

    /* access modifiers changed from: protected */
    public void generateDevice(Namespace namespace, Device device, Document document, Element element, RemoteClientInfo remoteClientInfo) {
        DLNADoc[] dlnaDocs;
        Element appendNewElement = XMLUtil.appendNewElement(document, element, (Enum) ELEMENT.device);
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.deviceType, (Object) device.getType());
        DeviceDetails details = device.getDetails(remoteClientInfo);
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.friendlyName, (Object) details.getFriendlyName());
        if (details.getManufacturerDetails() != null) {
            XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.manufacturer, (Object) details.getManufacturerDetails().getManufacturer());
            XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.manufacturerURL, (Object) details.getManufacturerDetails().getManufacturerURI());
        }
        if (details.getModelDetails() != null) {
            XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.modelDescription, (Object) details.getModelDetails().getModelDescription());
            XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.modelName, (Object) details.getModelDetails().getModelName());
            XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.modelNumber, (Object) details.getModelDetails().getModelNumber());
            XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.modelURL, (Object) details.getModelDetails().getModelURI());
        }
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.serialNumber, (Object) details.getSerialNumber());
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.UDN, (Object) device.getIdentity().getUdn());
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.presentationURL, (Object) details.getPresentationURI());
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, (Enum) ELEMENT.UPC, (Object) details.getUpc());
        DLNADoc[] dlnaDocs2 = details.getDlnaDocs();
        String str = Descriptor.Device.DLNA_NAMESPACE_URI;
        String str2 = "dlna:";
        if (dlnaDocs2 != null) {
            for (DLNADoc dLNADoc : details.getDlnaDocs()) {
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append(ELEMENT.X_DLNADOC);
                XMLUtil.appendNewElementIfNotNull(document, appendNewElement, sb.toString(), (Object) dLNADoc, str);
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        sb2.append(ELEMENT.X_DLNACAP);
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, sb2.toString(), (Object) details.getDlnaCaps(), str);
        StringBuilder sb3 = new StringBuilder();
        String str3 = "sec:";
        sb3.append(str3);
        sb3.append(ELEMENT.ProductCap);
        String sb4 = sb3.toString();
        DLNACaps secProductCaps = details.getSecProductCaps();
        String str4 = Descriptor.Device.SEC_NAMESPACE_URI;
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, sb4, (Object) secProductCaps, str4);
        StringBuilder sb5 = new StringBuilder();
        sb5.append(str3);
        sb5.append(ELEMENT.X_ProductCap);
        XMLUtil.appendNewElementIfNotNull(document, appendNewElement, sb5.toString(), (Object) details.getSecProductCaps(), str4);
        generateIconList(namespace, device, document, appendNewElement);
        generateServiceList(namespace, device, document, appendNewElement);
        generateDeviceList(namespace, device, document, appendNewElement, remoteClientInfo);
    }

    /* access modifiers changed from: protected */
    public void generateIconList(Namespace namespace, Device device, Document document, Element element) {
        Icon[] icons;
        if (device.hasIcons()) {
            Element appendNewElement = XMLUtil.appendNewElement(document, element, (Enum) ELEMENT.iconList);
            for (Icon icon : device.getIcons()) {
                Element appendNewElement2 = XMLUtil.appendNewElement(document, appendNewElement, (Enum) ELEMENT.icon);
                XMLUtil.appendNewElementIfNotNull(document, appendNewElement2, (Enum) ELEMENT.mimetype, (Object) icon.getMimeType());
                XMLUtil.appendNewElementIfNotNull(document, appendNewElement2, (Enum) ELEMENT.width, (Object) Integer.valueOf(icon.getWidth()));
                XMLUtil.appendNewElementIfNotNull(document, appendNewElement2, (Enum) ELEMENT.height, (Object) Integer.valueOf(icon.getHeight()));
                XMLUtil.appendNewElementIfNotNull(document, appendNewElement2, (Enum) ELEMENT.depth, (Object) Integer.valueOf(icon.getDepth()));
                if (device instanceof RemoteDevice) {
                    XMLUtil.appendNewElementIfNotNull(document, appendNewElement2, (Enum) ELEMENT.url, (Object) icon.getUri());
                } else if (device instanceof LocalDevice) {
                    XMLUtil.appendNewElementIfNotNull(document, appendNewElement2, (Enum) ELEMENT.url, (Object) namespace.getIconPath(icon));
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void generateServiceList(Namespace namespace, Device device, Document document, Element element) {
        Service[] services;
        if (device.hasServices()) {
            Element appendNewElement = XMLUtil.appendNewElement(document, element, (Enum) ELEMENT.serviceList);
            for (Service service : device.getServices()) {
                Element appendNewElement2 = XMLUtil.appendNewElement(document, appendNewElement, (Enum) ELEMENT.service);
                XMLUtil.appendNewElementIfNotNull(document, appendNewElement2, (Enum) ELEMENT.serviceType, (Object) service.getServiceType());
                XMLUtil.appendNewElementIfNotNull(document, appendNewElement2, (Enum) ELEMENT.serviceId, (Object) service.getServiceId());
                if (service instanceof RemoteService) {
                    RemoteService remoteService = (RemoteService) service;
                    XMLUtil.appendNewElementIfNotNull(document, appendNewElement2, (Enum) ELEMENT.SCPDURL, (Object) remoteService.getDescriptorURI());
                    XMLUtil.appendNewElementIfNotNull(document, appendNewElement2, (Enum) ELEMENT.controlURL, (Object) remoteService.getControlURI());
                    XMLUtil.appendNewElementIfNotNull(document, appendNewElement2, (Enum) ELEMENT.eventSubURL, (Object) remoteService.getEventSubscriptionURI());
                } else if (service instanceof LocalService) {
                    LocalService localService = (LocalService) service;
                    XMLUtil.appendNewElementIfNotNull(document, appendNewElement2, (Enum) ELEMENT.SCPDURL, (Object) namespace.getDescriptorPath((Service) localService));
                    XMLUtil.appendNewElementIfNotNull(document, appendNewElement2, (Enum) ELEMENT.controlURL, (Object) namespace.getControlPath(localService));
                    XMLUtil.appendNewElementIfNotNull(document, appendNewElement2, (Enum) ELEMENT.eventSubURL, (Object) namespace.getEventSubscriptionPath(localService));
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void generateDeviceList(Namespace namespace, Device device, Document document, Element element, RemoteClientInfo remoteClientInfo) {
        if (device.hasEmbeddedDevices()) {
            Element appendNewElement = XMLUtil.appendNewElement(document, element, (Enum) ELEMENT.deviceList);
            for (Device generateDevice : device.getEmbeddedDevices()) {
                generateDevice(namespace, generateDevice, document, appendNewElement, remoteClientInfo);
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

    protected static URI parseURI(String str) {
        if (str.startsWith("www.")) {
            StringBuilder sb = new StringBuilder();
            sb.append("http://");
            sb.append(str);
            str = sb.toString();
        }
        String str2 = " ";
        if (str.contains(str2)) {
            str = str.replaceAll(str2, "%20");
        }
        try {
            return URI.create(str);
        } catch (Throwable th) {
            Logger logger = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Illegal URI, trying with ./ prefix: ");
            sb2.append(Exceptions.unwrap(th));
            logger.fine(sb2.toString());
            try {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("./");
                sb3.append(str);
                return URI.create(sb3.toString());
            } catch (IllegalArgumentException e) {
                Logger logger2 = log;
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Illegal URI '");
                sb4.append(str);
                sb4.append("', ignoring value: ");
                sb4.append(Exceptions.unwrap(e));
                logger2.warning(sb4.toString());
                return null;
            }
        }
    }
}
