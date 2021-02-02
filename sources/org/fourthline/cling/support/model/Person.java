package org.fourthline.cling.support.model;

public class Person {
    private String name;

    public Person(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.name.equals(((Person) obj).name);
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public String toString() {
        return getName();
    }
}
