package org.fourthline.cling.support.model.dlna.message.header;

import java.util.ArrayList;
import java.util.List;
import org.fourthline.cling.model.message.header.InvalidHeaderException;
import org.fourthline.cling.model.types.PragmaType;

public class PragmaHeader extends DLNAHeader<List<PragmaType>> {
    public PragmaHeader() {
        setValue(new ArrayList());
    }

    public void setString(String str) throws InvalidHeaderException {
        if (str.length() != 0) {
            if (str.endsWith(";")) {
                str = str.substring(0, str.length() - 1);
            }
            String[] split = str.split("\\s*;\\s*");
            ArrayList arrayList = new ArrayList();
            for (String valueOf : split) {
                arrayList.add(PragmaType.valueOf(valueOf));
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid Pragma header value: ");
        sb.append(str);
        throw new InvalidHeaderException(sb.toString());
    }

    public String getString() {
        String str = "";
        String str2 = str;
        for (PragmaType pragmaType : (List) getValue()) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(str2.length() == 0 ? str : ",");
            sb.append(pragmaType.getString());
            str2 = sb.toString();
        }
        return str2;
    }
}
