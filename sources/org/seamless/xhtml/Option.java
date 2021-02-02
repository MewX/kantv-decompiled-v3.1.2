package org.seamless.xhtml;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

public class Option {
    private String key;
    private String[] values;

    public Option(String str, String[] strArr) {
        this.key = str;
        this.values = strArr;
    }

    public static Option[] fromString(String str) {
        String str2 = ":";
        if (str == null || str.length() == 0) {
            return new Option[0];
        }
        ArrayList arrayList = new ArrayList();
        try {
            for (String trim : str.split(";")) {
                String trim2 = trim.trim();
                if (trim2.contains(str2)) {
                    String[] split = trim2.split(str2);
                    if (split.length == 2) {
                        String trim3 = split[0].trim();
                        String[] split2 = split[1].split(",");
                        ArrayList arrayList2 = new ArrayList();
                        for (String trim4 : split2) {
                            String trim5 = trim4.trim();
                            if (trim5.length() > 0) {
                                arrayList2.add(trim5);
                            }
                        }
                        arrayList.add(new Option(trim3, (String[]) arrayList2.toArray(new String[arrayList2.size()])));
                    }
                }
            }
            return (Option[]) arrayList.toArray(new Option[arrayList.size()]);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Can't parse options string: ");
            sb.append(str);
            throw new IllegalArgumentException(sb.toString(), e);
        }
    }

    public String getKey() {
        return this.key;
    }

    public String[] getValues() {
        return this.values;
    }

    public boolean isTrue() {
        return getValues().length == 1 && getValues()[0].toLowerCase().equals("true");
    }

    public boolean isFalse() {
        return getValues().length == 1 && getValues()[0].toLowerCase().equals("false");
    }

    public String getFirstValue() {
        return getValues()[0];
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getKey());
        sb.append(": ");
        Iterator it = Arrays.asList(getValues()).iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Option option = (Option) obj;
        return this.key.equals(option.key) && Arrays.equals(this.values, option.values);
    }

    public int hashCode() {
        return (this.key.hashCode() * 31) + Arrays.hashCode(this.values);
    }
}
