package org.jsoup.parser;

import com.avos.avoscloud.im.v2.Conversation;
import com.kantv.ui.config.Definition.UserPreference;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.FormElement;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.Elements;

public class HtmlTreeBuilder extends TreeBuilder {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String[] TagSearchButton = {"button"};
    private static final String[] TagSearchEndTags = {"dd", "dt", "li", "option", "optgroup", TtmlNode.TAG_P, "rp", "rt"};
    private static final String[] TagSearchList = {"ol", "ul"};
    private static final String[] TagSearchSelectScope = {"optgroup", "option"};
    private static final String[] TagSearchSpecial = {"address", "applet", UserPreference.AREA, "article", "aside", "base", "basefont", "bgsound", "blockquote", TtmlNode.TAG_BODY, TtmlNode.TAG_BR, "button", "caption", TtmlNode.CENTER, "col", "colgroup", "command", "dd", "details", "dir", TtmlNode.TAG_DIV, "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form", "frame", "frameset", "h1", "h2", "h3", "h4", "h5", "h6", TtmlNode.TAG_HEAD, "header", "hgroup", "hr", "html", "iframe", SocialConstants.PARAM_IMG_URL, "input", "isindex", "li", "link", "listing", "marquee", "menu", "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", TtmlNode.TAG_P, "param", "plaintext", "pre", "script", "section", "select", TtmlNode.TAG_STYLE, "summary", "table", "tbody", "td", "textarea", "tfoot", "th", "thead", "title", Conversation.TRANSIENT, "ul", "wbr", "xmp"};
    private static final String[] TagSearchTableScope = {"html", "table"};
    public static final String[] TagsSearchInScope = {"applet", "caption", "html", "table", "td", "th", "marquee", "object"};
    private boolean baseUriSetFromDoc = false;
    private Element contextElement;
    private EndTag emptyEnd = new EndTag();
    private FormElement formElement;
    private ArrayList<Element> formattingElements = new ArrayList<>();
    private boolean fosterInserts = false;
    private boolean fragmentParsing = false;
    private boolean framesetOk = true;
    private Element headElement;
    private HtmlTreeBuilderState originalState;
    private List<String> pendingTableCharacters = new ArrayList();
    private String[] specificScopeTarget = {null};
    private HtmlTreeBuilderState state;

    public /* bridge */ /* synthetic */ boolean processStartTag(String str, Attributes attributes) {
        return super.processStartTag(str, attributes);
    }

    HtmlTreeBuilder() {
    }

    /* access modifiers changed from: 0000 */
    public ParseSettings defaultSettings() {
        return ParseSettings.htmlDefault;
    }

    /* access modifiers changed from: 0000 */
    public Document parse(String str, String str2, ParseErrorList parseErrorList, ParseSettings parseSettings) {
        this.state = HtmlTreeBuilderState.Initial;
        this.baseUriSetFromDoc = false;
        return super.parse(str, str2, parseErrorList, parseSettings);
    }

