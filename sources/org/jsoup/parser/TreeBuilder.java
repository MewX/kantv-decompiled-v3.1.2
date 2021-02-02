package org.jsoup.parser;

import java.util.ArrayList;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

abstract class TreeBuilder {
    protected String baseUri;
    protected Token currentToken;
    protected Document doc;
    private EndTag end = new EndTag();
    protected ParseErrorList errors;
    CharacterReader reader;
    protected ParseSettings settings;
    protected ArrayList<Element> stack;
    private StartTag start = new StartTag();
    Tokeniser tokeniser;

    /* access modifiers changed from: 0000 */
    public abstract ParseSettings defaultSettings();

    /* access modifiers changed from: protected */
    public abstract boolean process(Token token);

    TreeBuilder() {
    }

    /* access modifiers changed from: protected */
    public void initialiseParse(String str, String str2, ParseErrorList parseErrorList, ParseSettings parseSettings) {
        Validate.notNull(str, "String input must not be null");
        Validate.notNull(str2, "BaseURI must not be null");
        this.doc = new Document(str2);
        this.settings = parseSettings;
        this.reader = new CharacterReader(str);
        this.errors = parseErrorList;
        this.tokeniser = new Tokeniser(this.reader, parseErrorList);
        this.stack = new ArrayList<>(32);
        this.baseUri = str2;
    }

    /* access modifiers changed from: 0000 */
    public Document parse(String str, String str2, ParseErrorList parseErrorList, ParseSettings parseSettings) {
        initialiseParse(str, str2, parseErrorList, parseSettings);
        runParser();
        return this.doc;
    }

    /* access modifiers changed from: protected */
    public void runParser() {
        Token read;
        do {
            read = this.tokeniser.read();
            process(read);
            read.reset();
        } while (read.type != TokenType.EOF);
    }

    /* access modifiers changed from: protected */
    public boolean processStartTag(String str) {
        Token token = this.currentToken;
        StartTag startTag = this.start;
        if (token == startTag) {
            return process(new StartTag().name(str));
        }
        return process(startTag.reset().name(str));
    }

    public boolean processStartTag(String str, Attributes attributes) {
        Token token = this.currentToken;
        StartTag startTag = this.start;
        if (token == startTag) {
            return process(new StartTag().nameAttr(str, attributes));
        }
        startTag.reset();
        this.start.nameAttr(str, attributes);
        return process(this.start);
    }

    /* access modifiers changed from: protected */
    public boolean processEndTag(String str) {
        Token token = this.currentToken;
        EndTag endTag = this.end;
        if (token == endTag) {
            return process(new EndTag().name(str));
        }
        return process(endTag.reset().name(str));
    }

    /* access modifiers changed from: protected */
    public Element currentElement() {
        int size = this.stack.size();
        if (size > 0) {
            return (Element) this.stack.get(size - 1);
        }
        return null;
    }
}
