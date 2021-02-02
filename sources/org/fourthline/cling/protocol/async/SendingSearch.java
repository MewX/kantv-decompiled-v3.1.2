package org.fourthline.cling.protocol.async;

import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.message.OutgoingDatagramMessage;
import org.fourthline.cling.model.message.discovery.OutgoingSearchRequest;
import org.fourthline.cling.model.message.header.MXHeader;
import org.fourthline.cling.model.message.header.STAllHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.fourthline.cling.protocol.SendingAsync;
import org.fourthline.cling.transport.RouterException;

public class SendingSearch extends SendingAsync {
    private static final Logger log = Logger.getLogger(SendingSearch.class.getName());
    private final int mxSeconds;
    private final UpnpHeader searchTarget;

    public int getBulkIntervalMilliseconds() {
        return 500;
    }

    public int getBulkRepeat() {
        return 5;
    }

    /* access modifiers changed from: protected */
    public void prepareOutgoingSearchRequest(OutgoingSearchRequest outgoingSearchRequest) {
    }

    public SendingSearch(UpnpService upnpService) {
        this(upnpService, new STAllHeader());
    }

    public SendingSearch(UpnpService upnpService, UpnpHeader upnpHeader) {
        this(upnpService, upnpHeader, MXHeader.DEFAULT_VALUE.intValue());
    }

    public SendingSearch(UpnpService upnpService, UpnpHeader upnpHeader, int i) {
        super(upnpService);
        if (Type.ST.isValidHeaderType(upnpHeader.getClass())) {
            this.searchTarget = upnpHeader;
            this.mxSeconds = i;
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Given search target instance is not a valid header class for type ST: ");
        sb.append(upnpHeader.getClass());
        throw new IllegalArgumentException(sb.toString());
    }

    public UpnpHeader getSearchTarget() {
        return this.searchTarget;
    }

    public int getMxSeconds() {
        return this.mxSeconds;
    }

    /* access modifiers changed from: protected */
    public void execute() throws RouterException {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Executing search for target: ");
        sb.append(this.searchTarget.getString());
        sb.append(" with MX seconds: ");
        sb.append(getMxSeconds());
        logger.fine(sb.toString());
        OutgoingSearchRequest outgoingSearchRequest = new OutgoingSearchRequest(this.searchTarget, getMxSeconds());
        prepareOutgoingSearchRequest(outgoingSearchRequest);
        int i = 0;
        while (i < getBulkRepeat()) {
            try {
                getUpnpService().getRouter().send((OutgoingDatagramMessage) outgoingSearchRequest);
                Logger logger2 = log;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Sleeping ");
                sb2.append(getBulkIntervalMilliseconds());
                sb2.append(" milliseconds");
                logger2.finer(sb2.toString());
                Thread.sleep((long) getBulkIntervalMilliseconds());
                i++;
            } catch (InterruptedException unused) {
                return;
            }
        }
    }
}
