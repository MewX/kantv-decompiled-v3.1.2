package org.jsoup.parser;

import java.util.Arrays;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Entities;

final class Tokeniser {
    private static final char[] notCharRefCharsSorted = {9, 10, 13, 12, ' ', '<', '&'};
    static final char replacementChar = '�';
    Character charPending = new Character();
    private StringBuilder charsBuilder = new StringBuilder(1024);
    private String charsString = null;
    private final int[] codepointHolder = new int[1];
    Comment commentPending = new Comment();
    StringBuilder dataBuffer = new StringBuilder(1024);
    Doctype doctypePending = new Doctype();
    private Token emitPending;
    EndTag endPending = new EndTag();
    private final ParseErrorList errors;
    private boolean isEmitPending = false;
    private String lastStartTag;
    private final int[] multipointHolder = new int[2];
    private final CharacterReader reader;
    private boolean selfClosingFlagAcknowledged = true;
    StartTag startPending = new StartTag();
    private TokeniserState state = TokeniserState.Data;
    Tag tagPending;

    /* access modifiers changed from: 0000 */
    public boolean currentNodeInHtmlNS() {
        return true;
    }

    static {
        Arrays.sort(notCharRefCharsSorted);
    }

    Tokeniser(CharacterReader characterReader, ParseErrorList parseErrorList) {
        this.reader = characterReader;
        this.errors = parseErrorList;
    }

    /* access modifiers changed from: 0000 */
    public Token read() {
        if (!this.selfClosingFlagAcknowledged) {
            error("Self closing flag not acknowledged");
            this.selfClosingFlagAcknowledged = true;
        }
        while (!this.isEmitPending) {
            this.state.read(this, this.reader);
        }
        if (this.charsBuilder.length() > 0) {
            String sb = this.charsBuilder.toString();
            StringBuilder sb2 = this.charsBuilder;
            sb2.delete(0, sb2.length());
            this.charsString = null;
            return this.charPending.data(sb);
        }
        String str = this.charsString;
        if (str != null) {
            Character data = this.charPending.data(str);
            this.charsString = null;
            return data;
        }
        this.isEmitPending = false;
        return this.emitPending;
    }

    /* access modifiers changed from: 0000 */
    public void emit(Token token) {
        Validate.isFalse(this.isEmitPending, "There is an unread token pending!");
        this.emitPending = token;
        this.isEmitPending = true;
        if (token.type == TokenType.StartTag) {
            StartTag startTag = (StartTag) token;
            this.lastStartTag = startTag.tagName;
            if (startTag.selfClosing) {
                this.selfClosingFlagAcknowledged = false;
            }
        } else if (token.type == TokenType.EndTag && ((EndTag) token).attributes != null) {
            error("Attributes incorrectly present on end tag");
        }
    }

    /* access modifiers changed from: 0000 */
    public void emit(String str) {
        if (this.charsString == null) {
            this.charsString = str;
            return;
        }
        if (this.charsBuilder.length() == 0) {
            this.charsBuilder.append(this.charsString);
        }
        this.charsBuilder.append(str);
    }

    /* access modifiers changed from: 0000 */
    public void emit(char[] cArr) {
        emit(String.valueOf(cArr));
    }

    /* access modifiers changed from: 0000 */
    public void emit(int[] iArr) {
        emit(new String(iArr, 0, iArr.length));
    }

    /* access modifiers changed from: 0000 */
    public void emit(char c) {
        emit(String.valueOf(c));
    }

    /* access modifiers changed from: 0000 */
    public TokeniserState getState() {
        return this.state;
    }

    /* access modifiers changed from: 0000 */
    public void transition(TokeniserState tokeniserState) {
        this.state = tokeniserState;
    }

    /* access modifiers changed from: 0000 */
    public void advanceTransition(TokeniserState tokeniserState) {
        this.reader.advance();
        this.state = tokeniserState;
    }

    /* access modifiers changed from: 0000 */
    public void acknowledgeSelfClosingFlag() {
        this.selfClosingFlagAcknowledged = true;
    }

