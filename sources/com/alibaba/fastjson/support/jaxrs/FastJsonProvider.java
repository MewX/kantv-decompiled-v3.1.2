package com.alibaba.fastjson.support.jaxrs;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializeFilter;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.ext.ContextResolver;
import javax.ws.rs.ext.MessageBodyReader;
import javax.ws.rs.ext.MessageBodyWriter;
import javax.ws.rs.ext.Provider;
import javax.ws.rs.ext.Providers;

@Consumes({"*/*"})
@Produces({"*/*"})
@Provider
public class FastJsonProvider implements MessageBodyReader<Object>, MessageBodyWriter<Object> {
    @Deprecated
    protected Charset charset = Charset.forName("UTF-8");
    private Class<?>[] clazzes = null;
    @Deprecated
    protected String dateFormat;
    private FastJsonConfig fastJsonConfig = new FastJsonConfig();
    @Deprecated
    protected SerializerFeature[] features = new SerializerFeature[0];
    @Deprecated
    protected SerializeFilter[] filters = new SerializeFilter[0];
    private boolean pretty;
    @Context
    protected Providers providers;

    public long getSize(Object obj, Class<?> cls, Type type, Annotation[] annotationArr, MediaType mediaType) {
        return -1;
    }

    public FastJsonConfig getFastJsonConfig() {
        return this.fastJsonConfig;
    }

    public void setFastJsonConfig(FastJsonConfig fastJsonConfig2) {
        this.fastJsonConfig = fastJsonConfig2;
    }

    public FastJsonProvider() {
    }

    public FastJsonProvider(Class<?>[] clsArr) {
        this.clazzes = clsArr;
    }

    public FastJsonProvider setPretty(boolean z) {
        this.pretty = z;
        return this;
    }

    @Deprecated
    public FastJsonProvider(String str) {
        this.fastJsonConfig.setCharset(Charset.forName(str));
    }

    @Deprecated
    public Charset getCharset() {
        return this.fastJsonConfig.getCharset();
    }

    @Deprecated
    public void setCharset(Charset charset2) {
        this.fastJsonConfig.setCharset(charset2);
    }

    @Deprecated
    public String getDateFormat() {
        return this.fastJsonConfig.getDateFormat();
    }

    @Deprecated
    public void setDateFormat(String str) {
        this.fastJsonConfig.setDateFormat(str);
    }

    @Deprecated
    public SerializerFeature[] getFeatures() {
        return this.fastJsonConfig.getSerializerFeatures();
    }

    @Deprecated
    public void setFeatures(SerializerFeature... serializerFeatureArr) {
        this.fastJsonConfig.setSerializerFeatures(serializerFeatureArr);
    }

    @Deprecated
    public SerializeFilter[] getFilters() {
        return this.fastJsonConfig.getSerializeFilters();
    }

    @Deprecated
    public void setFilters(SerializeFilter... serializeFilterArr) {
        this.fastJsonConfig.setSerializeFilters(serializeFilterArr);
    }

    /* access modifiers changed from: protected */
    public boolean isValidType(Class<?> cls, Annotation[] annotationArr) {
        if (cls == null) {
            return false;
        }
        Class<?>[] clsArr = this.clazzes;
        if (clsArr == null) {
            return true;
        }
        for (Class<?> cls2 : clsArr) {
            if (cls2 == cls) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean hasMatchingMediaType(MediaType mediaType) {
        if (mediaType == null) {
            return true;
        }
        String subtype = mediaType.getSubtype();
        if ("json".equalsIgnoreCase(subtype) || subtype.endsWith("+json") || "javascript".equals(subtype) || "x-javascript".equals(subtype) || "x-json".equals(subtype)) {
            return true;
        }
        String str = "x-www-form-urlencoded";
        if (str.equalsIgnoreCase(subtype) || subtype.endsWith(str)) {
            return true;
        }
        return false;
    }

    public boolean isWriteable(Class<?> cls, Type type, Annotation[] annotationArr, MediaType mediaType) {
        if (!hasMatchingMediaType(mediaType)) {
            return false;
        }
        return isValidType(cls, annotationArr);
    }

    public void writeTo(Object obj, Class<?> cls, Type type, Annotation[] annotationArr, MediaType mediaType, MultivaluedMap<String, Object> multivaluedMap, OutputStream outputStream) throws IOException, WebApplicationException {
        SerializerFeature[] serializerFeatureArr;
        FastJsonConfig locateConfigProvider = locateConfigProvider(cls, mediaType);
        SerializerFeature[] serializerFeatures = locateConfigProvider.getSerializerFeatures();
        if (this.pretty) {
            if (serializerFeatures == null) {
                serializerFeatureArr = new SerializerFeature[]{SerializerFeature.PrettyFormat};
            } else {
                ArrayList arrayList = new ArrayList(Arrays.asList(serializerFeatures));
                arrayList.add(SerializerFeature.PrettyFormat);
                serializerFeatureArr = (SerializerFeature[]) arrayList.toArray(serializerFeatures);
            }
            locateConfigProvider.setSerializerFeatures(serializerFeatureArr);
        }
        try {
            JSON.writeJSONString(outputStream, locateConfigProvider.getCharset(), obj, locateConfigProvider.getSerializeConfig(), locateConfigProvider.getSerializeFilters(), locateConfigProvider.getDateFormat(), JSON.DEFAULT_GENERATE_FEATURE, locateConfigProvider.getSerializerFeatures());
            outputStream.flush();
        } catch (JSONException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Could not write JSON: ");
            sb.append(e.getMessage());
            throw new WebApplicationException(sb.toString(), e);
        }
    }

    public boolean isReadable(Class<?> cls, Type type, Annotation[] annotationArr, MediaType mediaType) {
        if (!hasMatchingMediaType(mediaType)) {
            return false;
        }
        return isValidType(cls, annotationArr);
    }

    public Object readFrom(Class<Object> cls, Type type, Annotation[] annotationArr, MediaType mediaType, MultivaluedMap<String, String> multivaluedMap, InputStream inputStream) throws IOException, WebApplicationException {
        try {
            FastJsonConfig locateConfigProvider = locateConfigProvider(cls, mediaType);
            return JSON.parseObject(inputStream, locateConfigProvider.getCharset(), type, locateConfigProvider.getFeatures());
        } catch (JSONException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("JSON parse error: ");
            sb.append(e.getMessage());
            throw new WebApplicationException(sb.toString(), e);
        }
    }

    /* access modifiers changed from: protected */
    public FastJsonConfig locateConfigProvider(Class<?> cls, MediaType mediaType) {
        Providers providers2 = this.providers;
        if (providers2 != null) {
            ContextResolver contextResolver = providers2.getContextResolver(FastJsonConfig.class, mediaType);
            if (contextResolver == null) {
                contextResolver = this.providers.getContextResolver(FastJsonConfig.class, null);
            }
            if (contextResolver != null) {
                return (FastJsonConfig) contextResolver.getContext(cls);
            }
        }
        return this.fastJsonConfig;
    }
}
