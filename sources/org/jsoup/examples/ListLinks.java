package org.jsoup.examples;

import com.tencent.open.SocialConstants;
import java.io.IOException;
import java.util.Iterator;
import org.jsoup.Jsoup;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class ListLinks {
    public static void main(String[] strArr) throws IOException {
        String str;
        Validate.isTrue(strArr.length == 1, "usage: supply url to fetch");
        String str2 = strArr[0];
        print("Fetching %s...", str2);
        Document document = Jsoup.connect(str2).get();
        Elements select = document.select("a[href]");
        Elements select2 = document.select("[src]");
        Elements select3 = document.select("link[href]");
        print("\nMedia: (%d)", Integer.valueOf(select2.size()));
        Iterator it = select2.iterator();
        while (it.hasNext()) {
            Element element = (Element) it.next();
            String str3 = "abs:src";
            if (element.tagName().equals(SocialConstants.PARAM_IMG_URL)) {
                print(" * %s: <%s> %sx%s (%s)", element.tagName(), element.attr(str3), element.attr("width"), element.attr("height"), trim(element.attr("alt"), 20));
            } else {
                print(" * %s: <%s>", element.tagName(), element.attr(str3));
            }
        }
        print("\nImports: (%d)", Integer.valueOf(select3.size()));
        Iterator it2 = select3.iterator();
        while (true) {
            str = "abs:href";
            if (!it2.hasNext()) {
                break;
            }
            Element element2 = (Element) it2.next();
            print(" * %s <%s> (%s)", element2.tagName(), element2.attr(str), element2.attr("rel"));
        }
        print("\nLinks: (%d)", Integer.valueOf(select.size()));
        Iterator it3 = select.iterator();
        while (it3.hasNext()) {
            Element element3 = (Element) it3.next();
            print(" * a: <%s>  (%s)", element3.attr(str), trim(element3.text(), 35));
        }
    }

    private static void print(String str, Object... objArr) {
        System.out.println(String.format(str, objArr));
    }

    private static String trim(String str, int i) {
        if (str.length() <= i) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str.substring(0, i - 1));
        sb.append(".");
        return sb.toString();
    }
}
