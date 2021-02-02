package org.seamless.http;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import org.seamless.util.io.IO;

public class HttpFetch {

    public interface RepresentationFactory<E> {
        Representation<E> createRepresentation(URLConnection uRLConnection, InputStream inputStream) throws IOException;
    }

    public static Representation<byte[]> fetchBinary(URL url) throws IOException {
        return fetchBinary(url, 500, 500);
    }

    public static Representation<byte[]> fetchBinary(URL url, int i, int i2) throws IOException {
        return fetch(url, i, i2, new RepresentationFactory<byte[]>() {
            public Representation<byte[]> createRepresentation(URLConnection uRLConnection, InputStream inputStream) throws IOException {
                return new Representation<>(uRLConnection, IO.readBytes(inputStream));
            }
        });
    }

    public static Representation<String> fetchString(URL url, int i, int i2) throws IOException {
        return fetch(url, i, i2, new RepresentationFactory<String>() {
            public Representation<String> createRepresentation(URLConnection uRLConnection, InputStream inputStream) throws IOException {
                return new Representation<>(uRLConnection, IO.readLines(inputStream));
            }
        });
    }

    public static <E> Representation<E> fetch(URL url, int i, int i2, RepresentationFactory<E> representationFactory) throws IOException {
        return fetch(url, "GET", i, i2, representationFactory);
    }

    /* JADX WARNING: type inference failed for: r0v0, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r1v1, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r1v5 */
    /* JADX WARNING: type inference failed for: r1v9 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0026 A[SYNTHETIC, Splitter:B:13:0x0026] */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0041 A[Catch:{ all -> 0x0020 }] */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <E> org.seamless.http.Representation<E> fetch(java.net.URL r1, java.lang.String r2, int r3, int r4, org.seamless.http.HttpFetch.RepresentationFactory<E> r5) throws java.io.IOException {
        /*
            r0 = 0
            java.net.URLConnection r1 = r1.openConnection()     // Catch:{ IOException -> 0x0022 }
            java.net.HttpURLConnection r1 = (java.net.HttpURLConnection) r1     // Catch:{ IOException -> 0x0022 }
            r1.setRequestMethod(r2)     // Catch:{ IOException -> 0x001e }
            r1.setConnectTimeout(r3)     // Catch:{ IOException -> 0x001e }
            r1.setReadTimeout(r4)     // Catch:{ IOException -> 0x001e }
            java.io.InputStream r0 = r1.getInputStream()     // Catch:{ IOException -> 0x001e }
            org.seamless.http.Representation r1 = r5.createRepresentation(r1, r0)     // Catch:{ IOException -> 0x001e }
            if (r0 == 0) goto L_0x001d
            r0.close()
        L_0x001d:
            return r1
        L_0x001e:
            r2 = move-exception
            goto L_0x0024
        L_0x0020:
            r1 = move-exception
            goto L_0x0042
        L_0x0022:
            r2 = move-exception
            r1 = r0
        L_0x0024:
            if (r1 == 0) goto L_0x0041
            int r1 = r1.getResponseCode()     // Catch:{ all -> 0x0020 }
            java.io.IOException r2 = new java.io.IOException     // Catch:{ all -> 0x0020 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0020 }
            r3.<init>()     // Catch:{ all -> 0x0020 }
            java.lang.String r4 = "Fetching resource failed, returned status code: "
            r3.append(r4)     // Catch:{ all -> 0x0020 }
            r3.append(r1)     // Catch:{ all -> 0x0020 }
            java.lang.String r1 = r3.toString()     // Catch:{ all -> 0x0020 }
            r2.<init>(r1)     // Catch:{ all -> 0x0020 }
            throw r2     // Catch:{ all -> 0x0020 }
        L_0x0041:
            throw r2     // Catch:{ all -> 0x0020 }
        L_0x0042:
            if (r0 == 0) goto L_0x0047
            r0.close()
        L_0x0047:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.http.HttpFetch.fetch(java.net.URL, java.lang.String, int, int, org.seamless.http.HttpFetch$RepresentationFactory):org.seamless.http.Representation");
    }

    public static void validate(URL url) throws IOException {
        fetch(url, "HEAD", 500, 500, new RepresentationFactory() {
            public Representation createRepresentation(URLConnection uRLConnection, InputStream inputStream) throws IOException {
                return new Representation(uRLConnection, null);
            }
        });
    }
}
