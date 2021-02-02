package org.fourthline.cling.model.resource;

import java.net.URI;
import org.fourthline.cling.model.meta.LocalService;

public class ServiceEventSubscriptionResource extends Resource<LocalService> {
    public ServiceEventSubscriptionResource(URI uri, LocalService localService) {
        super(uri, localService);
    }
}
