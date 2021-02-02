package org.fourthline.cling.model.resource;

import java.net.URI;
import org.fourthline.cling.model.meta.LocalDevice;

public class DeviceDescriptorResource extends Resource<LocalDevice> {
    public DeviceDescriptorResource(URI uri, LocalDevice localDevice) {
        super(uri, localDevice);
    }
}
