package org.fourthline.cling.support.model.dlna.message.header;

import java.util.regex.Pattern;
import org.fourthline.cling.model.message.header.InvalidHeaderException;
import org.fourthline.cling.support.model.dlna.types.ScmsFlagType;

public class ScmsFlagHeader extends DLNAHeader<ScmsFlagType> {
    static final Pattern pattern = Pattern.compile("^[01]{2}$", 2);

    public void setString(String str) throws InvalidHeaderException {
        if (pattern.matcher(str).matches()) {
            boolean z = false;
            boolean z2 = str.charAt(0) == '0';
            if (str.charAt(1) == '0') {
                z = true;
            }
            setValue(new ScmsFlagType(z2, z));
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid ScmsFlag header value: ");
        sb.append(str);
        throw new InvalidHeaderException(sb.toString());
    }

    public String getString() {
        ScmsFlagType scmsFlagType = (ScmsFlagType) getValue();
        StringBuilder sb = new StringBuilder();
        String str = "0";
        String str2 = "1";
        sb.append(scmsFlagType.isCopyright() ? str : str2);
        if (!scmsFlagType.isOriginal()) {
            str = str2;
        }
        sb.append(str);
        return sb.toString();
    }
}
