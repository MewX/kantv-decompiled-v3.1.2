package com.alibaba.fastjson.support.jaxrs;

import javax.ws.rs.core.Configuration;
import javax.ws.rs.core.Feature;
import javax.ws.rs.core.FeatureContext;
import javax.ws.rs.ext.MessageBodyReader;
import javax.ws.rs.ext.MessageBodyWriter;
import org.glassfish.jersey.CommonProperties;
import org.glassfish.jersey.internal.util.PropertiesHelper;

public class FastJsonFeature implements Feature {
    private static final String JSON_FEATURE = "FastJsonFeature";

    public boolean configure(FeatureContext featureContext) {
        Configuration configuration = featureContext.getConfiguration();
        String str = "jersey.config.jsonFeature";
        if (!JSON_FEATURE.equalsIgnoreCase((String) CommonProperties.getValue(configuration.getProperties(), configuration.getRuntimeType(), str, JSON_FEATURE, String.class))) {
            return false;
        }
        featureContext.property(PropertiesHelper.getPropertyNameForRuntime(str, configuration.getRuntimeType()), JSON_FEATURE);
        if (!configuration.isRegistered(FastJsonProvider.class)) {
            featureContext.register(FastJsonProvider.class, new Class[]{MessageBodyReader.class, MessageBodyWriter.class});
        }
        return true;
    }
}
