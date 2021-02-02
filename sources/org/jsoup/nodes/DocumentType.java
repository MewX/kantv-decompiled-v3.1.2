package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.helper.StringUtil;
import org.jsoup.nodes.Document.OutputSettings;
import org.jsoup.nodes.Document.OutputSettings.Syntax;

public class DocumentType extends Node {
    private static final String NAME = "name";
    private static final String PUBLIC_ID = "publicId";
    private static final String SYSTEM_ID = "systemId";

    public String nodeName() {
        return "#doctype";
    }

    /* access modifiers changed from: 0000 */
    public void outerHtmlTail(Appendable appendable, int i, OutputSettings outputSettings) {
    }

    public DocumentType(String str, String str2, String str3, String str4) {
        super(str4);
        attr("name", str);
        attr(PUBLIC_ID, str2);
        attr(SYSTEM_ID, str3);
    }

    /* access modifiers changed from: 0000 */
    public void outerHtmlHead(Appendable appendable, int i, OutputSettings outputSettings) throws IOException {
        Syntax syntax = outputSettings.syntax();
        Syntax syntax2 = Syntax.html;
        String str = SYSTEM_ID;
        String str2 = PUBLIC_ID;
        if (syntax != syntax2 || has(str2) || has(str)) {
            appendable.append("<!DOCTYPE");
        } else {
            appendable.append("<!doctype");
        }
        String str3 = "name";
        if (has(str3)) {
            appendable.append(" ").append(attr(str3));
        }
        if (has(str2)) {
            appendable.append(" PUBLIC \"").append(attr(str2)).append('\"');
        }
        if (has(str)) {
            appendable.append(" \"").append(attr(str)).append('\"');
        }
        appendable.append('>');
    }

    private boolean has(String str) {
        return !StringUtil.isBlank(attr(str));
    }
}
