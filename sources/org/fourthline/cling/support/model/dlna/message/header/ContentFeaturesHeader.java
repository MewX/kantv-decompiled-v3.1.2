package org.fourthline.cling.support.model.dlna.message.header;

import java.util.EnumMap;
import org.fourthline.cling.model.message.header.InvalidHeaderException;
import org.fourthline.cling.support.model.dlna.DLNAAttribute;
import org.fourthline.cling.support.model.dlna.DLNAAttribute.Type;

public class ContentFeaturesHeader extends DLNAHeader<EnumMap<Type, DLNAAttribute>> {
    public ContentFeaturesHeader() {
        setValue(new EnumMap(Type.class));
    }

    public void setString(String str) throws InvalidHeaderException {
        if (str.length() != 0) {
            for (String split : str.split(";")) {
                String[] split2 = split.split("=");
                if (split2.length == 2) {
                    Type valueOfAttributeName = Type.valueOfAttributeName(split2[0]);
                    if (valueOfAttributeName != null) {
                        ((EnumMap) getValue()).put(valueOfAttributeName, DLNAAttribute.newInstance(valueOfAttributeName, split2[1], ""));
                    }
                }
            }
        }
    }

    public String getString() {
        Type[] values;
        String str = "";
        String str2 = str;
        for (Type type : Type.values()) {
            String string = ((EnumMap) getValue()).containsKey(type) ? ((DLNAAttribute) ((EnumMap) getValue()).get(type)).getString() : null;
            if (!(string == null || string.length() == 0)) {
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append(str2.length() == 0 ? str : ";");
                sb.append(type.getAttributeName());
                sb.append("=");
                sb.append(string);
                str2 = sb.toString();
            }
        }
        return str2;
    }
}
