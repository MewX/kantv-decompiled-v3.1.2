package org.fourthline.cling.support.model.item;

import java.net.URI;
import java.util.Arrays;
import java.util.List;
import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.CONTRIBUTOR;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.DATE;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.DESCRIPTION;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.LANGUAGE;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.PUBLISHER;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.RELATION;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.RIGHTS;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.AUTHOR;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.LONG_DESCRIPTION;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.RATING;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_MEDIUM;
import org.fourthline.cling.support.model.Person;
import org.fourthline.cling.support.model.PersonWithRole;
import org.fourthline.cling.support.model.Res;
import org.fourthline.cling.support.model.StorageMedium;
import org.fourthline.cling.support.model.container.Container;

public class TextItem extends Item {
    public static final Class CLASS = new Class("object.item.textItem");

    public TextItem() {
        setClazz(CLASS);
    }

    public TextItem(Item item) {
        super(item);
    }

    public TextItem(String str, Container container, String str2, String str3, Res... resArr) {
        this(str, container.getId(), str2, str3, resArr);
    }

    public TextItem(String str, String str2, String str3, String str4, Res... resArr) {
        super(str, str2, str3, str4, CLASS);
        if (resArr != null) {
            getResources().addAll(Arrays.asList(resArr));
        }
    }

    public PersonWithRole getFirstAuthor() {
        return (PersonWithRole) getFirstPropertyValue(AUTHOR.class);
    }

    public PersonWithRole[] getAuthors() {
        List propertyValues = getPropertyValues(AUTHOR.class);
        return (PersonWithRole[]) propertyValues.toArray(new PersonWithRole[propertyValues.size()]);
    }

    public TextItem setAuthors(PersonWithRole[] personWithRoleArr) {
        removeProperties(AUTHOR.class);
        for (PersonWithRole author : personWithRoleArr) {
            addProperty(new AUTHOR(author));
        }
        return this;
    }

    public String getDescription() {
        return (String) getFirstPropertyValue(DESCRIPTION.class);
    }

    public TextItem setDescription(String str) {
        replaceFirstProperty(new DESCRIPTION(str));
        return this;
    }

    public String getLongDescription() {
        return (String) getFirstPropertyValue(LONG_DESCRIPTION.class);
    }

    public TextItem setLongDescription(String str) {
        replaceFirstProperty(new LONG_DESCRIPTION(str));
        return this;
    }

    public String getLanguage() {
        return (String) getFirstPropertyValue(LANGUAGE.class);
    }

    public TextItem setLanguage(String str) {
        replaceFirstProperty(new LANGUAGE(str));
        return this;
    }

    public StorageMedium getStorageMedium() {
        return (StorageMedium) getFirstPropertyValue(STORAGE_MEDIUM.class);
    }

    public TextItem setStorageMedium(StorageMedium storageMedium) {
        replaceFirstProperty(new STORAGE_MEDIUM(storageMedium));
        return this;
    }

    public String getDate() {
        return (String) getFirstPropertyValue(DATE.class);
    }

    public TextItem setDate(String str) {
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

    public TextItem setRelations(URI[] uriArr) {
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

    public TextItem setRights(String[] strArr) {
        removeProperties(RIGHTS.class);
        for (String rights : strArr) {
            addProperty(new RIGHTS(rights));
        }
        return this;
    }

    public String getRating() {
        return (String) getFirstPropertyValue(RATING.class);
    }

    public TextItem setRating(String str) {
        replaceFirstProperty(new RATING(str));
        return this;
    }

    public Person getFirstContributor() {
        return (Person) getFirstPropertyValue(CONTRIBUTOR.class);
    }

    public Person[] getContributors() {
        List propertyValues = getPropertyValues(CONTRIBUTOR.class);
        return (Person[]) propertyValues.toArray(new Person[propertyValues.size()]);
    }

    public TextItem setContributors(Person[] personArr) {
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

    public TextItem setPublishers(Person[] personArr) {
        removeProperties(PUBLISHER.class);
        for (Person publisher : personArr) {
            addProperty(new PUBLISHER(publisher));
        }
        return this;
    }
}
