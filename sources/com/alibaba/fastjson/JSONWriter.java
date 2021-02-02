package com.alibaba.fastjson;

import androidx.core.view.PointerIconCompat;
import com.alibaba.fastjson.serializer.JSONSerializer;
import com.alibaba.fastjson.serializer.SerializeWriter;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.java_websocket.framing.CloseFrame;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

public class JSONWriter implements Closeable, Flushable {
    private JSONStreamContext context;
    private JSONSerializer serializer = new JSONSerializer(this.writer);
    private SerializeWriter writer;

    public JSONWriter(Writer writer2) {
        this.writer = new SerializeWriter(writer2);
    }

    public void config(SerializerFeature serializerFeature, boolean z) {
        this.writer.config(serializerFeature, z);
    }

    public void startObject() {
        if (this.context != null) {
            beginStructure();
        }
        this.context = new JSONStreamContext(this.context, 1001);
        this.writer.write(123);
    }

    public void endObject() {
        this.writer.write((int) AVException.INVALID_EMAIL_ADDRESS);
        endStructure();
    }

    public void writeKey(String str) {
        writeObject(str);
    }

    public void writeValue(Object obj) {
        writeObject(obj);
    }

    public void writeObject(String str) {
        beforeWrite();
        this.serializer.write(str);
        afterWriter();
    }

    public void writeObject(Object obj) {
        beforeWrite();
        this.serializer.write(obj);
        afterWriter();
    }

    public void startArray() {
        if (this.context != null) {
            beginStructure();
        }
        this.context = new JSONStreamContext(this.context, PointerIconCompat.TYPE_WAIT);
        this.writer.write(91);
    }

    private void beginStructure() {
        int i = this.context.state;
        switch (this.context.state) {
            case 1001:
            case PointerIconCompat.TYPE_WAIT /*1004*/:
                return;
            case 1002:
                this.writer.write(58);
                return;
            case CloseFrame.NOCODE /*1005*/:
                this.writer.write(44);
                return;
            default:
                StringBuilder sb = new StringBuilder();
                sb.append("illegal state : ");
                sb.append(i);
                throw new JSONException(sb.toString());
        }
    }

    public void endArray() {
        this.writer.write(93);
        endStructure();
    }

    private void endStructure() {
        int i;
        this.context = this.context.parent;
        JSONStreamContext jSONStreamContext = this.context;
        if (jSONStreamContext != null) {
            switch (jSONStreamContext.state) {
                case 1001:
                    i = 1002;
                    break;
                case 1002:
                    i = 1003;
                    break;
                case PointerIconCompat.TYPE_WAIT /*1004*/:
                    i = CloseFrame.NOCODE;
                    break;
                default:
                    i = -1;
                    break;
            }
            if (i != -1) {
                this.context.state = i;
            }
        }
    }

    private void beforeWrite() {
        JSONStreamContext jSONStreamContext = this.context;
        if (jSONStreamContext != null) {
            switch (jSONStreamContext.state) {
                case 1002:
                    this.writer.write(58);
                    break;
                case 1003:
                    this.writer.write(44);
                    break;
                case CloseFrame.NOCODE /*1005*/:
                    this.writer.write(44);
                    break;
            }
        }
    }

    private void afterWriter() {
        int i;
        JSONStreamContext jSONStreamContext = this.context;
        if (jSONStreamContext != null) {
            switch (jSONStreamContext.state) {
                case 1001:
                case 1003:
                    i = 1002;
                    break;
                case 1002:
                    i = 1003;
                    break;
                case PointerIconCompat.TYPE_WAIT /*1004*/:
                    i = CloseFrame.NOCODE;
                    break;
                default:
                    i = -1;
                    break;
            }
            if (i != -1) {
                this.context.state = i;
            }
        }
    }

    public void flush() throws IOException {
        this.writer.flush();
    }

    public void close() throws IOException {
        this.writer.close();
    }

    @Deprecated
    public void writeStartObject() {
        startObject();
    }

    @Deprecated
    public void writeEndObject() {
        endObject();
    }

    @Deprecated
    public void writeStartArray() {
        startArray();
    }

    @Deprecated
    public void writeEndArray() {
        endArray();
    }
}
