package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.nodes.Document.OutputSettings;

public class Comment extends Node {
    private static final String COMMENT_KEY = "comment";

    public String nodeName() {
        return "#comment";
    }

    /* access modifiers changed from: 0000 */
    public void outerHtmlTail(Appendable appendable, int i, OutputSettings outputSettings) {
    }

    public Comment(String str, String str2) {
        super(str2);
        this.attributes.put(COMMENT_KEY, str);
    }

    public String getData() {
        return this.attributes.get(COMMENT_KEY);
    }

    /* access modifiers changed from: 0000 */
    public void outerHtmlHead(Appendable appendable, int i, OutputSettings outputSettings) throws IOException {
        if (outputSettings.prettyPrint()) {
            indent(appendable, i, outputSettings);
        }
        appendable.append("<!--").append(getData()).append("-->");
    }

    public String toString() {
        return outerHtml();
    }
}
