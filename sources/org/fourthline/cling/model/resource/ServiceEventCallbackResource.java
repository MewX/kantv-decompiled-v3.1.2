package org.fourthline.cling.model.resource;

import java.net.URI;
import org.fourthline.cling.model.meta.RemoteService;

public class ServiceEventCallbackResource extends Resource<RemoteService> {
    public ServiceEventCallbackResource(URI uri, RemoteService remoteService) {
        super(uri, remoteService);
    }
}
