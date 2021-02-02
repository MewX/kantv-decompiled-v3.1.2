package org.jsoup.safety;

import com.avos.avoscloud.im.v2.Conversation;
import com.tencent.connect.common.Constants;
import com.tencent.open.SocialConstants;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Element;

public class Whitelist {
    private Map<TagName, Set<AttributeKey>> attributes = new HashMap();
    private Map<TagName, Map<AttributeKey, AttributeValue>> enforcedAttributes = new HashMap();
    private boolean preserveRelativeLinks = false;
    private Map<TagName, Map<AttributeKey, Set<Protocol>>> protocols = new HashMap();
    private Set<TagName> tagNames = new HashSet();

    static class AttributeKey extends TypedValue {
        AttributeKey(String str) {
            super(str);
        }

        static AttributeKey valueOf(String str) {
            return new AttributeKey(str);
        }
    }

    static class AttributeValue extends TypedValue {
        AttributeValue(String str) {
            super(str);
        }

        static AttributeValue valueOf(String str) {
            return new AttributeValue(str);
        }
    }

    static class Protocol extends TypedValue {
        Protocol(String str) {
            super(str);
        }

        static Protocol valueOf(String str) {
            return new Protocol(str);
        }
    }

    static class TagName extends TypedValue {
        TagName(String str) {
            super(str);
        }

        static TagName valueOf(String str) {
            return new TagName(str);
        }
    }

    static abstract class TypedValue {
        private String value;

        TypedValue(String str) {
            Validate.notNull(str);
            this.value = str;
        }

        public int hashCode() {
            String str = this.value;
            return 31 + (str == null ? 0 : str.hashCode());
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            TypedValue typedValue = (TypedValue) obj;
            String str = this.value;
            if (str == null) {
                if (typedValue.value != null) {
                    return false;
                }
            } else if (!str.equals(typedValue.value)) {
                return false;
            }
            return true;
        }

        public String toString() {
            return this.value;
        }
    }

    public static Whitelist none() {
        return new Whitelist();
    }

    public static Whitelist simpleText() {
        return new Whitelist().addTags("b", "em", "i", "strong", "u");
    }

    public static Whitelist basic() {
        String str = "href";
        String str2 = "a";
        String str3 = "cite";
        String str4 = "blockquote";
        String str5 = "q";
        Whitelist addAttributes = new Whitelist().addTags("a", "b", "blockquote", TtmlNode.TAG_BR, "cite", "code", "dd", "dl", "dt", "em", "i", "li", "ol", TtmlNode.TAG_P, "pre", "q", "small", TtmlNode.TAG_SPAN, "strike", "strong", "sub", "sup", "u", "ul").addAttributes(str2, str).addAttributes(str4, str3).addAttributes(str5, str3);
        String str6 = "https";
        String str7 = "http";
        return addAttributes.addProtocols(str2, str, "ftp", str7, str6, "mailto").addProtocols(str4, str3, str7, str6).addProtocols(str3, str3, str7, str6).addEnforcedAttribute(str2, "rel", "nofollow");
    }

    public static Whitelist basicWithImages() {
        Whitelist basic = basic();
        String str = SocialConstants.PARAM_IMG_URL;
        return basic.addTags(str).addAttributes(str, "align", "alt", "height", "src", "title", "width").addProtocols(str, "src", "http", "https");
    }

    public static Whitelist relaxed() {
        String str = "href";
        String str2 = "a";
        String str3 = "cite";
        String str4 = "blockquote";
        Whitelist addAttributes = new Whitelist().addTags("a", "b", "blockquote", TtmlNode.TAG_BR, "caption", "cite", "code", "col", "colgroup", "dd", TtmlNode.TAG_DIV, "dl", "dt", "em", "h1", "h2", "h3", "h4", "h5", "h6", "i", SocialConstants.PARAM_IMG_URL, "li", "ol", TtmlNode.TAG_P, "pre", "q", "small", TtmlNode.TAG_SPAN, "strike", "strong", "sub", "sup", "table", "tbody", "td", "tfoot", "th", "thead", Conversation.TRANSIENT, "u", "ul").addAttributes(str2, str, "title").addAttributes(str4, str3);
        String str5 = TtmlNode.TAG_SPAN;
        String str6 = "width";
        String str7 = "colgroup";
        Whitelist addAttributes2 = addAttributes.addAttributes("col", str5, str6).addAttributes(str7, str5, str6);
        String[] strArr = {"align", "alt", "height", "src", "title", "width"};
        String str8 = SocialConstants.PARAM_IMG_URL;
        Whitelist addAttributes3 = addAttributes2.addAttributes(str8, strArr);
        String str9 = "type";
        String str10 = "q";
        String str11 = "table";
        Whitelist addAttributes4 = addAttributes3.addAttributes("ol", "start", str9).addAttributes(str10, str3).addAttributes(str11, "summary", str6);
        String[] strArr2 = {"abbr", "axis", "colspan", "rowspan", str6};
        String str12 = "ul";
        Whitelist addAttributes5 = addAttributes4.addAttributes("td", strArr2).addAttributes("th", "abbr", "axis", "colspan", "rowspan", Constants.PARAM_SCOPE, "width").addAttributes(str12, str9);
        String str13 = "https";
        String str14 = "http";
        return addAttributes5.addProtocols(str2, str, "ftp", str14, str13, "mailto").addProtocols(str4, str3, str14, str13).addProtocols(str3, str3, str14, str13).addProtocols(str8, "src", str14, str13).addProtocols(str10, str3, str14, str13);
    }

