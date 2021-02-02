package org.fourthline.cling.support.model.item;

import java.util.Arrays;
import java.util.List;
import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.DATE;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.DESCRIPTION;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.PUBLISHER;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.RIGHTS;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.LONG_DESCRIPTION;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.RATING;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_MEDIUM;
import org.fourthline.cling.support.model.Person;
import org.fourthline.cling.support.model.Res;
import org.fourthline.cling.support.model.StorageMedium;
import org.fourthline.cling.support.model.container.Container;

public class ImageItem extends Item {
    public static final Class CLASS = new Class("object.item.imageItem");

    public ImageItem() {
        setClazz(CLASS);
    }

    public ImageItem(Item item) {
        super(item);
    }

    public ImageItem(String str, Container container, String str2, String str3, Res... resArr) {
        this(str, container.getId(), str2, str3, resArr);
    }

    public ImageItem(String str, String str2, String str3, String str4, Res... resArr) {
        super(str, str2, str3, str4, CLASS);
        if (resArr != null) {
            getResources().addAll(Arrays.asList(resArr));
        }
    }

    public String getDescription() {
        return (String) getFirstPropertyValue(DESCRIPTION.class);
    }

    public ImageItem setDescription(String str) {
        replaceFirstProperty(new DESCRIPTION(str));
        return this;
    }

    public String getLongDescription() {
        return (String) getFirstPropertyValue(LONG_DESCRIPTION.class);
    }

    public ImageItem setLongDescription(String str) {
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

    public ImageItem setPublishers(Person[] personArr) {
        removeProperties(PUBLISHER.class);
        for (Person publisher : personArr) {
            addProperty(new PUBLISHER(publisher));
        }
        return this;
    }

    public StorageMedium getStorageMedium() {
        return (StorageMedium) getFirstPropertyValue(STORAGE_MEDIUM.class);
    }

    public ImageItem setStorageMedium(StorageMedium storageMedium) {
        replaceFirstProperty(new STORAGE_MEDIUM(storageMedium));
        return this;
    }

    public String getRating() {
        return (String) getFirstPropertyValue(RATING.class);
    }

    public ImageItem setRating(String str) {
        replaceFirstProperty(new RATING(str));
        return this;
    }

    public String getDate() {
        return (String) getFirstPropertyValue(DATE.class);
    }

    public ImageItem setDate(String str) {
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

    public ImageItem setRights(String[] strArr) {
        removeProperties(RIGHTS.class);
        for (String rights : strArr) {
            addProperty(new RIGHTS(rights));
        }
        return this;
    }
}
