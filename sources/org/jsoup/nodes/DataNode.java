package org.jsoup.nodes;

import java.io.IOException;
import org.jsoup.nodes.Document.OutputSettings;

public class DataNode extends Node {
    private static final String DATA_KEY = "data";

    public String nodeName() {
        return "#data";
    }

    /* access modifiers changed from: 0000 */
    public void outerHtmlTail(Appendable appendable, int i, OutputSettings outputSettings) {
    }

    public DataNode(String str, String str2) {
        super(str2);
        this.attributes.put("data", str);
    }

    public String getWholeData() {
        return this.attributes.get("data");
    }

    public DataNode setWholeData(String str) {
        this.attributes.put("data", str);
        return this;
    }

    /* access modifiers changed from: 0000 */
    public void outerHtmlHead(Appendable appendable, int i, OutputSettings outputSettings) throws IOException {
        appendable.append(getWholeData());
    }

    public String toString() {
        return outerHtml();
    }

    public static DataNode createFromEncoded(String str, String str2) {
        return new DataNode(Entities.unescape(str), str2);
    }
}
