package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Type;
import java.math.BigDecimal;

public class NumberDeserializer implements ObjectDeserializer {
    public static final NumberDeserializer instance = new NumberDeserializer();

    public int getFastMatchToken() {
        return 2;
    }

    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        String str = "short overflow : ";
        if (jSONLexer.token() == 2) {
            if (type == Double.TYPE || type == Double.class) {
                String numberString = jSONLexer.numberString();
                jSONLexer.nextToken(16);
                return Double.valueOf(Double.parseDouble(numberString));
            }
            long longValue = jSONLexer.longValue();
            jSONLexer.nextToken(16);
            if (type == Short.TYPE || type == Short.class) {
                if (longValue <= 32767 && longValue >= -32768) {
                    return Short.valueOf((short) ((int) longValue));
                }
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(longValue);
                throw new JSONException(sb.toString());
            } else if (type == Byte.TYPE || type == Byte.class) {
                if (longValue <= 127 && longValue >= -128) {
                    return Byte.valueOf((byte) ((int) longValue));
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(longValue);
                throw new JSONException(sb2.toString());
            } else if (longValue < -2147483648L || longValue > 2147483647L) {
                return Long.valueOf(longValue);
            } else {
                return Integer.valueOf((int) longValue);
            }
        } else if (jSONLexer.token() != 3) {
            T t = null;
            if (jSONLexer.token() == 18) {
                if ("NaN".equals(jSONLexer.stringVal())) {
                    jSONLexer.nextToken();
                    if (type == Double.class) {
                        t = Double.valueOf(Double.NaN);
                    } else if (type == Float.class) {
                        t = Float.valueOf(Float.NaN);
                    }
                    return t;
                }
            }
            Object parse = defaultJSONParser.parse();
            if (parse == null) {
                return null;
            }
            if (type == Double.TYPE || type == Double.class) {
                try {
                    return TypeUtils.castToDouble(parse);
                } catch (Exception e) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("parseDouble error, field : ");
                    sb3.append(obj);
                    throw new JSONException(sb3.toString(), e);
                }
            } else if (type == Short.TYPE || type == Short.class) {
                try {
                    return TypeUtils.castToShort(parse);
                } catch (Exception e2) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("parseShort error, field : ");
                    sb4.append(obj);
                    throw new JSONException(sb4.toString(), e2);
                }
            } else if (type != Byte.TYPE && type != Byte.class) {
                return TypeUtils.castToBigDecimal(parse);
            } else {
                try {
                    return TypeUtils.castToByte(parse);
                } catch (Exception e3) {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("parseByte error, field : ");
                    sb5.append(obj);
                    throw new JSONException(sb5.toString(), e3);
                }
            }
        } else if (type == Double.TYPE || type == Double.class) {
            String numberString2 = jSONLexer.numberString();
            jSONLexer.nextToken(16);
            return Double.valueOf(Double.parseDouble(numberString2));
        } else {
            T decimalValue = jSONLexer.decimalValue();
            jSONLexer.nextToken(16);
            if (type == Short.TYPE || type == Short.class) {
                if (decimalValue.compareTo(BigDecimal.valueOf(32767)) <= 0 && decimalValue.compareTo(BigDecimal.valueOf(-32768)) >= 0) {
                    return Short.valueOf(decimalValue.shortValue());
                }
                StringBuilder sb6 = new StringBuilder();
                sb6.append(str);
                sb6.append(decimalValue);
                throw new JSONException(sb6.toString());
            } else if (type == Byte.TYPE || type == Byte.class) {
                return Byte.valueOf(decimalValue.byteValue());
            } else {
                return decimalValue;
            }
        }
    }
}
