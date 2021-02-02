package org.fourthline.cling.model.resource;

import java.net.URI;
import org.fourthline.cling.model.meta.LocalService;

public class ServiceControlResource extends Resource<LocalService> {
    public ServiceControlResource(URI uri, LocalService localService) {
        super(uri, localService);
    }
}
