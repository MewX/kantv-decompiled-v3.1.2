package org.fourthline.cling.model.message.header;

public class SubscriptionIdHeader extends UpnpHeader<String> {
    public static final String PREFIX = "uuid:";

    public SubscriptionIdHeader() {
    }

    public SubscriptionIdHeader(String str) {
        setValue(str);
    }

    public void setString(String str) throws InvalidHeaderException {
        if (str.startsWith("uuid:")) {
            setValue(str);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid subscription ID header value, must start with 'uuid:': ");
        sb.append(str);
        throw new InvalidHeaderException(sb.toString());
    }

    public String getString() {
        return (String) getValue();
    }
}
