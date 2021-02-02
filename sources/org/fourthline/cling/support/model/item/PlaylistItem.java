package org.fourthline.cling.support.model.item;

import java.util.Arrays;
import java.util.List;
import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.DATE;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.DESCRIPTION;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.LANGUAGE;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ARTIST;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.GENRE;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.LONG_DESCRIPTION;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_MEDIUM;
import org.fourthline.cling.support.model.PersonWithRole;
import org.fourthline.cling.support.model.Res;
import org.fourthline.cling.support.model.StorageMedium;
import org.fourthline.cling.support.model.container.Container;

public class PlaylistItem extends Item {
    public static final Class CLASS = new Class("object.item.playlistItem");

    public PlaylistItem() {
        setClazz(CLASS);
    }

    public PlaylistItem(Item item) {
        super(item);
    }

    public PlaylistItem(String str, Container container, String str2, String str3, Res... resArr) {
        this(str, container.getId(), str2, str3, resArr);
    }

    public PlaylistItem(String str, String str2, String str3, String str4, Res... resArr) {
        super(str, str2, str3, str4, CLASS);
        if (resArr != null) {
            getResources().addAll(Arrays.asList(resArr));
        }
    }

    public PersonWithRole getFirstArtist() {
        return (PersonWithRole) getFirstPropertyValue(ARTIST.class);
    }

    public PersonWithRole[] getArtists() {
        List propertyValues = getPropertyValues(ARTIST.class);
        return (PersonWithRole[]) propertyValues.toArray(new PersonWithRole[propertyValues.size()]);
    }

    public PlaylistItem setArtists(PersonWithRole[] personWithRoleArr) {
        removeProperties(ARTIST.class);
        for (PersonWithRole artist : personWithRoleArr) {
            addProperty(new ARTIST(artist));
        }
        return this;
    }

    public String getFirstGenre() {
        return (String) getFirstPropertyValue(GENRE.class);
    }

    public String[] getGenres() {
        List propertyValues = getPropertyValues(GENRE.class);
        return (String[]) propertyValues.toArray(new String[propertyValues.size()]);
    }

    public PlaylistItem setGenres(String[] strArr) {
        removeProperties(GENRE.class);
        for (String genre : strArr) {
            addProperty(new GENRE(genre));
        }
        return this;
    }

    public String getDescription() {
        return (String) getFirstPropertyValue(DESCRIPTION.class);
    }

    public PlaylistItem setDescription(String str) {
        replaceFirstProperty(new DESCRIPTION(str));
        return this;
    }

    public String getLongDescription() {
        return (String) getFirstPropertyValue(LONG_DESCRIPTION.class);
    }

    public PlaylistItem setLongDescription(String str) {
        replaceFirstProperty(new LONG_DESCRIPTION(str));
        return this;
    }

    public String getLanguage() {
        return (String) getFirstPropertyValue(LANGUAGE.class);
    }

    public PlaylistItem setLanguage(String str) {
        replaceFirstProperty(new LANGUAGE(str));
        return this;
    }

    public StorageMedium getStorageMedium() {
        return (StorageMedium) getFirstPropertyValue(STORAGE_MEDIUM.class);
    }

    public PlaylistItem setStorageMedium(StorageMedium storageMedium) {
        replaceFirstProperty(new STORAGE_MEDIUM(storageMedium));
        return this;
    }

    public String getDate() {
        return (String) getFirstPropertyValue(DATE.class);
    }

    public PlaylistItem setDate(String str) {
        replaceFirstProperty(new DATE(str));
        return this;
    }
}
