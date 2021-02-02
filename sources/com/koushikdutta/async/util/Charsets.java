package com.koushikdutta.async.util;

import com.google.android.exoplayer2.C;
import java.nio.charset.Charset;
import org.eclipse.jetty.util.StringUtil;

public class Charsets {
    public static final Charset ISO_8859_1 = Charset.forName(StringUtil.__ISO_8859_1);
    public static final Charset US_ASCII = Charset.forName(C.ASCII_NAME);
    public static final Charset UTF_8 = Charset.forName("UTF-8");
}
