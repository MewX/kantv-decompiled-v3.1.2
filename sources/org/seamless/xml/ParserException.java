package org.seamless.xml;

import org.xml.sax.SAXParseException;

public class ParserException extends Exception {
    public ParserException() {
    }

    public ParserException(String str) {
        super(str);
    }

    public ParserException(String str, Throwable th) {
        super(str, th);
    }

    public ParserException(Throwable th) {
        super(th);
    }

    public ParserException(SAXParseException sAXParseException) {
        StringBuilder sb = new StringBuilder();
        sb.append("(Line/Column: ");
        sb.append(sAXParseException.getLineNumber());
        sb.append(":");
        sb.append(sAXParseException.getColumnNumber());
        sb.append(") ");
        sb.append(sAXParseException.getMessage());
        super(sb.toString());
    }
}
