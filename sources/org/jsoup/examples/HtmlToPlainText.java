package org.jsoup.examples;

import com.avos.avoscloud.im.v2.Conversation;
import java.io.IOException;
import java.util.Iterator;
import org.jsoup.Jsoup;
import org.jsoup.helper.StringUtil;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;

public class HtmlToPlainText {
    private static final int timeout = 5000;
    private static final String userAgent = "Mozilla/5.0 (jsoup)";

    private class FormattingVisitor implements NodeVisitor {
        private static final int maxWidth = 80;
        private StringBuilder accum;
        private int width;

        private FormattingVisitor() {
            this.width = 0;
            this.accum = new StringBuilder();
        }

        public void head(Node node, int i) {
            String nodeName = node.nodeName();
            if (node instanceof TextNode) {
                append(((TextNode) node).text());
            } else if (nodeName.equals("li")) {
                append("\n * ");
            } else if (nodeName.equals("dt")) {
                append("  ");
            } else if (StringUtil.in(nodeName, TtmlNode.TAG_P, "h1", "h2", "h3", "h4", "h5", Conversation.TRANSIENT)) {
                append("\n");
            }
        }

        public void tail(Node node, int i) {
            String nodeName = node.nodeName();
            if (StringUtil.in(nodeName, TtmlNode.TAG_BR, "dd", "dt", TtmlNode.TAG_P, "h1", "h2", "h3", "h4", "h5")) {
                append("\n");
            } else if (nodeName.equals("a")) {
                append(String.format(" <%s>", new Object[]{node.absUrl("href")}));
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:8:0x002f, code lost:
            if (org.jsoup.helper.StringUtil.in(r3.substring(r3.length() - 1), r1, r0) != false) goto L_0x0031;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private void append(java.lang.String r10) {
            /*
                r9 = this;
                java.lang.String r0 = "\n"
                boolean r1 = r10.startsWith(r0)
                r2 = 0
                if (r1 == 0) goto L_0x000b
                r9.width = r2
            L_0x000b:
                java.lang.String r1 = " "
                boolean r3 = r10.equals(r1)
                r4 = 1
                if (r3 == 0) goto L_0x0032
                java.lang.StringBuilder r3 = r9.accum
                int r3 = r3.length()
                if (r3 == 0) goto L_0x0031
                java.lang.StringBuilder r3 = r9.accum
                int r5 = r3.length()
                int r5 = r5 - r4
                java.lang.String r3 = r3.substring(r5)
                java.lang.String[] r5 = new java.lang.String[]{r1, r0}
                boolean r3 = org.jsoup.helper.StringUtil.in(r3, r5)
                if (r3 == 0) goto L_0x0032
            L_0x0031:
                return
            L_0x0032:
                int r3 = r10.length()
                int r5 = r9.width
                int r3 = r3 + r5
                r5 = 80
                if (r3 <= r5) goto L_0x008a
                java.lang.String r3 = "\\s+"
                java.lang.String[] r10 = r10.split(r3)
                r3 = 0
            L_0x0044:
                int r6 = r10.length
                if (r3 >= r6) goto L_0x0098
                r6 = r10[r3]
                int r7 = r10.length
                int r7 = r7 - r4
                if (r3 != r7) goto L_0x004f
                r7 = 1
                goto L_0x0050
            L_0x004f:
                r7 = 0
            L_0x0050:
                if (r7 != 0) goto L_0x0061
                java.lang.StringBuilder r7 = new java.lang.StringBuilder
                r7.<init>()
                r7.append(r6)
                r7.append(r1)
                java.lang.String r6 = r7.toString()
            L_0x0061:
                int r7 = r6.length()
                int r8 = r9.width
                int r7 = r7 + r8
                if (r7 <= r5) goto L_0x0079
                java.lang.StringBuilder r7 = r9.accum
                r7.append(r0)
                r7.append(r6)
                int r6 = r6.length()
                r9.width = r6
                goto L_0x0087
            L_0x0079:
                java.lang.StringBuilder r7 = r9.accum
                r7.append(r6)
                int r7 = r9.width
                int r6 = r6.length()
                int r7 = r7 + r6
                r9.width = r7
            L_0x0087:
                int r3 = r3 + 1
                goto L_0x0044
            L_0x008a:
                java.lang.StringBuilder r0 = r9.accum
                r0.append(r10)
                int r0 = r9.width
                int r10 = r10.length()
                int r0 = r0 + r10
                r9.width = r0
            L_0x0098:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.examples.HtmlToPlainText.FormattingVisitor.append(java.lang.String):void");
        }

        public String toString() {
            return this.accum.toString();
        }
    }

    public static void main(String... strArr) throws IOException {
        Validate.isTrue(strArr.length == 1 || strArr.length == 2, "usage: java -cp jsoup.jar org.jsoup.examples.HtmlToPlainText url [selector]");
        String str = strArr[0];
        String str2 = strArr.length == 2 ? strArr[1] : null;
        Document document = Jsoup.connect(str).userAgent(userAgent).timeout(5000).get();
        HtmlToPlainText htmlToPlainText = new HtmlToPlainText();
        if (str2 != null) {
            Iterator it = document.select(str2).iterator();
            while (it.hasNext()) {
                System.out.println(htmlToPlainText.getPlainText((Element) it.next()));
            }
            return;
        }
        System.out.println(htmlToPlainText.getPlainText(document));
    }

    public String getPlainText(Element element) {
        FormattingVisitor formattingVisitor = new FormattingVisitor();
        new NodeTraversor(formattingVisitor).traverse(element);
        return formattingVisitor.toString();
    }
}
