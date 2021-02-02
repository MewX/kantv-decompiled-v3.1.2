package com.koushikdutta.async.parser;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.future.TransformFuture;
import java.lang.reflect.Type;
import org.json.JSONObject;

public class JSONObjectParser implements AsyncParser<JSONObject> {
    public Future<JSONObject> parse(DataEmitter dataEmitter) {
        return (Future) new StringParser().parse(dataEmitter).then(new TransformFuture<JSONObject, String>() {
            /* access modifiers changed from: protected */
            public void transform(String str) throws Exception {
                setComplete(new JSONObject(str));
            }
        });
    }

    public void write(DataSink dataSink, JSONObject jSONObject, CompletedCallback completedCallback) {
        new StringParser().write(dataSink, jSONObject.toString(), completedCallback);
    }

    public Type getType() {
        return JSONObject.class;
    }
}
