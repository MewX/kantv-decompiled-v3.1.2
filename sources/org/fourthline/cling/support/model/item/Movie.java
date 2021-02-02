package org.fourthline.cling.support.model.item;

import java.util.List;
import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.CHANNEL_NAME;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.DVD_REGION_CODE;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.SCHEDULED_END_TIME;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.SCHEDULED_START_TIME;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_MEDIUM;
import org.fourthline.cling.support.model.Res;
import org.fourthline.cling.support.model.StorageMedium;
import org.fourthline.cling.support.model.container.Container;

public class Movie extends VideoItem {
    public static final Class CLASS = new Class("object.item.videoItem.movie");

    public Movie() {
        setClazz(CLASS);
    }

    public Movie(Item item) {
        super(item);
    }

    public Movie(String str, Container container, String str2, String str3, Res... resArr) {
        this(str, container.getId(), str2, str3, resArr);
    }

    public Movie(String str, String str2, String str3, String str4, Res... resArr) {
        super(str, str2, str3, str4, resArr);
        setClazz(CLASS);
    }

    public StorageMedium getStorageMedium() {
        return (StorageMedium) getFirstPropertyValue(STORAGE_MEDIUM.class);
    }

    public Movie setStorageMedium(StorageMedium storageMedium) {
        replaceFirstProperty(new STORAGE_MEDIUM(storageMedium));
        return this;
    }

    public Integer getDVDRegionCode() {
        return (Integer) getFirstPropertyValue(DVD_REGION_CODE.class);
    }

    public Movie setDVDRegionCode(Integer num) {
        replaceFirstProperty(new DVD_REGION_CODE(num));
        return this;
    }

    public String getChannelName() {
        return (String) getFirstPropertyValue(CHANNEL_NAME.class);
    }

    public Movie setChannelName(String str) {
        replaceFirstProperty(new CHANNEL_NAME(str));
        return this;
    }

    public String getFirstScheduledStartTime() {
        return (String) getFirstPropertyValue(SCHEDULED_START_TIME.class);
    }

    public String[] getScheduledStartTimes() {
        List propertyValues = getPropertyValues(SCHEDULED_START_TIME.class);
        return (String[]) propertyValues.toArray(new String[propertyValues.size()]);
    }

    public Movie setScheduledStartTimes(String[] strArr) {
        removeProperties(SCHEDULED_START_TIME.class);
        for (String scheduled_start_time : strArr) {
            addProperty(new SCHEDULED_START_TIME(scheduled_start_time));
        }
        return this;
    }

    public String getFirstScheduledEndTime() {
        return (String) getFirstPropertyValue(SCHEDULED_END_TIME.class);
    }

    public String[] getScheduledEndTimes() {
        List propertyValues = getPropertyValues(SCHEDULED_END_TIME.class);
        return (String[]) propertyValues.toArray(new String[propertyValues.size()]);
    }

    public Movie setScheduledEndTimes(String[] strArr) {
        removeProperties(SCHEDULED_END_TIME.class);
        for (String scheduled_end_time : strArr) {
            addProperty(new SCHEDULED_END_TIME(scheduled_end_time));
        }
        return this;
    }
}
