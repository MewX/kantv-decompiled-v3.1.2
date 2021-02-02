package org.seamless.http;

import java.util.Enumeration;
import java.util.logging.Logger;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class RequestInfo {
    private static final Logger log = Logger.getLogger(RequestInfo.class.getName());

    public static void reportRequest(StringBuilder sb, HttpServletRequest httpServletRequest) {
        sb.append("Request: ");
        sb.append(httpServletRequest.getMethod());
        sb.append(' ');
        sb.append(httpServletRequest.getRequestURL());
        String queryString = httpServletRequest.getQueryString();
        if (queryString != null) {
            sb.append('?');
            sb.append(queryString);
        }
        sb.append(" - ");
        String requestedSessionId = httpServletRequest.getRequestedSessionId();
        if (requestedSessionId != null) {
            sb.append("\nSession ID: ");
        }
        if (requestedSessionId == null) {
            sb.append("No Session");
        } else if (httpServletRequest.isRequestedSessionIdValid()) {
            sb.append(requestedSessionId);
            sb.append(" (from ");
            if (httpServletRequest.isRequestedSessionIdFromCookie()) {
                sb.append("cookie)\n");
            } else if (httpServletRequest.isRequestedSessionIdFromURL()) {
                sb.append("url)\n");
            } else {
                sb.append("unknown)\n");
            }
        } else {
            sb.append("Invalid Session ID\n");
        }
    }

    public static void reportParameters(StringBuilder sb, HttpServletRequest httpServletRequest) {
        Enumeration parameterNames = httpServletRequest.getParameterNames();
        if (parameterNames != null && parameterNames.hasMoreElements()) {
            sb.append("Parameters:\n");
            while (parameterNames.hasMoreElements()) {
                String str = (String) parameterNames.nextElement();
                String[] parameterValues = httpServletRequest.getParameterValues(str);
                if (parameterValues != null) {
                    for (String str2 : parameterValues) {
                        sb.append("    ");
                        sb.append(str);
                        sb.append(" = ");
                        sb.append(str2);
                        sb.append(10);
                    }
                }
            }
        }
    }

    public static void reportHeaders(StringBuilder sb, HttpServletRequest httpServletRequest) {
        Enumeration headerNames = httpServletRequest.getHeaderNames();
        if (headerNames != null && headerNames.hasMoreElements()) {
            sb.append("Headers:\n");
            while (headerNames.hasMoreElements()) {
                String str = (String) headerNames.nextElement();
                String header = httpServletRequest.getHeader(str);
                sb.append("    ");
                sb.append(str);
                sb.append(": ");
                sb.append(header);
                sb.append(10);
            }
        }
    }

    public static void reportCookies(StringBuilder sb, HttpServletRequest httpServletRequest) {
        Cookie[] cookies = httpServletRequest.getCookies();
        if (cookies != null) {
            if (r0 > 0) {
                sb.append("Cookies:\n");
                for (Cookie cookie : cookies) {
                    sb.append("    ");
                    sb.append(cookie.getName());
                    sb.append(" = ");
                    sb.append(cookie.getValue());
                    sb.append(10);
                }
            }
        }
    }

    public static void reportClient(StringBuilder sb, HttpServletRequest httpServletRequest) {
        sb.append("Remote Address: ");
        sb.append(httpServletRequest.getRemoteAddr());
        String str = "\n";
        sb.append(str);
        if (!httpServletRequest.getRemoteAddr().equals(httpServletRequest.getRemoteHost())) {
            sb.append("Remote Host: ");
            sb.append(httpServletRequest.getRemoteHost());
            sb.append(str);
        }
        sb.append("Remote Port: ");
        sb.append(httpServletRequest.getRemotePort());
        sb.append(str);
        if (httpServletRequest.getRemoteUser() != null) {
            sb.append("Remote User: ");
            sb.append(httpServletRequest.getRemoteUser());
            sb.append(str);
        }
    }

    public static boolean isPS3Request(String str, String str2) {
        String str3 = "PLAYSTATION 3";
        return (str != null && str.contains(str3)) || (str2 != null && str2.contains(str3));
    }

    public static boolean isAndroidBubbleUPnPRequest(String str) {
        return str != null && str.contains("BubbleUPnP");
    }

    public static boolean isPS3Request(HttpServletRequest httpServletRequest) {
        return isPS3Request(httpServletRequest.getHeader("User-Agent"), httpServletRequest.getHeader("X-AV-Client-Info"));
    }

    public static boolean isJRiverRequest(HttpServletRequest httpServletRequest) {
        return isJRiverRequest(httpServletRequest.getHeader("User-Agent"));
    }

    public static boolean isJRiverRequest(String str) {
        return str != null && (str.contains("J-River") || str.contains("J. River"));
    }

    public static boolean isWMPRequest(String str) {
        return str != null && str.contains("Windows-Media-Player") && !isJRiverRequest(str);
    }

    public static boolean isXbox360Request(HttpServletRequest httpServletRequest) {
        return isXbox360Request(httpServletRequest.getHeader("User-Agent"), httpServletRequest.getHeader("Server"));
    }

    public static boolean isXbox360Request(String str, String str2) {
        String str3 = "Xbox";
        return (str != null && (str.contains(str3) || str.contains("Xenon"))) || (str2 != null && str2.contains(str3));
    }

    public static boolean isXbox360AlbumArtRequest(HttpServletRequest httpServletRequest) {
        return "true".equals(httpServletRequest.getParameter("albumArt")) && isXbox360Request(httpServletRequest);
    }

    public static void dumpRequestHeaders(long j, HttpServletRequest httpServletRequest) {
        dumpRequestHeaders(j, "REQUEST HEADERS", httpServletRequest);
    }

    public static void dumpRequestString(long j, HttpServletRequest httpServletRequest) {
        log.info(getRequestInfoString(j, httpServletRequest));
    }

    public static void dumpRequestHeaders(long j, String str, HttpServletRequest httpServletRequest) {
        log.info(str);
        dumpRequestString(j, httpServletRequest);
        Enumeration headerNames = httpServletRequest.getHeaderNames();
        if (headerNames != null) {
            while (headerNames.hasMoreElements()) {
                String str2 = (String) headerNames.nextElement();
                log.info(String.format("%s: %s", new Object[]{str2, httpServletRequest.getHeader(str2)}));
            }
        }
        log.info("----------------------------------------");
    }

    public static String getRequestInfoString(long j, HttpServletRequest httpServletRequest) {
        return String.format("%s %s %s %s %s %d", new Object[]{httpServletRequest.getMethod(), httpServletRequest.getRequestURI(), httpServletRequest.getProtocol(), httpServletRequest.getParameterMap(), httpServletRequest.getRemoteAddr(), Long.valueOf(j)});
    }

    public static String getRequestFullURL(HttpServletRequest httpServletRequest) {
        String scheme = httpServletRequest.getScheme();
        String serverName = httpServletRequest.getServerName();
        int serverPort = httpServletRequest.getServerPort();
        String contextPath = httpServletRequest.getContextPath();
        String servletPath = httpServletRequest.getServletPath();
        String pathInfo = httpServletRequest.getPathInfo();
        String queryString = httpServletRequest.getQueryString();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(scheme);
        stringBuffer.append("://");
        stringBuffer.append(serverName);
        if (!(serverPort == 80 || serverPort == 443)) {
            stringBuffer.append(":");
            stringBuffer.append(serverPort);
        }
        stringBuffer.append(contextPath);
        stringBuffer.append(servletPath);
        if (pathInfo != null) {
            stringBuffer.append(pathInfo);
        }
        if (queryString != null) {
            stringBuffer.append("?");
            stringBuffer.append(queryString);
        }
        return stringBuffer.toString();
    }
}
