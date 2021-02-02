package org.fourthline.cling.protocol.sync;

import java.net.URI;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.binding.xml.DescriptorBindingException;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpRequest;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.UpnpResponse.Status;
import org.fourthline.cling.model.message.header.ContentTypeHeader;
import org.fourthline.cling.model.message.header.ServerHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.model.meta.Icon;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.model.resource.DeviceDescriptorResource;
import org.fourthline.cling.model.resource.IconResource;
import org.fourthline.cling.model.resource.Resource;
import org.fourthline.cling.model.resource.ServiceDescriptorResource;
import org.fourthline.cling.protocol.ReceivingSync;
import org.fourthline.cling.transport.RouterException;
import org.seamless.util.Exceptions;

public class ReceivingRetrieval extends ReceivingSync<StreamRequestMessage, StreamResponseMessage> {
    private static final Logger log = Logger.getLogger(ReceivingRetrieval.class.getName());

    /* access modifiers changed from: protected */
    public Resource onResourceNotFound(URI uri) {
        return null;
    }

    public ReceivingRetrieval(UpnpService upnpService, StreamRequestMessage streamRequestMessage) {
        super(upnpService, streamRequestMessage);
    }

    /* access modifiers changed from: protected */
    public StreamResponseMessage executeSync() throws RouterException {
        if (!((StreamRequestMessage) getInputMessage()).hasHostHeader()) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Ignoring message, missing HOST header: ");
            sb.append(getInputMessage());
            logger.fine(sb.toString());
            return new StreamResponseMessage(new UpnpResponse(Status.PRECONDITION_FAILED));
        }
        URI uri = ((UpnpRequest) ((StreamRequestMessage) getInputMessage()).getOperation()).getURI();
        Resource resource = getUpnpService().getRegistry().getResource(uri);
        if (resource == null) {
            resource = onResourceNotFound(uri);
            if (resource == null) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("No local resource found: ");
                sb2.append(getInputMessage());
                logger2.fine(sb2.toString());
                return null;
            }
        }
        return createResponse(uri, resource);
    }

    /* access modifiers changed from: protected */
    public StreamResponseMessage createResponse(URI uri, Resource resource) {
        StreamResponseMessage streamResponseMessage;
        try {
            if (DeviceDescriptorResource.class.isAssignableFrom(resource.getClass())) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Found local device matching relative request URI: ");
                sb.append(uri);
                logger.fine(sb.toString());
                streamResponseMessage = new StreamResponseMessage(getUpnpService().getConfiguration().getDeviceDescriptorBinderUDA10().generate((LocalDevice) resource.getModel(), getRemoteClientInfo(), getUpnpService().getConfiguration().getNamespace()), new ContentTypeHeader(ContentTypeHeader.DEFAULT_CONTENT_TYPE));
            } else if (ServiceDescriptorResource.class.isAssignableFrom(resource.getClass())) {
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Found local service matching relative request URI: ");
                sb2.append(uri);
                logger2.fine(sb2.toString());
                streamResponseMessage = new StreamResponseMessage(getUpnpService().getConfiguration().getServiceDescriptorBinderUDA10().generate((LocalService) resource.getModel()), new ContentTypeHeader(ContentTypeHeader.DEFAULT_CONTENT_TYPE));
            } else if (IconResource.class.isAssignableFrom(resource.getClass())) {
                Logger logger3 = log;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Found local icon matching relative request URI: ");
                sb3.append(uri);
                logger3.fine(sb3.toString());
                Icon icon = (Icon) resource.getModel();
                streamResponseMessage = new StreamResponseMessage(icon.getData(), icon.getMimeType());
            } else {
                Logger logger4 = log;
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Ignoring GET for found local resource: ");
                sb4.append(resource);
                logger4.fine(sb4.toString());
                return null;
            }
        } catch (DescriptorBindingException e) {
            Logger logger5 = log;
            StringBuilder sb5 = new StringBuilder();
            sb5.append("Error generating requested device/service descriptor: ");
            sb5.append(e.toString());
            logger5.warning(sb5.toString());
            log.log(Level.WARNING, "Exception root cause: ", Exceptions.unwrap(e));
            streamResponseMessage = new StreamResponseMessage(Status.INTERNAL_SERVER_ERROR);
        }
        streamResponseMessage.getHeaders().add(Type.SERVER, (UpnpHeader) new ServerHeader());
        return streamResponseMessage;
    }
}