    /* access modifiers changed from: 0000 */
    public int[] consumeCharacterReference(Character ch, boolean z) {
        int i;
        if (this.reader.isEmpty()) {
            return null;
        }
        if ((ch != null && ch.charValue() == this.reader.current()) || this.reader.matchesAnySorted(notCharRefCharsSorted)) {
            return null;
        }
        int[] iArr = this.codepointHolder;
        this.reader.mark();
        String str = "missing semicolon";
        String str2 = ";";
        if (this.reader.matchConsume("#")) {
            boolean matchConsumeIgnoreCase = this.reader.matchConsumeIgnoreCase("X");
            String consumeHexSequence = matchConsumeIgnoreCase ? this.reader.consumeHexSequence() : this.reader.consumeDigitSequence();
            if (consumeHexSequence.length() == 0) {
                characterReferenceError("numeric reference with no numerals");
                this.reader.rewindToMark();
                return null;
            }
            if (!this.reader.matchConsume(str2)) {
                characterReferenceError(str);
            }
            try {
                i = Integer.valueOf(consumeHexSequence, matchConsumeIgnoreCase ? 16 : 10).intValue();
            } catch (NumberFormatException unused) {
                i = -1;
            }
            if (i == -1 || ((i >= 55296 && i <= 57343) || i > 1114111)) {
                characterReferenceError("character outside of valid range");
                iArr[0] = 65533;
                return iArr;
            }
            iArr[0] = i;
            return iArr;
        }
        String consumeLetterThenDigitSequence = this.reader.consumeLetterThenDigitSequence();
        boolean matches = this.reader.matches(';');
        if (!(Entities.isBaseNamedEntity(consumeLetterThenDigitSequence) || (Entities.isNamedEntity(consumeLetterThenDigitSequence) && matches))) {
            this.reader.rewindToMark();
            if (matches) {
                characterReferenceError(String.format("invalid named referenece '%s'", new Object[]{consumeLetterThenDigitSequence}));
            }
            return null;
        } else if (!z || (!this.reader.matchesLetter() && !this.reader.matchesDigit() && !this.reader.matchesAny('=', '-', '_'))) {
            if (!this.reader.matchConsume(str2)) {
                characterReferenceError(str);
            }
            int codepointsForName = Entities.codepointsForName(consumeLetterThenDigitSequence, this.multipointHolder);
            if (codepointsForName == 1) {
                iArr[0] = this.multipointHolder[0];
                return iArr;
            } else if (codepointsForName == 2) {
                return this.multipointHolder;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("Unexpected characters returned for ");
                sb.append(consumeLetterThenDigitSequence);
                Validate.fail(sb.toString());
                return this.multipointHolder;
            }
        } else {
            this.reader.rewindToMark();
            return null;
        }
    }

    /* access modifiers changed from: 0000 */
    public Tag createTagPending(boolean z) {
        this.tagPending = z ? this.startPending.reset() : this.endPending.reset();
        return this.tagPending;
    }

    /* access modifiers changed from: 0000 */
    public void emitTagPending() {
        this.tagPending.finaliseTag();
        emit((Token) this.tagPending);
    }

    /* access modifiers changed from: 0000 */
    public void createCommentPending() {
        this.commentPending.reset();
    }

    /* access modifiers changed from: 0000 */
    public void emitCommentPending() {
        emit((Token) this.commentPending);
    }

    /* access modifiers changed from: 0000 */
    public void createDoctypePending() {
        this.doctypePending.reset();
    }

    /* access modifiers changed from: 0000 */
    public void emitDoctypePending() {
        emit((Token) this.doctypePending);
    }

    /* access modifiers changed from: 0000 */
    public void createTempBuffer() {
        Token.reset(this.dataBuffer);
    }

    /* access modifiers changed from: 0000 */
    public boolean isAppropriateEndTagToken() {
        return this.lastStartTag != null && this.tagPending.name().equalsIgnoreCase(this.lastStartTag);
    }

    /* access modifiers changed from: 0000 */
    public String appropriateEndTagName() {
        String str = this.lastStartTag;
        if (str == null) {
            return null;
        }
        return str;
    }

    /* access modifiers changed from: 0000 */
    public void error(TokeniserState tokeniserState) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), "Unexpected character '%s' in input state [%s]", Character.valueOf(this.reader.current()), tokeniserState));
        }
    }

    /* access modifiers changed from: 0000 */
    public void eofError(TokeniserState tokeniserState) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), "Unexpectedly reached end of file (EOF) in input state [%s]", tokeniserState));
        }
    }

    private void characterReferenceError(String str) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), "Invalid character reference: %s", str));
        }
    }

    private void error(String str) {
        if (this.errors.canAddError()) {
            this.errors.add(new ParseError(this.reader.pos(), str));
        }
    }

    /* access modifiers changed from: 0000 */
    public String unescapeEntities(boolean z) {
        StringBuilder sb = new StringBuilder();
        while (!this.reader.isEmpty()) {
            sb.append(this.reader.consumeTo('&'));
            if (this.reader.matches('&')) {
                this.reader.consume();
                int[] consumeCharacterReference = consumeCharacterReference(null, z);
                if (consumeCharacterReference == null || consumeCharacterReference.length == 0) {
                    sb.append('&');
                } else {
                    sb.appendCodePoint(consumeCharacterReference[0]);
                    if (consumeCharacterReference.length == 2) {
                        sb.appendCodePoint(consumeCharacterReference[1]);
                    }
                }
            }
        }
        return sb.toString();
    }
}
