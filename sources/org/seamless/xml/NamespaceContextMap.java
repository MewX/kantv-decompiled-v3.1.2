package org.seamless.xml;

import java.util.HashMap;
import java.util.Iterator;
import javax.xml.namespace.NamespaceContext;

public abstract class NamespaceContextMap extends HashMap<String, String> implements NamespaceContext {
    /* access modifiers changed from: protected */
    public abstract String getDefaultNamespaceURI();

    public String getPrefix(String str) {
        return null;
    }

    public Iterator getPrefixes(String str) {
        return null;
    }

    public String getNamespaceURI(String str) {
        if (str != null) {
            String str2 = "";
            if (str.equals(str2)) {
                return getDefaultNamespaceURI();
            }
            return get(str) != null ? (String) get(str) : str2;
        }
        throw new IllegalArgumentException("No prefix provided!");
    }
}
