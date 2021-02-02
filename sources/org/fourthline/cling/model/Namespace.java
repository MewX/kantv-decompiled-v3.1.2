package org.fourthline.cling.model;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.logging.Logger;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.meta.Icon;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.resource.Resource;
import org.seamless.util.URIUtil;

public class Namespace {
    public static final String CALLBACK_FILE = "/cb";
    public static final String CONTROL = "/action";
    public static final String DESCRIPTOR_FILE = "/desc";
    public static final String DEVICE = "/dev";
    public static final String EVENTS = "/event";
    public static final String SERVICE = "/svc";
    private static final Logger log = Logger.getLogger(Namespace.class.getName());
    protected final URI basePath;
    protected final String decodedPath;

    public Namespace() {
        this("");
    }

    public Namespace(String str) {
        this(URI.create(str));
    }

    public Namespace(URI uri) {
        this.basePath = uri;
        this.decodedPath = uri.getPath();
    }

    public URI getBasePath() {
        return this.basePath;
    }

    public URI getPath(Device device) {
        return appendPathToBaseURI(getDevicePath(device));
    }

    public URI getPath(Service service) {
        return appendPathToBaseURI(getServicePath(service));
    }

    public URI getDescriptorPath(Device device) {
        StringBuilder sb = new StringBuilder();
        sb.append(getDevicePath(device.getRoot()));
        sb.append(DESCRIPTOR_FILE);
        return appendPathToBaseURI(sb.toString());
    }

    public String getDescriptorPathString(Device device) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.decodedPath);
        sb.append(getDevicePath(device.getRoot()));
        sb.append(DESCRIPTOR_FILE);
        return sb.toString();
    }

    public URI getDescriptorPath(Service service) {
        StringBuilder sb = new StringBuilder();
        sb.append(getServicePath(service));
        sb.append(DESCRIPTOR_FILE);
        return appendPathToBaseURI(sb.toString());
    }

    public URI getControlPath(Service service) {
        StringBuilder sb = new StringBuilder();
        sb.append(getServicePath(service));
        sb.append(CONTROL);
        return appendPathToBaseURI(sb.toString());
    }

    public URI getIconPath(Icon icon) {
        StringBuilder sb = new StringBuilder();
        sb.append(getDevicePath(icon.getDevice()));
        sb.append("/");
        sb.append(icon.getUri().toString());
        return appendPathToBaseURI(sb.toString());
    }

    public URI getEventSubscriptionPath(Service service) {
        StringBuilder sb = new StringBuilder();
        sb.append(getServicePath(service));
        sb.append(EVENTS);
        return appendPathToBaseURI(sb.toString());
    }

    public URI getEventCallbackPath(Service service) {
        StringBuilder sb = new StringBuilder();
        sb.append(getServicePath(service));
        sb.append(EVENTS);
        sb.append(CALLBACK_FILE);
        return appendPathToBaseURI(sb.toString());
    }

    public String getEventCallbackPathString(Service service) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.decodedPath);
        sb.append(getServicePath(service));
        sb.append(EVENTS);
        sb.append(CALLBACK_FILE);
        return sb.toString();
    }

    public URI prefixIfRelative(Device device, URI uri) {
        if (!uri.isAbsolute()) {
            String str = "/";
            if (!uri.getPath().startsWith(str)) {
                StringBuilder sb = new StringBuilder();
                sb.append(getDevicePath(device));
                sb.append(str);
                sb.append(uri);
                return appendPathToBaseURI(sb.toString());
            }
        }
        return uri;
    }

    public boolean isControlPath(URI uri) {
        return uri.toString().endsWith(CONTROL);
    }

    public boolean isEventSubscriptionPath(URI uri) {
        return uri.toString().endsWith(EVENTS);
    }

    public boolean isEventCallbackPath(URI uri) {
        return uri.toString().endsWith(CALLBACK_FILE);
    }

    public Resource[] getResources(Device device) throws ValidationException {
        Resource[] discoverResources;
        if (!device.isRoot()) {
            return null;
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        log.fine("Discovering local resources of device graph");
        for (Resource resource : device.discoverResources(this)) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Discovered: ");
            sb.append(resource);
            logger.finer(sb.toString());
            if (!hashSet.add(resource)) {
                log.finer("Local resource already exists, queueing validation error");
                Class cls = getClass();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Local URI namespace conflict between resources of device: ");
                sb2.append(resource);
                arrayList.add(new ValidationError(cls, "resources", sb2.toString()));
            }
        }
        if (arrayList.size() <= 0) {
            return (Resource[]) hashSet.toArray(new Resource[hashSet.size()]);
        }
        throw new ValidationException("Validation of device graph failed, call getErrors() on exception", (List<ValidationError>) arrayList);
    }

    /* access modifiers changed from: protected */
    public URI appendPathToBaseURI(String str) {
        try {
            String scheme = this.basePath.getScheme();
            String host = this.basePath.getHost();
            int port = this.basePath.getPort();
            StringBuilder sb = new StringBuilder();
            sb.append(this.decodedPath);
            sb.append(str);
            URI uri = new URI(scheme, null, host, port, sb.toString(), null, null);
            return uri;
        } catch (URISyntaxException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.basePath);
            sb2.append(str);
            return URI.create(sb2.toString());
        }
    }

    /* access modifiers changed from: protected */
    public String getDevicePath(Device device) {
        if (device.getIdentity().getUdn() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(DEVICE);
            sb.append("/");
            sb.append(URIUtil.encodePathSegment(device.getIdentity().getUdn().getIdentifierString()));
            return sb.toString();
        }
        throw new IllegalStateException("Can't generate local URI prefix without UDN");
    }

    /* access modifiers changed from: protected */
    public String getServicePath(Service service) {
        if (service.getServiceId() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(SERVICE);
            String str = "/";
            sb.append(str);
            sb.append(service.getServiceId().getNamespace());
            sb.append(str);
            sb.append(service.getServiceId().getId());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(getDevicePath(service.getDevice()));
            sb2.append(sb.toString());
            return sb2.toString();
        }
        throw new IllegalStateException("Can't generate local URI prefix without service ID");
    }
}
