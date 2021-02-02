package org.fourthline.cling.support.model.dlna.message.header;

import org.fourthline.cling.model.message.header.InvalidHeaderException;
import org.fourthline.cling.model.types.BytesRange;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.support.model.dlna.types.NormalPlayTimeRange;
import org.fourthline.cling.support.model.dlna.types.TimeSeekRangeType;

public class TimeSeekRangeHeader extends DLNAHeader<TimeSeekRangeType> {
    public TimeSeekRangeHeader() {
    }

    public TimeSeekRangeHeader(TimeSeekRangeType timeSeekRangeType) {
        setValue(timeSeekRangeType);
    }

    public void setString(String str) throws InvalidHeaderException {
        String str2 = "Invalid TimeSeekRange header value: ";
        if (str.length() != 0) {
            String[] split = str.split(" ");
            if (split.length > 0) {
                try {
                    TimeSeekRangeType timeSeekRangeType = new TimeSeekRangeType(NormalPlayTimeRange.valueOf(split[0]));
                    if (split.length > 1) {
                        timeSeekRangeType.setBytesRange(BytesRange.valueOf(split[1]));
                    }
                    setValue(timeSeekRangeType);
                    return;
                } catch (InvalidValueException e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str2);
                    sb.append(str);
                    sb.append("; ");
                    sb.append(e.getMessage());
                    throw new InvalidHeaderException(sb.toString());
                }
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        sb2.append(str);
        throw new InvalidHeaderException(sb2.toString());
    }

    public String getString() {
        TimeSeekRangeType timeSeekRangeType = (TimeSeekRangeType) getValue();
        String string = timeSeekRangeType.getNormalPlayTimeRange().getString();
        if (timeSeekRangeType.getBytesRange() == null) {
            return string;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(string);
        sb.append(" ");
        sb.append(timeSeekRangeType.getBytesRange().getString(true));
        return sb.toString();
    }
}
