package org.fourthline.cling.support.messagebox.model;

import org.fourthline.cling.support.messagebox.parser.MessageElement;

public class NumberName implements ElementAppender {
    private String name;
    private String number;

    public NumberName(String str, String str2) {
        this.number = str;
        this.name = str2;
    }

    public String getNumber() {
        return this.number;
    }

    public String getName() {
        return this.name;
    }

    public void appendMessageElements(MessageElement messageElement) {
        ((MessageElement) messageElement.createChild("Number")).setContent(getNumber());
        ((MessageElement) messageElement.createChild("Name")).setContent(getName());
    }
}
