package org.fourthline.cling.support.model.container;

import java.util.List;
import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.CONTRIBUTOR;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.DATE;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.DESCRIPTION;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.LANGUAGE;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.RIGHTS;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ARTIST;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.GENRE;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.LONG_DESCRIPTION;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.PRODUCER;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_MEDIUM;
import org.fourthline.cling.support.model.Person;
import org.fourthline.cling.support.model.PersonWithRole;
import org.fourthline.cling.support.model.StorageMedium;

public class PlaylistContainer extends Container {
    public static final Class CLASS = new Class("object.container.playlistContainer");

    public PlaylistContainer() {
        setClazz(CLASS);
    }

    public PlaylistContainer(Container container) {
        super(container);
    }

    public PlaylistContainer(String str, Container container, String str2, String str3, Integer num) {
        this(str, container.getId(), str2, str3, num);
    }

    public PlaylistContainer(String str, String str2, String str3, String str4, Integer num) {
        super(str, str2, str3, str4, CLASS, num);
    }

    public PersonWithRole getFirstArtist() {
        return (PersonWithRole) getFirstPropertyValue(ARTIST.class);
    }

    public PersonWithRole[] getArtists() {
        List propertyValues = getPropertyValues(ARTIST.class);
        return (PersonWithRole[]) propertyValues.toArray(new PersonWithRole[propertyValues.size()]);
    }

    public PlaylistContainer setArtists(PersonWithRole[] personWithRoleArr) {
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

    public PlaylistContainer setGenres(String[] strArr) {
        removeProperties(GENRE.class);
        for (String genre : strArr) {
            addProperty(new GENRE(genre));
        }
        return this;
    }

    public String getDescription() {
        return (String) getFirstPropertyValue(DESCRIPTION.class);
    }

    public PlaylistContainer setDescription(String str) {
        replaceFirstProperty(new DESCRIPTION(str));
        return this;
    }

    public String getLongDescription() {
        return (String) getFirstPropertyValue(LONG_DESCRIPTION.class);
    }

    public PlaylistContainer setLongDescription(String str) {
        replaceFirstProperty(new LONG_DESCRIPTION(str));
        return this;
    }

    public Person getFirstProducer() {
        return (Person) getFirstPropertyValue(PRODUCER.class);
    }

    public Person[] getProducers() {
        List propertyValues = getPropertyValues(PRODUCER.class);
        return (Person[]) propertyValues.toArray(new Person[propertyValues.size()]);
    }

    public PlaylistContainer setProducers(Person[] personArr) {
        removeProperties(PRODUCER.class);
        for (Person producer : personArr) {
            addProperty(new PRODUCER(producer));
        }
        return this;
    }

    public StorageMedium getStorageMedium() {
        return (StorageMedium) getFirstPropertyValue(STORAGE_MEDIUM.class);
    }

    public PlaylistContainer setStorageMedium(StorageMedium storageMedium) {
        replaceFirstProperty(new STORAGE_MEDIUM(storageMedium));
        return this;
    }

    public String getDate() {
        return (String) getFirstPropertyValue(DATE.class);
    }

    public PlaylistContainer setDate(String str) {
        replaceFirstProperty(new DATE(str));
        return this;
    }

    public String getFirstRights() {
        return (String) getFirstPropertyValue(RIGHTS.class);
    }

    public String[] getRights() {
        List propertyValues = getPropertyValues(RIGHTS.class);
        return (String[]) propertyValues.toArray(new String[propertyValues.size()]);
    }

    public PlaylistContainer setRights(String[] strArr) {
        removeProperties(RIGHTS.class);
        for (String rights : strArr) {
            addProperty(new RIGHTS(rights));
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

    public PlaylistContainer setContributors(Person[] personArr) {
        removeProperties(CONTRIBUTOR.class);
        for (Person contributor : personArr) {
            addProperty(new CONTRIBUTOR(contributor));
        }
        return this;
    }

    public String getLanguage() {
        return (String) getFirstPropertyValue(LANGUAGE.class);
    }

    public PlaylistContainer setLanguage(String str) {
        replaceFirstProperty(new LANGUAGE(str));
        return this;
    }
}
