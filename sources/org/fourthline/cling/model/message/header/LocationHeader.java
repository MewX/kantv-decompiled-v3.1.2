package org.fourthline.cling.model.message.header;

import java.net.MalformedURLException;
import java.net.URL;

public class LocationHeader extends UpnpHeader<URL> {
    public LocationHeader() {
    }

    public LocationHeader(URL url) {
        setValue(url);
    }

    public LocationHeader(String str) {
        setString(str);
    }

    public void setString(String str) throws InvalidHeaderException {
        try {
            setValue(new URL(str));
        } catch (MalformedURLException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Invalid URI: ");
            sb.append(e.getMessage());
            throw new InvalidHeaderException(sb.toString());
        }
    }

    public String getString() {
        return ((URL) getValue()).toString();
    }
}
