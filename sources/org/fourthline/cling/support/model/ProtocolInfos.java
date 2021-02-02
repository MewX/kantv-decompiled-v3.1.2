package org.fourthline.cling.support.model;

import java.util.ArrayList;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.model.types.InvalidValueException;

public class ProtocolInfos extends ArrayList<ProtocolInfo> {
    public ProtocolInfos(ProtocolInfo... protocolInfoArr) {
        for (ProtocolInfo add : protocolInfoArr) {
            add(add);
        }
    }

    public ProtocolInfos(String str) throws InvalidValueException {
        String[] fromCommaSeparatedList = ModelUtil.fromCommaSeparatedList(str);
        if (fromCommaSeparatedList != null) {
            for (String protocolInfo : fromCommaSeparatedList) {
                add(new ProtocolInfo(protocolInfo));
            }
        }
    }

    public String toString() {
        return ModelUtil.toCommaSeparatedList(toArray(new ProtocolInfo[size()]));
    }
}
