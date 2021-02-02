package com.koushikdutta.async.http.body;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.parser.DocumentParser;
import com.koushikdutta.async.util.Charsets;
import java.io.ByteArrayOutputStream;
import java.io.OutputStreamWriter;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;

public class DocumentBody implements AsyncHttpRequestBody<Document> {
    public static final String CONTENT_TYPE = "application/xml";
    ByteArrayOutputStream bout;
    Document document;

    public String getContentType() {
        return CONTENT_TYPE;
    }

    public boolean readFullyOnRequest() {
        return true;
    }

    public DocumentBody() {
        this(null);
    }

    public DocumentBody(Document document2) {
        this.document = document2;
    }

    private void prepare() {
        if (this.bout == null) {
            try {
                DOMSource dOMSource = new DOMSource(this.document);
                Transformer newTransformer = TransformerFactory.newInstance().newTransformer();
                this.bout = new ByteArrayOutputStream();
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(this.bout, Charsets.UTF_8);
                newTransformer.transform(dOMSource, new StreamResult(outputStreamWriter));
                outputStreamWriter.flush();
            } catch (Exception unused) {
            }
        }
    }

    public void write(AsyncHttpRequest asyncHttpRequest, DataSink dataSink, CompletedCallback completedCallback) {
        prepare();
        Util.writeAll(dataSink, this.bout.toByteArray(), completedCallback);
    }

    public void parse(DataEmitter dataEmitter, final CompletedCallback completedCallback) {
        new DocumentParser().parse(dataEmitter).setCallback(new FutureCallback<Document>() {
            public void onCompleted(Exception exc, Document document) {
                DocumentBody.this.document = document;
                completedCallback.onCompleted(exc);
            }
        });
    }

    public int length() {
        prepare();
        return this.bout.size();
    }

    public Document get() {
        return this.document;
    }
}
