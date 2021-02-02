package com.koushikdutta.async.http.body;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.LineEmitter;
import com.koushikdutta.async.LineEmitter.StringCallback;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.ContinuationCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.callback.DataCallback.NullDataCallback;
import com.koushikdutta.async.future.Continuation;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.http.Headers;
import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.http.server.BoundaryEmitter;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;

public class MultipartFormDataBody extends BoundaryEmitter implements AsyncHttpRequestBody<Multimap> {
    public static final String CONTENT_TYPE = "multipart/form-data";
    String contentType = CONTENT_TYPE;
    Headers formData;
    ByteBufferList last;
    String lastName;
    LineEmitter liner;
    MultipartCallback mCallback;
    private ArrayList<Part> mParts;
    int totalToWrite;
    int written;

    public interface MultipartCallback {
        void onPart(Part part);
    }

    public boolean readFullyOnRequest() {
        return false;
    }

    public void parse(DataEmitter dataEmitter, CompletedCallback completedCallback) {
        setDataEmitter(dataEmitter);
        setEndCallback(completedCallback);
    }

    /* access modifiers changed from: 0000 */
    public void handleLast() {
        if (this.last != null) {
            if (this.formData == null) {
                this.formData = new Headers();
            }
            this.formData.add(this.lastName, this.last.peekString());
            this.lastName = null;
            this.last = null;
        }
    }

    public String getField(String str) {
        Headers headers = this.formData;
        if (headers == null) {
            return null;
        }
        return headers.get(str);
    }

    /* access modifiers changed from: protected */
    public void onBoundaryEnd() {
        super.onBoundaryEnd();
        handleLast();
    }

    /* access modifiers changed from: protected */
    public void onBoundaryStart() {
        final Headers headers = new Headers();
        this.liner = new LineEmitter();
        this.liner.setLineCallback(new StringCallback() {
            public void onStringAvailable(String str) {
                if (!"\r".equals(str)) {
                    headers.addLine(str);
                } else {
                    MultipartFormDataBody.this.handleLast();
                    MultipartFormDataBody multipartFormDataBody = MultipartFormDataBody.this;
                    multipartFormDataBody.liner = null;
                    multipartFormDataBody.setDataCallback(null);
                    Part part = new Part(headers);
                    if (MultipartFormDataBody.this.mCallback != null) {
                        MultipartFormDataBody.this.mCallback.onPart(part);
                    }
                    if (MultipartFormDataBody.this.getDataCallback() == null) {
                        if (part.isFile()) {
                            MultipartFormDataBody.this.setDataCallback(new NullDataCallback());
                            return;
                        }
                        MultipartFormDataBody.this.lastName = part.getName();
                        MultipartFormDataBody.this.last = new ByteBufferList();
                        MultipartFormDataBody.this.setDataCallback(new DataCallback() {
                            public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                                byteBufferList.get(MultipartFormDataBody.this.last);
                            }
                        });
                    }
                }
            }
        });
        setDataCallback(this.liner);
    }

    public MultipartFormDataBody(String[] strArr) {
        for (String split : strArr) {
            String[] split2 = split.split("=");
            if (split2.length == 2) {
                if ("boundary".equals(split2[0])) {
                    setBoundary(split2[1]);
                    return;
                }
            }
        }
        report(new Exception("No boundary found for multipart/form-data"));
    }

    public void setMultipartCallback(MultipartCallback multipartCallback) {
        this.mCallback = multipartCallback;
    }

    public MultipartCallback getMultipartCallback() {
        return this.mCallback;
    }

    public void write(AsyncHttpRequest asyncHttpRequest, final DataSink dataSink, final CompletedCallback completedCallback) {
        if (this.mParts != null) {
            Continuation continuation = new Continuation(new CompletedCallback() {
                public void onCompleted(Exception exc) {
                    completedCallback.onCompleted(exc);
                }
            });
            Iterator it = this.mParts.iterator();
            while (it.hasNext()) {
                final Part part = (Part) it.next();
                continuation.add((ContinuationCallback) new ContinuationCallback() {
                    public void onContinue(Continuation continuation, CompletedCallback completedCallback) throws Exception {
                        byte[] bytes = part.getRawHeaders().toPrefixString(MultipartFormDataBody.this.getBoundaryStart()).getBytes();
                        Util.writeAll(dataSink, bytes, completedCallback);
                        MultipartFormDataBody.this.written += bytes.length;
                    }
                }).add((ContinuationCallback) new ContinuationCallback() {
                    public void onContinue(Continuation continuation, CompletedCallback completedCallback) throws Exception {
                        long length = part.length();
                        if (length >= 0) {
                            MultipartFormDataBody multipartFormDataBody = MultipartFormDataBody.this;
                            multipartFormDataBody.written = (int) (((long) multipartFormDataBody.written) + length);
                        }
                        part.write(dataSink, completedCallback);
                    }
                }).add((ContinuationCallback) new ContinuationCallback() {
                    public void onContinue(Continuation continuation, CompletedCallback completedCallback) throws Exception {
                        byte[] bytes = "\r\n".getBytes();
                        Util.writeAll(dataSink, bytes, completedCallback);
                        MultipartFormDataBody.this.written += bytes.length;
                    }
                });
            }
            continuation.add((ContinuationCallback) new ContinuationCallback() {
                static final /* synthetic */ boolean $assertionsDisabled = false;

                static {
                    Class<MultipartFormDataBody> cls = MultipartFormDataBody.class;
                }

                public void onContinue(Continuation continuation, CompletedCallback completedCallback) throws Exception {
                    byte[] bytes = MultipartFormDataBody.this.getBoundaryEnd().getBytes();
                    Util.writeAll(dataSink, bytes, completedCallback);
                    MultipartFormDataBody.this.written += bytes.length;
                }
            });
            continuation.start();
        }
    }

    public String getContentType() {
        if (getBoundary() == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("----------------------------");
            sb.append(UUID.randomUUID().toString().replace("-", ""));
            setBoundary(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.contentType);
        sb2.append("; boundary=");
        sb2.append(getBoundary());
        return sb2.toString();
    }

    public int length() {
        if (getBoundary() == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("----------------------------");
            sb.append(UUID.randomUUID().toString().replace("-", ""));
            setBoundary(sb.toString());
        }
        int i = 0;
        Iterator it = this.mParts.iterator();
        while (it.hasNext()) {
            Part part = (Part) it.next();
            String prefixString = part.getRawHeaders().toPrefixString(getBoundaryStart());
            if (part.length() == -1) {
                return -1;
            }
            i = (int) (((long) i) + part.length() + ((long) prefixString.getBytes().length) + ((long) 2));
        }
        int length = i + getBoundaryEnd().getBytes().length;
        this.totalToWrite = length;
        return length;
    }

    public MultipartFormDataBody() {
    }

    public void setContentType(String str) {
        this.contentType = str;
    }

    public void addFilePart(String str, File file) {
        addPart(new FilePart(str, file));
    }

    public void addStringPart(String str, String str2) {
        addPart(new StringPart(str, str2));
    }

    public void addPart(Part part) {
        if (this.mParts == null) {
            this.mParts = new ArrayList<>();
        }
        this.mParts.add(part);
    }

    public Multimap get() {
        return new Multimap(this.formData.getMultiMap());
    }
}
