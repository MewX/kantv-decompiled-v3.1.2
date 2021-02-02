package org.json.simple;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public class JSONArray extends ArrayList implements List, JSONAware, JSONStreamAware {
    private static final long serialVersionUID = 3957988303675231981L;

    public static void writeJSONString(List list, Writer writer) throws IOException {
        String str = "null";
        if (list == null) {
            writer.write(str);
            return;
        }
        boolean z = true;
        writer.write(91);
        for (Object next : list) {
            if (z) {
                z = false;
            } else {
                writer.write(44);
            }
            if (next == null) {
                writer.write(str);
            } else {
                JSONValue.writeJSONString(next, writer);
            }
        }
        writer.write(93);
    }

    public void writeJSONString(Writer writer) throws IOException {
        writeJSONString(this, writer);
    }

    public static String toJSONString(List list) {
        String str = "null";
        if (list == null) {
            return str;
        }
        boolean z = true;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('[');
        for (Object next : list) {
            if (z) {
                z = false;
            } else {
                stringBuffer.append(',');
            }
            if (next == null) {
                stringBuffer.append(str);
            } else {
                stringBuffer.append(JSONValue.toJSONString(next));
            }
        }
        stringBuffer.append(']');
        return stringBuffer.toString();
    }

    public String toJSONString() {
        return toJSONString(this);
    }

    public String toString() {
        return toJSONString();
    }
}
