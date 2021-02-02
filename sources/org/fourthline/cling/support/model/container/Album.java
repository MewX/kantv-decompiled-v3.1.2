package org.fourthline.cling.support.model.container;

import java.net.URI;
import java.util.List;
import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.CONTRIBUTOR;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.DATE;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.DESCRIPTION;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.PUBLISHER;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.RELATION;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.RIGHTS;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.LONG_DESCRIPTION;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_MEDIUM;
import org.fourthline.cling.support.model.Person;
import org.fourthline.cling.support.model.StorageMedium;

public class Album extends Container {
    public static final Class CLASS = new Class("object.container.album");

    public Album() {
        setClazz(CLASS);
    }

    public Album(Container container) {
        super(container);
    }

    public Album(String str, Container container, String str2, String str3, Integer num) {
        this(str, container.getId(), str2, str3, num);
    }

    public Album(String str, String str2, String str3, String str4, Integer num) {
        super(str, str2, str3, str4, CLASS, num);
    }

    public String getDescription() {
        return (String) getFirstPropertyValue(DESCRIPTION.class);
    }

    public Album setDescription(String str) {
        replaceFirstProperty(new DESCRIPTION(str));
        return this;
    }

    public String getLongDescription() {
        return (String) getFirstPropertyValue(LONG_DESCRIPTION.class);
    }

    public Album setLongDescription(String str) {
        replaceFirstProperty(new LONG_DESCRIPTION(str));
        return this;
    }

    public StorageMedium getStorageMedium() {
        return (StorageMedium) getFirstPropertyValue(STORAGE_MEDIUM.class);
    }

    public Album setStorageMedium(StorageMedium storageMedium) {
        replaceFirstProperty(new STORAGE_MEDIUM(storageMedium));
        return this;
    }

    public String getDate() {
        return (String) getFirstPropertyValue(DATE.class);
    }

    public Album setDate(String str) {
        replaceFirstProperty(new DATE(str));
        return this;
    }

    public URI getFirstRelation() {
        return (URI) getFirstPropertyValue(RELATION.class);
    }

    public URI[] getRelations() {
        List propertyValues = getPropertyValues(RELATION.class);
        return (URI[]) propertyValues.toArray(new URI[propertyValues.size()]);
    }

    public Album setRelations(URI[] uriArr) {
        removeProperties(RELATION.class);
        for (URI relation : uriArr) {
            addProperty(new RELATION(relation));
        }
        return this;
    }

    public String getFirstRights() {
        return (String) getFirstPropertyValue(RIGHTS.class);
    }

    public String[] getRights() {
        List propertyValues = getPropertyValues(RIGHTS.class);
        return (String[]) propertyValues.toArray(new String[propertyValues.size()]);
    }

    public Album setRights(String[] strArr) {
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

    public Album setContributors(Person[] personArr) {
        removeProperties(CONTRIBUTOR.class);
        for (Person contributor : personArr) {
            addProperty(new CONTRIBUTOR(contributor));
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

    public Album setPublishers(Person[] personArr) {
        removeProperties(PUBLISHER.class);
        for (Person publisher : personArr) {
            addProperty(new PUBLISHER(publisher));
        }
        return this;
    }
}
