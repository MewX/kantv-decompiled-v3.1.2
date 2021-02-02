package javax.servlet;

import java.io.IOException;
import java.io.Serializable;
import java.util.Enumeration;
import java.util.ResourceBundle;

public abstract class GenericServlet implements Servlet, ServletConfig, Serializable {
    private static final String LSTRING_FILE = "javax.servlet.LocalStrings";
    private static ResourceBundle lStrings = ResourceBundle.getBundle(LSTRING_FILE);
    private transient ServletConfig config;

    public void destroy() {
    }

    public String getServletInfo() {
        return "";
    }

    public void init() throws ServletException {
    }

    public abstract void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException;

    public String getInitParameter(String str) {
        ServletConfig servletConfig = getServletConfig();
        if (servletConfig != null) {
            return servletConfig.getInitParameter(str);
        }
        throw new IllegalStateException(lStrings.getString("err.servlet_config_not_initialized"));
    }

    public Enumeration<String> getInitParameterNames() {
        ServletConfig servletConfig = getServletConfig();
        if (servletConfig != null) {
            return servletConfig.getInitParameterNames();
        }
        throw new IllegalStateException(lStrings.getString("err.servlet_config_not_initialized"));
    }

    public ServletConfig getServletConfig() {
        return this.config;
    }

    public ServletContext getServletContext() {
        ServletConfig servletConfig = getServletConfig();
        if (servletConfig != null) {
            return servletConfig.getServletContext();
        }
        throw new IllegalStateException(lStrings.getString("err.servlet_config_not_initialized"));
    }

    public void init(ServletConfig servletConfig) throws ServletException {
        this.config = servletConfig;
        init();
    }

    public void log(String str) {
        ServletContext servletContext = getServletContext();
        StringBuilder sb = new StringBuilder();
        sb.append(getServletName());
        sb.append(": ");
        sb.append(str);
        servletContext.log(sb.toString());
    }

    public void log(String str, Throwable th) {
        ServletContext servletContext = getServletContext();
        StringBuilder sb = new StringBuilder();
        sb.append(getServletName());
        sb.append(": ");
        sb.append(str);
        servletContext.log(sb.toString(), th);
    }

    public String getServletName() {
        ServletConfig servletConfig = getServletConfig();
        if (servletConfig != null) {
            return servletConfig.getServletName();
        }
        throw new IllegalStateException(lStrings.getString("err.servlet_config_not_initialized"));
    }
}
