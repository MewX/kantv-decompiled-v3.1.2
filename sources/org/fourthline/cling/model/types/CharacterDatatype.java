package org.fourthline.cling.model.types;

public class CharacterDatatype extends AbstractDatatype<Character> {
    public boolean isHandlingJavaType(Class cls) {
        return cls == Character.TYPE || Character.class.isAssignableFrom(cls);
    }

    public Character valueOf(String str) throws InvalidValueException {
        if (str.equals("")) {
            return null;
        }
        return Character.valueOf(str.charAt(0));
    }
}
