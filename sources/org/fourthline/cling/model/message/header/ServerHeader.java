package org.fourthline.cling.model.message.header;

import org.fourthline.cling.model.ServerClientTokens;

public class ServerHeader extends UpnpHeader<ServerClientTokens> {
    public ServerHeader() {
        setValue(new ServerClientTokens());
    }

    public ServerHeader(ServerClientTokens serverClientTokens) {
        setValue(serverClientTokens);
    }

    public void setString(String str) throws InvalidHeaderException {
        String[] strArr;
        String[] strArr2;
        String str2 = ",";
        ServerClientTokens serverClientTokens = new ServerClientTokens();
        String str3 = "UNKNOWN";
        serverClientTokens.setOsName(str3);
        serverClientTokens.setOsVersion(str3);
        serverClientTokens.setProductName(str3);
        serverClientTokens.setProductVersion(str3);
        String str4 = "UPnP/1.";
        if (str.contains("UPnP/1.1")) {
            serverClientTokens.setMinorVersion(1);
        } else if (!str.contains(str4)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Missing 'UPnP/1.' in server information: ");
            sb.append(str);
            throw new InvalidHeaderException(sb.toString());
        }
        int i = 0;
        int i2 = 0;
        while (i < str.length()) {
            try {
                if (str.charAt(i) == ' ') {
                    i2++;
                }
                i++;
            } catch (Exception unused) {
                serverClientTokens.setOsName(str3);
                serverClientTokens.setOsVersion(str3);
                serverClientTokens.setProductName(str3);
                serverClientTokens.setProductVersion(str3);
            }
        }
        String str5 = "/";
        if (str.contains(str2)) {
            String[] split = str.split(str2);
            strArr2 = split[0].split(str5);
            strArr = split[2].split(str5);
        } else if (i2 > 2) {
            String trim = str.substring(0, str.indexOf(str4)).trim();
            String trim2 = str.substring(str.indexOf(str4) + 8).trim();
            strArr2 = trim.split(str5);
            strArr = trim2.split(str5);
        } else {
            String[] split2 = str.split(" ");
            strArr2 = split2[0].split(str5);
            strArr = split2[2].split(str5);
        }
        serverClientTokens.setOsName(strArr2[0].trim());
        if (strArr2.length > 1) {
            serverClientTokens.setOsVersion(strArr2[1].trim());
        }
        serverClientTokens.setProductName(strArr[0].trim());
        if (strArr.length > 1) {
            serverClientTokens.setProductVersion(strArr[1].trim());
        }
        setValue(serverClientTokens);
    }

    public String getString() {
        return ((ServerClientTokens) getValue()).getHttpToken();
    }
}
