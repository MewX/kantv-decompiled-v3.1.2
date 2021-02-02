package org.fourthline.cling.support.model;

public enum BrowseFlag {
    METADATA("BrowseMetadata"),
    DIRECT_CHILDREN("BrowseDirectChildren");
    
    private String protocolString;

    private BrowseFlag(String str) {
        this.protocolString = str;
    }

    public String toString() {
        return this.protocolString;
    }

    public static BrowseFlag valueOrNullOf(String str) {
        BrowseFlag[] values;
        for (BrowseFlag browseFlag : values()) {
            if (browseFlag.toString().equals(str)) {
                return browseFlag;
            }
        }
        return null;
    }
}
