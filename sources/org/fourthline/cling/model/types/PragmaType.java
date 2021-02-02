package org.fourthline.cling.model.types;

public class PragmaType {
    private boolean quote;
    private String token;
    private String value;

    public PragmaType(String str, String str2, boolean z) {
        this.token = str;
        this.value = str2;
        this.quote = z;
    }

    public PragmaType(String str, String str2) {
        this.token = str;
        this.value = str2;
    }

    public PragmaType(String str) {
        this.token = null;
        this.value = str;
    }

    public String getToken() {
        return this.token;
    }

    public String getValue() {
        return this.value;
    }

    public String getString() {
        String str;
        String str2 = "";
        if (this.token != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(this.token);
            sb.append("=");
            str2 = sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        if (this.quote) {
            StringBuilder sb3 = new StringBuilder();
            String str3 = "\"";
            sb3.append(str3);
            sb3.append(this.value);
            sb3.append(str3);
            str = sb3.toString();
        } else {
            str = this.value;
        }
        sb2.append(str);
        return sb2.toString();
    }

    public static PragmaType valueOf(String str) throws InvalidValueException {
        if (str.length() != 0) {
            String str2 = null;
            String[] split = str.split("=");
            boolean z = false;
            if (split.length > 1) {
                str2 = split[0];
                str = split[1];
                String str3 = "\"";
                if (str.startsWith(str3) && str.endsWith(str3)) {
                    str = str.substring(1, str.length() - 1);
                    z = true;
                }
            }
            return new PragmaType(str2, str, z);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't parse Bytes Range: ");
        sb.append(str);
        throw new InvalidValueException(sb.toString());
    }
}
