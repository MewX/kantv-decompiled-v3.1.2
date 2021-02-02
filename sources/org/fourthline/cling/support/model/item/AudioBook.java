package org.fourthline.cling.support.model.item;

import java.util.List;
import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.CONTRIBUTOR;
import org.fourthline.cling.support.model.DIDLObject.Property.DC.DATE;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.PRODUCER;
import org.fourthline.cling.support.model.DIDLObject.Property.UPNP.STORAGE_MEDIUM;
import org.fourthline.cling.support.model.Person;
import org.fourthline.cling.support.model.Res;
import org.fourthline.cling.support.model.StorageMedium;
import org.fourthline.cling.support.model.container.Container;

public class AudioBook extends AudioItem {
    public static final Class CLASS = new Class("object.item.audioItem.audioBook");

    public AudioBook() {
        setClazz(CLASS);
    }

    public AudioBook(Item item) {
        super(item);
    }

    public AudioBook(String str, Container container, String str2, String str3, Res... resArr) {
        this(str, container.getId(), str2, str3, (Person) null, (Person) null, (String) null, resArr);
    }

    public AudioBook(String str, Container container, String str2, String str3, String str4, String str5, String str6, Res... resArr) {
        String str7 = str4;
        String str8 = str5;
        this(str, container.getId(), str2, str3, new Person(str4), new Person(str5), str6, resArr);
    }

    public AudioBook(String str, String str2, String str3, String str4, Person person, Person person2, String str5, Res... resArr) {
        super(str, str2, str3, str4, resArr);
        setClazz(CLASS);
        if (person != null) {
            addProperty(new PRODUCER(person));
        }
        if (person2 != null) {
            addProperty(new CONTRIBUTOR(person2));
        }
        if (str5 != null) {
            setDate(str5);
        }
    }

    public StorageMedium getStorageMedium() {
        return (StorageMedium) getFirstPropertyValue(STORAGE_MEDIUM.class);
    }

    public AudioBook setStorageMedium(StorageMedium storageMedium) {
        replaceFirstProperty(new STORAGE_MEDIUM(storageMedium));
        return this;
    }

    public Person getFirstProducer() {
        return (Person) getFirstPropertyValue(PRODUCER.class);
    }

    public Person[] getProducers() {
        List propertyValues = getPropertyValues(PRODUCER.class);
        return (Person[]) propertyValues.toArray(new Person[propertyValues.size()]);
    }

    public AudioBook setProducers(Person[] personArr) {
        removeProperties(PRODUCER.class);
        for (Person producer : personArr) {
            addProperty(new PRODUCER(producer));
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

    public AudioBook setContributors(Person[] personArr) {
        removeProperties(CONTRIBUTOR.class);
        for (Person contributor : personArr) {
            addProperty(new CONTRIBUTOR(contributor));
        }
        return this;
    }

    public String getDate() {
        return (String) getFirstPropertyValue(DATE.class);
    }

    public AudioBook setDate(String str) {
        replaceFirstProperty(new DATE(str));
        return this;
    }
}
