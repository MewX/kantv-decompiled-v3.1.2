package com.kantv.ui.bean;

import com.contrarywind.interfaces.IPickerViewData;

public class City implements IPickerViewData {
    private String id;
    private String name = "";

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getPickerViewText() {
        return this.name;
    }
}
