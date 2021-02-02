package org.fourthline.cling.support.model.item;

import java.util.ArrayList;
import java.util.List;
import org.fourthline.cling.support.model.DIDLObject;
import org.fourthline.cling.support.model.DIDLObject.Class;
import org.fourthline.cling.support.model.DIDLObject.Property;
import org.fourthline.cling.support.model.DescMeta;
import org.fourthline.cling.support.model.Res;
import org.fourthline.cling.support.model.WriteStatus;
import org.fourthline.cling.support.model.container.Container;

public class Item extends DIDLObject {
    protected String refID;

    public Item() {
    }

    public Item(Item item) {
        super(item);
        setRefID(item.getRefID());
    }

    public Item(String str, String str2, String str3, String str4, boolean z, WriteStatus writeStatus, Class classR, List<Res> list, List<Property> list2, List<DescMeta> list3) {
        super(str, str2, str3, str4, z, writeStatus, classR, list, list2, list3);
    }

    public Item(String str, String str2, String str3, String str4, boolean z, WriteStatus writeStatus, Class classR, List<Res> list, List<Property> list2, List<DescMeta> list3, String str5) {
        super(str, str2, str3, str4, z, writeStatus, classR, list, list2, list3);
        this.refID = str5;
    }

    public Item(String str, Container container, String str2, String str3, Class classR) {
        this(str, container.getId(), str2, str3, false, null, classR, new ArrayList(), new ArrayList(), new ArrayList());
    }

    public Item(String str, Container container, String str2, String str3, Class classR, String str4) {
        this(str, container.getId(), str2, str3, false, null, classR, new ArrayList(), new ArrayList(), new ArrayList(), str4);
    }

    public Item(String str, String str2, String str3, String str4, Class classR) {
        this(str, str2, str3, str4, false, null, classR, new ArrayList(), new ArrayList(), new ArrayList());
    }

    public Item(String str, String str2, String str3, String str4, Class classR, String str5) {
        this(str, str2, str3, str4, false, null, classR, new ArrayList(), new ArrayList(), new ArrayList(), str5);
    }

    public String getRefID() {
        return this.refID;
    }

    public void setRefID(String str) {
        this.refID = str;
    }
}
