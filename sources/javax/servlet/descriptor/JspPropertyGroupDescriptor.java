package javax.servlet.descriptor;

import java.util.Collection;

public interface JspPropertyGroupDescriptor {
    String getBuffer();

    String getDefaultContentType();

    String getDeferredSyntaxAllowedAsLiteral();

    String getElIgnored();

    String getErrorOnUndeclaredNamespace();

    Collection<String> getIncludeCodas();

    Collection<String> getIncludePreludes();

    String getIsXml();

    String getPageEncoding();

    String getScriptingInvalid();

    String getTrimDirectiveWhitespaces();

    Collection<String> getUrlPatterns();
}
