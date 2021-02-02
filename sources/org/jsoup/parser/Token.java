package org.jsoup.parser;

import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.BooleanAttribute;

abstract class Token {
    TokenType type;

    static final class Character extends Token {
        private String data;

        Character() {
            super();
            this.type = TokenType.Character;
        }

        /* access modifiers changed from: 0000 */
        public Token reset() {
            this.data = null;
            return this;
        }

        /* access modifiers changed from: 0000 */
        public Character data(String str) {
            this.data = str;
            return this;
        }

        /* access modifiers changed from: 0000 */
        public String getData() {
            return this.data;
        }

        public String toString() {
            return getData();
        }
    }

    static final class Comment extends Token {
        boolean bogus;
        final StringBuilder data;

        /* access modifiers changed from: 0000 */
        public Token reset() {
            reset(this.data);
            this.bogus = false;
            return this;
        }

        Comment() {
            super();
            this.data = new StringBuilder();
            this.bogus = false;
            this.type = TokenType.Comment;
        }

        /* access modifiers changed from: 0000 */
        public String getData() {
            return this.data.toString();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("<!--");
            sb.append(getData());
            sb.append("-->");
            return sb.toString();
        }
    }

    static final class Doctype extends Token {
        boolean forceQuirks;
        final StringBuilder name;
        final StringBuilder publicIdentifier;
        final StringBuilder systemIdentifier;

        Doctype() {
            super();
            this.name = new StringBuilder();
            this.publicIdentifier = new StringBuilder();
            this.systemIdentifier = new StringBuilder();
            this.forceQuirks = false;
            this.type = TokenType.Doctype;
        }

        /* access modifiers changed from: 0000 */
        public Token reset() {
            reset(this.name);
            reset(this.publicIdentifier);
            reset(this.systemIdentifier);
            this.forceQuirks = false;
            return this;
        }

        /* access modifiers changed from: 0000 */
        public String getName() {
            return this.name.toString();
        }

        /* access modifiers changed from: 0000 */
        public String getPublicIdentifier() {
            return this.publicIdentifier.toString();
        }

        public String getSystemIdentifier() {
            return this.systemIdentifier.toString();
        }

        public boolean isForceQuirks() {
            return this.forceQuirks;
        }
    }

    static final class EOF extends Token {
        /* access modifiers changed from: 0000 */
        public Token reset() {
            return this;
        }

        EOF() {
            super();
            this.type = TokenType.EOF;
        }
    }

    static final class EndTag extends Tag {
        EndTag() {
            this.type = TokenType.EndTag;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("</");
            sb.append(name());
            sb.append(">");
            return sb.toString();
        }
    }

    static final class StartTag extends Tag {
        StartTag() {
            this.attributes = new Attributes();
            this.type = TokenType.StartTag;
        }

        /* access modifiers changed from: 0000 */
        public Tag reset() {
            super.reset();
            this.attributes = new Attributes();
            return this;
        }

        /* access modifiers changed from: 0000 */
        public StartTag nameAttr(String str, Attributes attributes) {
            this.tagName = str;
            this.attributes = attributes;
            this.normalName = this.tagName.toLowerCase();
            return this;
        }

        public String toString() {
            String str = ">";
            String str2 = "<";
            if (this.attributes == null || this.attributes.size() <= 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append(name());
                sb.append(str);
                return sb.toString();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append(name());
            sb2.append(" ");
            sb2.append(this.attributes.toString());
            sb2.append(str);
            return sb2.toString();
        }
    }

    static abstract class Tag extends Token {
        Attributes attributes;
        private boolean hasEmptyAttributeValue = false;
        private boolean hasPendingAttributeValue = false;
        protected String normalName;
        private String pendingAttributeName;
        private StringBuilder pendingAttributeValue = new StringBuilder();
        private String pendingAttributeValueS;
        boolean selfClosing = false;
        protected String tagName;

        Tag() {
            super();
        }

        /* access modifiers changed from: 0000 */
        public Tag reset() {
            this.tagName = null;
            this.normalName = null;
            this.pendingAttributeName = null;
            reset(this.pendingAttributeValue);
            this.pendingAttributeValueS = null;
            this.hasEmptyAttributeValue = false;
            this.hasPendingAttributeValue = false;
            this.selfClosing = false;
            this.attributes = null;
            return this;
        }

        /* access modifiers changed from: 0000 */
        public final void newAttribute() {
            Attribute attribute;
            if (this.attributes == null) {
                this.attributes = new Attributes();
            }
            String str = this.pendingAttributeName;
            if (str != null) {
                if (this.hasPendingAttributeValue) {
                    attribute = new Attribute(str, this.pendingAttributeValue.length() > 0 ? this.pendingAttributeValue.toString() : this.pendingAttributeValueS);
                } else if (this.hasEmptyAttributeValue) {
                    attribute = new Attribute(str, "");
                } else {
                    attribute = new BooleanAttribute(str);
                }
                this.attributes.put(attribute);
            }
            this.pendingAttributeName = null;
            this.hasEmptyAttributeValue = false;
            this.hasPendingAttributeValue = false;
            reset(this.pendingAttributeValue);
            this.pendingAttributeValueS = null;
        }

