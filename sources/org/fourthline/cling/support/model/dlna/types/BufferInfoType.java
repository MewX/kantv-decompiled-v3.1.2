package org.fourthline.cling.support.model.dlna.types;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.support.model.dlna.types.CodedDataBuffer.TransferMechanism;

public class BufferInfoType {
    static final Pattern pattern = Pattern.compile("^dejitter=(\\d{1,10})(;CDB=(\\d{1,10});BTM=(0|1|2))?(;TD=(\\d{1,10}))?(;BFR=(0|1))?$", 2);
    private CodedDataBuffer cdb;
    private Long dejitterSize;
    private Boolean fullnessReports;
    private Long targetDuration;

    public BufferInfoType(Long l) {
        this.dejitterSize = l;
    }

    public BufferInfoType(Long l, CodedDataBuffer codedDataBuffer, Long l2, Boolean bool) {
        this.dejitterSize = l;
        this.cdb = codedDataBuffer;
        this.targetDuration = l2;
        this.fullnessReports = bool;
    }

    public static BufferInfoType valueOf(String str) throws InvalidValueException {
        Matcher matcher = pattern.matcher(str);
        if (matcher.matches()) {
            try {
                Long valueOf = Long.valueOf(Long.parseLong(matcher.group(1)));
                Boolean bool = null;
                CodedDataBuffer codedDataBuffer = matcher.group(2) != null ? new CodedDataBuffer(Long.valueOf(Long.parseLong(matcher.group(3))), TransferMechanism.values()[Integer.parseInt(matcher.group(4))]) : null;
                Long valueOf2 = matcher.group(5) != null ? Long.valueOf(Long.parseLong(matcher.group(6))) : null;
                if (matcher.group(7) != null) {
                    bool = Boolean.valueOf(matcher.group(8).equals("1"));
                }
                return new BufferInfoType(valueOf, codedDataBuffer, valueOf2, bool);
            } catch (NumberFormatException unused) {
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't parse BufferInfoType: ");
        sb.append(str);
        throw new InvalidValueException(sb.toString());
    }

    public String getString() {
        StringBuilder sb = new StringBuilder();
        sb.append("dejitter=");
        sb.append(this.dejitterSize.toString());
        String sb2 = sb.toString();
        if (this.cdb != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(sb2);
            sb3.append(";CDB=");
            sb3.append(this.cdb.getSize().toString());
            sb3.append(";BTM=");
            sb3.append(this.cdb.getTranfer().ordinal());
            sb2 = sb3.toString();
        }
        if (this.targetDuration != null) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(sb2);
            sb4.append(";TD=");
            sb4.append(this.targetDuration.toString());
            sb2 = sb4.toString();
        }
        if (this.fullnessReports == null) {
            return sb2;
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append(sb2);
        sb5.append(";BFR=");
        sb5.append(this.fullnessReports.booleanValue() ? "1" : "0");
        return sb5.toString();
    }

    public Long getDejitterSize() {
        return this.dejitterSize;
    }

    public CodedDataBuffer getCdb() {
        return this.cdb;
    }

    public Long getTargetDuration() {
        return this.targetDuration;
    }

    public Boolean isFullnessReports() {
        return this.fullnessReports;
    }
}
