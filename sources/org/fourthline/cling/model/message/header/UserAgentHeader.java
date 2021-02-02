package org.fourthline.cling.model.message.header;

public class UserAgentHeader extends UpnpHeader<String> {
    public UserAgentHeader() {
    }

    public UserAgentHeader(String str) {
        setValue(str);
    }

    public void setString(String str) throws InvalidHeaderException {
        setValue(str);
    }

    public String getString() {
        return (String) getValue();
    }
}
