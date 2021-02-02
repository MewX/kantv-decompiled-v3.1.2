package org.jsoup.nodes;

import java.io.IOException;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.jsoup.SerializationException;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document.OutputSettings;

public class Attributes implements Iterable<Attribute>, Cloneable {
    protected static final String dataPrefix = "data-";
    /* access modifiers changed from: private */
    public LinkedHashMap<String, Attribute> attributes = null;

    private class Dataset extends AbstractMap<String, String> {

        private class DatasetIterator implements Iterator<Entry<String, String>> {
            private Attribute attr;
            private Iterator<Attribute> attrIter;

            private DatasetIterator() {
                this.attrIter = Attributes.this.attributes.values().iterator();
            }

            public boolean hasNext() {
                while (this.attrIter.hasNext()) {
                    this.attr = (Attribute) this.attrIter.next();
                    if (this.attr.isDataAttribute()) {
                        return true;
                    }
                }
                return false;
            }

            public Entry<String, String> next() {
                return new Attribute(this.attr.getKey().substring(5), this.attr.getValue());
            }

            public void remove() {
                Attributes.this.attributes.remove(this.attr.getKey());
            }
        }

        private class EntrySet extends AbstractSet<Entry<String, String>> {
            private EntrySet() {
            }

            public Iterator<Entry<String, String>> iterator() {
                return new DatasetIterator();
            }

            public int size() {
                int i = 0;
                while (new DatasetIterator().hasNext()) {
                    i++;
                }
                return i;
            }
        }

        private Dataset() {
            if (Attributes.this.attributes == null) {
                Attributes.this.attributes = new LinkedHashMap(2);
            }
        }

        public Set<Entry<String, String>> entrySet() {
            return new EntrySet();
        }

        public String put(String str, String str2) {
            String access$300 = Attributes.dataKey(str);
            String value = Attributes.this.hasKey(access$300) ? ((Attribute) Attributes.this.attributes.get(access$300)).getValue() : null;
            Attributes.this.attributes.put(access$300, new Attribute(access$300, str2));
            return value;
        }
    }

    public String get(String str) {
        Validate.notEmpty(str);
        LinkedHashMap<String, Attribute> linkedHashMap = this.attributes;
        String str2 = "";
        if (linkedHashMap == null) {
            return str2;
        }
        Attribute attribute = (Attribute) linkedHashMap.get(str);
        if (attribute != null) {
            str2 = attribute.getValue();
        }
        return str2;
    }

    public String getIgnoreCase(String str) {
        Validate.notEmpty(str);
        LinkedHashMap<String, Attribute> linkedHashMap = this.attributes;
        String str2 = "";
        if (linkedHashMap == null) {
            return str2;
        }
        for (String str3 : linkedHashMap.keySet()) {
            if (str3.equalsIgnoreCase(str)) {
                return ((Attribute) this.attributes.get(str3)).getValue();
            }
        }
        return str2;
    }

    public void put(String str, String str2) {
        put(new Attribute(str, str2));
    }

    public void put(String str, boolean z) {
        if (z) {
            put(new BooleanAttribute(str));
        } else {
            remove(str);
        }
    }

    public void put(Attribute attribute) {
        Validate.notNull(attribute);
        if (this.attributes == null) {
            this.attributes = new LinkedHashMap<>(2);
        }
        this.attributes.put(attribute.getKey(), attribute);
    }

    public void remove(String str) {
        Validate.notEmpty(str);
        LinkedHashMap<String, Attribute> linkedHashMap = this.attributes;
        if (linkedHashMap != null) {
            linkedHashMap.remove(str);
        }
    }

    public void removeIgnoreCase(String str) {
        Validate.notEmpty(str);
        LinkedHashMap<String, Attribute> linkedHashMap = this.attributes;
        if (linkedHashMap != null) {
            for (String str2 : linkedHashMap.keySet()) {
                if (str2.equalsIgnoreCase(str)) {
                    this.attributes.remove(str2);
                }
            }
        }
    }

    public boolean hasKey(String str) {
        LinkedHashMap<String, Attribute> linkedHashMap = this.attributes;
        return linkedHashMap != null && linkedHashMap.containsKey(str);
    }

    public boolean hasKeyIgnoreCase(String str) {
        LinkedHashMap<String, Attribute> linkedHashMap = this.attributes;
        if (linkedHashMap == null) {
            return false;
        }
        for (String equalsIgnoreCase : linkedHashMap.keySet()) {
            if (equalsIgnoreCase.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    public int size() {
        LinkedHashMap<String, Attribute> linkedHashMap = this.attributes;
        if (linkedHashMap == null) {
            return 0;
        }
        return linkedHashMap.size();
    }

    public void addAll(Attributes attributes2) {
        if (attributes2.size() != 0) {
            if (this.attributes == null) {
                this.attributes = new LinkedHashMap<>(attributes2.size());
            }
            this.attributes.putAll(attributes2.attributes);
        }
    }

    public Iterator<Attribute> iterator() {
        LinkedHashMap<String, Attribute> linkedHashMap = this.attributes;
        if (linkedHashMap == null || linkedHashMap.isEmpty()) {
            return Collections.emptyList().iterator();
        }
        return this.attributes.values().iterator();
    }

    public List<Attribute> asList() {
        LinkedHashMap<String, Attribute> linkedHashMap = this.attributes;
        if (linkedHashMap == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Entry value : this.attributes.entrySet()) {
            arrayList.add(value.getValue());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Map<String, String> dataset() {
        return new Dataset();
    }

    public String html() {
        StringBuilder sb = new StringBuilder();
        try {
            html(sb, new Document("").outputSettings());
            return sb.toString();
        } catch (IOException e) {
            throw new SerializationException((Throwable) e);
        }
    }

    /* access modifiers changed from: 0000 */
    public void html(Appendable appendable, OutputSettings outputSettings) throws IOException {
        LinkedHashMap<String, Attribute> linkedHashMap = this.attributes;
        if (linkedHashMap != null) {
            for (Entry value : linkedHashMap.entrySet()) {
                Attribute attribute = (Attribute) value.getValue();
                appendable.append(" ");
                attribute.html(appendable, outputSettings);
            }
        }
    }

    public String toString() {
        return html();
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Attributes)) {
            return false;
        }
        Attributes attributes2 = (Attributes) obj;
        LinkedHashMap<String, Attribute> linkedHashMap = this.attributes;
        if (linkedHashMap == null ? attributes2.attributes != null : !linkedHashMap.equals(attributes2.attributes)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        LinkedHashMap<String, Attribute> linkedHashMap = this.attributes;
        if (linkedHashMap != null) {
            return linkedHashMap.hashCode();
        }
        return 0;
    }

    public Attributes clone() {
        if (this.attributes == null) {
            return new Attributes();
        }
        try {
            Attributes attributes2 = (Attributes) super.clone();
            attributes2.attributes = new LinkedHashMap<>(this.attributes.size());
            Iterator it = iterator();
            while (it.hasNext()) {
                Attribute attribute = (Attribute) it.next();
                attributes2.attributes.put(attribute.getKey(), attribute.clone());
            }
            return attributes2;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* access modifiers changed from: private */
    public static String dataKey(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(dataPrefix);
        sb.append(str);
        return sb.toString();
    }
}
