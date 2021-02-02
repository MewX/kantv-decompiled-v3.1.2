package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.avos.avoscloud.AVException;
import java.awt.Color;
import java.awt.Font;
import java.awt.Point;
import java.awt.Rectangle;
import java.io.IOException;
import java.lang.reflect.Type;

public class AwtCodec implements ObjectSerializer, ObjectDeserializer {
    public static final AwtCodec instance = new AwtCodec();

    public int getFastMatchToken() {
        return 12;
    }

    public static boolean support(Class<?> cls) {
        return cls == Point.class || cls == Rectangle.class || cls == Font.class || cls == Color.class;
    }

    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull();
            return;
        }
        String str = "y";
        String str2 = "x";
        if (obj instanceof Point) {
            Point point = (Point) obj;
            serializeWriter.writeFieldValue(writeClassName(serializeWriter, Point.class, '{'), str2, point.x);
            serializeWriter.writeFieldValue(',', str, point.y);
        } else if (obj instanceof Font) {
            Font font = (Font) obj;
            serializeWriter.writeFieldValue(writeClassName(serializeWriter, Font.class, '{'), "name", font.getName());
            serializeWriter.writeFieldValue(',', TtmlNode.TAG_STYLE, font.getStyle());
            serializeWriter.writeFieldValue(',', "size", font.getSize());
        } else if (obj instanceof Rectangle) {
            Rectangle rectangle = (Rectangle) obj;
            serializeWriter.writeFieldValue(writeClassName(serializeWriter, Rectangle.class, '{'), str2, rectangle.x);
            serializeWriter.writeFieldValue(',', str, rectangle.y);
            serializeWriter.writeFieldValue(',', "width", rectangle.width);
            serializeWriter.writeFieldValue(',', "height", rectangle.height);
        } else if (obj instanceof Color) {
            Color color = (Color) obj;
            serializeWriter.writeFieldValue(writeClassName(serializeWriter, Color.class, '{'), "r", color.getRed());
            serializeWriter.writeFieldValue(',', "g", color.getGreen());
            serializeWriter.writeFieldValue(',', "b", color.getBlue());
            if (color.getAlpha() > 0) {
                serializeWriter.writeFieldValue(',', "alpha", color.getAlpha());
            }
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("not support awt class : ");
            sb.append(obj.getClass().getName());
            throw new JSONException(sb.toString());
        }
        serializeWriter.write((int) AVException.INVALID_EMAIL_ADDRESS);
    }

    /* access modifiers changed from: protected */
    public char writeClassName(SerializeWriter serializeWriter, Class<?> cls, char c) {
        if (!serializeWriter.isEnabled(SerializerFeature.WriteClassName)) {
            return c;
        }
        serializeWriter.write(123);
        serializeWriter.writeFieldName(JSON.DEFAULT_TYPE_KEY);
        serializeWriter.writeString(cls.getName());
        return ',';
    }

    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        T t;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken(16);
            return null;
        } else if (jSONLexer.token() == 12 || jSONLexer.token() == 16) {
            jSONLexer.nextToken();
            if (type == Point.class) {
                t = parsePoint(defaultJSONParser, obj);
            } else if (type == Rectangle.class) {
                t = parseRectangle(defaultJSONParser);
            } else if (type == Color.class) {
                t = parseColor(defaultJSONParser);
            } else if (type == Font.class) {
                t = parseFont(defaultJSONParser);
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("not support awt class : ");
                sb.append(type);
                throw new JSONException(sb.toString());
            }
            ParseContext context = defaultJSONParser.getContext();
            defaultJSONParser.setContext(t, obj);
            defaultJSONParser.setContext(context);
            return t;
        } else {
            throw new JSONException("syntax error");
        }
    }

    /* access modifiers changed from: protected */
    public Font parseFont(DefaultJSONParser defaultJSONParser) {
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i = 0;
        String str = null;
        int i2 = 0;
        while (jSONLexer.token() != 13) {
            String str2 = "syntax error";
            if (jSONLexer.token() == 4) {
                String stringVal = jSONLexer.stringVal();
                jSONLexer.nextTokenWithColon(2);
                if (stringVal.equalsIgnoreCase("name")) {
                    if (jSONLexer.token() == 4) {
                        str = jSONLexer.stringVal();
                        jSONLexer.nextToken();
                    } else {
                        throw new JSONException(str2);
                    }
                } else if (stringVal.equalsIgnoreCase(TtmlNode.TAG_STYLE)) {
                    if (jSONLexer.token() == 2) {
                        i = jSONLexer.intValue();
                        jSONLexer.nextToken();
                    } else {
                        throw new JSONException(str2);
                    }
                } else if (!stringVal.equalsIgnoreCase("size")) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("syntax error, ");
                    sb.append(stringVal);
                    throw new JSONException(sb.toString());
                } else if (jSONLexer.token() == 2) {
                    i2 = jSONLexer.intValue();
                    jSONLexer.nextToken();
                } else {
                    throw new JSONException(str2);
                }
                if (jSONLexer.token() == 16) {
                    jSONLexer.nextToken(4);
                }
            } else {
                throw new JSONException(str2);
            }
        }
        jSONLexer.nextToken();
        return new Font(str, i, i2);
    }

    /* access modifiers changed from: protected */
    public Color parseColor(DefaultJSONParser defaultJSONParser) {
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (jSONLexer.token() != 13) {
            String str = "syntax error";
            if (jSONLexer.token() == 4) {
                String stringVal = jSONLexer.stringVal();
                jSONLexer.nextTokenWithColon(2);
                if (jSONLexer.token() == 2) {
                    int intValue = jSONLexer.intValue();
                    jSONLexer.nextToken();
                    if (stringVal.equalsIgnoreCase("r")) {
                        i = intValue;
                    } else if (stringVal.equalsIgnoreCase("g")) {
                        i2 = intValue;
                    } else if (stringVal.equalsIgnoreCase("b")) {
                        i3 = intValue;
                    } else if (stringVal.equalsIgnoreCase("alpha")) {
                        i4 = intValue;
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append("syntax error, ");
                        sb.append(stringVal);
                        throw new JSONException(sb.toString());
                    }
                    if (jSONLexer.token() == 16) {
                        jSONLexer.nextToken(4);
                    }
                } else {
                    throw new JSONException(str);
                }
            } else {
                throw new JSONException(str);
            }
        }
        jSONLexer.nextToken();
        return new Color(i, i2, i3, i4);
    }

    /* access modifiers changed from: protected */
    public Rectangle parseRectangle(DefaultJSONParser defaultJSONParser) {
        int i;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (jSONLexer.token() != 13) {
            String str = "syntax error";
            if (jSONLexer.token() == 4) {
                String stringVal = jSONLexer.stringVal();
                jSONLexer.nextTokenWithColon(2);
                int i6 = jSONLexer.token();
                if (i6 == 2) {
                    i = jSONLexer.intValue();
                    jSONLexer.nextToken();
                } else if (i6 == 3) {
                    i = (int) jSONLexer.floatValue();
                    jSONLexer.nextToken();
                } else {
                    throw new JSONException(str);
                }
                if (stringVal.equalsIgnoreCase("x")) {
                    i2 = i;
                } else if (stringVal.equalsIgnoreCase("y")) {
                    i3 = i;
                } else if (stringVal.equalsIgnoreCase("width")) {
                    i4 = i;
                } else if (stringVal.equalsIgnoreCase("height")) {
                    i5 = i;
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("syntax error, ");
                    sb.append(stringVal);
                    throw new JSONException(sb.toString());
                }
                if (jSONLexer.token() == 16) {
                    jSONLexer.nextToken(4);
                }
            } else {
                throw new JSONException(str);
            }
        }
        jSONLexer.nextToken();
        return new Rectangle(i2, i3, i4, i5);
    }

    /* access modifiers changed from: protected */
    public Point parsePoint(DefaultJSONParser defaultJSONParser, Object obj) {
        int i;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i2 = 0;
        int i3 = 0;
        while (jSONLexer.token() != 13) {
            if (jSONLexer.token() == 4) {
                String stringVal = jSONLexer.stringVal();
                if (JSON.DEFAULT_TYPE_KEY.equals(stringVal)) {
                    defaultJSONParser.acceptType("java.awt.Point");
                } else if ("$ref".equals(stringVal)) {
                    return (Point) parseRef(defaultJSONParser, obj);
                } else {
                    jSONLexer.nextTokenWithColon(2);
                    int i4 = jSONLexer.token();
                    if (i4 == 2) {
                        i = jSONLexer.intValue();
                        jSONLexer.nextToken();
                    } else if (i4 == 3) {
                        i = (int) jSONLexer.floatValue();
                        jSONLexer.nextToken();
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append("syntax error : ");
                        sb.append(jSONLexer.tokenName());
                        throw new JSONException(sb.toString());
                    }
                    if (stringVal.equalsIgnoreCase("x")) {
                        i2 = i;
                    } else if (stringVal.equalsIgnoreCase("y")) {
                        i3 = i;
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("syntax error, ");
                        sb2.append(stringVal);
                        throw new JSONException(sb2.toString());
                    }
                    if (jSONLexer.token() == 16) {
                        jSONLexer.nextToken(4);
                    }
                }
            } else {
                throw new JSONException("syntax error");
            }
        }
        jSONLexer.nextToken();
        return new Point(i2, i3);
    }

    private Object parseRef(DefaultJSONParser defaultJSONParser, Object obj) {
        JSONLexer lexer = defaultJSONParser.getLexer();
        lexer.nextTokenWithColon(4);
        String stringVal = lexer.stringVal();
        defaultJSONParser.setContext(defaultJSONParser.getContext(), obj);
        defaultJSONParser.addResolveTask(new ResolveTask(defaultJSONParser.getContext(), stringVal));
        defaultJSONParser.popContext();
        defaultJSONParser.setResolveStatus(1);
        lexer.nextToken(13);
        defaultJSONParser.accept(13);
        return null;
    }
}
