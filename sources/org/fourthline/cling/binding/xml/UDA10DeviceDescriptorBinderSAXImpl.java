package org.fourthline.cling.binding.xml;

import java.io.StringReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;
import org.fourthline.cling.binding.staging.MutableDevice;
import org.fourthline.cling.binding.staging.MutableIcon;
import org.fourthline.cling.binding.staging.MutableService;
import org.fourthline.cling.binding.staging.MutableUDAVersion;
import org.fourthline.cling.binding.xml.Descriptor.Device.ELEMENT;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.types.DLNACaps;
import org.fourthline.cling.model.types.DLNADoc;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.model.types.ServiceId;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.model.types.UDN;
import org.seamless.util.MimeType;
import org.seamless.xml.SAXParser;
import org.seamless.xml.SAXParser.Handler;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public class UDA10DeviceDescriptorBinderSAXImpl extends UDA10DeviceDescriptorBinderImpl {
    /* access modifiers changed from: private */
    public static Logger log = Logger.getLogger(DeviceDescriptorBinder.class.getName());

    protected static class DeviceDescriptorHandler<I> extends Handler<I> {
        public void endElement(ELEMENT element) throws SAXException {
        }

        public boolean isLastElement(ELEMENT element) {
            return false;
        }

        public void startElement(ELEMENT element, Attributes attributes) throws SAXException {
        }

        public DeviceDescriptorHandler(I i) {
            super(i);
        }

        public DeviceDescriptorHandler(I i, SAXParser sAXParser) {
            super(i, sAXParser);
        }

        public DeviceDescriptorHandler(I i, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(i, (Handler) deviceDescriptorHandler);
        }

        public DeviceDescriptorHandler(I i, SAXParser sAXParser, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(i, sAXParser, deviceDescriptorHandler);
        }

        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            super.startElement(str, str2, str3, attributes);
            ELEMENT valueOrNullOf = ELEMENT.valueOrNullOf(str2);
            if (valueOrNullOf != null) {
                startElement(valueOrNullOf, attributes);
            }
        }

        public void endElement(String str, String str2, String str3) throws SAXException {
            super.endElement(str, str2, str3);
            ELEMENT valueOrNullOf = ELEMENT.valueOrNullOf(str2);
            if (valueOrNullOf != null) {
                endElement(valueOrNullOf);
            }
        }

        /* access modifiers changed from: protected */
        public boolean isLastElement(String str, String str2, String str3) {
            ELEMENT valueOrNullOf = ELEMENT.valueOrNullOf(str2);
            return valueOrNullOf != null && isLastElement(valueOrNullOf);
        }
    }

    protected static class DeviceHandler extends DeviceDescriptorHandler<MutableDevice> {
        public static final ELEMENT EL = ELEMENT.device;

        public DeviceHandler(MutableDevice mutableDevice, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(mutableDevice, deviceDescriptorHandler);
        }

        public void startElement(ELEMENT element, Attributes attributes) throws SAXException {
            if (element.equals(IconListHandler.EL)) {
                ArrayList arrayList = new ArrayList();
                ((MutableDevice) getInstance()).icons = arrayList;
                new IconListHandler(arrayList, this);
            }
            if (element.equals(ServiceListHandler.EL)) {
                ArrayList arrayList2 = new ArrayList();
                ((MutableDevice) getInstance()).services = arrayList2;
                new ServiceListHandler(arrayList2, this);
            }
            if (element.equals(DeviceListHandler.EL)) {
                ArrayList arrayList3 = new ArrayList();
                ((MutableDevice) getInstance()).embeddedDevices = arrayList3;
                new DeviceListHandler(arrayList3, this);
            }
        }

        public void endElement(ELEMENT element) throws SAXException {
            switch (element) {
                case deviceType:
                    ((MutableDevice) getInstance()).deviceType = getCharacters();
                    return;
                case friendlyName:
                    ((MutableDevice) getInstance()).friendlyName = getCharacters();
                    return;
                case manufacturer:
                    ((MutableDevice) getInstance()).manufacturer = getCharacters();
                    return;
                case manufacturerURL:
                    ((MutableDevice) getInstance()).manufacturerURI = UDA10DeviceDescriptorBinderImpl.parseURI(getCharacters());
                    return;
                case modelDescription:
                    ((MutableDevice) getInstance()).modelDescription = getCharacters();
                    return;
                case modelName:
                    ((MutableDevice) getInstance()).modelName = getCharacters();
                    return;
                case modelNumber:
                    ((MutableDevice) getInstance()).modelNumber = getCharacters();
                    return;
                case modelURL:
                    ((MutableDevice) getInstance()).modelURI = UDA10DeviceDescriptorBinderImpl.parseURI(getCharacters());
                    return;
                case presentationURL:
                    ((MutableDevice) getInstance()).presentationURI = UDA10DeviceDescriptorBinderImpl.parseURI(getCharacters());
                    return;
                case UPC:
                    ((MutableDevice) getInstance()).upc = getCharacters();
                    return;
                case serialNumber:
                    ((MutableDevice) getInstance()).serialNumber = getCharacters();
                    return;
                case UDN:
                    ((MutableDevice) getInstance()).udn = UDN.valueOf(getCharacters());
                    return;
                case X_DLNADOC:
                    String characters = getCharacters();
                    try {
                        ((MutableDevice) getInstance()).dlnaDocs.add(DLNADoc.valueOf(characters));
                        return;
                    } catch (InvalidValueException unused) {
                        Logger access$000 = UDA10DeviceDescriptorBinderSAXImpl.log;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Invalid X_DLNADOC value, ignoring value: ");
                        sb.append(characters);
                        access$000.info(sb.toString());
                        return;
                    }
                case X_DLNACAP:
                    ((MutableDevice) getInstance()).dlnaCaps = DLNACaps.valueOf(getCharacters());
                    return;
                default:
                    return;
            }
        }

        public boolean isLastElement(ELEMENT element) {
            return element.equals(EL);
        }
    }

    protected static class DeviceListHandler extends DeviceDescriptorHandler<List<MutableDevice>> {
        public static final ELEMENT EL = ELEMENT.deviceList;

        public DeviceListHandler(List<MutableDevice> list, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(list, deviceDescriptorHandler);
        }

        public void startElement(ELEMENT element, Attributes attributes) throws SAXException {
            if (element.equals(DeviceHandler.EL)) {
                MutableDevice mutableDevice = new MutableDevice();
                ((List) getInstance()).add(mutableDevice);
                new DeviceHandler(mutableDevice, this);
            }
        }

        public boolean isLastElement(ELEMENT element) {
            return element.equals(EL);
        }
    }

    protected static class IconHandler extends DeviceDescriptorHandler<MutableIcon> {
        public static final ELEMENT EL = ELEMENT.icon;

        public IconHandler(MutableIcon mutableIcon, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(mutableIcon, deviceDescriptorHandler);
        }

        public void endElement(ELEMENT element) throws SAXException {
            switch (element) {
                case width:
                    ((MutableIcon) getInstance()).width = Integer.valueOf(getCharacters()).intValue();
                    return;
                case height:
                    ((MutableIcon) getInstance()).height = Integer.valueOf(getCharacters()).intValue();
                    return;
                case depth:
                    try {
                        ((MutableIcon) getInstance()).depth = Integer.valueOf(getCharacters()).intValue();
                        return;
                    } catch (NumberFormatException e) {
                        Logger access$000 = UDA10DeviceDescriptorBinderSAXImpl.log;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Invalid icon depth '");
                        sb.append(getCharacters());
                        sb.append("', using 16 as default: ");
                        sb.append(e);
                        access$000.warning(sb.toString());
                        ((MutableIcon) getInstance()).depth = 16;
                        return;
                    }
                case url:
                    ((MutableIcon) getInstance()).uri = UDA10DeviceDescriptorBinderImpl.parseURI(getCharacters());
                    return;
                case mimetype:
                    try {
                        ((MutableIcon) getInstance()).mimeType = getCharacters();
                        MimeType.valueOf(((MutableIcon) getInstance()).mimeType);
                        return;
                    } catch (IllegalArgumentException unused) {
                        Logger access$0002 = UDA10DeviceDescriptorBinderSAXImpl.log;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Ignoring invalid icon mime type: ");
                        sb2.append(((MutableIcon) getInstance()).mimeType);
                        access$0002.warning(sb2.toString());
                        ((MutableIcon) getInstance()).mimeType = "";
                        return;
                    }
                default:
                    return;
            }
        }

        public boolean isLastElement(ELEMENT element) {
            return element.equals(EL);
        }
    }

    protected static class IconListHandler extends DeviceDescriptorHandler<List<MutableIcon>> {
        public static final ELEMENT EL = ELEMENT.iconList;

        public IconListHandler(List<MutableIcon> list, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(list, deviceDescriptorHandler);
        }

        public void startElement(ELEMENT element, Attributes attributes) throws SAXException {
            if (element.equals(IconHandler.EL)) {
                MutableIcon mutableIcon = new MutableIcon();
                ((List) getInstance()).add(mutableIcon);
                new IconHandler(mutableIcon, this);
            }
        }

        public boolean isLastElement(ELEMENT element) {
            return element.equals(EL);
        }
    }

    protected static class RootHandler extends DeviceDescriptorHandler<MutableDevice> {
        public RootHandler(MutableDevice mutableDevice, SAXParser sAXParser) {
            super(mutableDevice, sAXParser);
        }

        public void startElement(ELEMENT element, Attributes attributes) throws SAXException {
            if (element.equals(SpecVersionHandler.EL)) {
                MutableUDAVersion mutableUDAVersion = new MutableUDAVersion();
                ((MutableDevice) getInstance()).udaVersion = mutableUDAVersion;
                new SpecVersionHandler(mutableUDAVersion, this);
            }
            if (element.equals(DeviceHandler.EL)) {
                new DeviceHandler((MutableDevice) getInstance(), this);
            }
        }

        public void endElement(ELEMENT element) throws SAXException {
            if (AnonymousClass1.$SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Device$ELEMENT[element.ordinal()] == 1) {
                try {
                    String characters = getCharacters();
                    if (characters != null && characters.length() > 0) {
                        ((MutableDevice) getInstance()).baseURL = new URL(characters);
                    }
                } catch (Exception e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Invalid URLBase: ");
                    sb.append(e.toString());
                    throw new SAXException(sb.toString());
                }
            }
        }
    }

    protected static class ServiceHandler extends DeviceDescriptorHandler<MutableService> {
        public static final ELEMENT EL = ELEMENT.service;

        public ServiceHandler(MutableService mutableService, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(mutableService, deviceDescriptorHandler);
        }

        public void endElement(ELEMENT element) throws SAXException {
            try {
                switch (element) {
                    case serviceType:
                        ((MutableService) getInstance()).serviceType = ServiceType.valueOf(getCharacters());
                        return;
                    case serviceId:
                        ((MutableService) getInstance()).serviceId = ServiceId.valueOf(getCharacters());
                        return;
                    case SCPDURL:
                        ((MutableService) getInstance()).descriptorURI = UDA10DeviceDescriptorBinderImpl.parseURI(getCharacters());
                        return;
                    case controlURL:
                        ((MutableService) getInstance()).controlURI = UDA10DeviceDescriptorBinderImpl.parseURI(getCharacters());
                        return;
                    case eventSubURL:
                        ((MutableService) getInstance()).eventSubscriptionURI = UDA10DeviceDescriptorBinderImpl.parseURI(getCharacters());
                        return;
                    default:
                        return;
                }
            } catch (InvalidValueException e) {
                Logger access$000 = UDA10DeviceDescriptorBinderSAXImpl.log;
                StringBuilder sb = new StringBuilder();
                sb.append("UPnP specification violation, skipping invalid service declaration. ");
                sb.append(e.getMessage());
                access$000.warning(sb.toString());
            }
        }

        public boolean isLastElement(ELEMENT element) {
            return element.equals(EL);
        }
    }

    protected static class ServiceListHandler extends DeviceDescriptorHandler<List<MutableService>> {
        public static final ELEMENT EL = ELEMENT.serviceList;

        public ServiceListHandler(List<MutableService> list, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(list, deviceDescriptorHandler);
        }

        public void startElement(ELEMENT element, Attributes attributes) throws SAXException {
            if (element.equals(ServiceHandler.EL)) {
                MutableService mutableService = new MutableService();
                ((List) getInstance()).add(mutableService);
                new ServiceHandler(mutableService, this);
            }
        }

        public boolean isLastElement(ELEMENT element) {
            boolean equals = element.equals(EL);
            if (equals) {
                Iterator it = ((List) getInstance()).iterator();
                while (it.hasNext()) {
                    MutableService mutableService = (MutableService) it.next();
                    if (mutableService.serviceType == null || mutableService.serviceId == null) {
                        it.remove();
                    }
                }
            }
            return equals;
        }
    }

    protected static class SpecVersionHandler extends DeviceDescriptorHandler<MutableUDAVersion> {
        public static final ELEMENT EL = ELEMENT.specVersion;

        public SpecVersionHandler(MutableUDAVersion mutableUDAVersion, DeviceDescriptorHandler deviceDescriptorHandler) {
            super(mutableUDAVersion, deviceDescriptorHandler);
        }

        public void endElement(ELEMENT element) throws SAXException {
            int i = AnonymousClass1.$SwitchMap$org$fourthline$cling$binding$xml$Descriptor$Device$ELEMENT[element.ordinal()];
            if (i == 2) {
                String trim = getCharacters().trim();
                String str = "1";
                if (!trim.equals(str)) {
                    Logger access$000 = UDA10DeviceDescriptorBinderSAXImpl.log;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Unsupported UDA major version, ignoring: ");
                    sb.append(trim);
                    access$000.warning(sb.toString());
                    trim = str;
                }
                ((MutableUDAVersion) getInstance()).major = Integer.valueOf(trim).intValue();
            } else if (i == 3) {
                String trim2 = getCharacters().trim();
                String str2 = "0";
                if (!trim2.equals(str2)) {
                    Logger access$0002 = UDA10DeviceDescriptorBinderSAXImpl.log;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Unsupported UDA minor version, ignoring: ");
                    sb2.append(trim2);
                    access$0002.warning(sb2.toString());
                    trim2 = str2;
                }
                ((MutableUDAVersion) getInstance()).minor = Integer.valueOf(trim2).intValue();
            }
        }

        public boolean isLastElement(ELEMENT element) {
            return element.equals(EL);
        }
    }

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
            SAXParser sAXParser = new SAXParser();
            MutableDevice mutableDevice = new MutableDevice();
            new RootHandler(mutableDevice, sAXParser);
            sAXParser.parse(new InputSource(new StringReader(str.trim())));
            return mutableDevice.build(d);
        } catch (ValidationException e) {
            throw e;
        } catch (Exception e2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not parse device descriptor: ");
            sb2.append(e2.toString());
            throw new DescriptorBindingException(sb2.toString(), e2);
        }
    }
}
