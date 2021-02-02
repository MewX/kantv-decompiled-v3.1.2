package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONPObject;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexerBase;
import java.lang.reflect.Type;

public class JSONPDeserializer implements ObjectDeserializer {
    public static final JSONPDeserializer instance = new JSONPDeserializer();

    public int getFastMatchToken() {
        return 0;
    }

    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        int i;
        JSONLexerBase jSONLexerBase = (JSONLexerBase) defaultJSONParser.getLexer();
        String scanSymbolUnQuoted = jSONLexerBase.scanSymbolUnQuoted(defaultJSONParser.getSymbolTable());
        jSONLexerBase.nextToken();
        int i2 = jSONLexerBase.token();
        if (i2 == 25) {
            String scanSymbolUnQuoted2 = jSONLexerBase.scanSymbolUnQuoted(defaultJSONParser.getSymbolTable());
            StringBuilder sb = new StringBuilder();
            sb.append(scanSymbolUnQuoted);
            sb.append(".");
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(sb2);
            sb3.append(scanSymbolUnQuoted2);
            scanSymbolUnQuoted = sb3.toString();
            jSONLexerBase.nextToken();
            i2 = jSONLexerBase.token();
        }
        T jSONPObject = new JSONPObject(scanSymbolUnQuoted);
        String str = "illegal jsonp : ";
        if (i2 == 10) {
            jSONLexerBase.nextToken();
            while (true) {
                jSONPObject.addParameter(defaultJSONParser.parse());
                i = jSONLexerBase.token();
                if (i != 16) {
                    break;
                }
                jSONLexerBase.nextToken();
            }
            if (i == 11) {
                jSONLexerBase.nextToken();
                if (jSONLexerBase.token() == 24) {
                    jSONLexerBase.nextToken();
                }
                return jSONPObject;
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append(str);
            sb4.append(jSONLexerBase.info());
            throw new JSONException(sb4.toString());
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append(str);
        sb5.append(jSONLexerBase.info());
        throw new JSONException(sb5.toString());
    }
}