    /* access modifiers changed from: 0000 */
    public List<Node> parseFragment(String str, Element element, String str2, ParseErrorList parseErrorList, ParseSettings parseSettings) {
        Element element2;
        this.state = HtmlTreeBuilderState.Initial;
        initialiseParse(str, str2, parseErrorList, parseSettings);
        this.contextElement = element;
        this.fragmentParsing = true;
        if (element != null) {
            if (element.ownerDocument() != null) {
                this.doc.quirksMode(element.ownerDocument().quirksMode());
            }
            String tagName = element.tagName();
            if (StringUtil.in(tagName, "title", "textarea")) {
                this.tokeniser.transition(TokeniserState.Rcdata);
            } else if (StringUtil.in(tagName, "iframe", "noembed", "noframes", TtmlNode.TAG_STYLE, "xmp")) {
                this.tokeniser.transition(TokeniserState.Rawtext);
            } else if (tagName.equals("script")) {
                this.tokeniser.transition(TokeniserState.ScriptData);
            } else if (tagName.equals("noscript")) {
                this.tokeniser.transition(TokeniserState.Data);
            } else if (tagName.equals("plaintext")) {
                this.tokeniser.transition(TokeniserState.Data);
            } else {
                this.tokeniser.transition(TokeniserState.Data);
            }
            element2 = new Element(Tag.valueOf("html", parseSettings), str2);
            this.doc.appendChild(element2);
            this.stack.add(element2);
            resetInsertionMode();
            Elements parents = element.parents();
            parents.add(0, element);
            Iterator it = parents.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Element element3 = (Element) it.next();
                if (element3 instanceof FormElement) {
                    this.formElement = (FormElement) element3;
                    break;
                }
            }
        } else {
            element2 = null;
        }
        runParser();
        if (element == null || element2 == null) {
            return this.doc.childNodes();
        }
        return element2.childNodes();
    }

    /* access modifiers changed from: protected */
    public boolean process(Token token) {
        this.currentToken = token;
        return this.state.process(token, this);
    }

    /* access modifiers changed from: 0000 */
    public boolean process(Token token, HtmlTreeBuilderState htmlTreeBuilderState) {
        this.currentToken = token;
        return htmlTreeBuilderState.process(token, this);
    }

    /* access modifiers changed from: 0000 */
    public void transition(HtmlTreeBuilderState htmlTreeBuilderState) {
        this.state = htmlTreeBuilderState;
    }

    /* access modifiers changed from: 0000 */
    public HtmlTreeBuilderState state() {
        return this.state;
    }

    /* access modifiers changed from: 0000 */
    public void markInsertionMode() {
        this.originalState = this.state;
    }

    /* access modifiers changed from: 0000 */
    public HtmlTreeBuilderState originalState() {
        return this.originalState;
    }

    /* access modifiers changed from: 0000 */
    public void framesetOk(boolean z) {
        this.framesetOk = z;
    }

    /* access modifiers changed from: 0000 */
    public boolean framesetOk() {
        return this.framesetOk;
    }

    /* access modifiers changed from: 0000 */
    public Document getDocument() {
        return this.doc;
    }

    /* access modifiers changed from: 0000 */
    public String getBaseUri() {
        return this.baseUri;
    }

    /* access modifiers changed from: 0000 */
    public void maybeSetBaseUri(Element element) {
        if (!this.baseUriSetFromDoc) {
            String absUrl = element.absUrl("href");
            if (absUrl.length() != 0) {
                this.baseUri = absUrl;
                this.baseUriSetFromDoc = true;
                this.doc.setBaseUri(absUrl);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean isFragmentParsing() {
        return this.fragmentParsing;
    }

    /* access modifiers changed from: 0000 */
    public void error(HtmlTreeBuilderState htmlTreeBuilderState) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), "Unexpected token [%s] when in state [%s]", this.currentToken.tokenType(), htmlTreeBuilderState));
        }
    }

    /* access modifiers changed from: 0000 */
    public Element insert(StartTag startTag) {
        if (startTag.isSelfClosing()) {
            Element insertEmpty = insertEmpty(startTag);
            this.stack.add(insertEmpty);
            this.tokeniser.transition(TokeniserState.Data);
            this.tokeniser.emit((Token) this.emptyEnd.reset().name(insertEmpty.tagName()));
            return insertEmpty;
        }
        Element element = new Element(Tag.valueOf(startTag.name(), this.settings), this.baseUri, this.settings.normalizeAttributes(startTag.attributes));
        insert(element);
        return element;
    }

    /* access modifiers changed from: 0000 */
    public Element insertStartTag(String str) {
        Element element = new Element(Tag.valueOf(str, this.settings), this.baseUri);
        insert(element);
        return element;
    }

    /* access modifiers changed from: 0000 */
    public void insert(Element element) {
        insertNode(element);
        this.stack.add(element);
    }

    /* access modifiers changed from: 0000 */
    public Element insertEmpty(StartTag startTag) {
        Tag valueOf = Tag.valueOf(startTag.name(), this.settings);
        Element element = new Element(valueOf, this.baseUri, startTag.attributes);
        insertNode(element);
        if (startTag.isSelfClosing()) {
            if (!valueOf.isKnownTag()) {
                valueOf.setSelfClosing();
                this.tokeniser.acknowledgeSelfClosingFlag();
            } else if (valueOf.isSelfClosing()) {
                this.tokeniser.acknowledgeSelfClosingFlag();
            }
        }
        return element;
    }

    /* access modifiers changed from: 0000 */
    public FormElement insertForm(StartTag startTag, boolean z) {
        FormElement formElement2 = new FormElement(Tag.valueOf(startTag.name(), this.settings), this.baseUri, startTag.attributes);
        setFormElement(formElement2);
        insertNode(formElement2);
        if (z) {
            this.stack.add(formElement2);
        }
        return formElement2;
    }

    /* access modifiers changed from: 0000 */
    public void insert(Comment comment) {
        insertNode(new Comment(comment.getData(), this.baseUri));
    }

    /* access modifiers changed from: 0000 */
    public void insert(Character character) {
        Node node;
        String tagName = currentElement().tagName();
        if (tagName.equals("script") || tagName.equals(TtmlNode.TAG_STYLE)) {
            node = new DataNode(character.getData(), this.baseUri);
        } else {
            node = new TextNode(character.getData(), this.baseUri);
        }
        currentElement().appendChild(node);
    }

    private void insertNode(Node node) {
        if (this.stack.size() == 0) {
            this.doc.appendChild(node);
        } else if (isFosterInserts()) {
            insertInFosterParent(node);
        } else {
            currentElement().appendChild(node);
        }
        if (node instanceof Element) {
            Element element = (Element) node;
            if (element.tag().isFormListed()) {
                FormElement formElement2 = this.formElement;
                if (formElement2 != null) {
                    formElement2.addElement(element);
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public Element pop() {
        return (Element) this.stack.remove(this.stack.size() - 1);
    }

    /* access modifiers changed from: 0000 */
    public void push(Element element) {
        this.stack.add(element);
    }

    /* access modifiers changed from: 0000 */
    public ArrayList<Element> getStack() {
        return this.stack;
    }

    /* access modifiers changed from: 0000 */
    public boolean onStack(Element element) {
        return isElementInQueue(this.stack, element);
    }

    private boolean isElementInQueue(ArrayList<Element> arrayList, Element element) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((Element) arrayList.get(size)) == element) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public Element getFromStack(String str) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = (Element) this.stack.get(size);
            if (element.nodeName().equals(str)) {
                return element;
            }
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public boolean removeFromStack(Element element) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            if (((Element) this.stack.get(size)) == element) {
                this.stack.remove(size);
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public void popStackToClose(String str) {
        int size = this.stack.size() - 1;
        while (size >= 0) {
            Element element = (Element) this.stack.get(size);
            this.stack.remove(size);
            if (!element.nodeName().equals(str)) {
                size--;
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void popStackToClose(String... strArr) {
        int size = this.stack.size() - 1;
        while (size >= 0) {
            Element element = (Element) this.stack.get(size);
            this.stack.remove(size);
            if (!StringUtil.in(element.nodeName(), strArr)) {
                size--;
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void popStackToBefore(String str) {
        int size = this.stack.size() - 1;
        while (size >= 0 && !((Element) this.stack.get(size)).nodeName().equals(str)) {
            this.stack.remove(size);
            size--;
        }
    }

    /* access modifiers changed from: 0000 */
    public void clearStackToTableContext() {
        clearStackToContext("table");
    }

    /* access modifiers changed from: 0000 */
    public void clearStackToTableBodyContext() {
        clearStackToContext("tbody", "tfoot", "thead");
    }

    /* access modifiers changed from: 0000 */
    public void clearStackToTableRowContext() {
        clearStackToContext(Conversation.TRANSIENT);
    }

    private void clearStackToContext(String... strArr) {
        int size = this.stack.size() - 1;
        while (size >= 0) {
            Element element = (Element) this.stack.get(size);
            if (!StringUtil.in(element.nodeName(), strArr) && !element.nodeName().equals("html")) {
                this.stack.remove(size);
                size--;
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public Element aboveOnStack(Element element) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            if (((Element) this.stack.get(size)) == element) {
                return (Element) this.stack.get(size - 1);
            }
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public void insertOnStackAfter(Element element, Element element2) {
        int lastIndexOf = this.stack.lastIndexOf(element);
        Validate.isTrue(lastIndexOf != -1);
        this.stack.add(lastIndexOf + 1, element2);
    }

    /* access modifiers changed from: 0000 */
    public void replaceOnStack(Element element, Element element2) {
        replaceInQueue(this.stack, element, element2);
    }

    private void replaceInQueue(ArrayList<Element> arrayList, Element element, Element element2) {
        int lastIndexOf = arrayList.lastIndexOf(element);
        Validate.isTrue(lastIndexOf != -1);
        arrayList.set(lastIndexOf, element2);
    }

    /* access modifiers changed from: 0000 */
    public void resetInsertionMode() {
        int size = this.stack.size() - 1;
        boolean z = false;
        while (size >= 0) {
            Element element = (Element) this.stack.get(size);
            if (size == 0) {
                element = this.contextElement;
                z = true;
            }
            String nodeName = element.nodeName();
            if ("select".equals(nodeName)) {
                transition(HtmlTreeBuilderState.InSelect);
                return;
            } else if ("td".equals(nodeName) || ("th".equals(nodeName) && !z)) {
                transition(HtmlTreeBuilderState.InCell);
                return;
            } else if (Conversation.TRANSIENT.equals(nodeName)) {
                transition(HtmlTreeBuilderState.InRow);
                return;
            } else if ("tbody".equals(nodeName) || "thead".equals(nodeName) || "tfoot".equals(nodeName)) {
                transition(HtmlTreeBuilderState.InTableBody);
                return;
            } else if ("caption".equals(nodeName)) {
                transition(HtmlTreeBuilderState.InCaption);
                return;
            } else if ("colgroup".equals(nodeName)) {
                transition(HtmlTreeBuilderState.InColumnGroup);
                return;
            } else if ("table".equals(nodeName)) {
                transition(HtmlTreeBuilderState.InTable);
                return;
            } else if (TtmlNode.TAG_HEAD.equals(nodeName)) {
                transition(HtmlTreeBuilderState.InBody);
                return;
            } else if (TtmlNode.TAG_BODY.equals(nodeName)) {
                transition(HtmlTreeBuilderState.InBody);
                return;
            } else if ("frameset".equals(nodeName)) {
                transition(HtmlTreeBuilderState.InFrameset);
                return;
            } else if ("html".equals(nodeName)) {
                transition(HtmlTreeBuilderState.BeforeHead);
                return;
            } else if (z) {
                transition(HtmlTreeBuilderState.InBody);
                return;
            } else {
                size--;
            }
        }
    }

    private boolean inSpecificScope(String str, String[] strArr, String[] strArr2) {
        String[] strArr3 = this.specificScopeTarget;
        strArr3[0] = str;
        return inSpecificScope(strArr3, strArr, strArr2);
    }

    private boolean inSpecificScope(String[] strArr, String[] strArr2, String[] strArr3) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            String nodeName = ((Element) this.stack.get(size)).nodeName();
            if (StringUtil.in(nodeName, strArr)) {
                return true;
            }
            if (StringUtil.in(nodeName, strArr2)) {
                return false;
            }
            if (strArr3 != null && StringUtil.in(nodeName, strArr3)) {
                return false;
            }
        }
        Validate.fail("Should not be reachable");
        return false;
    }

    /* access modifiers changed from: 0000 */
    public boolean inScope(String[] strArr) {
        return inSpecificScope(strArr, TagsSearchInScope, (String[]) null);
    }

    /* access modifiers changed from: 0000 */
    public boolean inScope(String str) {
        return inScope(str, null);
    }

    /* access modifiers changed from: 0000 */
    public boolean inScope(String str, String[] strArr) {
        return inSpecificScope(str, TagsSearchInScope, strArr);
    }

    /* access modifiers changed from: 0000 */
    public boolean inListItemScope(String str) {
        return inScope(str, TagSearchList);
    }

    /* access modifiers changed from: 0000 */
    public boolean inButtonScope(String str) {
        return inScope(str, TagSearchButton);
    }

    /* access modifiers changed from: 0000 */
    public boolean inTableScope(String str) {
        return inSpecificScope(str, TagSearchTableScope, (String[]) null);
    }

    /* access modifiers changed from: 0000 */
    public boolean inSelectScope(String str) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            String nodeName = ((Element) this.stack.get(size)).nodeName();
            if (nodeName.equals(str)) {
                return true;
            }
            if (!StringUtil.in(nodeName, TagSearchSelectScope)) {
                return false;
            }
        }
        Validate.fail("Should not be reachable");
        return false;
    }

    /* access modifiers changed from: 0000 */
    public void setHeadElement(Element element) {
        this.headElement = element;
    }

    /* access modifiers changed from: 0000 */
    public Element getHeadElement() {
        return this.headElement;
    }

    /* access modifiers changed from: 0000 */
    public boolean isFosterInserts() {
        return this.fosterInserts;
    }

    /* access modifiers changed from: 0000 */
    public void setFosterInserts(boolean z) {
        this.fosterInserts = z;
    }

    /* access modifiers changed from: 0000 */
    public FormElement getFormElement() {
        return this.formElement;
    }

    /* access modifiers changed from: 0000 */
    public void setFormElement(FormElement formElement2) {
        this.formElement = formElement2;
    }

    /* access modifiers changed from: 0000 */
    public void newPendingTableCharacters() {
        this.pendingTableCharacters = new ArrayList();
    }

    /* access modifiers changed from: 0000 */
    public List<String> getPendingTableCharacters() {
        return this.pendingTableCharacters;
    }

    /* access modifiers changed from: 0000 */
    public void setPendingTableCharacters(List<String> list) {
        this.pendingTableCharacters = list;
    }

    /* access modifiers changed from: 0000 */
    public void generateImpliedEndTags(String str) {
        while (str != null && !currentElement().nodeName().equals(str) && StringUtil.in(currentElement().nodeName(), TagSearchEndTags)) {
            pop();
        }
    }

    /* access modifiers changed from: 0000 */
    public void generateImpliedEndTags() {
        generateImpliedEndTags(null);
    }

    /* access modifiers changed from: 0000 */
    public boolean isSpecial(Element element) {
        return StringUtil.in(element.nodeName(), TagSearchSpecial);
    }

    /* access modifiers changed from: 0000 */
    public Element lastFormattingElement() {
        if (this.formattingElements.size() <= 0) {
            return null;
        }
        ArrayList<Element> arrayList = this.formattingElements;
        return (Element) arrayList.get(arrayList.size() - 1);
    }

    /* access modifiers changed from: 0000 */
    public Element removeLastFormattingElement() {
        int size = this.formattingElements.size();
        if (size > 0) {
            return (Element) this.formattingElements.remove(size - 1);
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public void pushActiveFormattingElements(Element element) {
        int size = this.formattingElements.size() - 1;
        int i = 0;
        while (true) {
            if (size < 0) {
                break;
            }
            Element element2 = (Element) this.formattingElements.get(size);
            if (element2 == null) {
                break;
            }
            if (isSameFormattingElement(element, element2)) {
                i++;
            }
            if (i == 3) {
                this.formattingElements.remove(size);
                break;
            }
            size--;
        }
        this.formattingElements.add(element);
    }

    private boolean isSameFormattingElement(Element element, Element element2) {
        return element.nodeName().equals(element2.nodeName()) && element.attributes().equals(element2.attributes());
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Regions count limit reached
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:695)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:49)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:30)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
        */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0030  */
    /* JADX WARNING: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    void reconstructFormattingElements() {
        /*
            r7 = this;
            org.jsoup.nodes.Element r0 = r7.lastFormattingElement()
            if (r0 == 0) goto L_0x0058
            boolean r1 = r7.onStack(r0)
            if (r1 == 0) goto L_0x000d
            goto L_0x0058
        L_0x000d:
            java.util.ArrayList<org.jsoup.nodes.Element> r1 = r7.formattingElements
            int r1 = r1.size()
            r2 = 1
            int r1 = r1 - r2
            r3 = r0
            r0 = r1
        L_0x0017:
            r4 = 0
            if (r0 != 0) goto L_0x001b
            goto L_0x002e
        L_0x001b:
            java.util.ArrayList<org.jsoup.nodes.Element> r3 = r7.formattingElements
            int r0 = r0 + -1
            java.lang.Object r3 = r3.get(r0)
            org.jsoup.nodes.Element r3 = (org.jsoup.nodes.Element) r3
            if (r3 == 0) goto L_0x002d
            boolean r5 = r7.onStack(r3)
            if (r5 == 0) goto L_0x0017
        L_0x002d:
            r2 = 0
        L_0x002e:
            if (r2 != 0) goto L_0x003b
            java.util.ArrayList<org.jsoup.nodes.Element> r2 = r7.formattingElements
            int r0 = r0 + 1
            java.lang.Object r2 = r2.get(r0)
            org.jsoup.nodes.Element r2 = (org.jsoup.nodes.Element) r2
            r3 = r2
        L_0x003b:
            org.jsoup.helper.Validate.notNull(r3)
            java.lang.String r2 = r3.nodeName()
            org.jsoup.nodes.Element r2 = r7.insertStartTag(r2)
            org.jsoup.nodes.Attributes r5 = r2.attributes()
            org.jsoup.nodes.Attributes r6 = r3.attributes()
            r5.addAll(r6)
            java.util.ArrayList<org.jsoup.nodes.Element> r5 = r7.formattingElements
            r5.set(r0, r2)
            if (r0 != r1) goto L_0x002d
        L_0x0058:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilder.reconstructFormattingElements():void");
    }

    /* access modifiers changed from: 0000 */
    public void clearFormattingElementsToLastMarker() {
        while (!this.formattingElements.isEmpty()) {
            if (removeLastFormattingElement() == null) {
                return;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void removeFromActiveFormattingElements(Element element) {
        for (int size = this.formattingElements.size() - 1; size >= 0; size--) {
            if (((Element) this.formattingElements.get(size)) == element) {
                this.formattingElements.remove(size);
                return;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean isInActiveFormattingElements(Element element) {
        return isElementInQueue(this.formattingElements, element);
    }

    /* access modifiers changed from: 0000 */
    public Element getActiveFormattingElement(String str) {
        int size = this.formattingElements.size() - 1;
        while (size >= 0) {
            Element element = (Element) this.formattingElements.get(size);
            if (element == null) {
                break;
            } else if (element.nodeName().equals(str)) {
                return element;
            } else {
                size--;
            }
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public void replaceActiveFormattingElement(Element element, Element element2) {
        replaceInQueue(this.formattingElements, element, element2);
    }

    /* access modifiers changed from: 0000 */
    public void insertMarkerToFormattingElements() {
        this.formattingElements.add(null);
    }

    /* access modifiers changed from: 0000 */
    public void insertInFosterParent(Node node) {
        Element element;
        Element fromStack = getFromStack("table");
        boolean z = false;
        if (fromStack == null) {
            element = (Element) this.stack.get(0);
        } else if (fromStack.parent() != null) {
            element = fromStack.parent();
            z = true;
        } else {
            element = aboveOnStack(fromStack);
        }
        if (z) {
            Validate.notNull(fromStack);
            fromStack.before(node);
            return;
        }
        element.appendChild(node);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("TreeBuilder{currentToken=");
        sb.append(this.currentToken);
        sb.append(", state=");
        sb.append(this.state);
        sb.append(", currentElement=");
        sb.append(currentElement());
        sb.append('}');
        return sb.toString();
    }
}
