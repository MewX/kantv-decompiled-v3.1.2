package org.fourthline.cling.model.message.header;

public class MXHeader extends UpnpHeader<Integer> {
    public static final Integer DEFAULT_VALUE = Integer.valueOf(3);

    public MXHeader() {
        setValue(DEFAULT_VALUE);
    }

    public MXHeader(Integer num) {
        setValue(num);
    }

    public void setString(String str) throws InvalidHeaderException {
        try {
            Integer valueOf = Integer.valueOf(Integer.parseInt(str));
            if (valueOf.intValue() < 0 || valueOf.intValue() > 120) {
                setValue(DEFAULT_VALUE);
            } else {
                setValue(valueOf);
            }
        } catch (Exception unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Can't parse MX seconds integer from: ");
            sb.append(str);
            throw new InvalidHeaderException(sb.toString());
        }
    }

    public String getString() {
        return ((Integer) getValue()).toString();
    }
}
