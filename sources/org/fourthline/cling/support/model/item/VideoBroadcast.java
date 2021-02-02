package org.fourthline.cling.support.model.item;

import java.net.URI;
import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.CHANNEL_NR;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ICON;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.REGION;
import org.fourthline.cling.support.model.Res;
import org.fourthline.cling.support.model.container.Container;

public class VideoBroadcast extends VideoItem {
    public static final Class CLASS = new Class("object.item.videoItem.videoBroadcast");

    public VideoBroadcast() {
        setClazz(CLASS);
    }

    public VideoBroadcast(Item item) {
        super(item);
    }

    public VideoBroadcast(String str, Container container, String str2, String str3, Res... resArr) {
        this(str, container.getId(), str2, str3, resArr);
    }

    public VideoBroadcast(String str, String str2, String str3, String str4, Res... resArr) {
        super(str, str2, str3, str4, resArr);
        setClazz(CLASS);
    }

    public URI getIcon() {
        return (URI) getFirstPropertyValue(ICON.class);
    }

    public VideoBroadcast setIcon(URI uri) {
        replaceFirstProperty(new ICON(uri));
        return this;
    }

    public String getRegion() {
        return (String) getFirstPropertyValue(REGION.class);
    }

    public VideoBroadcast setRegion(String str) {
        replaceFirstProperty(new REGION(str));
        return this;
    }

    public Integer getChannelNr() {
        return (Integer) getFirstPropertyValue(CHANNEL_NR.class);
    }

    public VideoBroadcast setChannelNr(Integer num) {
        replaceFirstProperty(new CHANNEL_NR(num));
        return this;
    }
}
