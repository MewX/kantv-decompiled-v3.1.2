package org.fourthline.cling.support.model.item;

import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.CHANNEL_NR;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.RADIO_BAND;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.RADIO_CALL_SIGN;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.RADIO_STATION_ID;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.REGION;
import org.fourthline.cling.support.model.Res;

public class AudioBroadcast extends AudioItem {
    public static final Class CLASS = new Class("object.item.audioItem.audioBroadcast");

    public AudioBroadcast() {
        setClazz(CLASS);
    }

    public AudioBroadcast(Item item) {
        super(item);
    }

    public AudioBroadcast(String str, String str2, String str3, String str4, Res... resArr) {
        super(str, str2, str3, str4, resArr);
        setClazz(CLASS);
    }

    public String getRegion() {
        return (String) getFirstPropertyValue(REGION.class);
    }

    public AudioBroadcast setRegion(String str) {
        replaceFirstProperty(new REGION(str));
        return this;
    }

    public String getRadioCallSign() {
        return (String) getFirstPropertyValue(RADIO_CALL_SIGN.class);
    }

    public AudioBroadcast setRadioCallSign(String str) {
        replaceFirstProperty(new RADIO_CALL_SIGN(str));
        return this;
    }

    public String getRadioStationID() {
        return (String) getFirstPropertyValue(RADIO_STATION_ID.class);
    }

    public AudioBroadcast setRadioStationID(String str) {
        replaceFirstProperty(new RADIO_STATION_ID(str));
        return this;
    }

    public String getRadioBand() {
        return (String) getFirstPropertyValue(RADIO_BAND.class);
    }

    public AudioBroadcast setRadioBand(String str) {
        replaceFirstProperty(new RADIO_BAND(str));
        return this;
    }

    public Integer getChannelNr() {
        return (Integer) getFirstPropertyValue(CHANNEL_NR.class);
    }

    public AudioBroadcast setChannelNr(Integer num) {
        replaceFirstProperty(new CHANNEL_NR(num));
        return this;
    }
}
