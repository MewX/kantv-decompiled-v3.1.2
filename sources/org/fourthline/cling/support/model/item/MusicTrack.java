package org.fourthline.cling.support.model.item;

import java.util.List;
import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.CONTRIBUTOR;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.DATE;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ALBUM;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ARTIST;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ORIGINAL_TRACK_NUMBER;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.PLAYLIST;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_MEDIUM;
import org.fourthline.cling.support.model.Person;
import org.fourthline.cling.support.model.PersonWithRole;
import org.fourthline.cling.support.model.Res;
import org.fourthline.cling.support.model.StorageMedium;
import org.fourthline.cling.support.model.container.Container;

public class MusicTrack extends AudioItem {
    public static final Class CLASS = new Class("object.item.audioItem.musicTrack");

    public MusicTrack() {
        setClazz(CLASS);
    }

    public MusicTrack(Item item) {
        super(item);
    }

    public MusicTrack(String str, Container container, String str2, String str3, String str4, String str5, Res... resArr) {
        this(str, container.getId(), str2, str3, str4, str5, resArr);
    }

    public MusicTrack(String str, Container container, String str2, String str3, String str4, PersonWithRole personWithRole, Res... resArr) {
        this(str, container.getId(), str2, str3, str4, personWithRole, resArr);
    }

    public MusicTrack(String str, String str2, String str3, String str4, String str5, String str6, Res... resArr) {
        String str7 = str6;
        this(str, str2, str3, str4, str5, str7 == null ? null : new PersonWithRole(str7), resArr);
    }

    public MusicTrack(String str, String str2, String str3, String str4, String str5, PersonWithRole personWithRole, Res... resArr) {
        super(str, str2, str3, str4, resArr);
        setClazz(CLASS);
        if (str5 != null) {
            setAlbum(str5);
        }
        if (personWithRole != null) {
            addProperty(new ARTIST(personWithRole));
        }
    }

    public PersonWithRole getFirstArtist() {
        return (PersonWithRole) getFirstPropertyValue(ARTIST.class);
    }

    public PersonWithRole[] getArtists() {
        List propertyValues = getPropertyValues(ARTIST.class);
        return (PersonWithRole[]) propertyValues.toArray(new PersonWithRole[propertyValues.size()]);
    }

    public MusicTrack setArtists(PersonWithRole[] personWithRoleArr) {
        removeProperties(ARTIST.class);
        for (PersonWithRole artist : personWithRoleArr) {
            addProperty(new ARTIST(artist));
        }
        return this;
    }

    public String getAlbum() {
        return (String) getFirstPropertyValue(ALBUM.class);
    }

    public MusicTrack setAlbum(String str) {
        replaceFirstProperty(new ALBUM(str));
        return this;
    }

    public Integer getOriginalTrackNumber() {
        return (Integer) getFirstPropertyValue(ORIGINAL_TRACK_NUMBER.class);
    }

    public MusicTrack setOriginalTrackNumber(Integer num) {
        replaceFirstProperty(new ORIGINAL_TRACK_NUMBER(num));
        return this;
    }

    public String getFirstPlaylist() {
        return (String) getFirstPropertyValue(PLAYLIST.class);
    }

    public String[] getPlaylists() {
        List propertyValues = getPropertyValues(PLAYLIST.class);
        return (String[]) propertyValues.toArray(new String[propertyValues.size()]);
    }

    public MusicTrack setPlaylists(String[] strArr) {
        removeProperties(PLAYLIST.class);
        for (String playlist : strArr) {
            addProperty(new PLAYLIST(playlist));
        }
        return this;
    }

    public StorageMedium getStorageMedium() {
        return (StorageMedium) getFirstPropertyValue(STORAGE_MEDIUM.class);
    }

    public MusicTrack setStorageMedium(StorageMedium storageMedium) {
        replaceFirstProperty(new STORAGE_MEDIUM(storageMedium));
        return this;
    }

    public Person getFirstContributor() {
        return (Person) getFirstPropertyValue(CONTRIBUTOR.class);
    }

    public Person[] getContributors() {
        List propertyValues = getPropertyValues(CONTRIBUTOR.class);
        return (Person[]) propertyValues.toArray(new Person[propertyValues.size()]);
    }

    public MusicTrack setContributors(Person[] personArr) {
        removeProperties(CONTRIBUTOR.class);
        for (Person contributor : personArr) {
            addProperty(new CONTRIBUTOR(contributor));
        }
        return this;
    }

    public String getDate() {
        return (String) getFirstPropertyValue(DATE.class);
    }

    public MusicTrack setDate(String str) {
        replaceFirstProperty(new DATE(str));
        return this;
    }
}
