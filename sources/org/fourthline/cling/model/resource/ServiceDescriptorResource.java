package org.fourthline.cling.model.resource;

import java.net.URI;
import org.fourthline.cling.model.meta.LocalService;

public class ServiceDescriptorResource extends Resource<LocalService> {
    public ServiceDescriptorResource(URI uri, LocalService localService) {
        super(uri, localService);
    }
}
