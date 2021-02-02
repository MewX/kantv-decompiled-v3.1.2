package com.koushikdutta.async.http;

import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.FilteredDataEmitter;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.http.body.AsyncHttpRequestBody;
import com.koushikdutta.async.http.body.JSONObjectBody;
import com.koushikdutta.async.http.body.MultipartFormDataBody;
import com.koushikdutta.async.http.body.StringBody;
import com.koushikdutta.async.http.body.UrlEncodedFormBody;
import com.koushikdutta.async.http.filter.ChunkedInputFilter;
import com.koushikdutta.async.http.filter.ContentLengthFilter;
import com.koushikdutta.async.http.filter.GZIPInputFilter;
import com.koushikdutta.async.http.filter.InflaterInputFilter;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;

public class HttpUtil {

    static class EndEmitter extends FilteredDataEmitter {
        private EndEmitter() {
        }

        public static EndEmitter create(AsyncServer asyncServer, final Exception exc) {
            EndEmitter endEmitter = new EndEmitter();
            asyncServer.post(new Runnable(endEmitter) {
                final /* synthetic */ EndEmitter val$ret;

                {
                    this.val$ret = r1;
                }

                public void run() {
                    this.val$ret.report(exc);
                }
            });
            return endEmitter;
        }
    }

    public static AsyncHttpRequestBody getBody(DataEmitter dataEmitter, CompletedCallback completedCallback, Headers headers) {
        String str = headers.get("Content-Type");
        if (str != null) {
            String[] split = str.split(";");
            for (int i = 0; i < split.length; i++) {
                split[i] = split[i].trim();
            }
            for (String str2 : split) {
                if ("application/x-www-form-urlencoded".equals(str2)) {
                    return new UrlEncodedFormBody();
                }
                if ("application/json".equals(str2)) {
                    return new JSONObjectBody();
                }
                if ("text/plain".equals(str2)) {
                    return new StringBody();
                }
                if (MultipartFormDataBody.CONTENT_TYPE.equals(str2)) {
                    return new MultipartFormDataBody(split);
                }
            }
        }
        return null;
    }

    public static DataEmitter getBodyDecoder(DataEmitter dataEmitter, Protocol protocol, Headers headers, boolean z) {
        long j;
        DataEmitter dataEmitter2;
        DataEmitter dataEmitter3;
        try {
            j = Long.parseLong(headers.get("Content-Length"));
        } catch (Exception unused) {
            j = -1;
        }
        if (-1 == j) {
            if (HttpHeaderValues.CHUNKED.equalsIgnoreCase(headers.get(HttpHeaders.TRANSFER_ENCODING))) {
                ChunkedInputFilter chunkedInputFilter = new ChunkedInputFilter();
                chunkedInputFilter.setDataEmitter(dataEmitter);
                dataEmitter2 = chunkedInputFilter;
            } else {
                if (z || protocol == Protocol.HTTP_1_1) {
                    if (!"close".equalsIgnoreCase(headers.get(HttpHeaders.CONNECTION))) {
                        EndEmitter create = EndEmitter.create(dataEmitter.getServer(), null);
                        create.setDataEmitter(dataEmitter);
                        return create;
                    }
                }
                dataEmitter2 = dataEmitter;
            }
        } else if (j < 0) {
            EndEmitter create2 = EndEmitter.create(dataEmitter.getServer(), new BodyDecoderException("not using chunked encoding, and no content-length found."));
            create2.setDataEmitter(dataEmitter);
            return create2;
        } else if (j == 0) {
            EndEmitter create3 = EndEmitter.create(dataEmitter.getServer(), null);
            create3.setDataEmitter(dataEmitter);
            return create3;
        } else {
            ContentLengthFilter contentLengthFilter = new ContentLengthFilter(j);
            contentLengthFilter.setDataEmitter(dataEmitter);
            dataEmitter2 = contentLengthFilter;
        }
        String str = "Content-Encoding";
        if ("gzip".equals(headers.get(str))) {
            GZIPInputFilter gZIPInputFilter = new GZIPInputFilter();
            gZIPInputFilter.setDataEmitter(dataEmitter2);
            dataEmitter3 = gZIPInputFilter;
        } else {
            if ("deflate".equals(headers.get(str))) {
                InflaterInputFilter inflaterInputFilter = new InflaterInputFilter();
                inflaterInputFilter.setDataEmitter(dataEmitter2);
                dataEmitter3 = inflaterInputFilter;
            } else {
                dataEmitter3 = dataEmitter2;
            }
        }
        return dataEmitter3;
    }

    public static boolean isKeepAlive(Protocol protocol, Headers headers) {
        String str = headers.get(HttpHeaders.CONNECTION);
        if (str != null) {
            return HttpHeaderValues.KEEP_ALIVE.equalsIgnoreCase(str);
        }
        return protocol == Protocol.HTTP_1_1;
    }

    public static boolean isKeepAlive(String str, Headers headers) {
        String str2 = headers.get(HttpHeaders.CONNECTION);
        if (str2 != null) {
            return HttpHeaderValues.KEEP_ALIVE.equalsIgnoreCase(str2);
        }
        return Protocol.get(str) == Protocol.HTTP_1_1;
    }

    public static int contentLength(Headers headers) {
        String str = headers.get("Content-Length");
        if (str == null) {
            return -1;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }
}
