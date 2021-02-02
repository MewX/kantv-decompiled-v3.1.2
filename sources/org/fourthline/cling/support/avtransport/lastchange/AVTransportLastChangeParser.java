package org.fourthline.cling.support.avtransport.lastchange;

import java.util.Set;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.support.lastchange.EventedValue;
import org.fourthline.cling.support.lastchange.LastChangeParser;

public class AVTransportLastChangeParser extends LastChangeParser {
    public static final String NAMESPACE_URI = "urn:schemas-upnp-org:metadata-1-0/AVT/";
    public static final String SCHEMA_RESOURCE = "org/fourthline/cling/support/avtransport/metadata-1.01-avt.xsd";

    /* access modifiers changed from: protected */
    public String getNamespace() {
        return NAMESPACE_URI;
    }

    /* access modifiers changed from: protected */
    public Source[] getSchemaSources() {
        if (ModelUtil.ANDROID_RUNTIME) {
            return null;
        }
        return new Source[]{new StreamSource(Thread.currentThread().getContextClassLoader().getResourceAsStream(SCHEMA_RESOURCE))};
    }

    /* access modifiers changed from: protected */
    public Set<Class<? extends EventedValue>> getEventedVariables() {
        return AVTransportVariable.ALL;
    }
}
