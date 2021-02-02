package com.alibaba.fastjson.serializer;

import com.avos.avoscloud.AVException;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.DoubleAdder;
import java.util.concurrent.atomic.LongAdder;

public class AdderSerializer implements ObjectSerializer {
    public static final AdderSerializer instance = new AdderSerializer();

    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        SerializeWriter serializeWriter = jSONSerializer.out;
        String str = "value";
        if (obj instanceof LongAdder) {
            serializeWriter.writeFieldValue('{', str, ((LongAdder) obj).longValue());
            serializeWriter.write((int) AVException.INVALID_EMAIL_ADDRESS);
        } else if (obj instanceof DoubleAdder) {
            serializeWriter.writeFieldValue('{', str, ((DoubleAdder) obj).doubleValue());
            serializeWriter.write((int) AVException.INVALID_EMAIL_ADDRESS);
        }
    }
}
