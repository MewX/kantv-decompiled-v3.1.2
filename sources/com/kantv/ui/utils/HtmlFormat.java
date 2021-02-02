package com.kantv.ui.utils;

import com.tencent.open.SocialConstants;
import java.util.Iterator;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

public class HtmlFormat {
    public static String getNewContent(String str) {
        Document parse = Jsoup.parse(str);
        Iterator it = parse.getElementsByTag(SocialConstants.PARAM_IMG_URL).iterator();
        while (it.hasNext()) {
            ((Element) it.next()).attr("width", "100%").attr("height", "auto");
        }
        return parse.toString();
    }
}
