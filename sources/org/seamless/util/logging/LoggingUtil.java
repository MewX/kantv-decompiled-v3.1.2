package org.seamless.util.logging;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.logging.Handler;
import java.util.logging.LogManager;
import java.util.logging.Logger;
import org.eclipse.jetty.util.StringUtil;

public class LoggingUtil {
    public static final String DEFAULT_CONFIG = "default-logging.properties";

    public static void loadDefaultConfiguration() throws Exception {
        loadDefaultConfiguration(null);
    }

    public static void loadDefaultConfiguration(InputStream inputStream) throws Exception {
        if (System.getProperty("java.util.logging.config.file") == null) {
            if (inputStream == null) {
                inputStream = Thread.currentThread().getContextClassLoader().getResourceAsStream(DEFAULT_CONFIG);
            }
            if (inputStream != null) {
                ArrayList arrayList = new ArrayList();
                LogManager.getLogManager().readConfiguration(spliceHandlers(inputStream, arrayList));
                resetRootHandler(instantiateHandlers(arrayList));
            }
        }
    }

    public static Handler[] instantiateHandlers(List<String> list) throws Exception {
        ArrayList arrayList = new ArrayList();
        for (String loadClass : list) {
            arrayList.add((Handler) Thread.currentThread().getContextClassLoader().loadClass(loadClass).newInstance());
        }
        return (Handler[]) arrayList.toArray(new Handler[arrayList.size()]);
    }

    public static InputStream spliceHandlers(InputStream inputStream, List<String> list) throws IOException {
        Properties properties = new Properties();
        properties.load(inputStream);
        StringBuilder sb = new StringBuilder();
        ArrayList<String> arrayList = new ArrayList<>();
        for (Entry entry : properties.entrySet()) {
            if (entry.getKey().equals("handlers")) {
                arrayList.add(entry.getValue().toString());
            } else {
                sb.append(entry.getKey());
                sb.append("=");
                sb.append(entry.getValue());
                sb.append("\n");
            }
        }
        for (String trim : arrayList) {
            for (String trim2 : trim.trim().split(" ")) {
                list.add(trim2.trim());
            }
        }
        return new ByteArrayInputStream(sb.toString().getBytes(StringUtil.__ISO_8859_1));
    }

    public static void resetRootHandler(Handler... handlerArr) {
        String str = "";
        Logger logger = LogManager.getLogManager().getLogger(str);
        for (Handler removeHandler : logger.getHandlers()) {
            logger.removeHandler(removeHandler);
        }
        for (Handler handler : handlerArr) {
            if (handler != null) {
                LogManager.getLogManager().getLogger(str).addHandler(handler);
            }
        }
    }
}
