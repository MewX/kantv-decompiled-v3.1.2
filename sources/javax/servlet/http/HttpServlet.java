package javax.servlet.http;

import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.text.MessageFormat;
import java.util.Enumeration;
import java.util.ResourceBundle;
import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.MimeTypes;

public abstract class HttpServlet extends GenericServlet implements Serializable {
    private static final String HEADER_IFMODSINCE = "If-Modified-Since";
    private static final String HEADER_LASTMOD = "Last-Modified";
    private static final String LSTRING_FILE = "javax.servlet.http.LocalStrings";
    private static final String METHOD_DELETE = "DELETE";
    private static final String METHOD_GET = "GET";
    private static final String METHOD_HEAD = "HEAD";
    private static final String METHOD_OPTIONS = "OPTIONS";
    private static final String METHOD_POST = "POST";
    private static final String METHOD_PUT = "PUT";
    private static final String METHOD_TRACE = "TRACE";
    private static ResourceBundle lStrings = ResourceBundle.getBundle(LSTRING_FILE);

    /* access modifiers changed from: protected */
    public long getLastModified(HttpServletRequest httpServletRequest) {
        return -1;
    }

    /* access modifiers changed from: protected */
    public void doGet(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String protocol = httpServletRequest.getProtocol();
        String string = lStrings.getString("http.method_get_not_supported");
        if (protocol.endsWith("1.1")) {
            httpServletResponse.sendError(405, string);
        } else {
            httpServletResponse.sendError(400, string);
        }
    }

    /* access modifiers changed from: protected */
    public void doHead(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        NoBodyResponse noBodyResponse = new NoBodyResponse(httpServletResponse);
        doGet(httpServletRequest, noBodyResponse);
        noBodyResponse.setContentLength();
    }

