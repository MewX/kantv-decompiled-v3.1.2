package com.samsung.multiscreen;

import com.koushikdutta.async.http.AsyncHttpClient.StringCallback;
import com.samsung.multiscreen.util.HttpUtil.ResultCreator;

class HttpHelper {
    HttpHelper() {
    }

    static StringCallback createHttpCallback(final ResultCreator<?> resultCreator, final Result result) {
        return new StringCallback() {
            /* JADX WARNING: type inference failed for: r8v1, types: [java.lang.Runnable] */
            /* JADX WARNING: type inference failed for: r8v2, types: [com.samsung.multiscreen.HttpHelper$1$4] */
            /* JADX WARNING: type inference failed for: r7v4 */
            /* JADX WARNING: type inference failed for: r8v3 */
            /* JADX WARNING: type inference failed for: r7v5, types: [com.samsung.multiscreen.HttpHelper$1$3] */
            /* JADX WARNING: type inference failed for: r8v4, types: [com.samsung.multiscreen.HttpHelper$1$1] */
            /* JADX WARNING: type inference failed for: r8v5 */
            /* JADX WARNING: type inference failed for: r8v6 */
            /* JADX WARNING: Multi-variable type inference failed */
            /* JADX WARNING: Unknown variable types count: 4 */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void onCompleted(final java.lang.Exception r7, com.koushikdutta.async.http.AsyncHttpResponse r8, java.lang.String r9) {
                /*
                    r6 = this;
                    if (r7 == 0) goto L_0x0008
                    com.samsung.multiscreen.HttpHelper$1$1 r8 = new com.samsung.multiscreen.HttpHelper$1$1
                    r8.<init>(r7)
                    goto L_0x002d
                L_0x0008:
                    int r7 = r8.code()     // Catch:{ Exception -> 0x0027 }
                    long r3 = (long) r7     // Catch:{ Exception -> 0x0027 }
                    java.util.Map r2 = com.samsung.multiscreen.util.JSONUtil.parse(r9)     // Catch:{ Exception -> 0x0027 }
                    r0 = 200(0xc8, double:9.9E-322)
                    int r7 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
                    if (r7 == 0) goto L_0x0020
                    com.samsung.multiscreen.HttpHelper$1$2 r7 = new com.samsung.multiscreen.HttpHelper$1$2     // Catch:{ Exception -> 0x0027 }
                    r0 = r7
                    r1 = r6
                    r5 = r8
                    r0.<init>(r2, r3, r5)     // Catch:{ Exception -> 0x0027 }
                    goto L_0x0025
                L_0x0020:
                    com.samsung.multiscreen.HttpHelper$1$3 r7 = new com.samsung.multiscreen.HttpHelper$1$3     // Catch:{ Exception -> 0x0027 }
                    r7.<init>(r2)     // Catch:{ Exception -> 0x0027 }
                L_0x0025:
                    r8 = r7
                    goto L_0x002d
                L_0x0027:
                    r7 = move-exception
                    com.samsung.multiscreen.HttpHelper$1$4 r8 = new com.samsung.multiscreen.HttpHelper$1$4
                    r8.<init>(r7)
                L_0x002d:
                    com.samsung.multiscreen.util.RunUtil.runOnUI(r8)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.samsung.multiscreen.HttpHelper.AnonymousClass1.onCompleted(java.lang.Exception, com.koushikdutta.async.http.AsyncHttpResponse, java.lang.String):void");
            }
        };
    }
}
