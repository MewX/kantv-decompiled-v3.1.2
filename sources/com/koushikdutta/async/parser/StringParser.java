package com.koushikdutta.async.parser;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.future.TransformFuture;
import java.lang.reflect.Type;
import java.nio.charset.Charset;

public class StringParser implements AsyncParser<String> {
    Charset forcedCharset;

    public StringParser() {
    }

    public StringParser(Charset charset) {
        this.forcedCharset = charset;
    }

    public Future<String> parse(DataEmitter dataEmitter) {
        final String charset = dataEmitter.charset();
        return (Future) new ByteBufferListParser().parse(dataEmitter).then(new TransformFuture<String, ByteBufferList>() {
            /* access modifiers changed from: protected */
            public void transform(ByteBufferList byteBufferList) throws Exception {
                Charset charset = StringParser.this.forcedCharset;
                if (charset == null) {
                    String str = charset;
                    if (str != null) {
                        charset = Charset.forName(str);
                    }
                }
                setComplete(byteBufferList.readString(charset));
            }
        });
    }

    public void write(DataSink dataSink, String str, CompletedCallback completedCallback) {
        new ByteBufferListParser().write(dataSink, new ByteBufferList(str.getBytes()), completedCallback);
    }

    public Type getType() {
        return String.class;
    }
}