    /* access modifiers changed from: protected */
    public void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String protocol = httpServletRequest.getProtocol();
        String string = lStrings.getString("http.method_post_not_supported");
        if (protocol.endsWith("1.1")) {
            httpServletResponse.sendError(405, string);
        } else {
            httpServletResponse.sendError(400, string);
        }
    }

    /* access modifiers changed from: protected */
    public void doPut(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String protocol = httpServletRequest.getProtocol();
        String string = lStrings.getString("http.method_put_not_supported");
        if (protocol.endsWith("1.1")) {
            httpServletResponse.sendError(405, string);
        } else {
            httpServletResponse.sendError(400, string);
        }
    }

    /* access modifiers changed from: protected */
    public void doDelete(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String protocol = httpServletRequest.getProtocol();
        String string = lStrings.getString("http.method_delete_not_supported");
        if (protocol.endsWith("1.1")) {
            httpServletResponse.sendError(405, string);
        } else {
            httpServletResponse.sendError(400, string);
        }
    }

    private Method[] getAllDeclaredMethods(Class<?> cls) {
        if (cls.equals(HttpServlet.class)) {
            return null;
        }
        Method[] allDeclaredMethods = getAllDeclaredMethods(cls.getSuperclass());
        Method[] declaredMethods = cls.getDeclaredMethods();
        if (allDeclaredMethods != null && allDeclaredMethods.length > 0) {
            Method[] methodArr = new Method[(allDeclaredMethods.length + declaredMethods.length)];
            System.arraycopy(allDeclaredMethods, 0, methodArr, 0, allDeclaredMethods.length);
            System.arraycopy(declaredMethods, 0, methodArr, allDeclaredMethods.length, declaredMethods.length);
            declaredMethods = methodArr;
        }
        return declaredMethods;
    }

    /* access modifiers changed from: protected */
    public void doOptions(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String str;
        String str2;
        Method[] allDeclaredMethods = getAllDeclaredMethods(getClass());
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        for (Method method : allDeclaredMethods) {
            if (method.getName().equals("doGet")) {
                z = true;
                z2 = true;
            }
            if (method.getName().equals("doPost")) {
                z3 = true;
            }
            if (method.getName().equals("doPut")) {
                z4 = true;
            }
            if (method.getName().equals("doDelete")) {
                z5 = true;
            }
        }
        String str3 = null;
        if (z) {
            str3 = "GET";
        }
        if (z2) {
            if (str3 == null) {
                str3 = "HEAD";
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(str3);
                sb.append(", HEAD");
                str3 = sb.toString();
            }
        }
        if (z3) {
            if (str3 == null) {
                str3 = "POST";
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str3);
                sb2.append(", POST");
                str3 = sb2.toString();
            }
        }
        if (z4) {
            if (str3 == null) {
                str3 = "PUT";
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str3);
                sb3.append(", PUT");
                str3 = sb3.toString();
            }
        }
        if (z5) {
            if (str3 == null) {
                str3 = "DELETE";
            } else {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(str3);
                sb4.append(", DELETE");
                str3 = sb4.toString();
            }
        }
        if (str3 == null) {
            str = "TRACE";
        } else {
            StringBuilder sb5 = new StringBuilder();
            sb5.append(str3);
            sb5.append(", TRACE");
            str = sb5.toString();
        }
        if (str == null) {
            str2 = "OPTIONS";
        } else {
            StringBuilder sb6 = new StringBuilder();
            sb6.append(str);
            sb6.append(", OPTIONS");
            str2 = sb6.toString();
        }
        httpServletResponse.setHeader(HttpHeaders.ALLOW, str2);
    }

    /* access modifiers changed from: protected */
    public void doTrace(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        StringBuilder sb = new StringBuilder("TRACE ");
        sb.append(httpServletRequest.getRequestURI());
        sb.append(" ");
        sb.append(httpServletRequest.getProtocol());
        Enumeration headerNames = httpServletRequest.getHeaderNames();
        while (true) {
            String str = "\r\n";
            if (headerNames.hasMoreElements()) {
                String str2 = (String) headerNames.nextElement();
                sb.append(str);
                sb.append(str2);
                sb.append(": ");
                sb.append(httpServletRequest.getHeader(str2));
            } else {
                sb.append(str);
                int length = sb.length();
                httpServletResponse.setContentType(MimeTypes.MESSAGE_HTTP);
                httpServletResponse.setContentLength(length);
                httpServletResponse.getOutputStream().print(sb.toString());
                return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void service(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {
        String method = httpServletRequest.getMethod();
        if (method.equals("GET")) {
            long lastModified = getLastModified(httpServletRequest);
            if (lastModified == -1) {
                doGet(httpServletRequest, httpServletResponse);
            } else if (httpServletRequest.getDateHeader("If-Modified-Since") < lastModified) {
                maybeSetLastModified(httpServletResponse, lastModified);
                doGet(httpServletRequest, httpServletResponse);
            } else {
                httpServletResponse.setStatus(304);
            }
        } else if (method.equals("HEAD")) {
            maybeSetLastModified(httpServletResponse, getLastModified(httpServletRequest));
            doHead(httpServletRequest, httpServletResponse);
        } else if (method.equals("POST")) {
            doPost(httpServletRequest, httpServletResponse);
        } else if (method.equals("PUT")) {
            doPut(httpServletRequest, httpServletResponse);
        } else if (method.equals("DELETE")) {
            doDelete(httpServletRequest, httpServletResponse);
        } else if (method.equals("OPTIONS")) {
            doOptions(httpServletRequest, httpServletResponse);
        } else if (method.equals("TRACE")) {
            doTrace(httpServletRequest, httpServletResponse);
        } else {
            httpServletResponse.sendError(501, MessageFormat.format(lStrings.getString("http.method_not_implemented"), new Object[]{method}));
        }
    }

    private void maybeSetLastModified(HttpServletResponse httpServletResponse, long j) {
        String str = "Last-Modified";
        if (!httpServletResponse.containsHeader(str) && j >= 0) {
            httpServletResponse.setDateHeader(str, j);
        }
    }

    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        try {
            service((HttpServletRequest) servletRequest, (HttpServletResponse) servletResponse);
        } catch (ClassCastException unused) {
            throw new ServletException("non-HTTP request or response");
        }
    }
}
