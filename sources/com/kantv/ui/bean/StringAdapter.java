package com.kantv.ui.bean;

import android.text.TextUtils;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

public class StringAdapter extends TypeAdapter<String> {
    public void write(JsonWriter jsonWriter, String str) throws IOException {
        try {
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            jsonWriter.value(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String read(JsonReader jsonReader) throws IOException {
        String str = "";
        try {
            if (JsonToken.NULL != jsonReader.peek()) {
                return jsonReader.nextString();
            }
            jsonReader.nextNull();
            return str;
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }
}
