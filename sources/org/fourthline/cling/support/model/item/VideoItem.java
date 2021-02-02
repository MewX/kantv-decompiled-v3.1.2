package org.fourthline.cling.support.model.item;

import java.net.URI;
import java.util.Arrays;
import java.util.List;
import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.DESCRIPTION;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.LANGUAGE;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.PUBLISHER;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.RELATION;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.ACTOR;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.DIRECTOR;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.GENRE;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.LONG_DESCRIPTION;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.PRODUCER;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.RATING;
import org.fourthline.cling.support.model.Person;
import org.fourthline.cling.support.model.PersonWithRole;
import org.fourthline.cling.support.model.Res;
import org.fourthline.cling.support.model.container.Container;

public class VideoItem extends Item {
    public static final Class CLASS = new Class("object.item.videoItem");

    public VideoItem() {
        setClazz(CLASS);
    }

    public VideoItem(Item item) {
        super(item);
    }

    public VideoItem(String str, Container container, String str2, String str3, Res... resArr) {
        this(str, container.getId(), str2, str3, resArr);
    }

    public VideoItem(String str, String str2, String str3, String str4, Res... resArr) {
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

    public VideoItem setGenres(String[] strArr) {
        removeProperties(GENRE.class);
        for (String genre : strArr) {
            addProperty(new GENRE(genre));
        }
        return this;
    }

    public String getDescription() {
        return (String) getFirstPropertyValue(DESCRIPTION.class);
    }

    public VideoItem setDescription(String str) {
        replaceFirstProperty(new DESCRIPTION(str));
        return this;
    }

    public String getLongDescription() {
        return (String) getFirstPropertyValue(LONG_DESCRIPTION.class);
    }

    public VideoItem setLongDescription(String str) {
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

    public VideoItem setProducers(Person[] personArr) {
        removeProperties(PRODUCER.class);
        for (Person producer : personArr) {
            addProperty(new PRODUCER(producer));
        }
        return this;
    }

    public String getRating() {
        return (String) getFirstPropertyValue(RATING.class);
    }

    public VideoItem setRating(String str) {
        replaceFirstProperty(new RATING(str));
        return this;
    }

    public PersonWithRole getFirstActor() {
        return (PersonWithRole) getFirstPropertyValue(ACTOR.class);
    }

    public PersonWithRole[] getActors() {
        List propertyValues = getPropertyValues(ACTOR.class);
        return (PersonWithRole[]) propertyValues.toArray(new PersonWithRole[propertyValues.size()]);
    }

    public VideoItem setActors(PersonWithRole[] personWithRoleArr) {
        removeProperties(ACTOR.class);
        for (PersonWithRole actor : personWithRoleArr) {
            addProperty(new ACTOR(actor));
        }
        return this;
    }

    public Person getFirstDirector() {
        return (Person) getFirstPropertyValue(DIRECTOR.class);
    }

    public Person[] getDirectors() {
        List propertyValues = getPropertyValues(DIRECTOR.class);
        return (Person[]) propertyValues.toArray(new Person[propertyValues.size()]);
    }

    public VideoItem setDirectors(Person[] personArr) {
        removeProperties(DIRECTOR.class);
        for (Person director : personArr) {
            addProperty(new DIRECTOR(director));
        }
        return this;
    }

    public Person getFirstPublisher() {
        return (Person) getFirstPropertyValue(PUBLISHER.class);
    }

    public Person[] getPublishers() {
        List propertyValues = getPropertyValues(PUBLISHER.class);
        return (Person[]) propertyValues.toArray(new Person[propertyValues.size()]);
    }

    public VideoItem setPublishers(Person[] personArr) {
        removeProperties(PUBLISHER.class);
        for (Person publisher : personArr) {
            addProperty(new PUBLISHER(publisher));
        }
        return this;
    }

    public String getLanguage() {
        return (String) getFirstPropertyValue(LANGUAGE.class);
    }

    public VideoItem setLanguage(String str) {
        replaceFirstProperty(new LANGUAGE(str));
        return this;
    }

    public URI getFirstRelation() {
        return (URI) getFirstPropertyValue(RELATION.class);
    }

    public URI[] getRelations() {
        List propertyValues = getPropertyValues(RELATION.class);
        return (URI[]) propertyValues.toArray(new URI[propertyValues.size()]);
    }

    public VideoItem setRelations(URI[] uriArr) {
        removeProperties(RELATION.class);
        for (URI relation : uriArr) {
            addProperty(new RELATION(relation));
        }
        return this;
    }
}