    public Whitelist addTags(String... strArr) {
        Validate.notNull(strArr);
        for (String str : strArr) {
            Validate.notEmpty(str);
            this.tagNames.add(TagName.valueOf(str));
        }
        return this;
    }

    public Whitelist removeTags(String... strArr) {
        Validate.notNull(strArr);
        for (String str : strArr) {
            Validate.notEmpty(str);
            TagName valueOf = TagName.valueOf(str);
            if (this.tagNames.remove(valueOf)) {
                this.attributes.remove(valueOf);
                this.enforcedAttributes.remove(valueOf);
                this.protocols.remove(valueOf);
            }
        }
        return this;
    }

    public Whitelist addAttributes(String str, String... strArr) {
        Validate.notEmpty(str);
        Validate.notNull(strArr);
        Validate.isTrue(strArr.length > 0, "No attributes supplied.");
        TagName valueOf = TagName.valueOf(str);
        if (!this.tagNames.contains(valueOf)) {
            this.tagNames.add(valueOf);
        }
        HashSet hashSet = new HashSet();
        for (String str2 : strArr) {
            Validate.notEmpty(str2);
            hashSet.add(AttributeKey.valueOf(str2));
        }
        if (this.attributes.containsKey(valueOf)) {
            ((Set) this.attributes.get(valueOf)).addAll(hashSet);
        } else {
            this.attributes.put(valueOf, hashSet);
        }
        return this;
    }

    public Whitelist removeAttributes(String str, String... strArr) {
        Validate.notEmpty(str);
        Validate.notNull(strArr);
        Validate.isTrue(strArr.length > 0, "No attributes supplied.");
        TagName valueOf = TagName.valueOf(str);
        HashSet hashSet = new HashSet();
        for (String str2 : strArr) {
            Validate.notEmpty(str2);
            hashSet.add(AttributeKey.valueOf(str2));
        }
        if (this.tagNames.contains(valueOf) && this.attributes.containsKey(valueOf)) {
            Set set = (Set) this.attributes.get(valueOf);
            set.removeAll(hashSet);
            if (set.isEmpty()) {
                this.attributes.remove(valueOf);
            }
        }
        if (str.equals(":all")) {
            for (TagName tagName : this.attributes.keySet()) {
                Set set2 = (Set) this.attributes.get(tagName);
                set2.removeAll(hashSet);
                if (set2.isEmpty()) {
                    this.attributes.remove(tagName);
                }
            }
        }
        return this;
    }

    public Whitelist addEnforcedAttribute(String str, String str2, String str3) {
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        Validate.notEmpty(str3);
        TagName valueOf = TagName.valueOf(str);
        if (!this.tagNames.contains(valueOf)) {
            this.tagNames.add(valueOf);
        }
        AttributeKey valueOf2 = AttributeKey.valueOf(str2);
        AttributeValue valueOf3 = AttributeValue.valueOf(str3);
        if (this.enforcedAttributes.containsKey(valueOf)) {
            ((Map) this.enforcedAttributes.get(valueOf)).put(valueOf2, valueOf3);
        } else {
            HashMap hashMap = new HashMap();
            hashMap.put(valueOf2, valueOf3);
            this.enforcedAttributes.put(valueOf, hashMap);
        }
        return this;
    }

    public Whitelist removeEnforcedAttribute(String str, String str2) {
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        TagName valueOf = TagName.valueOf(str);
        if (this.tagNames.contains(valueOf) && this.enforcedAttributes.containsKey(valueOf)) {
            Map map = (Map) this.enforcedAttributes.get(valueOf);
            map.remove(AttributeKey.valueOf(str2));
            if (map.isEmpty()) {
                this.enforcedAttributes.remove(valueOf);
            }
        }
        return this;
    }