        /* access modifiers changed from: 0000 */
        public final void finaliseTag() {
            if (this.pendingAttributeName != null) {
                newAttribute();
            }
        }

        /* access modifiers changed from: 0000 */
        public final String name() {
            String str = this.tagName;
            Validate.isFalse(str == null || str.length() == 0);
            return this.tagName;
        }

        /* access modifiers changed from: 0000 */
        public final String normalName() {
            return this.normalName;
        }

        /* access modifiers changed from: 0000 */
        public final Tag name(String str) {
            this.tagName = str;
            this.normalName = str.toLowerCase();
            return this;
        }

        /* access modifiers changed from: 0000 */
        public final boolean isSelfClosing() {
            return this.selfClosing;
        }

        /* access modifiers changed from: 0000 */
        public final Attributes getAttributes() {
            return this.attributes;
        }

        /* access modifiers changed from: 0000 */
        public final void appendTagName(String str) {
            String str2 = this.tagName;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.tagName = str;
            this.normalName = this.tagName.toLowerCase();
        }

        /* access modifiers changed from: 0000 */
        public final void appendTagName(char c) {
            appendTagName(String.valueOf(c));
        }

        /* access modifiers changed from: 0000 */
        public final void appendAttributeName(String str) {
            String str2 = this.pendingAttributeName;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.pendingAttributeName = str;
        }

        /* access modifiers changed from: 0000 */
        public final void appendAttributeName(char c) {
            appendAttributeName(String.valueOf(c));
        }

        /* access modifiers changed from: 0000 */
        public final void appendAttributeValue(String str) {
            ensureAttributeValue();
            if (this.pendingAttributeValue.length() == 0) {
                this.pendingAttributeValueS = str;
            } else {
                this.pendingAttributeValue.append(str);
            }
        }

        /* access modifiers changed from: 0000 */
        public final void appendAttributeValue(char c) {
            ensureAttributeValue();
            this.pendingAttributeValue.append(c);
        }

        /* access modifiers changed from: 0000 */
        public final void appendAttributeValue(char[] cArr) {
            ensureAttributeValue();
            this.pendingAttributeValue.append(cArr);
        }

        /* access modifiers changed from: 0000 */
        public final void appendAttributeValue(int[] iArr) {
            ensureAttributeValue();
            for (int appendCodePoint : iArr) {
                this.pendingAttributeValue.appendCodePoint(appendCodePoint);
            }
        }

        /* access modifiers changed from: 0000 */
        public final void setEmptyAttributeValue() {
            this.hasEmptyAttributeValue = true;
        }

        private void ensureAttributeValue() {
            this.hasPendingAttributeValue = true;
            String str = this.pendingAttributeValueS;
            if (str != null) {
                this.pendingAttributeValue.append(str);
                this.pendingAttributeValueS = null;
            }
        }
    }

    enum TokenType {
        Doctype,
        StartTag,
        EndTag,
        Comment,
        Character,
        EOF
    }

    /* access modifiers changed from: 0000 */
    public abstract Token reset();

    private Token() {
    }

    /* access modifiers changed from: 0000 */
    public String tokenType() {
        return getClass().getSimpleName();
    }

    static void reset(StringBuilder sb) {
        if (sb != null) {
            sb.delete(0, sb.length());
        }
    }

    /* access modifiers changed from: 0000 */
    public final boolean isDoctype() {
        return this.type == TokenType.Doctype;
    }

    /* access modifiers changed from: 0000 */
    public final Doctype asDoctype() {
        return (Doctype) this;
    }

    /* access modifiers changed from: 0000 */
    public final boolean isStartTag() {
        return this.type == TokenType.StartTag;
    }

    /* access modifiers changed from: 0000 */
    public final StartTag asStartTag() {
        return (StartTag) this;
    }

    /* access modifiers changed from: 0000 */
    public final boolean isEndTag() {
        return this.type == TokenType.EndTag;
    }

    /* access modifiers changed from: 0000 */
    public final EndTag asEndTag() {
        return (EndTag) this;
    }

    /* access modifiers changed from: 0000 */
    public final boolean isComment() {
        return this.type == TokenType.Comment;
    }

    /* access modifiers changed from: 0000 */
    public final Comment asComment() {
        return (Comment) this;
    }

    /* access modifiers changed from: 0000 */
    public final boolean isCharacter() {
        return this.type == TokenType.Character;
    }

    /* access modifiers changed from: 0000 */
    public final Character asCharacter() {
        return (Character) this;
    }

    /* access modifiers changed from: 0000 */
    public final boolean isEOF() {
        return this.type == TokenType.EOF;
    }
}
