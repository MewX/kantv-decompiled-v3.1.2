package org.fourthline.cling.controlpoint.event;

import org.fourthline.cling.model.message.header.MXHeader;
import org.fourthline.cling.model.message.header.STAllHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;

public class Search {
    protected int mxSeconds = MXHeader.DEFAULT_VALUE.intValue();
    protected UpnpHeader searchType = new STAllHeader();

    public Search() {
    }

    public Search(UpnpHeader upnpHeader) {
        this.searchType = upnpHeader;
    }

    public Search(UpnpHeader upnpHeader, int i) {
        this.searchType = upnpHeader;
        this.mxSeconds = i;
    }

    public Search(int i) {
        this.mxSeconds = i;
    }

    public UpnpHeader getSearchType() {
        return this.searchType;
    }

    public int getMxSeconds() {
        return this.mxSeconds;
    }
}
