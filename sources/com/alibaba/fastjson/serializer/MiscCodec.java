package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.JSONStreamAware;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.IOUtils;
import com.alibaba.fastjson.util.TypeUtils;
import com.avos.avoscloud.AVException;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Currency;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.TimeZone;
import java.util.UUID;
import java.util.regex.Pattern;
import tv.danmaku.ijk.media.player.IjkMediaPlayer.OnNativeInvokeListener;

public class MiscCodec implements ObjectSerializer, ObjectDeserializer {
    private static boolean FILE_RELATIVE_PATH_SUPPORT = "true".equals(IOUtils.getStringProperty("fastjson.deserializer.fileRelativePathSupport"));
    public static final MiscCodec instance = new MiscCodec();
    private static Method method_paths_get;
    private static boolean method_paths_get_error = false;

    public int getFastMatchToken() {
        return 4;
    }

    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        String str;
        SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull();
            return;
        }
        Class<InetSocketAddress> cls = obj.getClass();
        if (cls == SimpleDateFormat.class) {
            str = ((SimpleDateFormat) obj).toPattern();
            if (serializeWriter.isEnabled(SerializerFeature.WriteClassName) && obj.getClass() != type) {
                serializeWriter.write(123);
                serializeWriter.writeFieldName(JSON.DEFAULT_TYPE_KEY);
                jSONSerializer.write(obj.getClass().getName());
                serializeWriter.writeFieldValue(',', "val", str);
                serializeWriter.write((int) AVException.INVALID_EMAIL_ADDRESS);
                return;
            }
        } else if (cls == Class.class) {
            str = ((Class) obj).getName();
        } else if (cls == InetSocketAddress.class) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) obj;
            InetAddress address = inetSocketAddress.getAddress();
            serializeWriter.write(123);
            if (address != null) {
                serializeWriter.writeFieldName("address");
                jSONSerializer.write((Object) address);
                serializeWriter.write(44);
            }
            serializeWriter.writeFieldName(OnNativeInvokeListener.ARG_PORT);
            serializeWriter.writeInt(inetSocketAddress.getPort());
            serializeWriter.write((int) AVException.INVALID_EMAIL_ADDRESS);
            return;
        } else if (obj instanceof File) {
            str = ((File) obj).getPath();
        } else if (obj instanceof InetAddress) {
            str = ((InetAddress) obj).getHostAddress();
        } else if (obj instanceof TimeZone) {
            str = ((TimeZone) obj).getID();
        } else if (obj instanceof Currency) {
            str = ((Currency) obj).getCurrencyCode();
        } else if (obj instanceof JSONStreamAware) {
            ((JSONStreamAware) obj).writeJSONString(serializeWriter);
            return;
        } else if (obj instanceof Iterator) {
            writeIterator(jSONSerializer, serializeWriter, (Iterator) obj);
            return;
        } else if (obj instanceof Iterable) {
            writeIterator(jSONSerializer, serializeWriter, ((Iterable) obj).iterator());
            return;
        } else if (obj instanceof Entry) {
            Entry entry = (Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (key instanceof String) {
                String str2 = (String) key;
                if (value instanceof String) {
                    serializeWriter.writeFieldValueStringWithDoubleQuoteCheck('{', str2, (String) value);
                } else {
                    serializeWriter.write(123);
                    serializeWriter.writeFieldName(str2);
                    jSONSerializer.write(value);
                }
            } else {
                serializeWriter.write(123);
                jSONSerializer.write(key);
                serializeWriter.write(58);
                jSONSerializer.write(value);
            }
            serializeWriter.write((int) AVException.INVALID_EMAIL_ADDRESS);
            return;
        } else if (obj.getClass().getName().equals("net.sf.json.JSONNull")) {
            serializeWriter.writeNull();
            return;
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("not support class : ");
            sb.append(cls);
            throw new JSONException(sb.toString());
        }
        serializeWriter.writeString(str);
    }

    /* access modifiers changed from: protected */
    public void writeIterator(JSONSerializer jSONSerializer, SerializeWriter serializeWriter, Iterator<?> it) {
        serializeWriter.write(91);
        int i = 0;
        while (it.hasNext()) {
            if (i != 0) {
                serializeWriter.write(44);
            }
            jSONSerializer.write(it.next());
            i++;
        }
        serializeWriter.write(93);
    }

    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        Object obj2;
        String str;
        String str2 = "Path deserialize erorr";
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        InetAddress inetAddress = null;
        int i = 0;
        if (type != InetSocketAddress.class) {
            if (defaultJSONParser.resolveStatus == 2) {
                defaultJSONParser.resolveStatus = 0;
                defaultJSONParser.accept(16);
                String str3 = "syntax error";
                if (jSONLexer.token() == 4) {
                    if ("val".equals(jSONLexer.stringVal())) {
                        jSONLexer.nextToken();
                        defaultJSONParser.accept(17);
                        obj2 = defaultJSONParser.parse();
                        defaultJSONParser.accept(13);
                    } else {
                        throw new JSONException(str3);
                    }
                } else {
                    throw new JSONException(str3);
                }
            } else {
                obj2 = defaultJSONParser.parse();
            }
            if (obj2 == null) {
                str = null;
            } else if (obj2 instanceof String) {
                str = (String) obj2;
            } else if (obj2 instanceof JSONObject) {
                JSONObject jSONObject = (JSONObject) obj2;
                if (type == Currency.class) {
                    String string = jSONObject.getString(Param.CURRENCY);
                    if (string != null) {
                        return Currency.getInstance(string);
                    }
                    String string2 = jSONObject.getString("currencyCode");
                    if (string2 != null) {
                        return Currency.getInstance(string2);
                    }
                }
                if (type == Entry.class) {
                    return jSONObject.entrySet().iterator().next();
                }
                return jSONObject.toJavaObject(type);
            } else {
                throw new JSONException("expect string");
            }
            if (str == null || str.length() == 0) {
                return null;
            }
            if (type == UUID.class) {
                return UUID.fromString(str);
            }
            if (type == URI.class) {
                return URI.create(str);
            }
            if (type == URL.class) {
                try {
                    return new URL(str);
                } catch (MalformedURLException e) {
                    throw new JSONException("create url error", e);
                }
            } else if (type == Pattern.class) {
                return Pattern.compile(str);
            } else {
                if (type == Locale.class) {
                    return TypeUtils.toLocale(str);
                }
                if (type == SimpleDateFormat.class) {
                    T simpleDateFormat = new SimpleDateFormat(str, jSONLexer.getLocale());
                    simpleDateFormat.setTimeZone(jSONLexer.getTimeZone());
                    return simpleDateFormat;
                } else if (type == InetAddress.class || type == Inet4Address.class || type == Inet6Address.class) {
                    try {
                        return InetAddress.getByName(str);
                    } catch (UnknownHostException e2) {
                        throw new JSONException("deserialize inet adress error", e2);
                    }
                } else if (type == File.class) {
                    if (str.indexOf("..") < 0 || FILE_RELATIVE_PATH_SUPPORT) {
                        return new File(str);
                    }
                    throw new JSONException("file relative path not support.");
                } else if (type == TimeZone.class) {
                    return TimeZone.getTimeZone(str);
                } else {
                    if (type instanceof ParameterizedType) {
                        type = ((ParameterizedType) type).getRawType();
                    }
                    if (type == Class.class) {
                        return TypeUtils.loadClass(str, defaultJSONParser.getConfig().getDefaultClassLoader());
                    }
                    if (type == Charset.class) {
                        return Charset.forName(str);
                    }
                    if (type == Currency.class) {
                        return Currency.getInstance(str);
                    }
                    if (type == JSONPath.class) {
                        return new JSONPath(str);
                    }
                    String str4 = "MiscCodec not support ";
                    if (type instanceof Class) {
                        String name = ((Class) type).getName();
                        if (name.equals("java.nio.file.Path")) {
                            try {
                                if (method_paths_get == null && !method_paths_get_error) {
                                    method_paths_get = TypeUtils.loadClass("java.nio.file.Paths").getMethod("get", new Class[]{String.class, String[].class});
                                }
                                if (method_paths_get != null) {
                                    return method_paths_get.invoke(null, new Object[]{str, new String[0]});
                                }
                                throw new JSONException(str2);
                            } catch (NoSuchMethodException unused) {
                                method_paths_get_error = true;
                            } catch (IllegalAccessException e3) {
                                throw new JSONException(str2, e3);
                            } catch (InvocationTargetException e4) {
                                throw new JSONException(str2, e4);
                            }
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append(str4);
                        sb.append(name);
                        throw new JSONException(sb.toString());
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str4);
                    sb2.append(type.toString());
                    throw new JSONException(sb2.toString());
                }
            }
        } else if (jSONLexer.token() == 8) {
            jSONLexer.nextToken();
            return null;
        } else {
            defaultJSONParser.accept(12);
            while (true) {
                String stringVal = jSONLexer.stringVal();
                jSONLexer.nextToken(17);
                if (stringVal.equals("address")) {
                    defaultJSONParser.accept(17);
                    inetAddress = (InetAddress) defaultJSONParser.parseObject(InetAddress.class);
                } else if (stringVal.equals(OnNativeInvokeListener.ARG_PORT)) {
                    defaultJSONParser.accept(17);
                    if (jSONLexer.token() == 2) {
                        int intValue = jSONLexer.intValue();
                        jSONLexer.nextToken();
                        i = intValue;
                    } else {
                        throw new JSONException("port is not int");
                    }
                } else {
                    defaultJSONParser.accept(17);
                    defaultJSONParser.parse();
                }
                if (jSONLexer.token() == 16) {
                    jSONLexer.nextToken();
                } else {
                    defaultJSONParser.accept(13);
                    return new InetSocketAddress(inetAddress, i);
                }
            }
        }
    }
}
