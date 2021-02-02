package org.jsoup.parser;

import com.avos.avoscloud.im.v2.Conversation;
import com.kantv.ui.config.Definition.UserPreference;
import com.tencent.open.SocialConstants;
import com.tencent.tauth.AuthActivity;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.ArrayList;
import java.util.Iterator;
import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document.QuirksMode;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.FormElement;
import org.jsoup.nodes.Node;

enum HtmlTreeBuilderState {
    Initial {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (token.isDoctype()) {
                Doctype asDoctype = token.asDoctype();
                htmlTreeBuilder.getDocument().appendChild(new DocumentType(htmlTreeBuilder.settings.normalizeTag(asDoctype.getName()), asDoctype.getPublicIdentifier(), asDoctype.getSystemIdentifier(), htmlTreeBuilder.getBaseUri()));
                if (asDoctype.isForceQuirks()) {
                    htmlTreeBuilder.getDocument().quirksMode(QuirksMode.quirks);
                }
                htmlTreeBuilder.transition(BeforeHtml);
            } else {
                htmlTreeBuilder.transition(BeforeHtml);
                return htmlTreeBuilder.process(token);
            }
            return true;
        }
    },
    BeforeHtml {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (HtmlTreeBuilderState.isWhitespace(token)) {
                return true;
            } else {
                String str = "html";
                if (token.isStartTag() && token.asStartTag().normalName().equals(str)) {
                    htmlTreeBuilder.insert(token.asStartTag());
                    htmlTreeBuilder.transition(BeforeHead);
                } else if (token.isEndTag() && StringUtil.in(token.asEndTag().normalName(), TtmlNode.TAG_HEAD, TtmlNode.TAG_BODY, str, TtmlNode.TAG_BR)) {
                    return anythingElse(token, htmlTreeBuilder);
                } else {
                    if (!token.isEndTag()) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.error(this);
                    return false;
                }
            }
            return true;
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.insertStartTag("html");
            htmlTreeBuilder.transition(BeforeHead);
            return htmlTreeBuilder.process(token);
        }
    },
    BeforeHead {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return true;
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            } else {
                String str = "html";
                if (token.isStartTag() && token.asStartTag().normalName().equals(str)) {
                    return InBody.process(token, htmlTreeBuilder);
                }
                boolean isStartTag = token.isStartTag();
                String str2 = TtmlNode.TAG_HEAD;
                if (isStartTag && token.asStartTag().normalName().equals(str2)) {
                    htmlTreeBuilder.setHeadElement(htmlTreeBuilder.insert(token.asStartTag()));
                    htmlTreeBuilder.transition(InHead);
                } else if (token.isEndTag() && StringUtil.in(token.asEndTag().normalName(), str2, TtmlNode.TAG_BODY, str, TtmlNode.TAG_BR)) {
                    htmlTreeBuilder.processStartTag(str2);
                    return htmlTreeBuilder.process(token);
                } else if (token.isEndTag()) {
                    htmlTreeBuilder.error(this);
                    return false;
                } else {
                    htmlTreeBuilder.processStartTag(str2);
                    return htmlTreeBuilder.process(token);
                }
            }
            return true;
        }
    },
    InHead {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            int i = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            if (i == 1) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (i != 2) {
                String str = TtmlNode.TAG_HEAD;
                String str2 = "html";
                if (i == 3) {
                    StartTag asStartTag = token.asStartTag();
                    String normalName = asStartTag.normalName();
                    if (normalName.equals(str2)) {
                        return InBody.process(token, htmlTreeBuilder);
                    }
                    String str3 = "base";
                    if (StringUtil.in(normalName, str3, "basefont", "bgsound", "command", "link")) {
                        Element insertEmpty = htmlTreeBuilder.insertEmpty(asStartTag);
                        if (normalName.equals(str3) && insertEmpty.hasAttr("href")) {
                            htmlTreeBuilder.maybeSetBaseUri(insertEmpty);
                        }
                    } else if (normalName.equals("meta")) {
                        htmlTreeBuilder.insertEmpty(asStartTag);
                    } else if (normalName.equals("title")) {
                        HtmlTreeBuilderState.handleRcData(asStartTag, htmlTreeBuilder);
                    } else if (StringUtil.in(normalName, "noframes", TtmlNode.TAG_STYLE)) {
                        HtmlTreeBuilderState.handleRawtext(asStartTag, htmlTreeBuilder);
                    } else if (normalName.equals("noscript")) {
                        htmlTreeBuilder.insert(asStartTag);
                        htmlTreeBuilder.transition(InHeadNoscript);
                    } else if (normalName.equals("script")) {
                        htmlTreeBuilder.tokeniser.transition(TokeniserState.ScriptData);
                        htmlTreeBuilder.markInsertionMode();
                        htmlTreeBuilder.transition(Text);
                        htmlTreeBuilder.insert(asStartTag);
                    } else if (!normalName.equals(str)) {
                        return anythingElse(token, htmlTreeBuilder);
                    } else {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                } else if (i != 4) {
                    return anythingElse(token, htmlTreeBuilder);
                } else {
                    String normalName2 = token.asEndTag().normalName();
                    if (normalName2.equals(str)) {
                        htmlTreeBuilder.pop();
                        htmlTreeBuilder.transition(AfterHead);
                    } else if (StringUtil.in(normalName2, TtmlNode.TAG_BODY, str2, TtmlNode.TAG_BR)) {
                        return anythingElse(token, htmlTreeBuilder);
                    } else {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                }
            } else {
                htmlTreeBuilder.error(this);
                return false;
            }
            return true;
        }

        private boolean anythingElse(Token token, TreeBuilder treeBuilder) {
            treeBuilder.processEndTag(TtmlNode.TAG_HEAD);
            return treeBuilder.process(token);
        }
    },
    InHeadNoscript {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
            } else if (token.isStartTag() && token.asStartTag().normalName().equals("html")) {
                return htmlTreeBuilder.process(token, InBody);
            } else {
                String str = "noscript";
                if (token.isEndTag() && token.asEndTag().normalName().equals(str)) {
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.transition(InHead);
                } else if (HtmlTreeBuilderState.isWhitespace(token) || token.isComment() || (token.isStartTag() && StringUtil.in(token.asStartTag().normalName(), "basefont", "bgsound", "link", "meta", "noframes", TtmlNode.TAG_STYLE))) {
                    return htmlTreeBuilder.process(token, InHead);
                } else {
                    if (token.isEndTag() && token.asEndTag().normalName().equals(TtmlNode.TAG_BR)) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    if ((!token.isStartTag() || !StringUtil.in(token.asStartTag().normalName(), TtmlNode.TAG_HEAD, str)) && !token.isEndTag()) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.error(this);
                    return false;
                }
            }
            return true;
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.insert(new Character().data(token.toString()));
            return true;
        }
    },
    AfterHead {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            Token token2 = token;
            HtmlTreeBuilder htmlTreeBuilder2 = htmlTreeBuilder;
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder2.insert(token.asCharacter());
            } else if (token.isComment()) {
                htmlTreeBuilder2.insert(token.asComment());
            } else if (token.isDoctype()) {
                htmlTreeBuilder2.error(this);
            } else {
                boolean isStartTag = token.isStartTag();
                String str = TtmlNode.TAG_BODY;
                String str2 = "html";
                if (isStartTag) {
                    StartTag asStartTag = token.asStartTag();
                    String normalName = asStartTag.normalName();
                    if (normalName.equals(str2)) {
                        return htmlTreeBuilder2.process(token2, InBody);
                    }
                    if (normalName.equals(str)) {
                        htmlTreeBuilder2.insert(asStartTag);
                        htmlTreeBuilder2.framesetOk(false);
                        htmlTreeBuilder2.transition(InBody);
                    } else if (normalName.equals("frameset")) {
                        htmlTreeBuilder2.insert(asStartTag);
                        htmlTreeBuilder2.transition(InFrameset);
                    } else if (StringUtil.in(normalName, "base", "basefont", "bgsound", "link", "meta", "noframes", "script", TtmlNode.TAG_STYLE, "title")) {
                        htmlTreeBuilder2.error(this);
                        Element headElement = htmlTreeBuilder.getHeadElement();
                        htmlTreeBuilder2.push(headElement);
                        htmlTreeBuilder2.process(token2, InHead);
                        htmlTreeBuilder2.removeFromStack(headElement);
                    } else if (normalName.equals(TtmlNode.TAG_HEAD)) {
                        htmlTreeBuilder2.error(this);
                        return false;
                    } else {
                        anythingElse(token, htmlTreeBuilder);
                    }
                } else if (!token.isEndTag()) {
                    anythingElse(token, htmlTreeBuilder);
                } else if (StringUtil.in(token.asEndTag().normalName(), str, str2)) {
                    anythingElse(token, htmlTreeBuilder);
                } else {
                    htmlTreeBuilder2.error(this);
                    return false;
                }
            }
            return true;
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.processStartTag(TtmlNode.TAG_BODY);
            htmlTreeBuilder.framesetOk(true);
            return htmlTreeBuilder.process(token);
        }
    },
    InBody {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            boolean z;
            Element element;
            Token token2 = token;
            HtmlTreeBuilder htmlTreeBuilder2 = htmlTreeBuilder;
            int i = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token2.type.ordinal()];
            boolean z2 = true;
            if (i == 1) {
                htmlTreeBuilder2.insert(token.asComment());
            } else if (i != 2) {
                int i2 = 3;
                String str = "form";
                String str2 = "li";
                String str3 = TtmlNode.TAG_BODY;
                String str4 = TtmlNode.TAG_P;
                if (i == 3) {
                    StartTag asStartTag = token.asStartTag();
                    String normalName = asStartTag.normalName();
                    String str5 = "a";
                    if (normalName.equals(str5)) {
                        if (htmlTreeBuilder2.getActiveFormattingElement(str5) != null) {
                            htmlTreeBuilder2.error(this);
                            htmlTreeBuilder2.processEndTag(str5);
                            Element fromStack = htmlTreeBuilder2.getFromStack(str5);
                            if (fromStack != null) {
                                htmlTreeBuilder2.removeFromActiveFormattingElements(fromStack);
                                htmlTreeBuilder2.removeFromStack(fromStack);
                            }
                        }
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder2.pushActiveFormattingElements(htmlTreeBuilder2.insert(asStartTag));
                    } else if (StringUtil.inSorted(normalName, Constants.InBodyStartEmptyFormatters)) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder2.insertEmpty(asStartTag);
                        htmlTreeBuilder2.framesetOk(false);
                    } else if (StringUtil.inSorted(normalName, Constants.InBodyStartPClosers)) {
                        if (htmlTreeBuilder2.inButtonScope(str4)) {
                            htmlTreeBuilder2.processEndTag(str4);
                        }
                        htmlTreeBuilder2.insert(asStartTag);
                    } else if (normalName.equals(TtmlNode.TAG_SPAN)) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder2.insert(asStartTag);
                    } else if (normalName.equals(str2)) {
                        htmlTreeBuilder2.framesetOk(false);
                        ArrayList stack = htmlTreeBuilder.getStack();
                        int size = stack.size() - 1;
                        while (true) {
                            if (size <= 0) {
                                break;
                            }
                            Element element2 = (Element) stack.get(size);
                            if (!element2.nodeName().equals(str2)) {
                                if (htmlTreeBuilder2.isSpecial(element2) && !StringUtil.inSorted(element2.nodeName(), Constants.InBodyStartLiBreakers)) {
                                    break;
                                }
                                size--;
                            } else {
                                htmlTreeBuilder2.processEndTag(str2);
                                break;
                            }
                        }
                        if (htmlTreeBuilder2.inButtonScope(str4)) {
                            htmlTreeBuilder2.processEndTag(str4);
                        }
                        htmlTreeBuilder2.insert(asStartTag);
                    } else if (normalName.equals("html")) {
                        htmlTreeBuilder2.error(this);
                        Element element3 = (Element) htmlTreeBuilder.getStack().get(0);
                        Iterator it = asStartTag.getAttributes().iterator();
                        while (it.hasNext()) {
                            Attribute attribute = (Attribute) it.next();
                            if (!element3.hasAttr(attribute.getKey())) {
                                element3.attributes().put(attribute);
                            }
                        }
                    } else if (StringUtil.inSorted(normalName, Constants.InBodyStartToHead)) {
                        return htmlTreeBuilder2.process(token2, InHead);
                    } else {
                        if (normalName.equals(str3)) {
                            htmlTreeBuilder2.error(this);
                            ArrayList stack2 = htmlTreeBuilder.getStack();
                            if (stack2.size() == 1 || (stack2.size() > 2 && !((Element) stack2.get(1)).nodeName().equals(str3))) {
                                return false;
                            }
                            htmlTreeBuilder2.framesetOk(false);
                            Element element4 = (Element) stack2.get(1);
                            Iterator it2 = asStartTag.getAttributes().iterator();
                            while (it2.hasNext()) {
                                Attribute attribute2 = (Attribute) it2.next();
                                if (!element4.hasAttr(attribute2.getKey())) {
                                    element4.attributes().put(attribute2);
                                }
                            }
                        } else if (normalName.equals("frameset")) {
                            htmlTreeBuilder2.error(this);
                            ArrayList stack3 = htmlTreeBuilder.getStack();
                            if (stack3.size() == 1 || ((stack3.size() > 2 && !((Element) stack3.get(1)).nodeName().equals(str3)) || !htmlTreeBuilder.framesetOk())) {
                                return false;
                            }
                            Element element5 = (Element) stack3.get(1);
                            if (element5.parent() != null) {
                                element5.remove();
                            }
                            for (int i3 = 1; stack3.size() > i3; i3 = 1) {
                                stack3.remove(stack3.size() - i3);
                            }
                            htmlTreeBuilder2.insert(asStartTag);
                            htmlTreeBuilder2.transition(InFrameset);
                        } else if (StringUtil.inSorted(normalName, Constants.Headings)) {
                            if (htmlTreeBuilder2.inButtonScope(str4)) {
                                htmlTreeBuilder2.processEndTag(str4);
                            }
                            if (StringUtil.inSorted(htmlTreeBuilder.currentElement().nodeName(), Constants.Headings)) {
                                htmlTreeBuilder2.error(this);
                                htmlTreeBuilder.pop();
                            }
                            htmlTreeBuilder2.insert(asStartTag);
                        } else if (StringUtil.inSorted(normalName, Constants.InBodyStartPreListing)) {
                            if (htmlTreeBuilder2.inButtonScope(str4)) {
                                htmlTreeBuilder2.processEndTag(str4);
                            }
                            htmlTreeBuilder2.insert(asStartTag);
                            htmlTreeBuilder2.framesetOk(false);
                        } else if (normalName.equals(str)) {
                            if (htmlTreeBuilder.getFormElement() != null) {
                                htmlTreeBuilder2.error(this);
                                return false;
                            }
                            if (htmlTreeBuilder2.inButtonScope(str4)) {
                                htmlTreeBuilder2.processEndTag(str4);
                            }
                            z = true;
                            htmlTreeBuilder2.insertForm(asStartTag, true);
                            return z;
                        } else if (StringUtil.inSorted(normalName, Constants.DdDt)) {
                            htmlTreeBuilder2.framesetOk(false);
                            ArrayList stack4 = htmlTreeBuilder.getStack();
                            int size2 = stack4.size() - 1;
                            while (true) {
                                if (size2 <= 0) {
                                    break;
                                }
                                Element element6 = (Element) stack4.get(size2);
                                if (!StringUtil.inSorted(element6.nodeName(), Constants.DdDt)) {
                                    if (htmlTreeBuilder2.isSpecial(element6) && !StringUtil.inSorted(element6.nodeName(), Constants.InBodyStartLiBreakers)) {
                                        break;
                                    }
                                    size2--;
                                } else {
                                    htmlTreeBuilder2.processEndTag(element6.nodeName());
                                    break;
                                }
                            }
                            if (htmlTreeBuilder2.inButtonScope(str4)) {
                                htmlTreeBuilder2.processEndTag(str4);
                            }
                            htmlTreeBuilder2.insert(asStartTag);
                        } else if (normalName.equals("plaintext")) {
                            if (htmlTreeBuilder2.inButtonScope(str4)) {
                                htmlTreeBuilder2.processEndTag(str4);
                            }
                            htmlTreeBuilder2.insert(asStartTag);
                            htmlTreeBuilder2.tokeniser.transition(TokeniserState.PLAINTEXT);
                        } else {
                            String str6 = "button";
                            if (normalName.equals(str6)) {
                                if (htmlTreeBuilder2.inButtonScope(str6)) {
                                    htmlTreeBuilder2.error(this);
                                    htmlTreeBuilder2.processEndTag(str6);
                                    htmlTreeBuilder2.process(asStartTag);
                                } else {
                                    htmlTreeBuilder.reconstructFormattingElements();
                                    htmlTreeBuilder2.insert(asStartTag);
                                    htmlTreeBuilder2.framesetOk(false);
                                }
                            } else if (StringUtil.inSorted(normalName, Constants.Formatters)) {
                                htmlTreeBuilder.reconstructFormattingElements();
                                htmlTreeBuilder2.pushActiveFormattingElements(htmlTreeBuilder2.insert(asStartTag));
                            } else {
                                String str7 = "nobr";
                                if (normalName.equals(str7)) {
                                    htmlTreeBuilder.reconstructFormattingElements();
                                    if (htmlTreeBuilder2.inScope(str7)) {
                                        htmlTreeBuilder2.error(this);
                                        htmlTreeBuilder2.processEndTag(str7);
                                        htmlTreeBuilder.reconstructFormattingElements();
                                    }
                                    htmlTreeBuilder2.pushActiveFormattingElements(htmlTreeBuilder2.insert(asStartTag));
                                } else if (StringUtil.inSorted(normalName, Constants.InBodyStartApplets)) {
                                    htmlTreeBuilder.reconstructFormattingElements();
                                    htmlTreeBuilder2.insert(asStartTag);
                                    htmlTreeBuilder.insertMarkerToFormattingElements();
                                    htmlTreeBuilder2.framesetOk(false);
                                } else if (normalName.equals("table")) {
                                    if (htmlTreeBuilder.getDocument().quirksMode() != QuirksMode.quirks && htmlTreeBuilder2.inButtonScope(str4)) {
                                        htmlTreeBuilder2.processEndTag(str4);
                                    }
                                    htmlTreeBuilder2.insert(asStartTag);
                                    htmlTreeBuilder2.framesetOk(false);
                                    htmlTreeBuilder2.transition(InTable);
                                } else if (normalName.equals("input")) {
                                    htmlTreeBuilder.reconstructFormattingElements();
                                    if (!htmlTreeBuilder2.insertEmpty(asStartTag).attr("type").equalsIgnoreCase("hidden")) {
                                        htmlTreeBuilder2.framesetOk(false);
                                    }
                                } else if (StringUtil.inSorted(normalName, Constants.InBodyStartMedia)) {
                                    htmlTreeBuilder2.insertEmpty(asStartTag);
                                } else {
                                    String str8 = "hr";
                                    if (normalName.equals(str8)) {
                                        if (htmlTreeBuilder2.inButtonScope(str4)) {
                                            htmlTreeBuilder2.processEndTag(str4);
                                        }
                                        htmlTreeBuilder2.insertEmpty(asStartTag);
                                        htmlTreeBuilder2.framesetOk(false);
                                    } else if (normalName.equals("image")) {
                                        if (htmlTreeBuilder2.getFromStack("svg") == null) {
                                            return htmlTreeBuilder2.process(asStartTag.name(SocialConstants.PARAM_IMG_URL));
                                        }
                                        htmlTreeBuilder2.insert(asStartTag);
                                    } else if (normalName.equals("isindex")) {
                                        htmlTreeBuilder2.error(this);
                                        if (htmlTreeBuilder.getFormElement() != null) {
                                            return false;
                                        }
                                        htmlTreeBuilder2.tokeniser.acknowledgeSelfClosingFlag();
                                        htmlTreeBuilder2.processStartTag(str);
                                        Attributes attributes = asStartTag.attributes;
                                        String str9 = AuthActivity.ACTION_KEY;
                                        if (attributes.hasKey(str9)) {
                                            htmlTreeBuilder.getFormElement().attr(str9, asStartTag.attributes.get(str9));
                                        }
                                        htmlTreeBuilder2.processStartTag(str8);
                                        htmlTreeBuilder2.processStartTag("label");
                                        htmlTreeBuilder2.process(new Character().data(asStartTag.attributes.hasKey(SettingsJsonConstants.PROMPT_KEY) ? asStartTag.attributes.get(SettingsJsonConstants.PROMPT_KEY) : "This is a searchable index. Enter search keywords: "));
                                        Attributes attributes2 = new Attributes();
                                        Iterator it3 = asStartTag.attributes.iterator();
                                        while (it3.hasNext()) {
                                            Attribute attribute3 = (Attribute) it3.next();
                                            if (!StringUtil.inSorted(attribute3.getKey(), Constants.InBodyStartInputAttribs)) {
                                                attributes2.put(attribute3);
                                            }
                                        }
                                        attributes2.put("name", "isindex");
                                        htmlTreeBuilder2.processStartTag("input", attributes2);
                                        htmlTreeBuilder2.processEndTag("label");
                                        htmlTreeBuilder2.processStartTag(str8);
                                        htmlTreeBuilder2.processEndTag(str);
                                    } else if (normalName.equals("textarea")) {
                                        htmlTreeBuilder2.insert(asStartTag);
                                        htmlTreeBuilder2.tokeniser.transition(TokeniserState.Rcdata);
                                        htmlTreeBuilder.markInsertionMode();
                                        htmlTreeBuilder2.framesetOk(false);
                                        htmlTreeBuilder2.transition(Text);
                                    } else if (normalName.equals("xmp")) {
                                        if (htmlTreeBuilder2.inButtonScope(str4)) {
                                            htmlTreeBuilder2.processEndTag(str4);
                                        }
                                        htmlTreeBuilder.reconstructFormattingElements();
                                        htmlTreeBuilder2.framesetOk(false);
                                        HtmlTreeBuilderState.handleRawtext(asStartTag, htmlTreeBuilder2);
                                    } else if (normalName.equals("iframe")) {
                                        htmlTreeBuilder2.framesetOk(false);
                                        HtmlTreeBuilderState.handleRawtext(asStartTag, htmlTreeBuilder2);
                                    } else if (normalName.equals("noembed")) {
                                        HtmlTreeBuilderState.handleRawtext(asStartTag, htmlTreeBuilder2);
                                    } else if (normalName.equals("select")) {
                                        htmlTreeBuilder.reconstructFormattingElements();
                                        htmlTreeBuilder2.insert(asStartTag);
                                        htmlTreeBuilder2.framesetOk(false);
                                        HtmlTreeBuilderState state = htmlTreeBuilder.state();
                                        if (state.equals(InTable) || state.equals(InCaption) || state.equals(InTableBody) || state.equals(InRow) || state.equals(InCell)) {
                                            htmlTreeBuilder2.transition(InSelectInTable);
                                        } else {
                                            htmlTreeBuilder2.transition(InSelect);
                                        }
                                    } else if (StringUtil.inSorted(normalName, Constants.InBodyStartOptions)) {
                                        if (htmlTreeBuilder.currentElement().nodeName().equals("option")) {
                                            htmlTreeBuilder2.processEndTag("option");
                                        }
                                        htmlTreeBuilder.reconstructFormattingElements();
                                        htmlTreeBuilder2.insert(asStartTag);
                                    } else if (StringUtil.inSorted(normalName, Constants.InBodyStartRuby)) {
                                        String str10 = "ruby";
                                        if (htmlTreeBuilder2.inScope(str10)) {
                                            htmlTreeBuilder.generateImpliedEndTags();
                                            if (!htmlTreeBuilder.currentElement().nodeName().equals(str10)) {
                                                htmlTreeBuilder2.error(this);
                                                htmlTreeBuilder2.popStackToBefore(str10);
                                            }
                                            htmlTreeBuilder2.insert(asStartTag);
                                        }
                                    } else if (normalName.equals("math")) {
                                        htmlTreeBuilder.reconstructFormattingElements();
                                        htmlTreeBuilder2.insert(asStartTag);
                                        htmlTreeBuilder2.tokeniser.acknowledgeSelfClosingFlag();
                                    } else if (normalName.equals("svg")) {
                                        htmlTreeBuilder.reconstructFormattingElements();
                                        htmlTreeBuilder2.insert(asStartTag);
                                        htmlTreeBuilder2.tokeniser.acknowledgeSelfClosingFlag();
                                    } else if (StringUtil.inSorted(normalName, Constants.InBodyStartDrop)) {
                                        htmlTreeBuilder2.error(this);
                                        return false;
                                    } else {
                                        htmlTreeBuilder.reconstructFormattingElements();
                                        htmlTreeBuilder2.insert(asStartTag);
                                    }
                                }
                            }
                        }
                    }
                } else if (i == 4) {
                    EndTag asEndTag = token.asEndTag();
                    String normalName2 = asEndTag.normalName();
                    if (StringUtil.inSorted(normalName2, Constants.InBodyEndAdoptionFormatters)) {
                        int i4 = 0;
                        while (i4 < 8) {
                            Element activeFormattingElement = htmlTreeBuilder2.getActiveFormattingElement(normalName2);
                            if (activeFormattingElement == null) {
                                return anyOtherEndTag(token, htmlTreeBuilder);
                            }
                            if (!htmlTreeBuilder2.onStack(activeFormattingElement)) {
                                htmlTreeBuilder2.error(this);
                                htmlTreeBuilder2.removeFromActiveFormattingElements(activeFormattingElement);
                                return z2;
                            } else if (!htmlTreeBuilder2.inScope(activeFormattingElement.nodeName())) {
                                htmlTreeBuilder2.error(this);
                                return false;
                            } else {
                                if (htmlTreeBuilder.currentElement() != activeFormattingElement) {
                                    htmlTreeBuilder2.error(this);
                                }
                                ArrayList stack5 = htmlTreeBuilder.getStack();
                                int size3 = stack5.size();
                                Element element7 = null;
                                int i5 = 0;
                                boolean z3 = false;
                                while (true) {
                                    if (i5 >= size3 || i5 >= 64) {
                                        element = null;
                                    } else {
                                        element = (Element) stack5.get(i5);
                                        if (element != activeFormattingElement) {
                                            if (z3 && htmlTreeBuilder2.isSpecial(element)) {
                                                break;
                                            }
                                        } else {
                                            element7 = (Element) stack5.get(i5 - 1);
                                            z3 = true;
                                        }
                                        i5++;
                                    }
                                }
                                element = null;
                                if (element == null) {
                                    htmlTreeBuilder2.popStackToClose(activeFormattingElement.nodeName());
                                    htmlTreeBuilder2.removeFromActiveFormattingElements(activeFormattingElement);
                                    return z2;
                                }
                                Element element8 = element;
                                Element element9 = element8;
                                int i6 = 0;
                                while (i6 < i2) {
                                    if (htmlTreeBuilder2.onStack(element8)) {
                                        element8 = htmlTreeBuilder2.aboveOnStack(element8);
                                    }
                                    if (!htmlTreeBuilder2.isInActiveFormattingElements(element8)) {
                                        htmlTreeBuilder2.removeFromStack(element8);
                                    } else if (element8 == activeFormattingElement) {
                                        break;
                                    } else {
                                        Element element10 = new Element(Tag.valueOf(element8.nodeName(), ParseSettings.preserveCase), htmlTreeBuilder.getBaseUri());
                                        htmlTreeBuilder2.replaceActiveFormattingElement(element8, element10);
                                        htmlTreeBuilder2.replaceOnStack(element8, element10);
                                        if (element9.parent() != null) {
                                            element9.remove();
                                        }
                                        element10.appendChild(element9);
                                        element8 = element10;
                                        element9 = element8;
                                    }
                                    i6++;
                                    i2 = 3;
                                }
                                if (StringUtil.inSorted(element7.nodeName(), Constants.InBodyEndTableFosters)) {
                                    if (element9.parent() != null) {
                                        element9.remove();
                                    }
                                    htmlTreeBuilder2.insertInFosterParent(element9);
                                } else {
                                    if (element9.parent() != null) {
                                        element9.remove();
                                    }
                                    element7.appendChild(element9);
                                }
                                Element element11 = new Element(activeFormattingElement.tag(), htmlTreeBuilder.getBaseUri());
                                element11.attributes().addAll(activeFormattingElement.attributes());
                                for (Node appendChild : (Node[]) element.childNodes().toArray(new Node[element.childNodeSize()])) {
                                    element11.appendChild(appendChild);
                                }
                                element.appendChild(element11);
                                htmlTreeBuilder2.removeFromActiveFormattingElements(activeFormattingElement);
                                htmlTreeBuilder2.removeFromStack(activeFormattingElement);
                                htmlTreeBuilder2.insertOnStackAfter(element, element11);
                                i4++;
                                z2 = true;
                                i2 = 3;
                            }
                        }
                    } else if (StringUtil.inSorted(normalName2, Constants.InBodyEndClosers)) {
                        if (!htmlTreeBuilder2.inScope(normalName2)) {
                            htmlTreeBuilder2.error(this);
                            return false;
                        }
                        htmlTreeBuilder.generateImpliedEndTags();
                        if (!htmlTreeBuilder.currentElement().nodeName().equals(normalName2)) {
                            htmlTreeBuilder2.error(this);
                        }
                        htmlTreeBuilder2.popStackToClose(normalName2);
                    } else if (normalName2.equals(TtmlNode.TAG_SPAN)) {
                        return anyOtherEndTag(token, htmlTreeBuilder);
                    } else {
                        if (normalName2.equals(str2)) {
                            if (!htmlTreeBuilder2.inListItemScope(normalName2)) {
                                htmlTreeBuilder2.error(this);
                                return false;
                            }
                            htmlTreeBuilder2.generateImpliedEndTags(normalName2);
                            if (!htmlTreeBuilder.currentElement().nodeName().equals(normalName2)) {
                                htmlTreeBuilder2.error(this);
                            }
                            htmlTreeBuilder2.popStackToClose(normalName2);
                        } else if (normalName2.equals(str3)) {
                            if (!htmlTreeBuilder2.inScope(str3)) {
                                htmlTreeBuilder2.error(this);
                                return false;
                            }
                            htmlTreeBuilder2.transition(AfterBody);
                        } else if (normalName2.equals("html")) {
                            if (htmlTreeBuilder2.processEndTag(str3)) {
                                return htmlTreeBuilder2.process(asEndTag);
                            }
                        } else if (normalName2.equals(str)) {
                            FormElement formElement = htmlTreeBuilder.getFormElement();
                            htmlTreeBuilder2.setFormElement(null);
                            if (formElement == null || !htmlTreeBuilder2.inScope(normalName2)) {
                                htmlTreeBuilder2.error(this);
                                return false;
                            }
                            htmlTreeBuilder.generateImpliedEndTags();
                            if (!htmlTreeBuilder.currentElement().nodeName().equals(normalName2)) {
                                htmlTreeBuilder2.error(this);
                            }
                            htmlTreeBuilder2.removeFromStack(formElement);
                        } else if (normalName2.equals(str4)) {
                            if (!htmlTreeBuilder2.inButtonScope(normalName2)) {
                                htmlTreeBuilder2.error(this);
                                htmlTreeBuilder2.processStartTag(normalName2);
                                return htmlTreeBuilder2.process(asEndTag);
                            }
                            htmlTreeBuilder2.generateImpliedEndTags(normalName2);
                            if (!htmlTreeBuilder.currentElement().nodeName().equals(normalName2)) {
                                htmlTreeBuilder2.error(this);
                            }
                            htmlTreeBuilder2.popStackToClose(normalName2);
                        } else if (StringUtil.inSorted(normalName2, Constants.DdDt)) {
                            if (!htmlTreeBuilder2.inScope(normalName2)) {
                                htmlTreeBuilder2.error(this);
                                return false;
                            }
                            htmlTreeBuilder2.generateImpliedEndTags(normalName2);
                            if (!htmlTreeBuilder.currentElement().nodeName().equals(normalName2)) {
                                htmlTreeBuilder2.error(this);
                            }
                            htmlTreeBuilder2.popStackToClose(normalName2);
                        } else if (StringUtil.inSorted(normalName2, Constants.Headings)) {
                            if (!htmlTreeBuilder2.inScope(Constants.Headings)) {
                                htmlTreeBuilder2.error(this);
                                return false;
                            }
                            htmlTreeBuilder2.generateImpliedEndTags(normalName2);
                            if (!htmlTreeBuilder.currentElement().nodeName().equals(normalName2)) {
                                htmlTreeBuilder2.error(this);
                            }
                            htmlTreeBuilder2.popStackToClose(Constants.Headings);
                        } else if (normalName2.equals("sarcasm")) {
                            return anyOtherEndTag(token, htmlTreeBuilder);
                        } else {
                            if (StringUtil.inSorted(normalName2, Constants.InBodyStartApplets)) {
                                if (!htmlTreeBuilder2.inScope("name")) {
                                    if (!htmlTreeBuilder2.inScope(normalName2)) {
                                        htmlTreeBuilder2.error(this);
                                        return false;
                                    }
                                    htmlTreeBuilder.generateImpliedEndTags();
                                    if (!htmlTreeBuilder.currentElement().nodeName().equals(normalName2)) {
                                        htmlTreeBuilder2.error(this);
                                    }
                                    htmlTreeBuilder2.popStackToClose(normalName2);
                                    htmlTreeBuilder.clearFormattingElementsToLastMarker();
                                }
                            } else if (!normalName2.equals(TtmlNode.TAG_BR)) {
                                return anyOtherEndTag(token, htmlTreeBuilder);
                            } else {
                                htmlTreeBuilder2.error(this);
                                htmlTreeBuilder2.processStartTag(TtmlNode.TAG_BR);
                                return false;
                            }
                        }
                    }
                } else if (i == 5) {
                    Character asCharacter = token.asCharacter();
                    if (asCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                        htmlTreeBuilder2.error(this);
                        return false;
                    } else if (!htmlTreeBuilder.framesetOk() || !HtmlTreeBuilderState.isWhitespace((Token) asCharacter)) {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder2.insert(asCharacter);
                        htmlTreeBuilder2.framesetOk(false);
                    } else {
                        htmlTreeBuilder.reconstructFormattingElements();
                        htmlTreeBuilder2.insert(asCharacter);
                    }
                }
            } else {
                htmlTreeBuilder2.error(this);
                return false;
            }
            z = true;
            return z;
        }

        /* access modifiers changed from: 0000 */
        public boolean anyOtherEndTag(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            String normalName = token.asEndTag().normalName();
            ArrayList stack = htmlTreeBuilder.getStack();
            int size = stack.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                Element element = (Element) stack.get(size);
                if (element.nodeName().equals(normalName)) {
                    htmlTreeBuilder.generateImpliedEndTags(normalName);
                    if (!normalName.equals(htmlTreeBuilder.currentElement().nodeName())) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(normalName);
                } else if (htmlTreeBuilder.isSpecial(element)) {
                    htmlTreeBuilder.error(this);
                    return false;
                } else {
                    size--;
                }
            }
            return true;
        }
    },
    Text {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isCharacter()) {
                htmlTreeBuilder.insert(token.asCharacter());
            } else if (token.isEOF()) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
                return htmlTreeBuilder.process(token);
            } else if (token.isEndTag()) {
                htmlTreeBuilder.pop();
                htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
            }
            return true;
        }
    },
    InTable {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            Token token2 = token;
            HtmlTreeBuilder htmlTreeBuilder2 = htmlTreeBuilder;
            if (token.isCharacter()) {
                htmlTreeBuilder.newPendingTableCharacters();
                htmlTreeBuilder.markInsertionMode();
                htmlTreeBuilder2.transition(InTableText);
                return htmlTreeBuilder2.process(token2);
            } else if (token.isComment()) {
                htmlTreeBuilder2.insert(token.asComment());
                return true;
            } else if (token.isDoctype()) {
                htmlTreeBuilder2.error(this);
                return false;
            } else {
                String str = "table";
                if (token.isStartTag()) {
                    StartTag asStartTag = token.asStartTag();
                    String normalName = asStartTag.normalName();
                    if (normalName.equals("caption")) {
                        htmlTreeBuilder.clearStackToTableContext();
                        htmlTreeBuilder.insertMarkerToFormattingElements();
                        htmlTreeBuilder2.insert(asStartTag);
                        htmlTreeBuilder2.transition(InCaption);
                    } else {
                        String str2 = "colgroup";
                        if (normalName.equals(str2)) {
                            htmlTreeBuilder.clearStackToTableContext();
                            htmlTreeBuilder2.insert(asStartTag);
                            htmlTreeBuilder2.transition(InColumnGroup);
                        } else if (normalName.equals("col")) {
                            htmlTreeBuilder2.processStartTag(str2);
                            return htmlTreeBuilder2.process(token2);
                        } else {
                            String str3 = "tbody";
                            if (StringUtil.in(normalName, str3, "tfoot", "thead")) {
                                htmlTreeBuilder.clearStackToTableContext();
                                htmlTreeBuilder2.insert(asStartTag);
                                htmlTreeBuilder2.transition(InTableBody);
                            } else if (StringUtil.in(normalName, "td", "th", Conversation.TRANSIENT)) {
                                htmlTreeBuilder2.processStartTag(str3);
                                return htmlTreeBuilder2.process(token2);
                            } else if (normalName.equals(str)) {
                                htmlTreeBuilder2.error(this);
                                if (htmlTreeBuilder2.processEndTag(str)) {
                                    return htmlTreeBuilder2.process(token2);
                                }
                            } else if (StringUtil.in(normalName, TtmlNode.TAG_STYLE, "script")) {
                                return htmlTreeBuilder2.process(token2, InHead);
                            } else {
                                if (normalName.equals("input")) {
                                    if (!asStartTag.attributes.get("type").equalsIgnoreCase("hidden")) {
                                        return anythingElse(token, htmlTreeBuilder);
                                    }
                                    htmlTreeBuilder2.insertEmpty(asStartTag);
                                } else if (!normalName.equals("form")) {
                                    return anythingElse(token, htmlTreeBuilder);
                                } else {
                                    htmlTreeBuilder2.error(this);
                                    if (htmlTreeBuilder.getFormElement() != null) {
                                        return false;
                                    }
                                    htmlTreeBuilder2.insertForm(asStartTag, false);
                                }
                            }
                        }
                    }
                    return true;
                } else if (token.isEndTag()) {
                    String normalName2 = token.asEndTag().normalName();
                    if (normalName2.equals(str)) {
                        if (!htmlTreeBuilder2.inTableScope(normalName2)) {
                            htmlTreeBuilder2.error(this);
                            return false;
                        }
                        htmlTreeBuilder2.popStackToClose(str);
                        htmlTreeBuilder.resetInsertionMode();
                        return true;
                    } else if (!StringUtil.in(normalName2, TtmlNode.TAG_BODY, "caption", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", Conversation.TRANSIENT)) {
                        return anythingElse(token, htmlTreeBuilder);
                    } else {
                        htmlTreeBuilder2.error(this);
                        return false;
                    }
                } else if (!token.isEOF()) {
                    return anythingElse(token, htmlTreeBuilder);
                } else {
                    if (htmlTreeBuilder.currentElement().nodeName().equals("html")) {
                        htmlTreeBuilder2.error(this);
                    }
                    return true;
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            if (!StringUtil.in(htmlTreeBuilder.currentElement().nodeName(), "table", "tbody", "tfoot", "thead", Conversation.TRANSIENT)) {
                return htmlTreeBuilder.process(token, InBody);
            }
            htmlTreeBuilder.setFosterInserts(true);
            boolean process = htmlTreeBuilder.process(token, InBody);
            htmlTreeBuilder.setFosterInserts(false);
            return process;
        }
    },
    InTableText {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()] != 5) {
                if (htmlTreeBuilder.getPendingTableCharacters().size() > 0) {
                    for (String str : htmlTreeBuilder.getPendingTableCharacters()) {
                        if (!HtmlTreeBuilderState.isWhitespace(str)) {
                            htmlTreeBuilder.error(this);
                            if (StringUtil.in(htmlTreeBuilder.currentElement().nodeName(), "table", "tbody", "tfoot", "thead", Conversation.TRANSIENT)) {
                                htmlTreeBuilder.setFosterInserts(true);
                                htmlTreeBuilder.process(new Character().data(str), InBody);
                                htmlTreeBuilder.setFosterInserts(false);
                            } else {
                                htmlTreeBuilder.process(new Character().data(str), InBody);
                            }
                        } else {
                            htmlTreeBuilder.insert(new Character().data(str));
                        }
                    }
                    htmlTreeBuilder.newPendingTableCharacters();
                }
                htmlTreeBuilder.transition(htmlTreeBuilder.originalState());
                return htmlTreeBuilder.process(token);
            }
            Character asCharacter = token.asCharacter();
            if (asCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                htmlTreeBuilder.error(this);
                return false;
            }
            htmlTreeBuilder.getPendingTableCharacters().add(asCharacter.getData());
            return true;
        }
    },
    InCaption {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            String str = "caption";
            if (!token.isEndTag() || !token.asEndTag().normalName().equals(str)) {
                if ((token.isStartTag() && StringUtil.in(token.asStartTag().normalName(), "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", Conversation.TRANSIENT)) || (token.isEndTag() && token.asEndTag().normalName().equals("table"))) {
                    htmlTreeBuilder.error(this);
                    if (htmlTreeBuilder.processEndTag(str)) {
                        return htmlTreeBuilder.process(token);
                    }
                } else if (!token.isEndTag() || !StringUtil.in(token.asEndTag().normalName(), TtmlNode.TAG_BODY, "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", Conversation.TRANSIENT)) {
                    return htmlTreeBuilder.process(token, InBody);
                } else {
                    htmlTreeBuilder.error(this);
                    return false;
                }
            } else if (!htmlTreeBuilder.inTableScope(token.asEndTag().normalName())) {
                htmlTreeBuilder.error(this);
                return false;
            } else {
                htmlTreeBuilder.generateImpliedEndTags();
                if (!htmlTreeBuilder.currentElement().nodeName().equals(str)) {
                    htmlTreeBuilder.error(this);
                }
                htmlTreeBuilder.popStackToClose(str);
                htmlTreeBuilder.clearFormattingElementsToLastMarker();
                htmlTreeBuilder.transition(InTable);
            }
            return true;
        }
    },
    InColumnGroup {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
                return true;
            }
            int i = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            if (i == 1) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (i != 2) {
                String str = "html";
                if (i == 3) {
                    StartTag asStartTag = token.asStartTag();
                    String normalName = asStartTag.normalName();
                    if (normalName.equals(str)) {
                        return htmlTreeBuilder.process(token, InBody);
                    }
                    if (!normalName.equals("col")) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.insertEmpty(asStartTag);
                } else if (i != 4) {
                    if (i != 6) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    if (htmlTreeBuilder.currentElement().nodeName().equals(str)) {
                        return true;
                    }
                    return anythingElse(token, htmlTreeBuilder);
                } else if (!token.asEndTag().normalName().equals("colgroup")) {
                    return anythingElse(token, htmlTreeBuilder);
                } else {
                    if (htmlTreeBuilder.currentElement().nodeName().equals(str)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.transition(InTable);
                }
            } else {
                htmlTreeBuilder.error(this);
            }
            return true;
        }

        private boolean anythingElse(Token token, TreeBuilder treeBuilder) {
            if (treeBuilder.processEndTag("colgroup")) {
                return treeBuilder.process(token);
            }
            return true;
        }
    },
    InTableBody {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            int i = AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()];
            if (i == 3) {
                StartTag asStartTag = token.asStartTag();
                String normalName = asStartTag.normalName();
                String str = Conversation.TRANSIENT;
                if (normalName.equals(str)) {
                    htmlTreeBuilder.clearStackToTableBodyContext();
                    htmlTreeBuilder.insert(asStartTag);
                    htmlTreeBuilder.transition(InRow);
                } else if (StringUtil.in(normalName, "th", "td")) {
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.processStartTag(str);
                    return htmlTreeBuilder.process(asStartTag);
                } else if (StringUtil.in(normalName, "caption", "col", "colgroup", "tbody", "tfoot", "thead")) {
                    return exitTableBody(token, htmlTreeBuilder);
                } else {
                    return anythingElse(token, htmlTreeBuilder);
                }
            } else if (i != 4) {
                return anythingElse(token, htmlTreeBuilder);
            } else {
                String normalName2 = token.asEndTag().normalName();
                if (StringUtil.in(normalName2, "tbody", "tfoot", "thead")) {
                    if (!htmlTreeBuilder.inTableScope(normalName2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToTableBodyContext();
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.transition(InTable);
                } else if (normalName2.equals("table")) {
                    return exitTableBody(token, htmlTreeBuilder);
                } else {
                    if (!StringUtil.in(normalName2, TtmlNode.TAG_BODY, "caption", "col", "colgroup", "html", "td", "th", Conversation.TRANSIENT)) {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.error(this);
                    return false;
                }
            }
            return true;
        }

        private boolean exitTableBody(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (htmlTreeBuilder.inTableScope("tbody") || htmlTreeBuilder.inTableScope("thead") || htmlTreeBuilder.inScope("tfoot")) {
                htmlTreeBuilder.clearStackToTableBodyContext();
                htmlTreeBuilder.processEndTag(htmlTreeBuilder.currentElement().nodeName());
                return htmlTreeBuilder.process(token);
            }
            htmlTreeBuilder.error(this);
            return false;
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, InTable);
        }
    },
    InRow {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isStartTag()) {
                StartTag asStartTag = token.asStartTag();
                String normalName = asStartTag.normalName();
                if (StringUtil.in(normalName, "th", "td")) {
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.insert(asStartTag);
                    htmlTreeBuilder.transition(InCell);
                    htmlTreeBuilder.insertMarkerToFormattingElements();
                } else if (StringUtil.in(normalName, "caption", "col", "colgroup", "tbody", "tfoot", "thead", Conversation.TRANSIENT)) {
                    return handleMissingTr(token, htmlTreeBuilder);
                } else {
                    return anythingElse(token, htmlTreeBuilder);
                }
            } else if (!token.isEndTag()) {
                return anythingElse(token, htmlTreeBuilder);
            } else {
                String normalName2 = token.asEndTag().normalName();
                String str = Conversation.TRANSIENT;
                if (normalName2.equals(str)) {
                    if (!htmlTreeBuilder.inTableScope(normalName2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.transition(InTableBody);
                } else if (normalName2.equals("table")) {
                    return handleMissingTr(token, htmlTreeBuilder);
                } else {
                    if (StringUtil.in(normalName2, "tbody", "tfoot", "thead")) {
                        if (!htmlTreeBuilder.inTableScope(normalName2)) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.processEndTag(str);
                        return htmlTreeBuilder.process(token);
                    } else if (!StringUtil.in(normalName2, TtmlNode.TAG_BODY, "caption", "col", "colgroup", "html", "td", "th")) {
                        return anythingElse(token, htmlTreeBuilder);
                    } else {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                }
            }
            return true;
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, InTable);
        }

        private boolean handleMissingTr(Token token, TreeBuilder treeBuilder) {
            if (treeBuilder.processEndTag(Conversation.TRANSIENT)) {
                return treeBuilder.process(token);
            }
            return false;
        }
    },
    InCell {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            String str = "th";
            String str2 = "td";
            if (token.isEndTag()) {
                String normalName = token.asEndTag().normalName();
                if (StringUtil.in(normalName, str2, str)) {
                    if (!htmlTreeBuilder.inTableScope(normalName)) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.transition(InRow);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags();
                    if (!htmlTreeBuilder.currentElement().nodeName().equals(normalName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(normalName);
                    htmlTreeBuilder.clearFormattingElementsToLastMarker();
                    htmlTreeBuilder.transition(InRow);
                    return true;
                } else if (StringUtil.in(normalName, TtmlNode.TAG_BODY, "caption", "col", "colgroup", "html")) {
                    htmlTreeBuilder.error(this);
                    return false;
                } else if (!StringUtil.in(normalName, "table", "tbody", "tfoot", "thead", Conversation.TRANSIENT)) {
                    return anythingElse(token, htmlTreeBuilder);
                } else {
                    if (!htmlTreeBuilder.inTableScope(normalName)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    closeCell(htmlTreeBuilder);
                    return htmlTreeBuilder.process(token);
                }
            } else if (!token.isStartTag() || !StringUtil.in(token.asStartTag().normalName(), "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", Conversation.TRANSIENT)) {
                return anythingElse(token, htmlTreeBuilder);
            } else {
                if (htmlTreeBuilder.inTableScope(str2) || htmlTreeBuilder.inTableScope(str)) {
                    closeCell(htmlTreeBuilder);
                    return htmlTreeBuilder.process(token);
                }
                htmlTreeBuilder.error(this);
                return false;
            }
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return htmlTreeBuilder.process(token, InBody);
        }

        private void closeCell(HtmlTreeBuilder htmlTreeBuilder) {
            String str = "td";
            if (htmlTreeBuilder.inTableScope(str)) {
                htmlTreeBuilder.processEndTag(str);
            } else {
                htmlTreeBuilder.processEndTag("th");
            }
        }
    },
    InSelect {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            String str = "html";
            String str2 = "select";
            String str3 = "optgroup";
            String str4 = "option";
            switch (AnonymousClass24.$SwitchMap$org$jsoup$parser$Token$TokenType[token.type.ordinal()]) {
                case 1:
                    htmlTreeBuilder.insert(token.asComment());
                    break;
                case 2:
                    htmlTreeBuilder.error(this);
                    return false;
                case 3:
                    StartTag asStartTag = token.asStartTag();
                    String normalName = asStartTag.normalName();
                    if (normalName.equals(str)) {
                        return htmlTreeBuilder.process(asStartTag, InBody);
                    }
                    if (normalName.equals(str4)) {
                        htmlTreeBuilder.processEndTag(str4);
                        htmlTreeBuilder.insert(asStartTag);
                        break;
                    } else if (normalName.equals(str3)) {
                        if (htmlTreeBuilder.currentElement().nodeName().equals(str4)) {
                            htmlTreeBuilder.processEndTag(str4);
                        } else if (htmlTreeBuilder.currentElement().nodeName().equals(str3)) {
                            htmlTreeBuilder.processEndTag(str3);
                        }
                        htmlTreeBuilder.insert(asStartTag);
                        break;
                    } else if (normalName.equals(str2)) {
                        htmlTreeBuilder.error(this);
                        return htmlTreeBuilder.processEndTag(str2);
                    } else if (StringUtil.in(normalName, "input", "keygen", "textarea")) {
                        htmlTreeBuilder.error(this);
                        if (!htmlTreeBuilder.inSelectScope(str2)) {
                            return false;
                        }
                        htmlTreeBuilder.processEndTag(str2);
                        return htmlTreeBuilder.process(asStartTag);
                    } else if (normalName.equals("script")) {
                        return htmlTreeBuilder.process(token, InHead);
                    } else {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                case 4:
                    String normalName2 = token.asEndTag().normalName();
                    if (normalName2.equals(str3)) {
                        if (htmlTreeBuilder.currentElement().nodeName().equals(str4) && htmlTreeBuilder.aboveOnStack(htmlTreeBuilder.currentElement()) != null && htmlTreeBuilder.aboveOnStack(htmlTreeBuilder.currentElement()).nodeName().equals(str3)) {
                            htmlTreeBuilder.processEndTag(str4);
                        }
                        if (!htmlTreeBuilder.currentElement().nodeName().equals(str3)) {
                            htmlTreeBuilder.error(this);
                            break;
                        } else {
                            htmlTreeBuilder.pop();
                            break;
                        }
                    } else if (normalName2.equals(str4)) {
                        if (!htmlTreeBuilder.currentElement().nodeName().equals(str4)) {
                            htmlTreeBuilder.error(this);
                            break;
                        } else {
                            htmlTreeBuilder.pop();
                            break;
                        }
                    } else if (normalName2.equals(str2)) {
                        if (htmlTreeBuilder.inSelectScope(normalName2)) {
                            htmlTreeBuilder.popStackToClose(normalName2);
                            htmlTreeBuilder.resetInsertionMode();
                            break;
                        } else {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                    } else {
                        return anythingElse(token, htmlTreeBuilder);
                    }
                case 5:
                    Character asCharacter = token.asCharacter();
                    if (!asCharacter.getData().equals(HtmlTreeBuilderState.nullString)) {
                        htmlTreeBuilder.insert(asCharacter);
                        break;
                    } else {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                case 6:
                    if (!htmlTreeBuilder.currentElement().nodeName().equals(str)) {
                        htmlTreeBuilder.error(this);
                        break;
                    }
                    break;
                default:
                    return anythingElse(token, htmlTreeBuilder);
            }
            return true;
        }

        private boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            return false;
        }
    },
    InSelectInTable {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            String str = "select";
            if (token.isStartTag() && StringUtil.in(token.asStartTag().normalName(), "caption", "table", "tbody", "tfoot", "thead", Conversation.TRANSIENT, "td", "th")) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.processEndTag(str);
                return htmlTreeBuilder.process(token);
            } else if (!token.isEndTag() || !StringUtil.in(token.asEndTag().normalName(), "caption", "table", "tbody", "tfoot", "thead", Conversation.TRANSIENT, "td", "th")) {
                return htmlTreeBuilder.process(token, InSelect);
            } else {
                htmlTreeBuilder.error(this);
                if (!htmlTreeBuilder.inTableScope(token.asEndTag().normalName())) {
                    return false;
                }
                htmlTreeBuilder.processEndTag(str);
                return htmlTreeBuilder.process(token);
            }
        }
    },
    AfterBody {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return htmlTreeBuilder.process(token, InBody);
            }
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            } else {
                String str = "html";
                if (token.isStartTag() && token.asStartTag().normalName().equals(str)) {
                    return htmlTreeBuilder.process(token, InBody);
                }
                if (!token.isEndTag() || !token.asEndTag().normalName().equals(str)) {
                    if (!token.isEOF()) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.transition(InBody);
                        return htmlTreeBuilder.process(token);
                    }
                } else if (htmlTreeBuilder.isFragmentParsing()) {
                    htmlTreeBuilder.error(this);
                    return false;
                } else {
                    htmlTreeBuilder.transition(AfterAfterBody);
                }
            }
            return true;
        }
    },
    InFrameset {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
            } else if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            } else {
                String str = "frameset";
                String str2 = "html";
                if (token.isStartTag()) {
                    StartTag asStartTag = token.asStartTag();
                    String normalName = asStartTag.normalName();
                    if (normalName.equals(str2)) {
                        return htmlTreeBuilder.process(asStartTag, InBody);
                    }
                    if (normalName.equals(str)) {
                        htmlTreeBuilder.insert(asStartTag);
                    } else if (normalName.equals("frame")) {
                        htmlTreeBuilder.insertEmpty(asStartTag);
                    } else if (normalName.equals("noframes")) {
                        return htmlTreeBuilder.process(asStartTag, InHead);
                    } else {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                } else if (!token.isEndTag() || !token.asEndTag().normalName().equals(str)) {
                    if (!token.isEOF()) {
                        htmlTreeBuilder.error(this);
                        return false;
                    } else if (!htmlTreeBuilder.currentElement().nodeName().equals(str2)) {
                        htmlTreeBuilder.error(this);
                    }
                } else if (htmlTreeBuilder.currentElement().nodeName().equals(str2)) {
                    htmlTreeBuilder.error(this);
                    return false;
                } else {
                    htmlTreeBuilder.pop();
                    if (!htmlTreeBuilder.isFragmentParsing() && !htmlTreeBuilder.currentElement().nodeName().equals(str)) {
                        htmlTreeBuilder.transition(AfterFrameset);
                    }
                }
            }
            return true;
        }
    },
    AfterFrameset {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                htmlTreeBuilder.insert(token.asCharacter());
            } else if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (token.isDoctype()) {
                htmlTreeBuilder.error(this);
                return false;
            } else {
                String str = "html";
                if (token.isStartTag() && token.asStartTag().normalName().equals(str)) {
                    return htmlTreeBuilder.process(token, InBody);
                }
                if (token.isEndTag() && token.asEndTag().normalName().equals(str)) {
                    htmlTreeBuilder.transition(AfterAfterFrameset);
                } else if (token.isStartTag() && token.asStartTag().normalName().equals("noframes")) {
                    return htmlTreeBuilder.process(token, InHead);
                } else {
                    if (!token.isEOF()) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                }
            }
            return true;
        }
    },
    AfterAfterBody {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (token.isDoctype() || HtmlTreeBuilderState.isWhitespace(token) || (token.isStartTag() && token.asStartTag().normalName().equals("html"))) {
                return htmlTreeBuilder.process(token, InBody);
            } else {
                if (!token.isEOF()) {
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.transition(InBody);
                    return htmlTreeBuilder.process(token);
                }
            }
            return true;
        }
    },
    AfterAfterFrameset {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.isComment()) {
                htmlTreeBuilder.insert(token.asComment());
            } else if (token.isDoctype() || HtmlTreeBuilderState.isWhitespace(token) || (token.isStartTag() && token.asStartTag().normalName().equals("html"))) {
                return htmlTreeBuilder.process(token, InBody);
            } else {
                if (!token.isEOF()) {
                    if (token.isStartTag() && token.asStartTag().normalName().equals("noframes")) {
                        return htmlTreeBuilder.process(token, InHead);
                    }
                    htmlTreeBuilder.error(this);
                    return false;
                }
            }
            return true;
        }
    },
    ForeignContent {
        /* access modifiers changed from: 0000 */
        public boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            return true;
        }
    };
    
    /* access modifiers changed from: private */
    public static String nullString;

    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$24 reason: invalid class name */
    static /* synthetic */ class AnonymousClass24 {
        static final /* synthetic */ int[] $SwitchMap$org$jsoup$parser$Token$TokenType = null;

        /* JADX WARNING: Can't wrap try/catch for region: R(12:0|1|2|3|4|5|6|7|8|9|10|(3:11|12|14)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0040 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0035 */
        static {
            /*
                org.jsoup.parser.Token$TokenType[] r0 = org.jsoup.parser.Token.TokenType.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$org$jsoup$parser$Token$TokenType = r0
                int[] r0 = $SwitchMap$org$jsoup$parser$Token$TokenType     // Catch:{ NoSuchFieldError -> 0x0014 }
                org.jsoup.parser.Token$TokenType r1 = org.jsoup.parser.Token.TokenType.Comment     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = $SwitchMap$org$jsoup$parser$Token$TokenType     // Catch:{ NoSuchFieldError -> 0x001f }
                org.jsoup.parser.Token$TokenType r1 = org.jsoup.parser.Token.TokenType.Doctype     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = $SwitchMap$org$jsoup$parser$Token$TokenType     // Catch:{ NoSuchFieldError -> 0x002a }
                org.jsoup.parser.Token$TokenType r1 = org.jsoup.parser.Token.TokenType.StartTag     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = $SwitchMap$org$jsoup$parser$Token$TokenType     // Catch:{ NoSuchFieldError -> 0x0035 }
                org.jsoup.parser.Token$TokenType r1 = org.jsoup.parser.Token.TokenType.EndTag     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                int[] r0 = $SwitchMap$org$jsoup$parser$Token$TokenType     // Catch:{ NoSuchFieldError -> 0x0040 }
                org.jsoup.parser.Token$TokenType r1 = org.jsoup.parser.Token.TokenType.Character     // Catch:{ NoSuchFieldError -> 0x0040 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0040 }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0040 }
            L_0x0040:
                int[] r0 = $SwitchMap$org$jsoup$parser$Token$TokenType     // Catch:{ NoSuchFieldError -> 0x004b }
                org.jsoup.parser.Token$TokenType r1 = org.jsoup.parser.Token.TokenType.EOF     // Catch:{ NoSuchFieldError -> 0x004b }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x004b }
                r2 = 6
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x004b }
            L_0x004b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilderState.AnonymousClass24.<clinit>():void");
        }
    }

    private static final class Constants {
        /* access modifiers changed from: private */
        public static final String[] DdDt = null;
        /* access modifiers changed from: private */
        public static final String[] Formatters = null;
        /* access modifiers changed from: private */
        public static final String[] Headings = null;
        /* access modifiers changed from: private */
        public static final String[] InBodyEndAdoptionFormatters = null;
        /* access modifiers changed from: private */
        public static final String[] InBodyEndClosers = null;
        /* access modifiers changed from: private */
        public static final String[] InBodyEndTableFosters = null;
        /* access modifiers changed from: private */
        public static final String[] InBodyStartApplets = null;
        /* access modifiers changed from: private */
        public static final String[] InBodyStartDrop = null;
        /* access modifiers changed from: private */
        public static final String[] InBodyStartEmptyFormatters = null;
        /* access modifiers changed from: private */
        public static final String[] InBodyStartInputAttribs = null;
        /* access modifiers changed from: private */
        public static final String[] InBodyStartLiBreakers = null;
        /* access modifiers changed from: private */
        public static final String[] InBodyStartMedia = null;
        /* access modifiers changed from: private */
        public static final String[] InBodyStartOptions = null;
        /* access modifiers changed from: private */
        public static final String[] InBodyStartPClosers = null;
        /* access modifiers changed from: private */
        public static final String[] InBodyStartPreListing = null;
        /* access modifiers changed from: private */
        public static final String[] InBodyStartRuby = null;
        /* access modifiers changed from: private */
        public static final String[] InBodyStartToHead = null;

        private Constants() {
        }

        static {
            InBodyStartToHead = new String[]{"base", "basefont", "bgsound", "command", "link", "meta", "noframes", "script", TtmlNode.TAG_STYLE, "title"};
            InBodyStartPClosers = new String[]{"address", "article", "aside", "blockquote", TtmlNode.CENTER, "details", "dir", TtmlNode.TAG_DIV, "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "menu", "nav", "ol", TtmlNode.TAG_P, "section", "summary", "ul"};
            Headings = new String[]{"h1", "h2", "h3", "h4", "h5", "h6"};
            InBodyStartPreListing = new String[]{"pre", "listing"};
            InBodyStartLiBreakers = new String[]{"address", TtmlNode.TAG_DIV, TtmlNode.TAG_P};
            DdDt = new String[]{"dd", "dt"};
            Formatters = new String[]{"b", "big", "code", "em", "font", "i", "s", "small", "strike", "strong", "tt", "u"};
            InBodyStartApplets = new String[]{"applet", "marquee", "object"};
            InBodyStartEmptyFormatters = new String[]{UserPreference.AREA, TtmlNode.TAG_BR, "embed", SocialConstants.PARAM_IMG_URL, "keygen", "wbr"};
            InBodyStartMedia = new String[]{"param", "source", "track"};
            InBodyStartInputAttribs = new String[]{"name", AuthActivity.ACTION_KEY, SettingsJsonConstants.PROMPT_KEY};
            InBodyStartOptions = new String[]{"optgroup", "option"};
            InBodyStartRuby = new String[]{"rp", "rt"};
            InBodyStartDrop = new String[]{"caption", "col", "colgroup", "frame", TtmlNode.TAG_HEAD, "tbody", "td", "tfoot", "th", "thead", Conversation.TRANSIENT};
            InBodyEndClosers = new String[]{"address", "article", "aside", "blockquote", "button", TtmlNode.CENTER, "details", "dir", TtmlNode.TAG_DIV, "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "menu", "nav", "ol", "pre", "section", "summary", "ul"};
            InBodyEndAdoptionFormatters = new String[]{"a", "b", "big", "code", "em", "font", "i", "nobr", "s", "small", "strike", "strong", "tt", "u"};
            InBodyEndTableFosters = new String[]{"table", "tbody", "tfoot", "thead", Conversation.TRANSIENT};
        }
    }

    /* access modifiers changed from: 0000 */
    public abstract boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder);

    static {
        nullString = String.valueOf(0);
    }

    /* access modifiers changed from: private */
    public static boolean isWhitespace(Token token) {
        if (token.isCharacter()) {
            return isWhitespace(token.asCharacter().getData());
        }
        return false;
    }

    /* access modifiers changed from: private */
    public static boolean isWhitespace(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (!StringUtil.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: private */
    public static void handleRcData(StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.insert(startTag);
        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rcdata);
        htmlTreeBuilder.markInsertionMode();
        htmlTreeBuilder.transition(Text);
    }

    /* access modifiers changed from: private */
    public static void handleRawtext(StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.insert(startTag);
        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rawtext);
        htmlTreeBuilder.markInsertionMode();
        htmlTreeBuilder.transition(Text);
    }
}