    public Whitelist preserveRelativeLinks(boolean z) {
        this.preserveRelativeLinks = z;
        return this;
    }

    public Whitelist addProtocols(String str, String str2, String... strArr) {
        Map map;
        Set set;
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        Validate.notNull(strArr);
        TagName valueOf = TagName.valueOf(str);
        AttributeKey valueOf2 = AttributeKey.valueOf(str2);
        if (this.protocols.containsKey(valueOf)) {
            map = (Map) this.protocols.get(valueOf);
        } else {
            Map hashMap = new HashMap();
            this.protocols.put(valueOf, hashMap);
            map = hashMap;
        }
        if (map.containsKey(valueOf2)) {
            set = (Set) map.get(valueOf2);
        } else {
            Set hashSet = new HashSet();
            map.put(valueOf2, hashSet);
            set = hashSet;
        }
        for (String str3 : strArr) {
            Validate.notEmpty(str3);
            set.add(Protocol.valueOf(str3));
        }
        return this;
    }

    public Whitelist removeProtocols(String str, String str2, String... strArr) {
        Validate.notEmpty(str);
        Validate.notEmpty(str2);
        Validate.notNull(strArr);
        TagName valueOf = TagName.valueOf(str);
        AttributeKey valueOf2 = AttributeKey.valueOf(str2);
        if (this.protocols.containsKey(valueOf)) {
            Map map = (Map) this.protocols.get(valueOf);
            if (map.containsKey(valueOf2)) {
                Set set = (Set) map.get(valueOf2);
                for (String str3 : strArr) {
                    Validate.notEmpty(str3);
                    set.remove(Protocol.valueOf(str3));
                }
                if (set.isEmpty()) {
                    map.remove(valueOf2);
                    if (map.isEmpty()) {
                        this.protocols.remove(valueOf);
                    }
                }
            }
        }
        return this;
    }

    /* access modifiers changed from: protected */
    public boolean isSafeTag(String str) {
        return this.tagNames.contains(TagName.valueOf(str));
    }

    /* access modifiers changed from: protected */
    public boolean isSafeAttribute(String str, Element element, Attribute attribute) {
        TagName valueOf = TagName.valueOf(str);
        AttributeKey valueOf2 = AttributeKey.valueOf(attribute.getKey());
        boolean z = false;
        if (!this.attributes.containsKey(valueOf) || !((Set) this.attributes.get(valueOf)).contains(valueOf2)) {
            String str2 = ":all";
            if (!str.equals(str2) && isSafeAttribute(str2, element, attribute)) {
                z = true;
            }
            return z;
        } else if (!this.protocols.containsKey(valueOf)) {
            return true;
        } else {
            Map map = (Map) this.protocols.get(valueOf);
            if (!map.containsKey(valueOf2) || testValidProtocol(element, attribute, (Set) map.get(valueOf2))) {
                z = true;
            }
            return z;
        }
    }

    private boolean testValidProtocol(Element element, Attribute attribute, Set<Protocol> set) {
        String absUrl = element.absUrl(attribute.getKey());
        if (absUrl.length() == 0) {
            absUrl = attribute.getValue();
        }
        if (!this.preserveRelativeLinks) {
            attribute.setValue(absUrl);
        }
        for (Protocol protocol : set) {
            String protocol2 = protocol.toString();
            if (!protocol2.equals("#")) {
                StringBuilder sb = new StringBuilder();
                sb.append(protocol2);
                sb.append(":");
                if (absUrl.toLowerCase().startsWith(sb.toString())) {
                    return true;
                }
            } else if (isValidAnchor(absUrl)) {
                return true;
            }
        }
        return false;
    }

    private boolean isValidAnchor(String str) {
        return str.startsWith("#") && !str.matches(".*\\s.*");
    }

    /* access modifiers changed from: 0000 */
    public Attributes getEnforcedAttributes(String str) {
        Attributes attributes2 = new Attributes();
        TagName valueOf = TagName.valueOf(str);
        if (this.enforcedAttributes.containsKey(valueOf)) {
            for (Entry entry : ((Map) this.enforcedAttributes.get(valueOf)).entrySet()) {
                attributes2.put(((AttributeKey) entry.getKey()).toString(), ((AttributeValue) entry.getValue()).toString());
            }
        }
        return attributes2;
    }
}
