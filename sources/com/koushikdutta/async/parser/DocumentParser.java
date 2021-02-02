package com.koushikdutta.async.parser;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.future.TransformFuture;
import com.koushikdutta.async.http.body.DocumentBody;
import com.koushikdutta.async.stream.ByteBufferListInputStream;
import java.lang.reflect.Type;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;

public class DocumentParser implements AsyncParser<Document> {
    public Future<Document> parse(DataEmitter dataEmitter) {
        return (Future) new ByteBufferListParser().parse(dataEmitter).then(new TransformFuture<Document, ByteBufferList>() {
            /* access modifiers changed from: protected */
            public void transform(ByteBufferList byteBufferList) throws Exception {
                setComplete(DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteBufferListInputStream(byteBufferList)));
            }
        });
    }

    public void write(DataSink dataSink, Document document, CompletedCallback completedCallback) {
        new DocumentBody(document).write(null, dataSink, completedCallback);
    }

    public Type getType() {
        return Document.class;
    }
}
