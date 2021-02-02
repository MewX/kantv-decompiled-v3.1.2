package org.fourthline.cling.transport.impl;

import java.io.IOException;
import java.io.OutputStream;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLStreamHandlerFactory;
import java.util.logging.Logger;
import sun.net.www.protocol.http.Handler;
import sun.net.www.protocol.http.HttpURLConnection;

public class FixedSunURLStreamHandler implements URLStreamHandlerFactory {
    private static final Logger log = Logger.getLogger(FixedSunURLStreamHandler.class.getName());

    static class UpnpURLConnection extends HttpURLConnection {
        private static final String[] methods = {"GET", "POST", "HEAD", "OPTIONS", "PUT", "DELETE", "SUBSCRIBE", "UNSUBSCRIBE", "NOTIFY"};

        protected UpnpURLConnection(URL url, Handler handler) throws IOException {
            super(url, handler);
        }

        public UpnpURLConnection(URL url, String str, int i) throws IOException {
            super(url, str, i);
        }

        public synchronized OutputStream getOutputStream() throws IOException {
            OutputStream outputStream;
            String str = this.method;
            if (!this.method.equals("PUT") && !this.method.equals("POST")) {
                if (!this.method.equals("NOTIFY")) {
                    this.method = "GET";
                    outputStream = FixedSunURLStreamHandler.super.getOutputStream();
                    this.method = str;
                }
            }
            this.method = "PUT";
            outputStream = FixedSunURLStreamHandler.super.getOutputStream();
            this.method = str;
            return outputStream;
        }

        public void setRequestMethod(String str) throws ProtocolException {
            if (!this.connected) {
                for (String equals : methods) {
                    if (equals.equals(str)) {
                        this.method = str;
                        return;
                    }
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Invalid UPnP HTTP method: ");
                sb.append(str);
                throw new ProtocolException(sb.toString());
            }
            throw new ProtocolException("Cannot reset method once connected");
        }
    }

    /* JADX WARNING: type inference failed for: r4v3, types: [java.net.URLStreamHandler, org.fourthline.cling.transport.impl.FixedSunURLStreamHandler$1] */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r4v3, types: [java.net.URLStreamHandler, org.fourthline.cling.transport.impl.FixedSunURLStreamHandler$1]
      assigns: [org.fourthline.cling.transport.impl.FixedSunURLStreamHandler$1]
      uses: [java.net.URLStreamHandler]
      mth insns count: 13
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.net.URLStreamHandler createURLStreamHandler(java.lang.String r4) {
        /*
            r3 = this;
            java.util.logging.Logger r0 = log
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Creating new URLStreamHandler for protocol: "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r1 = r1.toString()
            r0.fine(r1)
            java.lang.String r0 = "http"
            boolean r4 = r0.equals(r4)
            if (r4 == 0) goto L_0x0024
            org.fourthline.cling.transport.impl.FixedSunURLStreamHandler$1 r4 = new org.fourthline.cling.transport.impl.FixedSunURLStreamHandler$1
            r4.<init>()
            return r4
        L_0x0024:
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.transport.impl.FixedSunURLStreamHandler.createURLStreamHandler(java.lang.String):java.net.URLStreamHandler");
    }
}
