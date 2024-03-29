package org.jsoup.parser;

import java.util.Iterator;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;

public class ParseSettings {
    public static final ParseSettings htmlDefault = new ParseSettings(false, false);
    public static final ParseSettings preserveCase = new ParseSettings(true, true);
    private final boolean preserveAttributeCase;
    private final boolean preserveTagCase;

    public ParseSettings(boolean z, boolean z2) {
        this.preserveTagCase = z;
        this.preserveAttributeCase = z2;
    }

    /* access modifiers changed from: 0000 */
    public String normalizeTag(String str) {
        String trim = str.trim();
        return !this.preserveTagCase ? trim.toLowerCase() : trim;
    }

    /* access modifiers changed from: 0000 */
    public String normalizeAttribute(String str) {
        String trim = str.trim();
        return !this.preserveAttributeCase ? trim.toLowerCase() : trim;
    }

    /* access modifiers changed from: 0000 */
    public Attributes normalizeAttributes(Attributes attributes) {
        if (!this.preserveAttributeCase) {
            Iterator it = attributes.iterator();
            while (it.hasNext()) {
                Attribute attribute = (Attribute) it.next();
                attribute.setKey(attribute.getKey().toLowerCase());
            }
        }
        return attributes;
    }
}
