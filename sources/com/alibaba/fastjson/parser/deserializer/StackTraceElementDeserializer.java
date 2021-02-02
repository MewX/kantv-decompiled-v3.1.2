package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONToken;
import com.avos.avoscloud.AVUtils;
import java.lang.reflect.Type;

public class StackTraceElementDeserializer implements ObjectDeserializer {
    public static final StackTraceElementDeserializer instance = new StackTraceElementDeserializer();

    public int getFastMatchToken() {
        return 12;
    }

    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken();
            return null;
        } else if (jSONLexer.token() == 12 || jSONLexer.token() == 16) {
            String str = null;
            String str2 = null;
            String str3 = null;
            int i = 0;
            while (true) {
                String scanSymbol = jSONLexer.scanSymbol(defaultJSONParser.getSymbolTable());
                if (scanSymbol == null) {
                    if (jSONLexer.token() == 13) {
                        jSONLexer.nextToken(16);
                        break;
                    } else if (jSONLexer.token() == 16 && jSONLexer.isEnabled(Feature.AllowArbitraryCommas)) {
                    }
                }
                jSONLexer.nextTokenWithColon(4);
                String str4 = "syntax error";
                if (AVUtils.classNameTag.equals(scanSymbol)) {
                    if (jSONLexer.token() == 8) {
                        str = null;
                    } else if (jSONLexer.token() == 4) {
                        str = jSONLexer.stringVal();
                    } else {
                        throw new JSONException(str4);
                    }
                } else if ("methodName".equals(scanSymbol)) {
                    if (jSONLexer.token() == 8) {
                        str2 = null;
                    } else if (jSONLexer.token() == 4) {
                        str2 = jSONLexer.stringVal();
                    } else {
                        throw new JSONException(str4);
                    }
                } else if ("fileName".equals(scanSymbol)) {
                    if (jSONLexer.token() == 8) {
                        str3 = null;
                    } else if (jSONLexer.token() == 4) {
                        str3 = jSONLexer.stringVal();
                    } else {
                        throw new JSONException(str4);
                    }
                } else if ("lineNumber".equals(scanSymbol)) {
                    if (jSONLexer.token() == 8) {
                        i = 0;
                    } else if (jSONLexer.token() == 2) {
                        i = jSONLexer.intValue();
                    } else {
                        throw new JSONException(str4);
                    }
                } else if (!"nativeMethod".equals(scanSymbol)) {
                    String str5 = "syntax error : ";
                    if (scanSymbol == JSON.DEFAULT_TYPE_KEY) {
                        if (jSONLexer.token() == 4) {
                            String stringVal = jSONLexer.stringVal();
                            if (!stringVal.equals("java.lang.StackTraceElement")) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(str5);
                                sb.append(stringVal);
                                throw new JSONException(sb.toString());
                            }
                        } else if (jSONLexer.token() != 8) {
                            throw new JSONException(str4);
                        }
                    } else if ("moduleName".equals(scanSymbol)) {
                        if (jSONLexer.token() != 8) {
                            if (jSONLexer.token() == 4) {
                                jSONLexer.stringVal();
                            } else {
                                throw new JSONException(str4);
                            }
                        }
                    } else if ("moduleVersion".equals(scanSymbol)) {
                        if (jSONLexer.token() != 8) {
                            if (jSONLexer.token() == 4) {
                                jSONLexer.stringVal();
                            } else {
                                throw new JSONException(str4);
                            }
                        }
                    } else if (!"classLoaderName".equals(scanSymbol)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(str5);
                        sb2.append(scanSymbol);
                        throw new JSONException(sb2.toString());
                    } else if (jSONLexer.token() != 8) {
                        if (jSONLexer.token() == 4) {
                            jSONLexer.stringVal();
                        } else {
                            throw new JSONException(str4);
                        }
                    }
                } else if (jSONLexer.token() == 8) {
                    jSONLexer.nextToken(16);
                } else if (jSONLexer.token() == 6) {
                    jSONLexer.nextToken(16);
                } else if (jSONLexer.token() == 7) {
                    jSONLexer.nextToken(16);
                } else {
                    throw new JSONException(str4);
                }
                if (jSONLexer.token() == 13) {
                    jSONLexer.nextToken(16);
                    break;
                }
            }
            return new StackTraceElement(str, str2, str3, i);
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("syntax error: ");
            sb3.append(JSONToken.name(jSONLexer.token()));
            throw new JSONException(sb3.toString());
        }
    }
}
