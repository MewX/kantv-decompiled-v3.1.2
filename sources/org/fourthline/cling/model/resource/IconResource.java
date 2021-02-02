package org.fourthline.cling.model.resource;

import java.net.URI;
import org.fourthline.cling.model.meta.Icon;

public class IconResource extends Resource<Icon> {
    public IconResource(URI uri, Icon icon) {
        super(uri, icon);
    }
}
