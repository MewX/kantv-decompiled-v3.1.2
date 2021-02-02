package org.fourthline.cling.model.types;

public class CustomDatatype extends AbstractDatatype<String> {
    private String name;

    public CustomDatatype(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }

    public String valueOf(String str) throws InvalidValueException {
        if (str.equals("")) {
            return null;
        }
        return str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(getClass().getSimpleName());
        sb.append(") '");
        sb.append(getName());
        sb.append("'");
        return sb.toString();
    }
}
