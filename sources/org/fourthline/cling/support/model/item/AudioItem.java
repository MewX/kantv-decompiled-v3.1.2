package org.fourthline.cling.support.model.item;

import java.net.URI;
import java.util.Arrays;
import java.util.List;
import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.DESCRIPTION;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.LANGUAGE;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.PUBLISHER;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.RELATION;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.RIGHTS;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.GENRE;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.LONG_DESCRIPTION;
import org.fourthline.cling.support.model.Person;
import org.fourthline.cling.support.model.Res;
import org.fourthline.cling.support.model.container.Container;

public class AudioItem extends Item {
    public static final Class CLASS = new Class("object.item.audioItem");

    public AudioItem() {
        setClazz(CLASS);
    }

    public AudioItem(Item item) {
        super(item);
    }

    public AudioItem(String str, Container container, String str2, String str3, Res... resArr) {
        this(str, container.getId(), str2, str3, resArr);
    }

    public AudioItem(String str, String str2, String str3, String str4, Res... resArr) {
        super(str, str2, str3, str4, CLASS);
        if (resArr != null) {
            getResources().addAll(Arrays.asList(resArr));
        }
    }

    public String getFirstGenre() {
        return (String) getFirstPropertyValue(GENRE.class);
    }

    public String[] getGenres() {
        List propertyValues = getPropertyValues(GENRE.class);
        return (String[]) propertyValues.toArray(new String[propertyValues.size()]);
    }

    public AudioItem setGenres(String[] strArr) {
        removeProperties(GENRE.class);
        for (String genre : strArr) {
            addProperty(new GENRE(genre));
        }
        return this;
    }

    public String getDescription() {
        return (String) getFirstPropertyValue(DESCRIPTION.class);
    }

    public AudioItem setDescription(String str) {
        replaceFirstProperty(new DESCRIPTION(str));
        return this;
    }

    public String getLongDescription() {
        return (String) getFirstPropertyValue(LONG_DESCRIPTION.class);
    }

    public AudioItem setLongDescription(String str) {
        replaceFirstProperty(new LONG_DESCRIPTION(str));
        return this;
    }

    public Person getFirstPublisher() {
        return (Person) getFirstPropertyValue(PUBLISHER.class);
    }

    public Person[] getPublishers() {
        List propertyValues = getPropertyValues(PUBLISHER.class);
        return (Person[]) propertyValues.toArray(new Person[propertyValues.size()]);
    }

    public AudioItem setPublishers(Person[] personArr) {
        removeProperties(PUBLISHER.class);
        for (Person publisher : personArr) {
            addProperty(new PUBLISHER(publisher));
        }
        return this;
    }

    public URI getFirstRelation() {
        return (URI) getFirstPropertyValue(RELATION.class);
    }

    public URI[] getRelations() {
        List propertyValues = getPropertyValues(RELATION.class);
        return (URI[]) propertyValues.toArray(new URI[propertyValues.size()]);
    }

    public AudioItem setRelations(URI[] uriArr) {
        removeProperties(RELATION.class);
        for (URI relation : uriArr) {
            addProperty(new RELATION(relation));
        }
        return this;
    }

    public String getLanguage() {
        return (String) getFirstPropertyValue(LANGUAGE.class);
    }

    public AudioItem setLanguage(String str) {
        replaceFirstProperty(new LANGUAGE(str));
        return this;
    }

    public String getFirstRights() {
        return (String) getFirstPropertyValue(RIGHTS.class);
    }

    public String[] getRights() {
        List propertyValues = getPropertyValues(RIGHTS.class);
        return (String[]) propertyValues.toArray(new String[propertyValues.size()]);
    }

    public AudioItem setRights(String[] strArr) {
        removeProperties(RIGHTS.class);
        for (String rights : strArr) {
            addProperty(new RIGHTS(rights));
        }
        return this;
    }
}
