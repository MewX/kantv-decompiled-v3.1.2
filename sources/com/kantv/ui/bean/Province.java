package com.kantv.ui.bean;

import com.contrarywind.interfaces.IPickerViewData;
import java.util.List;

public class Province implements IPickerViewData {
    private List<City> children;
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

    public List<City> getChildren() {
        return this.children;
    }

    public void setChildren(List<City> list) {
        this.children = list;
    }

    public String getPickerViewText() {
        return this.name;
    }
}
