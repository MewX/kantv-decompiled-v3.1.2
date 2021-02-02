package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document.OutputSettings;

public class XmlDeclaration extends Node {
    private final boolean isProcessingInstruction;
    private final String name;

    public String nodeName() {
        return "#declaration";
    }

    /* access modifiers changed from: 0000 */
    public void outerHtmlTail(Appendable appendable, int i, OutputSettings outputSettings) {
    }

    public XmlDeclaration(String str, String str2, boolean z) {
        super(str2);
        Validate.notNull(str);
        this.name = str;
        this.isProcessingInstruction = z;
    }

    public String name() {
        return this.name;
    }

    public String getWholeDeclaration() {
        return this.attributes.html().trim();
    }

    /* access modifiers changed from: 0000 */
    public void outerHtmlHead(Appendable appendable, int i, OutputSettings outputSettings) throws IOException {
        String str = "!";
        String str2 = "?";
        appendable.append("<").append(this.isProcessingInstruction ? str : str2).append(this.name);
        this.attributes.html(appendable, outputSettings);
        if (!this.isProcessingInstruction) {
            str = str2;
        }
        appendable.append(str).append(">");
    }

    public String toString() {
        return outerHtml();
    }
}
