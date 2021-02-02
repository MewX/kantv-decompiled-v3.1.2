package org.fourthline.cling.model.message.header;

import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CallbackHeader extends UpnpHeader<List<URL>> {
    private static final Logger log = Logger.getLogger(CallbackHeader.class.getName());

    public CallbackHeader() {
        setValue(new ArrayList());
    }

    public CallbackHeader(List<URL> list) {
        this();
        ((List) getValue()).addAll(list);
    }

    public CallbackHeader(URL url) {
        this();
        ((List) getValue()).add(url);
    }

    public void setString(String str) throws InvalidHeaderException {
        if (str.length() != 0) {
            String str2 = "<";
            if (str.contains(str2)) {
                String str3 = ">";
                if (str.contains(str3)) {
                    String replaceAll = str.replaceAll(str2, "");
                    String[] split = replaceAll.split(str3);
                    try {
                        ArrayList arrayList = new ArrayList();
                        for (String trim : split) {
                            String trim2 = trim.trim();
                            if (!trim2.startsWith("http://")) {
                                Logger logger = log;
                                StringBuilder sb = new StringBuilder();
                                sb.append("Discarding non-http callback URL: ");
                                sb.append(trim2);
                                logger.warning(sb.toString());
                            } else {
                                URL url = new URL(trim2);
                                try {
                                    url.toURI();
                                    arrayList.add(url);
                                } catch (URISyntaxException e) {
                                    Logger logger2 = log;
                                    Level level = Level.WARNING;
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("Discarding callback URL, not a valid URI on this platform: ");
                                    sb2.append(url);
                                    logger2.log(level, sb2.toString(), e);
                                }
                            }
                        }
                        setValue(arrayList);
                        return;
                    } catch (MalformedURLException e2) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Can't parse callback URLs from '");
                        sb3.append(replaceAll);
                        sb3.append("': ");
                        sb3.append(e2);
                        throw new InvalidHeaderException(sb3.toString());
                    }
                }
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append("URLs not in brackets: ");
            sb4.append(str);
            throw new InvalidHeaderException(sb4.toString());
        }
    }

    public String getString() {
        StringBuilder sb = new StringBuilder();
        for (URL url : (List) getValue()) {
            sb.append("<");
            sb.append(url.toString());
            sb.append(">");
        }
        return sb.toString();
    }
}
