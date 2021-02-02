package com.bumptech.glide.load.resource.transcode;

import com.bumptech.glide.util.MultiClassKey;
import java.util.HashMap;
import java.util.Map;

public class TranscoderRegistry {
    private static final MultiClassKey GET_KEY = new MultiClassKey();
    private final Map<MultiClassKey, ResourceTranscoder<?, ?>> factories = new HashMap();

    public <Z, R> void register(Class<Z> cls, Class<R> cls2, ResourceTranscoder<Z, R> resourceTranscoder) {
        this.factories.put(new MultiClassKey(cls, cls2), resourceTranscoder);
    }

    public <Z, R> ResourceTranscoder<Z, R> get(Class<Z> cls, Class<R> cls2) {
        ResourceTranscoder<Z, R> resourceTranscoder;
        if (cls.equals(cls2)) {
            return UnitTranscoder.get();
        }
        synchronized (GET_KEY) {
            GET_KEY.set(cls, cls2);
            resourceTranscoder = (ResourceTranscoder) this.factories.get(GET_KEY);
        }
        if (resourceTranscoder != null) {
            return resourceTranscoder;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("No transcoder registered for ");
        sb.append(cls);
        sb.append(" and ");
        sb.append(cls2);
        throw new IllegalArgumentException(sb.toString());
    }
}