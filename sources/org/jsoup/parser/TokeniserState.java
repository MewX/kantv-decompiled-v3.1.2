package org.jsoup.parser;

import java.util.Arrays;
import org.seamless.xml.DOM;

enum TokeniserState {
    Data {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char current = characterReader.current();
            if (current == 0) {
                tokeniser.error((TokeniserState) this);
                tokeniser.emit(characterReader.consume());
            } else if (current == '&') {
                tokeniser.advanceTransition(CharacterReferenceInData);
            } else if (current == '<') {
                tokeniser.advanceTransition(TagOpen);
            } else if (current != 65535) {
                tokeniser.emit(characterReader.consumeData());
            } else {
                tokeniser.emit((Token) new EOF());
            }
        }
    },
    CharacterReferenceInData {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.readCharRef(tokeniser, Data);
        }
    },
    Rcdata {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char current = characterReader.current();
            if (current == 0) {
                tokeniser.error((TokeniserState) this);
                characterReader.advance();
                tokeniser.emit(65533);
            } else if (current == '&') {
                tokeniser.advanceTransition(CharacterReferenceInRcdata);
            } else if (current == '<') {
                tokeniser.advanceTransition(RcdataLessthanSign);
            } else if (current != 65535) {
                tokeniser.emit(characterReader.consumeToAny('&', '<', TokeniserState.nullChar));
            } else {
                tokeniser.emit((Token) new EOF());
            }
        }
    },
    CharacterReferenceInRcdata {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.readCharRef(tokeniser, Rcdata);
        }
    },
    Rawtext {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.readData(tokeniser, characterReader, this, RawtextLessthanSign);
        }
    },
    ScriptData {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.readData(tokeniser, characterReader, this, ScriptDataLessthanSign);
        }
    },
    PLAINTEXT {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char current = characterReader.current();
            if (current == 0) {
                tokeniser.error((TokeniserState) this);
                characterReader.advance();
                tokeniser.emit(65533);
            } else if (current != 65535) {
                tokeniser.emit(characterReader.consumeTo((char) TokeniserState.nullChar));
            } else {
                tokeniser.emit((Token) new EOF());
            }
        }
    },
    TagOpen {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char current = characterReader.current();
            if (current == '!') {
                tokeniser.advanceTransition(MarkupDeclarationOpen);
            } else if (current == '/') {
                tokeniser.advanceTransition(EndTagOpen);
            } else if (current == '?') {
                tokeniser.advanceTransition(BogusComment);
            } else if (characterReader.matchesLetter()) {
                tokeniser.createTagPending(true);
                tokeniser.transition(TagName);
            } else {
                tokeniser.error((TokeniserState) this);
                tokeniser.emit('<');
                tokeniser.transition(Data);
            }
        }
    },
    EndTagOpen {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.isEmpty()) {
                tokeniser.eofError(this);
                tokeniser.emit("</");
                tokeniser.transition(Data);
            } else if (characterReader.matchesLetter()) {
                tokeniser.createTagPending(false);
                tokeniser.transition(TagName);
            } else if (characterReader.matches('>')) {
                tokeniser.error((TokeniserState) this);
                tokeniser.advanceTransition(Data);
            } else {
                tokeniser.error((TokeniserState) this);
                tokeniser.advanceTransition(BogusComment);
            }
        }
    },
    TagName {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            tokeniser.tagPending.appendTagName(characterReader.consumeTagName());
            char consume = characterReader.consume();
            if (consume != 0) {
                if (consume != ' ') {
                    if (consume == '/') {
                        tokeniser.transition(SelfClosingStartTag);
                        return;
                    } else if (consume == '>') {
                        tokeniser.emitTagPending();
                        tokeniser.transition(Data);
                        return;
                    } else if (consume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.transition(Data);
                        return;
                    } else if (!(consume == 9 || consume == 10 || consume == 12 || consume == 13)) {
                        return;
                    }
                }
                tokeniser.transition(BeforeAttributeName);
                return;
            }
            tokeniser.tagPending.appendTagName(TokeniserState.replacementStr);
        }
    },
    RcdataLessthanSign {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matches('/')) {
                tokeniser.createTempBuffer();
                tokeniser.advanceTransition(RCDATAEndTagOpen);
                return;
            }
            if (characterReader.matchesLetter() && tokeniser.appropriateEndTagName() != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("</");
                sb.append(tokeniser.appropriateEndTagName());
                if (!characterReader.containsIgnoreCase(sb.toString())) {
                    tokeniser.tagPending = tokeniser.createTagPending(false).name(tokeniser.appropriateEndTagName());
                    tokeniser.emitTagPending();
                    characterReader.unconsume();
                    tokeniser.transition(Data);
                    return;
                }
            }
            tokeniser.emit("<");
            tokeniser.transition(Rcdata);
        }
    },
    RCDATAEndTagOpen {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                tokeniser.createTagPending(false);
                tokeniser.tagPending.appendTagName(characterReader.current());
                tokeniser.dataBuffer.append(characterReader.current());
                tokeniser.advanceTransition(RCDATAEndTagName);
                return;
            }
            tokeniser.emit("</");
            tokeniser.transition(Rcdata);
        }
    },
    RCDATAEndTagName {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                String consumeLetterSequence = characterReader.consumeLetterSequence();
                tokeniser.tagPending.appendTagName(consumeLetterSequence);
                tokeniser.dataBuffer.append(consumeLetterSequence);
                return;
            }
            char consume = characterReader.consume();
            if (consume == 9 || consume == 10 || consume == 12 || consume == 13 || consume == ' ') {
                if (tokeniser.isAppropriateEndTagToken()) {
                    tokeniser.transition(BeforeAttributeName);
                } else {
                    anythingElse(tokeniser, characterReader);
                }
            } else if (consume != '/') {
                if (consume != '>') {
                    anythingElse(tokeniser, characterReader);
                } else if (tokeniser.isAppropriateEndTagToken()) {
                    tokeniser.emitTagPending();
                    tokeniser.transition(Data);
                } else {
                    anythingElse(tokeniser, characterReader);
                }
            } else if (tokeniser.isAppropriateEndTagToken()) {
                tokeniser.transition(SelfClosingStartTag);
            } else {
                anythingElse(tokeniser, characterReader);
            }
        }

        private void anythingElse(Tokeniser tokeniser, CharacterReader characterReader) {
            StringBuilder sb = new StringBuilder();
            sb.append("</");
            sb.append(tokeniser.dataBuffer.toString());
            tokeniser.emit(sb.toString());
            characterReader.unconsume();
            tokeniser.transition(Rcdata);
        }
    },
    RawtextLessthanSign {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matches('/')) {
                tokeniser.createTempBuffer();
                tokeniser.advanceTransition(RawtextEndTagOpen);
                return;
            }
            tokeniser.emit('<');
            tokeniser.transition(Rawtext);
        }
    },
    RawtextEndTagOpen {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.readEndTag(tokeniser, characterReader, RawtextEndTagName, Rawtext);
        }
    },
    RawtextEndTagName {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.handleDataEndTag(tokeniser, characterReader, Rawtext);
        }
    },
    ScriptDataLessthanSign {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == '!') {
                tokeniser.emit("<!");
                tokeniser.transition(ScriptDataEscapeStart);
            } else if (consume != '/') {
                tokeniser.emit("<");
                characterReader.unconsume();
                tokeniser.transition(ScriptData);
            } else {
                tokeniser.createTempBuffer();
                tokeniser.transition(ScriptDataEndTagOpen);
            }
        }
    },
    ScriptDataEndTagOpen {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.readEndTag(tokeniser, characterReader, ScriptDataEndTagName, ScriptData);
        }
    },
    ScriptDataEndTagName {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.handleDataEndTag(tokeniser, characterReader, ScriptData);
        }
    },
    ScriptDataEscapeStart {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matches('-')) {
                tokeniser.emit('-');
                tokeniser.advanceTransition(ScriptDataEscapeStartDash);
                return;
            }
            tokeniser.transition(ScriptData);
        }
    },
    ScriptDataEscapeStartDash {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matches('-')) {
                tokeniser.emit('-');
                tokeniser.advanceTransition(ScriptDataEscapedDashDash);
                return;
            }
            tokeniser.transition(ScriptData);
        }
    },
    ScriptDataEscaped {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.isEmpty()) {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
                return;
            }
            char current = characterReader.current();
            if (current == 0) {
                tokeniser.error((TokeniserState) this);
                characterReader.advance();
                tokeniser.emit(65533);
            } else if (current == '-') {
                tokeniser.emit('-');
                tokeniser.advanceTransition(ScriptDataEscapedDash);
            } else if (current != '<') {
                tokeniser.emit(characterReader.consumeToAny('-', '<', TokeniserState.nullChar));
            } else {
                tokeniser.advanceTransition(ScriptDataEscapedLessthanSign);
            }
        }
    },
    ScriptDataEscapedDash {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.isEmpty()) {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
                return;
            }
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                tokeniser.emit(65533);
                tokeniser.transition(ScriptDataEscaped);
            } else if (consume == '-') {
                tokeniser.emit(consume);
                tokeniser.transition(ScriptDataEscapedDashDash);
            } else if (consume != '<') {
                tokeniser.emit(consume);
                tokeniser.transition(ScriptDataEscaped);
            } else {
                tokeniser.transition(ScriptDataEscapedLessthanSign);
            }
        }
    },
    ScriptDataEscapedDashDash {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.isEmpty()) {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
                return;
            }
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                tokeniser.emit(65533);
                tokeniser.transition(ScriptDataEscaped);
            } else if (consume == '-') {
                tokeniser.emit(consume);
            } else if (consume == '<') {
                tokeniser.transition(ScriptDataEscapedLessthanSign);
            } else if (consume != '>') {
                tokeniser.emit(consume);
                tokeniser.transition(ScriptDataEscaped);
            } else {
                tokeniser.emit(consume);
                tokeniser.transition(ScriptData);
            }
        }
    },
    ScriptDataEscapedLessthanSign {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                tokeniser.createTempBuffer();
                tokeniser.dataBuffer.append(characterReader.current());
                StringBuilder sb = new StringBuilder();
                sb.append("<");
                sb.append(characterReader.current());
                tokeniser.emit(sb.toString());
                tokeniser.advanceTransition(ScriptDataDoubleEscapeStart);
            } else if (characterReader.matches('/')) {
                tokeniser.createTempBuffer();
                tokeniser.advanceTransition(ScriptDataEscapedEndTagOpen);
            } else {
                tokeniser.emit('<');
                tokeniser.transition(ScriptDataEscaped);
            }
        }
    },
    ScriptDataEscapedEndTagOpen {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                tokeniser.createTagPending(false);
                tokeniser.tagPending.appendTagName(characterReader.current());
                tokeniser.dataBuffer.append(characterReader.current());
                tokeniser.advanceTransition(ScriptDataEscapedEndTagName);
                return;
            }
            tokeniser.emit("</");
            tokeniser.transition(ScriptDataEscaped);
        }
    },
    ScriptDataEscapedEndTagName {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.handleDataEndTag(tokeniser, characterReader, ScriptDataEscaped);
        }
    },
    ScriptDataDoubleEscapeStart {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.handleDataDoubleEscapeTag(tokeniser, characterReader, ScriptDataDoubleEscaped, ScriptDataEscaped);
        }
    },
    ScriptDataDoubleEscaped {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char current = characterReader.current();
            if (current == 0) {
                tokeniser.error((TokeniserState) this);
                characterReader.advance();
                tokeniser.emit(65533);
            } else if (current == '-') {
                tokeniser.emit(current);
                tokeniser.advanceTransition(ScriptDataDoubleEscapedDash);
            } else if (current == '<') {
                tokeniser.emit(current);
                tokeniser.advanceTransition(ScriptDataDoubleEscapedLessthanSign);
            } else if (current != 65535) {
                tokeniser.emit(characterReader.consumeToAny('-', '<', TokeniserState.nullChar));
            } else {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
            }
        }
    },
    ScriptDataDoubleEscapedDash {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                tokeniser.emit(65533);
                tokeniser.transition(ScriptDataDoubleEscaped);
            } else if (consume == '-') {
                tokeniser.emit(consume);
                tokeniser.transition(ScriptDataDoubleEscapedDashDash);
            } else if (consume == '<') {
                tokeniser.emit(consume);
                tokeniser.transition(ScriptDataDoubleEscapedLessthanSign);
            } else if (consume != 65535) {
                tokeniser.emit(consume);
                tokeniser.transition(ScriptDataDoubleEscaped);
            } else {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
            }
        }
    },
    ScriptDataDoubleEscapedDashDash {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                tokeniser.emit(65533);
                tokeniser.transition(ScriptDataDoubleEscaped);
            } else if (consume == '-') {
                tokeniser.emit(consume);
            } else if (consume == '<') {
                tokeniser.emit(consume);
                tokeniser.transition(ScriptDataDoubleEscapedLessthanSign);
            } else if (consume == '>') {
                tokeniser.emit(consume);
                tokeniser.transition(ScriptData);
            } else if (consume != 65535) {
                tokeniser.emit(consume);
                tokeniser.transition(ScriptDataDoubleEscaped);
            } else {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
            }
        }
    },
    ScriptDataDoubleEscapedLessthanSign {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matches('/')) {
                tokeniser.emit('/');
                tokeniser.createTempBuffer();
                tokeniser.advanceTransition(ScriptDataDoubleEscapeEnd);
                return;
            }
            tokeniser.transition(ScriptDataDoubleEscaped);
        }
    },
    ScriptDataDoubleEscapeEnd {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            TokeniserState.handleDataDoubleEscapeTag(tokeniser, characterReader, ScriptDataEscaped, ScriptDataDoubleEscaped);
        }
    },
    BeforeAttributeName {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                tokeniser.tagPending.newAttribute();
                characterReader.unconsume();
                tokeniser.transition(AttributeName);
            } else if (consume != ' ') {
                if (!(consume == '\"' || consume == '\'')) {
                    if (consume == '/') {
                        tokeniser.transition(SelfClosingStartTag);
                        return;
                    } else if (consume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.transition(Data);
                        return;
                    } else if (consume != 9 && consume != 10 && consume != 12 && consume != 13) {
                        switch (consume) {
                            case '<':
                            case '=':
                                break;
                            case '>':
                                tokeniser.emitTagPending();
                                tokeniser.transition(Data);
                                return;
                            default:
                                tokeniser.tagPending.newAttribute();
                                characterReader.unconsume();
                                tokeniser.transition(AttributeName);
                                return;
                        }
                    } else {
                        return;
                    }
                }
                tokeniser.error((TokeniserState) this);
                tokeniser.tagPending.newAttribute();
                tokeniser.tagPending.appendAttributeName(consume);
                tokeniser.transition(AttributeName);
            }
        }
    },
    AttributeName {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            tokeniser.tagPending.appendAttributeName(characterReader.consumeToAnySorted(TokeniserState.attributeNameCharsSorted));
            char consume = characterReader.consume();
            if (consume != 0) {
                if (consume != ' ') {
                    if (!(consume == '\"' || consume == '\'')) {
                        if (consume == '/') {
                            tokeniser.transition(SelfClosingStartTag);
                            return;
                        } else if (consume == 65535) {
                            tokeniser.eofError(this);
                            tokeniser.transition(Data);
                            return;
                        } else if (!(consume == 9 || consume == 10 || consume == 12 || consume == 13)) {
                            switch (consume) {
                                case '<':
                                    break;
                                case '=':
                                    tokeniser.transition(BeforeAttributeValue);
                                    return;
                                case '>':
                                    tokeniser.emitTagPending();
                                    tokeniser.transition(Data);
                                    return;
                                default:
                                    return;
                            }
                        }
                    }
                    tokeniser.error((TokeniserState) this);
                    tokeniser.tagPending.appendAttributeName(consume);
                    return;
                }
                tokeniser.transition(AfterAttributeName);
                return;
            }
            tokeniser.error((TokeniserState) this);
            tokeniser.tagPending.appendAttributeName(65533);
        }
    },
    AfterAttributeName {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                tokeniser.tagPending.appendAttributeName(65533);
                tokeniser.transition(AttributeName);
            } else if (consume != ' ') {
                if (!(consume == '\"' || consume == '\'')) {
                    if (consume == '/') {
                        tokeniser.transition(SelfClosingStartTag);
                        return;
                    } else if (consume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.transition(Data);
                        return;
                    } else if (consume != 9 && consume != 10 && consume != 12 && consume != 13) {
                        switch (consume) {
                            case '<':
                                break;
                            case '=':
                                tokeniser.transition(BeforeAttributeValue);
                                return;
                            case '>':
                                tokeniser.emitTagPending();
                                tokeniser.transition(Data);
                                return;
                            default:
                                tokeniser.tagPending.newAttribute();
                                characterReader.unconsume();
                                tokeniser.transition(AttributeName);
                                return;
                        }
                    } else {
                        return;
                    }
                }
                tokeniser.error((TokeniserState) this);
                tokeniser.tagPending.newAttribute();
                tokeniser.tagPending.appendAttributeName(consume);
                tokeniser.transition(AttributeName);
            }
        }
    },
    BeforeAttributeValue {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                tokeniser.tagPending.appendAttributeValue(65533);
                tokeniser.transition(AttributeValue_unquoted);
            } else if (consume == ' ') {
            } else {
                if (consume != '\"') {
                    if (consume != '`') {
                        if (consume == 65535) {
                            tokeniser.eofError(this);
                            tokeniser.emitTagPending();
                            tokeniser.transition(Data);
                            return;
                        } else if (consume != 9 && consume != 10 && consume != 12 && consume != 13) {
                            if (consume == '&') {
                                characterReader.unconsume();
                                tokeniser.transition(AttributeValue_unquoted);
                                return;
                            } else if (consume != '\'') {
                                switch (consume) {
                                    case '<':
                                    case '=':
                                        break;
                                    case '>':
                                        tokeniser.error((TokeniserState) this);
                                        tokeniser.emitTagPending();
                                        tokeniser.transition(Data);
                                        return;
                                    default:
                                        characterReader.unconsume();
                                        tokeniser.transition(AttributeValue_unquoted);
                                        return;
                                }
                            } else {
                                tokeniser.transition(AttributeValue_singleQuoted);
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                    tokeniser.error((TokeniserState) this);
                    tokeniser.tagPending.appendAttributeValue(consume);
                    tokeniser.transition(AttributeValue_unquoted);
                    return;
                }
                tokeniser.transition(AttributeValue_doubleQuoted);
            }
        }
    },
    AttributeValue_doubleQuoted {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            String consumeToAny = characterReader.consumeToAny(TokeniserState.attributeDoubleValueCharsSorted);
            if (consumeToAny.length() > 0) {
                tokeniser.tagPending.appendAttributeValue(consumeToAny);
            } else {
                tokeniser.tagPending.setEmptyAttributeValue();
            }
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                tokeniser.tagPending.appendAttributeValue(65533);
            } else if (consume == '\"') {
                tokeniser.transition(AfterAttributeValue_quoted);
            } else if (consume == '&') {
                int[] consumeCharacterReference = tokeniser.consumeCharacterReference(Character.valueOf('\"'), true);
                if (consumeCharacterReference != null) {
                    tokeniser.tagPending.appendAttributeValue(consumeCharacterReference);
                } else {
                    tokeniser.tagPending.appendAttributeValue('&');
                }
            } else if (consume == 65535) {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
            }
        }
    },
    AttributeValue_singleQuoted {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            String consumeToAny = characterReader.consumeToAny(TokeniserState.attributeSingleValueCharsSorted);
            if (consumeToAny.length() > 0) {
                tokeniser.tagPending.appendAttributeValue(consumeToAny);
            } else {
                tokeniser.tagPending.setEmptyAttributeValue();
            }
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                tokeniser.tagPending.appendAttributeValue(65533);
            } else if (consume == 65535) {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
            } else if (consume == '&') {
                int[] consumeCharacterReference = tokeniser.consumeCharacterReference(Character.valueOf('\''), true);
                if (consumeCharacterReference != null) {
                    tokeniser.tagPending.appendAttributeValue(consumeCharacterReference);
                } else {
                    tokeniser.tagPending.appendAttributeValue('&');
                }
            } else if (consume == '\'') {
                tokeniser.transition(AfterAttributeValue_quoted);
            }
        }
    },
    AttributeValue_unquoted {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            String consumeToAnySorted = characterReader.consumeToAnySorted(TokeniserState.attributeValueUnquoted);
            if (consumeToAnySorted.length() > 0) {
                tokeniser.tagPending.appendAttributeValue(consumeToAnySorted);
            }
            char consume = characterReader.consume();
            if (consume != 0) {
                if (consume != ' ') {
                    if (!(consume == '\"' || consume == '`')) {
                        if (consume == 65535) {
                            tokeniser.eofError(this);
                            tokeniser.transition(Data);
                            return;
                        } else if (!(consume == 9 || consume == 10 || consume == 12 || consume == 13)) {
                            if (consume == '&') {
                                int[] consumeCharacterReference = tokeniser.consumeCharacterReference(Character.valueOf('>'), true);
                                if (consumeCharacterReference != null) {
                                    tokeniser.tagPending.appendAttributeValue(consumeCharacterReference);
                                    return;
                                } else {
                                    tokeniser.tagPending.appendAttributeValue('&');
                                    return;
                                }
                            } else if (consume != '\'') {
                                switch (consume) {
                                    case '<':
                                    case '=':
                                        break;
                                    case '>':
                                        tokeniser.emitTagPending();
                                        tokeniser.transition(Data);
                                        return;
                                    default:
                                        return;
                                }
                            }
                        }
                    }
                    tokeniser.error((TokeniserState) this);
                    tokeniser.tagPending.appendAttributeValue(consume);
                    return;
                }
                tokeniser.transition(BeforeAttributeName);
                return;
            }
            tokeniser.error((TokeniserState) this);
            tokeniser.tagPending.appendAttributeValue(65533);
        }
    },
    AfterAttributeValue_quoted {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 9 || consume == 10 || consume == 12 || consume == 13 || consume == ' ') {
                tokeniser.transition(BeforeAttributeName);
            } else if (consume == '/') {
                tokeniser.transition(SelfClosingStartTag);
            } else if (consume == '>') {
                tokeniser.emitTagPending();
                tokeniser.transition(Data);
            } else if (consume != 65535) {
                tokeniser.error((TokeniserState) this);
                characterReader.unconsume();
                tokeniser.transition(BeforeAttributeName);
            } else {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
            }
        }
    },
    SelfClosingStartTag {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == '>') {
                tokeniser.tagPending.selfClosing = true;
                tokeniser.emitTagPending();
                tokeniser.transition(Data);
            } else if (consume != 65535) {
                tokeniser.error((TokeniserState) this);
                characterReader.unconsume();
                tokeniser.transition(BeforeAttributeName);
            } else {
                tokeniser.eofError(this);
                tokeniser.transition(Data);
            }
        }
    },
    BogusComment {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            characterReader.unconsume();
            Comment comment = new Comment();
            comment.bogus = true;
            comment.data.append(characterReader.consumeTo('>'));
            tokeniser.emit((Token) comment);
            tokeniser.advanceTransition(Data);
        }
    },
    MarkupDeclarationOpen {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchConsume("--")) {
                tokeniser.createCommentPending();
                tokeniser.transition(CommentStart);
            } else if (characterReader.matchConsumeIgnoreCase("DOCTYPE")) {
                tokeniser.transition(Doctype);
            } else if (characterReader.matchConsume("[CDATA[")) {
                tokeniser.transition(CdataSection);
            } else {
                tokeniser.error((TokeniserState) this);
                tokeniser.advanceTransition(BogusComment);
            }
        }
    },
    CommentStart {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                tokeniser.commentPending.data.append(65533);
                tokeniser.transition(Comment);
            } else if (consume == '-') {
                tokeniser.transition(CommentStartDash);
            } else if (consume == '>') {
                tokeniser.error((TokeniserState) this);
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            } else if (consume != 65535) {
                tokeniser.commentPending.data.append(consume);
                tokeniser.transition(Comment);
            } else {
                tokeniser.eofError(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            }
        }
    },
    CommentStartDash {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                tokeniser.commentPending.data.append(65533);
                tokeniser.transition(Comment);
            } else if (consume == '-') {
                tokeniser.transition(CommentStartDash);
            } else if (consume == '>') {
                tokeniser.error((TokeniserState) this);
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            } else if (consume != 65535) {
                tokeniser.commentPending.data.append(consume);
                tokeniser.transition(Comment);
            } else {
                tokeniser.eofError(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            }
        }
    },
    Comment {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char current = characterReader.current();
            if (current == 0) {
                tokeniser.error((TokeniserState) this);
                characterReader.advance();
                tokeniser.commentPending.data.append(65533);
            } else if (current == '-') {
                tokeniser.advanceTransition(CommentEndDash);
            } else if (current != 65535) {
                tokeniser.commentPending.data.append(characterReader.consumeToAny('-', TokeniserState.nullChar));
            } else {
                tokeniser.eofError(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            }
        }
    },
    CommentEndDash {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                StringBuilder sb = tokeniser.commentPending.data;
                sb.append('-');
                sb.append(65533);
                tokeniser.transition(Comment);
            } else if (consume == '-') {
                tokeniser.transition(CommentEnd);
            } else if (consume != 65535) {
                StringBuilder sb2 = tokeniser.commentPending.data;
                sb2.append('-');
                sb2.append(consume);
                tokeniser.transition(Comment);
            } else {
                tokeniser.eofError(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            }
        }
    },
    CommentEnd {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            String str = "--";
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                StringBuilder sb = tokeniser.commentPending.data;
                sb.append(str);
                sb.append(65533);
                tokeniser.transition(Comment);
            } else if (consume == '!') {
                tokeniser.error((TokeniserState) this);
                tokeniser.transition(CommentEndBang);
            } else if (consume == '-') {
                tokeniser.error((TokeniserState) this);
                tokeniser.commentPending.data.append('-');
            } else if (consume == '>') {
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            } else if (consume != 65535) {
                tokeniser.error((TokeniserState) this);
                StringBuilder sb2 = tokeniser.commentPending.data;
                sb2.append(str);
                sb2.append(consume);
                tokeniser.transition(Comment);
            } else {
                tokeniser.eofError(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            }
        }
    },
    CommentEndBang {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            String str = "--!";
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                StringBuilder sb = tokeniser.commentPending.data;
                sb.append(str);
                sb.append(65533);
                tokeniser.transition(Comment);
            } else if (consume == '-') {
                tokeniser.commentPending.data.append(str);
                tokeniser.transition(CommentEndDash);
            } else if (consume == '>') {
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            } else if (consume != 65535) {
                StringBuilder sb2 = tokeniser.commentPending.data;
                sb2.append(str);
                sb2.append(consume);
                tokeniser.transition(Comment);
            } else {
                tokeniser.eofError(this);
                tokeniser.emitCommentPending();
                tokeniser.transition(Data);
            }
        }
    },
    Doctype {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 9 || consume == 10 || consume == 12 || consume == 13 || consume == ' ') {
                tokeniser.transition(BeforeDoctypeName);
                return;
            }
            if (consume != '>') {
                if (consume != 65535) {
                    tokeniser.error((TokeniserState) this);
                    tokeniser.transition(BeforeDoctypeName);
                    return;
                }
                tokeniser.eofError(this);
            }
            tokeniser.error((TokeniserState) this);
            tokeniser.createDoctypePending();
            tokeniser.doctypePending.forceQuirks = true;
            tokeniser.emitDoctypePending();
            tokeniser.transition(Data);
        }
    },
    BeforeDoctypeName {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                tokeniser.createDoctypePending();
                tokeniser.transition(DoctypeName);
                return;
            }
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                tokeniser.createDoctypePending();
                tokeniser.doctypePending.name.append(65533);
                tokeniser.transition(DoctypeName);
            } else if (consume != ' ') {
                if (consume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.createDoctypePending();
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(Data);
                } else if (!(consume == 9 || consume == 10 || consume == 12 || consume == 13)) {
                    tokeniser.createDoctypePending();
                    tokeniser.doctypePending.name.append(consume);
                    tokeniser.transition(DoctypeName);
                }
            }
        }
    },
    DoctypeName {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.matchesLetter()) {
                tokeniser.doctypePending.name.append(characterReader.consumeLetterSequence());
                return;
            }
            char consume = characterReader.consume();
            if (consume != 0) {
                if (consume != ' ') {
                    if (consume == '>') {
                        tokeniser.emitDoctypePending();
                        tokeniser.transition(Data);
                    } else if (consume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.doctypePending.forceQuirks = true;
                        tokeniser.emitDoctypePending();
                        tokeniser.transition(Data);
                    } else if (!(consume == 9 || consume == 10 || consume == 12 || consume == 13)) {
                        tokeniser.doctypePending.name.append(consume);
                    }
                }
                tokeniser.transition(AfterDoctypeName);
            } else {
                tokeniser.error((TokeniserState) this);
                tokeniser.doctypePending.name.append(65533);
            }
        }
    },
    AfterDoctypeName {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            if (characterReader.isEmpty()) {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
                return;
            }
            if (characterReader.matchesAny(9, 10, 13, 12, ' ')) {
                characterReader.advance();
            } else if (characterReader.matches('>')) {
                tokeniser.emitDoctypePending();
                tokeniser.advanceTransition(Data);
            } else if (characterReader.matchConsumeIgnoreCase("PUBLIC")) {
                tokeniser.transition(AfterDoctypePublicKeyword);
            } else if (characterReader.matchConsumeIgnoreCase("SYSTEM")) {
                tokeniser.transition(AfterDoctypeSystemKeyword);
            } else {
                tokeniser.error((TokeniserState) this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.advanceTransition(BogusDoctype);
            }
        }
    },
    AfterDoctypePublicKeyword {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 9 || consume == 10 || consume == 12 || consume == 13 || consume == ' ') {
                tokeniser.transition(BeforeDoctypePublicIdentifier);
            } else if (consume == '\"') {
                tokeniser.error((TokeniserState) this);
                tokeniser.transition(DoctypePublicIdentifier_doubleQuoted);
            } else if (consume == '\'') {
                tokeniser.error((TokeniserState) this);
                tokeniser.transition(DoctypePublicIdentifier_singleQuoted);
            } else if (consume == '>') {
                tokeniser.error((TokeniserState) this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            } else if (consume != 65535) {
                tokeniser.error((TokeniserState) this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.transition(BogusDoctype);
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            }
        }
    },
    BeforeDoctypePublicIdentifier {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume != 9 && consume != 10 && consume != 12 && consume != 13 && consume != ' ') {
                if (consume == '\"') {
                    tokeniser.transition(DoctypePublicIdentifier_doubleQuoted);
                } else if (consume == '\'') {
                    tokeniser.transition(DoctypePublicIdentifier_singleQuoted);
                } else if (consume == '>') {
                    tokeniser.error((TokeniserState) this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(Data);
                } else if (consume != 65535) {
                    tokeniser.error((TokeniserState) this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.transition(BogusDoctype);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(Data);
                }
            }
        }
    },
    DoctypePublicIdentifier_doubleQuoted {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                tokeniser.doctypePending.publicIdentifier.append(65533);
            } else if (consume == '\"') {
                tokeniser.transition(AfterDoctypePublicIdentifier);
            } else if (consume == '>') {
                tokeniser.error((TokeniserState) this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            } else if (consume != 65535) {
                tokeniser.doctypePending.publicIdentifier.append(consume);
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            }
        }
    },
    DoctypePublicIdentifier_singleQuoted {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                tokeniser.doctypePending.publicIdentifier.append(65533);
            } else if (consume == '\'') {
                tokeniser.transition(AfterDoctypePublicIdentifier);
            } else if (consume == '>') {
                tokeniser.error((TokeniserState) this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            } else if (consume != 65535) {
                tokeniser.doctypePending.publicIdentifier.append(consume);
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            }
        }
    },
    AfterDoctypePublicIdentifier {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 9 || consume == 10 || consume == 12 || consume == 13 || consume == ' ') {
                tokeniser.transition(BetweenDoctypePublicAndSystemIdentifiers);
            } else if (consume == '\"') {
                tokeniser.error((TokeniserState) this);
                tokeniser.transition(DoctypeSystemIdentifier_doubleQuoted);
            } else if (consume == '\'') {
                tokeniser.error((TokeniserState) this);
                tokeniser.transition(DoctypeSystemIdentifier_singleQuoted);
            } else if (consume == '>') {
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            } else if (consume != 65535) {
                tokeniser.error((TokeniserState) this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.transition(BogusDoctype);
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            }
        }
    },
    BetweenDoctypePublicAndSystemIdentifiers {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume != 9 && consume != 10 && consume != 12 && consume != 13 && consume != ' ') {
                if (consume == '\"') {
                    tokeniser.error((TokeniserState) this);
                    tokeniser.transition(DoctypeSystemIdentifier_doubleQuoted);
                } else if (consume == '\'') {
                    tokeniser.error((TokeniserState) this);
                    tokeniser.transition(DoctypeSystemIdentifier_singleQuoted);
                } else if (consume == '>') {
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(Data);
                } else if (consume != 65535) {
                    tokeniser.error((TokeniserState) this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.transition(BogusDoctype);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(Data);
                }
            }
        }
    },
    AfterDoctypeSystemKeyword {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 9 || consume == 10 || consume == 12 || consume == 13 || consume == ' ') {
                tokeniser.transition(BeforeDoctypeSystemIdentifier);
            } else if (consume == '\"') {
                tokeniser.error((TokeniserState) this);
                tokeniser.transition(DoctypeSystemIdentifier_doubleQuoted);
            } else if (consume == '\'') {
                tokeniser.error((TokeniserState) this);
                tokeniser.transition(DoctypeSystemIdentifier_singleQuoted);
            } else if (consume == '>') {
                tokeniser.error((TokeniserState) this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            } else if (consume != 65535) {
                tokeniser.error((TokeniserState) this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            }
        }
    },
    BeforeDoctypeSystemIdentifier {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume != 9 && consume != 10 && consume != 12 && consume != 13 && consume != ' ') {
                if (consume == '\"') {
                    tokeniser.transition(DoctypeSystemIdentifier_doubleQuoted);
                } else if (consume == '\'') {
                    tokeniser.transition(DoctypeSystemIdentifier_singleQuoted);
                } else if (consume == '>') {
                    tokeniser.error((TokeniserState) this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(Data);
                } else if (consume != 65535) {
                    tokeniser.error((TokeniserState) this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.transition(BogusDoctype);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(Data);
                }
            }
        }
    },
    DoctypeSystemIdentifier_doubleQuoted {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                tokeniser.doctypePending.systemIdentifier.append(65533);
            } else if (consume == '\"') {
                tokeniser.transition(AfterDoctypeSystemIdentifier);
            } else if (consume == '>') {
                tokeniser.error((TokeniserState) this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            } else if (consume != 65535) {
                tokeniser.doctypePending.systemIdentifier.append(consume);
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            }
        }
    },
    DoctypeSystemIdentifier_singleQuoted {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == 0) {
                tokeniser.error((TokeniserState) this);
                tokeniser.doctypePending.systemIdentifier.append(65533);
            } else if (consume == '\'') {
                tokeniser.transition(AfterDoctypeSystemIdentifier);
            } else if (consume == '>') {
                tokeniser.error((TokeniserState) this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            } else if (consume != 65535) {
                tokeniser.doctypePending.systemIdentifier.append(consume);
            } else {
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            }
        }
    },
    AfterDoctypeSystemIdentifier {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume != 9 && consume != 10 && consume != 12 && consume != 13 && consume != ' ') {
                if (consume == '>') {
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(Data);
                } else if (consume != 65535) {
                    tokeniser.error((TokeniserState) this);
                    tokeniser.transition(BogusDoctype);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(Data);
                }
            }
        }
    },
    BogusDoctype {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            char consume = characterReader.consume();
            if (consume == '>') {
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            } else if (consume == 65535) {
                tokeniser.emitDoctypePending();
                tokeniser.transition(Data);
            }
        }
    },
    CdataSection {
        /* access modifiers changed from: 0000 */
        public void read(Tokeniser tokeniser, CharacterReader characterReader) {
            String str = DOM.CDATA_END;
            tokeniser.emit(characterReader.consumeTo(str));
            characterReader.matchConsume(str);
            tokeniser.transition(Data);
        }
    };
    
    /* access modifiers changed from: private */
    public static final char[] attributeDoubleValueCharsSorted = null;
    /* access modifiers changed from: private */
    public static final char[] attributeNameCharsSorted = null;
    /* access modifiers changed from: private */
    public static final char[] attributeSingleValueCharsSorted = null;
    /* access modifiers changed from: private */
    public static final char[] attributeValueUnquoted = null;
    private static final char eof = '￿';
    static final char nullChar = '\u0000';
    private static final char replacementChar = '�';
    /* access modifiers changed from: private */
    public static final String replacementStr = null;

    /* access modifiers changed from: 0000 */
    public abstract void read(Tokeniser tokeniser, CharacterReader characterReader);

    static {
        attributeSingleValueCharsSorted = new char[]{'\'', '&', nullChar};
        attributeDoubleValueCharsSorted = new char[]{'\"', '&', nullChar};
        attributeNameCharsSorted = new char[]{9, 10, 13, 12, ' ', '/', '=', '>', nullChar, '\"', '\'', '<'};
        attributeValueUnquoted = new char[]{9, 10, 13, 12, ' ', '&', '>', nullChar, '\"', '\'', '<', '=', '`'};
        replacementStr = String.valueOf(65533);
        Arrays.sort(attributeSingleValueCharsSorted);
        Arrays.sort(attributeDoubleValueCharsSorted);
        Arrays.sort(attributeNameCharsSorted);
        Arrays.sort(attributeValueUnquoted);
    }

    /* access modifiers changed from: private */
    public static void handleDataEndTag(Tokeniser tokeniser, CharacterReader characterReader, TokeniserState tokeniserState) {
        if (characterReader.matchesLetter()) {
            String consumeLetterSequence = characterReader.consumeLetterSequence();
            tokeniser.tagPending.appendTagName(consumeLetterSequence);
            tokeniser.dataBuffer.append(consumeLetterSequence);
            return;
        }
        boolean z = true;
        if (tokeniser.isAppropriateEndTagToken() && !characterReader.isEmpty()) {
            char consume = characterReader.consume();
            if (consume == 9 || consume == 10 || consume == 12 || consume == 13 || consume == ' ') {
                tokeniser.transition(BeforeAttributeName);
            } else if (consume == '/') {
                tokeniser.transition(SelfClosingStartTag);
            } else if (consume != '>') {
                tokeniser.dataBuffer.append(consume);
            } else {
                tokeniser.emitTagPending();
                tokeniser.transition(Data);
            }
            z = false;
        }
        if (z) {
            StringBuilder sb = new StringBuilder();
            sb.append("</");
            sb.append(tokeniser.dataBuffer.toString());
            tokeniser.emit(sb.toString());
            tokeniser.transition(tokeniserState);
        }
    }

    /* access modifiers changed from: private */
    public static void readData(Tokeniser tokeniser, CharacterReader characterReader, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        char current = characterReader.current();
        if (current == 0) {
            tokeniser.error(tokeniserState);
            characterReader.advance();
            tokeniser.emit(65533);
        } else if (current == '<') {
            tokeniser.advanceTransition(tokeniserState2);
        } else if (current != 65535) {
            tokeniser.emit(characterReader.consumeToAny('<', nullChar));
        } else {
            tokeniser.emit((Token) new EOF());
        }
    }

    /* access modifiers changed from: private */
    public static void readCharRef(Tokeniser tokeniser, TokeniserState tokeniserState) {
        int[] consumeCharacterReference = tokeniser.consumeCharacterReference(null, false);
        if (consumeCharacterReference == null) {
            tokeniser.emit('&');
        } else {
            tokeniser.emit(consumeCharacterReference);
        }
        tokeniser.transition(tokeniserState);
    }

    /* access modifiers changed from: private */
    public static void readEndTag(Tokeniser tokeniser, CharacterReader characterReader, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        if (characterReader.matchesLetter()) {
            tokeniser.createTagPending(false);
            tokeniser.transition(tokeniserState);
            return;
        }
        tokeniser.emit("</");
        tokeniser.transition(tokeniserState2);
    }

    /* access modifiers changed from: private */
    public static void handleDataDoubleEscapeTag(Tokeniser tokeniser, CharacterReader characterReader, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        if (characterReader.matchesLetter()) {
            String consumeLetterSequence = characterReader.consumeLetterSequence();
            tokeniser.dataBuffer.append(consumeLetterSequence);
            tokeniser.emit(consumeLetterSequence);
            return;
        }
        char consume = characterReader.consume();
        if (consume == 9 || consume == 10 || consume == 12 || consume == 13 || consume == ' ' || consume == '/' || consume == '>') {
            if (tokeniser.dataBuffer.toString().equals("script")) {
                tokeniser.transition(tokeniserState);
            } else {
                tokeniser.transition(tokeniserState2);
            }
            tokeniser.emit(consume);
        } else {
            characterReader.unconsume();
            tokeniser.transition(tokeniserState2);
        }
    }
}
