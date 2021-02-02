package com.koushikdutta.urlimageviewhelper;

import android.content.Context;
import android.os.AsyncTask;
import com.koushikdutta.urlimageviewhelper.UrlDownloader.UrlDownloaderCallback;
import com.koushikdutta.urlimageviewhelper.UrlImageViewHelper.RequestPropertiesCallback;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.http.NameValuePair;

public class HttpUrlDownloader implements UrlDownloader {
    /* access modifiers changed from: private */
    public RequestPropertiesCallback mRequestPropertiesCallback;

    public boolean allowCache() {
        return true;
    }

    public RequestPropertiesCallback getRequestPropertiesCallback() {
        return this.mRequestPropertiesCallback;
    }

    public void setRequestPropertiesCallback(RequestPropertiesCallback requestPropertiesCallback) {
        this.mRequestPropertiesCallback = requestPropertiesCallback;
    }

    public void download(Context context, String str, String str2, UrlDownloaderCallback urlDownloaderCallback, Runnable runnable) {
        final String str3 = str;
        final Context context2 = context;
        final UrlDownloaderCallback urlDownloaderCallback2 = urlDownloaderCallback;
        final Runnable runnable2 = runnable;
        AnonymousClass1 r0 = new AsyncTask<Void, Void, Void>() {
            /* access modifiers changed from: protected */
            public Void doInBackground(Void... voidArr) {
                HttpURLConnection httpURLConnection;
                try {
                    String str = str3;
                    while (true) {
                        httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                        httpURLConnection.setInstanceFollowRedirects(true);
                        if (HttpUrlDownloader.this.mRequestPropertiesCallback != null) {
                            ArrayList headersForRequest = HttpUrlDownloader.this.mRequestPropertiesCallback.getHeadersForRequest(context2, str3);
                            if (headersForRequest != null) {
                                Iterator it = headersForRequest.iterator();
                                while (it.hasNext()) {
                                    NameValuePair nameValuePair = (NameValuePair) it.next();
                                    httpURLConnection.addRequestProperty(nameValuePair.getName(), nameValuePair.getValue());
                                }
                            }
                        }
                        if (httpURLConnection.getResponseCode() != 302 && httpURLConnection.getResponseCode() != 301) {
                            break;
                        }
                        str = httpURLConnection.getHeaderField("Location");
                    }
                    if (httpURLConnection.getResponseCode() != 200) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Response Code: ");
                        sb.append(httpURLConnection.getResponseCode());
                        UrlImageViewHelper.clog(sb.toString(), new Object[0]);
                        return null;
                    }
                    urlDownloaderCallback2.onDownloadComplete(HttpUrlDownloader.this, httpURLConnection.getInputStream(), null);
                    return null;
                } catch (Throwable th) {
                    th.printStackTrace();
                    return null;
                }
            }

            /* access modifiers changed from: protected */
            public void onPostExecute(Void voidR) {
                runnable2.run();
            }
        };
        UrlImageViewHelper.executeTask(r0);
    }

    public boolean canDownloadUrl(String str) {
        return str.startsWith("http");
    }
}
