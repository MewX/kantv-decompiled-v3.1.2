package org.fourthline.cling.support.model.item;

import java.util.List;
import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.CONTRIBUTOR;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.DATE;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ALBUM;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ARTIST;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.SCHEDULED_END_TIME;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.SCHEDULED_START_TIME;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_MEDIUM;
import org.fourthline.cling.support.model.Person;
import org.fourthline.cling.support.model.PersonWithRole;
import org.fourthline.cling.support.model.Res;
import org.fourthline.cling.support.model.StorageMedium;
import org.fourthline.cling.support.model.container.Container;

public class MusicVideoClip extends VideoItem {
    public static final Class CLASS = new Class("object.item.videoItem.musicVideoClip");

    public MusicVideoClip() {
        setClazz(CLASS);
    }

    public MusicVideoClip(Item item) {
        super(item);
    }

    public MusicVideoClip(String str, Container container, String str2, String str3, Res... resArr) {
        this(str, container.getId(), str2, str3, resArr);
    }

    public MusicVideoClip(String str, String str2, String str3, String str4, Res... resArr) {
        super(str, str2, str3, str4, resArr);
        setClazz(CLASS);
    }

    public PersonWithRole getFirstArtist() {
        return (PersonWithRole) getFirstPropertyValue(ARTIST.class);
    }

    public PersonWithRole[] getArtists() {
        List propertyValues = getPropertyValues(ARTIST.class);
        return (PersonWithRole[]) propertyValues.toArray(new PersonWithRole[propertyValues.size()]);
    }

    public MusicVideoClip setArtists(PersonWithRole[] personWithRoleArr) {
        removeProperties(ARTIST.class);
        for (PersonWithRole artist : personWithRoleArr) {
            addProperty(new ARTIST(artist));
        }
        return this;
    }

    public StorageMedium getStorageMedium() {
        return (StorageMedium) getFirstPropertyValue(STORAGE_MEDIUM.class);
    }

    public MusicVideoClip setStorageMedium(StorageMedium storageMedium) {
        replaceFirstProperty(new STORAGE_MEDIUM(storageMedium));
        return this;
    }

    public String getAlbum() {
        return (String) getFirstPropertyValue(ALBUM.class);
    }

    public MusicVideoClip setAlbum(String str) {
        replaceFirstProperty(new ALBUM(str));
        return this;
    }

    public String getFirstScheduledStartTime() {
        return (String) getFirstPropertyValue(SCHEDULED_START_TIME.class);
    }

    public String[] getScheduledStartTimes() {
        List propertyValues = getPropertyValues(SCHEDULED_START_TIME.class);
        return (String[]) propertyValues.toArray(new String[propertyValues.size()]);
    }

    public MusicVideoClip setScheduledStartTimes(String[] strArr) {
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

    public MusicVideoClip setScheduledEndTimes(String[] strArr) {
        removeProperties(SCHEDULED_END_TIME.class);
        for (String scheduled_end_time : strArr) {
            addProperty(new SCHEDULED_END_TIME(scheduled_end_time));
        }
        return this;
    }

    public Person getFirstContributor() {
        return (Person) getFirstPropertyValue(CONTRIBUTOR.class);
    }

    public Person[] getContributors() {
        List propertyValues = getPropertyValues(CONTRIBUTOR.class);
        return (Person[]) propertyValues.toArray(new Person[propertyValues.size()]);
    }

    public MusicVideoClip setContributors(Person[] personArr) {
        removeProperties(CONTRIBUTOR.class);
        for (Person contributor : personArr) {
            addProperty(new CONTRIBUTOR(contributor));
        }
        return this;
    }

    public String getDate() {
        return (String) getFirstPropertyValue(DATE.class);
    }

    public MusicVideoClip setDate(String str) {
        replaceFirstProperty(new DATE(str));
        return this;
    }
}
