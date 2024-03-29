package com.alibaba.fastjson.support.spring;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.IOUtils;
import java.lang.reflect.Type;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.SerializationException;

public class GenericFastJsonRedisSerializer implements RedisSerializer<Object> {
    private static final ParserConfig defaultRedisConfig = new ParserConfig();

    static {
        defaultRedisConfig.setAutoTypeSupport(true);
    }

    public byte[] serialize(Object obj) throws SerializationException {
        if (obj == null) {
            return new byte[0];
        }
        try {
            return JSON.toJSONBytes(obj, SerializerFeature.WriteClassName);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Could not serialize: ");
            sb.append(e.getMessage());
            throw new SerializationException(sb.toString(), e);
        }
    }

    public Object deserialize(byte[] bArr) throws SerializationException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        try {
            return JSON.parseObject(new String(bArr, IOUtils.UTF8), (Type) Object.class, defaultRedisConfig, new Feature[0]);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Could not deserialize: ");
            sb.append(e.getMessage());
            throw new SerializationException(sb.toString(), e);
        }
    }
}
