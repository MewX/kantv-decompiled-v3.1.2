package org.jsoup.parser;

import androidx.core.app.NotificationCompat;
import com.avos.avoscloud.im.v2.Conversation;
import com.idlefish.flutterboost.NewFlutterBoost.ConfigBuilder;
import com.kantv.ui.config.Definition.UserPreference;
import com.tencent.open.SocialConstants;
import java.util.HashMap;
import java.util.Map;
import org.jsoup.helper.Validate;

public class Tag {
    private static final String[] blockTags = {"html", TtmlNode.TAG_HEAD, TtmlNode.TAG_BODY, "frameset", "script", "noscript", TtmlNode.TAG_STYLE, "meta", "link", "title", "frame", "noframes", "section", "nav", "aside", "hgroup", "header", "footer", TtmlNode.TAG_P, "h1", "h2", "h3", "h4", "h5", "h6", "ul", "ol", "pre", TtmlNode.TAG_DIV, "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", "ins", "del", "s", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", Conversation.TRANSIENT, "th", "td", "video", "audio", "canvas", "details", "menu", "plaintext", "template", "article", ConfigBuilder.DEFAULT_DART_ENTRYPOINT, "svg", "math"};
    private static final String[] emptyTags = {"meta", "link", "base", "frame", SocialConstants.PARAM_IMG_URL, TtmlNode.TAG_BR, "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", UserPreference.AREA, "basefont", "bgsound", "menuitem", "param", "source", "track"};
    private static final String[] formListedTags = {"button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"};
    private static final String[] formSubmitTags;
    private static final String[] formatAsInlineTags = {"title", "a", TtmlNode.TAG_P, "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", TtmlNode.TAG_STYLE, "ins", "del", "s"};
    private static final String[] inlineTags = {"object", "base", "font", "tt", "i", "b", "u", "big", "small", "em", "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", "time", "acronym", "mark", "ruby", "rt", "rp", "a", SocialConstants.PARAM_IMG_URL, TtmlNode.TAG_BR, "wbr", "map", "q", "sub", "sup", "bdo", "iframe", "embed", TtmlNode.TAG_SPAN, "input", "select", "textarea", "label", "button", "optgroup", "option", "legend", "datalist", "keygen", "output", NotificationCompat.CATEGORY_PROGRESS, "meter", UserPreference.AREA, "param", "source", "track", "summary", "command", "device", UserPreference.AREA, "basefont", "bgsound", "menuitem", "param", "source", "track", "data", "bdi"};
    private static final String[] preserveWhitespaceTags;
    private static final Map<String, Tag> tags = new HashMap();
    private boolean canContainBlock = true;
    private boolean canContainInline = true;
    private boolean empty = false;
    private boolean formList = false;
    private boolean formSubmit = false;
    private boolean formatAsBlock = true;
    private boolean isBlock = true;
    private boolean preserveWhitespace = false;
    private boolean selfClosing = false;
    private String tagName;

    static {
        String str = "textarea";
        preserveWhitespaceTags = new String[]{"pre", "plaintext", "title", str};
        formSubmitTags = new String[]{"input", "keygen", "object", "select", str};
        for (String tag : blockTags) {
            register(new Tag(tag));
        }
        for (String tag2 : inlineTags) {
            Tag tag3 = new Tag(tag2);
            tag3.isBlock = false;
            tag3.canContainBlock = false;
            tag3.formatAsBlock = false;
            register(tag3);
        }
        for (String str2 : emptyTags) {
            Tag tag4 = (Tag) tags.get(str2);
            Validate.notNull(tag4);
            tag4.canContainBlock = false;
            tag4.canContainInline = false;
            tag4.empty = true;
        }
        for (String str3 : formatAsInlineTags) {
            Tag tag5 = (Tag) tags.get(str3);
            Validate.notNull(tag5);
            tag5.formatAsBlock = false;
        }
        for (String str4 : preserveWhitespaceTags) {
            Tag tag6 = (Tag) tags.get(str4);
            Validate.notNull(tag6);
            tag6.preserveWhitespace = true;
        }
        for (String str5 : formListedTags) {
            Tag tag7 = (Tag) tags.get(str5);
            Validate.notNull(tag7);
            tag7.formList = true;
        }
        for (String str6 : formSubmitTags) {
            Tag tag8 = (Tag) tags.get(str6);
            Validate.notNull(tag8);
            tag8.formSubmit = true;
        }
    }

    private Tag(String str) {
        this.tagName = str;
    }

    public String getName() {
        return this.tagName;
    }

    public static Tag valueOf(String str, ParseSettings parseSettings) {
        Validate.notNull(str);
        Tag tag = (Tag) tags.get(str);
        if (tag != null) {
            return tag;
        }
        String normalizeTag = parseSettings.normalizeTag(str);
        Validate.notEmpty(normalizeTag);
        Tag tag2 = (Tag) tags.get(normalizeTag);
        if (tag2 != null) {
            return tag2;
        }
        Tag tag3 = new Tag(normalizeTag);
        tag3.isBlock = false;
        tag3.canContainBlock = true;
        return tag3;
    }

    public static Tag valueOf(String str) {
        return valueOf(str, ParseSettings.preserveCase);
    }

    public boolean isBlock() {
        return this.isBlock;
    }

    public boolean formatAsBlock() {
        return this.formatAsBlock;
    }

    public boolean canContainBlock() {
        return this.canContainBlock;
    }

    public boolean isInline() {
        return !this.isBlock;
    }

    public boolean isData() {
        return !this.canContainInline && !isEmpty();
    }

    public boolean isEmpty() {
        return this.empty;
    }

    public boolean isSelfClosing() {
        return this.empty || this.selfClosing;
    }

    public boolean isKnownTag() {
        return tags.containsKey(this.tagName);
    }

    public static boolean isKnownTag(String str) {
        return tags.containsKey(str);
    }

    public boolean preserveWhitespace() {
        return this.preserveWhitespace;
    }

    public boolean isFormListed() {
        return this.formList;
    }

    public boolean isFormSubmittable() {
        return this.formSubmit;
    }

    /* access modifiers changed from: 0000 */
    public Tag setSelfClosing() {
        this.selfClosing = true;
        return this;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Tag)) {
            return false;
        }
        Tag tag = (Tag) obj;
        if (!this.tagName.equals(tag.tagName) || this.canContainBlock != tag.canContainBlock || this.canContainInline != tag.canContainInline || this.empty != tag.empty || this.formatAsBlock != tag.formatAsBlock || this.isBlock != tag.isBlock || this.preserveWhitespace != tag.preserveWhitespace || this.selfClosing != tag.selfClosing || this.formList != tag.formList) {
            return false;
        }
        if (this.formSubmit != tag.formSubmit) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((((((((((((((((this.tagName.hashCode() * 31) + (this.isBlock ? 1 : 0)) * 31) + (this.formatAsBlock ? 1 : 0)) * 31) + (this.canContainBlock ? 1 : 0)) * 31) + (this.canContainInline ? 1 : 0)) * 31) + (this.empty ? 1 : 0)) * 31) + (this.selfClosing ? 1 : 0)) * 31) + (this.preserveWhitespace ? 1 : 0)) * 31) + (this.formList ? 1 : 0)) * 31) + (this.formSubmit ? 1 : 0);
    }

    public String toString() {
        return this.tagName;
    }

    private static void register(Tag tag) {
        tags.put(tag.tagName, tag);
    }
}
