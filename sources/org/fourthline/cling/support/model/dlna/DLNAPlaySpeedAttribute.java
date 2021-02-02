package org.fourthline.cling.support.model.dlna;

import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.support.avtransport.lastchange.AVTransportVariable.TransportPlaySpeed;

public class DLNAPlaySpeedAttribute extends DLNAAttribute<TransportPlaySpeed[]> {
    public DLNAPlaySpeedAttribute() {
        setValue(new TransportPlaySpeed[0]);
    }

    public DLNAPlaySpeedAttribute(TransportPlaySpeed[] transportPlaySpeedArr) {
        setValue(transportPlaySpeedArr);
    }

    public DLNAPlaySpeedAttribute(String[] strArr) {
        TransportPlaySpeed[] transportPlaySpeedArr = new TransportPlaySpeed[strArr.length];
        int i = 0;
        while (i < strArr.length) {
            try {
                transportPlaySpeedArr[i] = new TransportPlaySpeed(strArr[i]);
                i++;
            } catch (InvalidValueException unused) {
                throw new InvalidDLNAProtocolAttributeException("Can't parse DLNA play speeds.");
            }
        }
        setValue(transportPlaySpeedArr);
    }

    public void setString(String str, String str2) throws InvalidDLNAProtocolAttributeException {
        TransportPlaySpeed[] transportPlaySpeedArr = null;
        if (!(str == null || str.length() == 0)) {
            String[] split = str.split(",");
            try {
                TransportPlaySpeed[] transportPlaySpeedArr2 = new TransportPlaySpeed[split.length];
                for (int i = 0; i < split.length; i++) {
                    transportPlaySpeedArr2[i] = new TransportPlaySpeed(split[i]);
                }
                transportPlaySpeedArr = transportPlaySpeedArr2;
            } catch (InvalidValueException unused) {
            }
        }
        if (transportPlaySpeedArr != null) {
            setValue(transportPlaySpeedArr);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't parse DLNA play speeds from: ");
        sb.append(str);
        throw new InvalidDLNAProtocolAttributeException(sb.toString());
    }

    public String getString() {
        TransportPlaySpeed[] transportPlaySpeedArr;
        String str = "";
        String str2 = str;
        for (TransportPlaySpeed transportPlaySpeed : (TransportPlaySpeed[]) getValue()) {
            if (!((String) transportPlaySpeed.getValue()).equals("1")) {
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append(str2.length() == 0 ? str : ",");
                sb.append(transportPlaySpeed);
                str2 = sb.toString();
            }
        }
        return str2;
    }
}
