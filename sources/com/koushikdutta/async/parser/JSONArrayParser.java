package com.koushikdutta.async.parser;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.future.TransformFuture;
import java.lang.reflect.Type;
import org.json.JSONArray;

public class JSONArrayParser implements AsyncParser<JSONArray> {
    public Future<JSONArray> parse(DataEmitter dataEmitter) {
        return (Future) new StringParser().parse(dataEmitter).then(new TransformFuture<JSONArray, String>() {
            /* access modifiers changed from: protected */
            public void transform(String str) throws Exception {
                setComplete(new JSONArray(str));
            }
        });
    }

    public void write(DataSink dataSink, JSONArray jSONArray, CompletedCallback completedCallback) {
        new StringParser().write(dataSink, jSONArray.toString(), completedCallback);
    }

    public Type getType() {
        return JSONArray.class;
    }
}
