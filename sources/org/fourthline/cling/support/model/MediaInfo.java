package org.fourthline.cling.support.model;

import java.util.Map;
import org.fourthline.cling.model.action.ActionArgumentValue;
import org.fourthline.cling.model.types.UnsignedIntegerFourBytes;

public class MediaInfo {
    private String currentURI;
    private String currentURIMetaData;
    private String mediaDuration;
    private String nextURI;
    private String nextURIMetaData;
    private UnsignedIntegerFourBytes numberOfTracks;
    private StorageMedium playMedium;
    private StorageMedium recordMedium;
    private RecordMediumWriteStatus writeStatus;

    public MediaInfo() {
        String str = "";
        this.currentURI = str;
        this.currentURIMetaData = str;
        String str2 = "NOT_IMPLEMENTED";
        this.nextURI = str2;
        this.nextURIMetaData = str2;
        this.numberOfTracks = new UnsignedIntegerFourBytes(0);
        this.mediaDuration = "00:00:00";
        this.playMedium = StorageMedium.NONE;
        this.recordMedium = StorageMedium.NOT_IMPLEMENTED;
        this.writeStatus = RecordMediumWriteStatus.NOT_IMPLEMENTED;
    }

    public MediaInfo(Map<String, ActionArgumentValue> map) {
        this((String) ((ActionArgumentValue) map.get("CurrentURI")).getValue(), (String) ((ActionArgumentValue) map.get("CurrentURIMetaData")).getValue(), (String) ((ActionArgumentValue) map.get("NextURI")).getValue(), (String) ((ActionArgumentValue) map.get("NextURIMetaData")).getValue(), (UnsignedIntegerFourBytes) ((ActionArgumentValue) map.get("NrTracks")).getValue(), (String) ((ActionArgumentValue) map.get("MediaDuration")).getValue(), StorageMedium.valueOrVendorSpecificOf((String) ((ActionArgumentValue) map.get("PlayMedium")).getValue()), StorageMedium.valueOrVendorSpecificOf((String) ((ActionArgumentValue) map.get("RecordMedium")).getValue()), RecordMediumWriteStatus.valueOrUnknownOf((String) ((ActionArgumentValue) map.get("WriteStatus")).getValue()));
    }

    public MediaInfo(String str, String str2) {
        String str3 = "";
        this.currentURI = str3;
        this.currentURIMetaData = str3;
        String str4 = "NOT_IMPLEMENTED";
        this.nextURI = str4;
        this.nextURIMetaData = str4;
        this.numberOfTracks = new UnsignedIntegerFourBytes(0);
        this.mediaDuration = "00:00:00";
        this.playMedium = StorageMedium.NONE;
        this.recordMedium = StorageMedium.NOT_IMPLEMENTED;
        this.writeStatus = RecordMediumWriteStatus.NOT_IMPLEMENTED;
        this.currentURI = str;
        this.currentURIMetaData = str2;
    }

    public MediaInfo(String str, String str2, UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str3, StorageMedium storageMedium) {
        String str4 = "";
        this.currentURI = str4;
        this.currentURIMetaData = str4;
        String str5 = "NOT_IMPLEMENTED";
        this.nextURI = str5;
        this.nextURIMetaData = str5;
        this.numberOfTracks = new UnsignedIntegerFourBytes(0);
        this.mediaDuration = "00:00:00";
        this.playMedium = StorageMedium.NONE;
        this.recordMedium = StorageMedium.NOT_IMPLEMENTED;
        this.writeStatus = RecordMediumWriteStatus.NOT_IMPLEMENTED;
        this.currentURI = str;
        this.currentURIMetaData = str2;
        this.numberOfTracks = unsignedIntegerFourBytes;
        this.mediaDuration = str3;
        this.playMedium = storageMedium;
    }

    public MediaInfo(String str, String str2, UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str3, StorageMedium storageMedium, StorageMedium storageMedium2, RecordMediumWriteStatus recordMediumWriteStatus) {
        String str4 = "";
        this.currentURI = str4;
        this.currentURIMetaData = str4;
        String str5 = "NOT_IMPLEMENTED";
        this.nextURI = str5;
        this.nextURIMetaData = str5;
        this.numberOfTracks = new UnsignedIntegerFourBytes(0);
        this.mediaDuration = "00:00:00";
        this.playMedium = StorageMedium.NONE;
        this.recordMedium = StorageMedium.NOT_IMPLEMENTED;
        this.writeStatus = RecordMediumWriteStatus.NOT_IMPLEMENTED;
        this.currentURI = str;
        this.currentURIMetaData = str2;
        this.numberOfTracks = unsignedIntegerFourBytes;
        this.mediaDuration = str3;
        this.playMedium = storageMedium;
        this.recordMedium = storageMedium2;
        this.writeStatus = recordMediumWriteStatus;
    }

    public MediaInfo(String str, String str2, String str3, String str4, UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str5, StorageMedium storageMedium) {
        String str6 = "";
        this.currentURI = str6;
        this.currentURIMetaData = str6;
        String str7 = "NOT_IMPLEMENTED";
        this.nextURI = str7;
        this.nextURIMetaData = str7;
        this.numberOfTracks = new UnsignedIntegerFourBytes(0);
        this.mediaDuration = "00:00:00";
        this.playMedium = StorageMedium.NONE;
        this.recordMedium = StorageMedium.NOT_IMPLEMENTED;
        this.writeStatus = RecordMediumWriteStatus.NOT_IMPLEMENTED;
        this.currentURI = str;
        this.currentURIMetaData = str2;
        this.nextURI = str3;
        this.nextURIMetaData = str4;
        this.numberOfTracks = unsignedIntegerFourBytes;
        this.mediaDuration = str5;
        this.playMedium = storageMedium;
    }

    public MediaInfo(String str, String str2, String str3, String str4, UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str5, StorageMedium storageMedium, StorageMedium storageMedium2, RecordMediumWriteStatus recordMediumWriteStatus) {
        String str6 = "";
        this.currentURI = str6;
        this.currentURIMetaData = str6;
        String str7 = "NOT_IMPLEMENTED";
        this.nextURI = str7;
        this.nextURIMetaData = str7;
        this.numberOfTracks = new UnsignedIntegerFourBytes(0);
        this.mediaDuration = "00:00:00";
        this.playMedium = StorageMedium.NONE;
        this.recordMedium = StorageMedium.NOT_IMPLEMENTED;
        this.writeStatus = RecordMediumWriteStatus.NOT_IMPLEMENTED;
        this.currentURI = str;
        this.currentURIMetaData = str2;
        this.nextURI = str3;
        this.nextURIMetaData = str4;
        this.numberOfTracks = unsignedIntegerFourBytes;
        this.mediaDuration = str5;
        this.playMedium = storageMedium;
        this.recordMedium = storageMedium2;
        this.writeStatus = recordMediumWriteStatus;
    }

    public String getCurrentURI() {
        return this.currentURI;
    }

    public String getCurrentURIMetaData() {
        return this.currentURIMetaData;
    }

    public String getNextURI() {
        return this.nextURI;
    }

    public String getNextURIMetaData() {
        return this.nextURIMetaData;
    }

    public UnsignedIntegerFourBytes getNumberOfTracks() {
        return this.numberOfTracks;
    }

    public String getMediaDuration() {
        return this.mediaDuration;
    }

    public StorageMedium getPlayMedium() {
        return this.playMedium;
    }

    public StorageMedium getRecordMedium() {
        return this.recordMedium;
    }

    public RecordMediumWriteStatus getWriteStatus() {
        return this.writeStatus;
    }
}
