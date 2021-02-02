package org.fourthline.cling.model.message;

import java.io.ByteArrayInputStream;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.message.header.UpnpHeader.Type;
import org.seamless.http.Headers;

public class UpnpHeaders extends Headers {
    private static final Logger log = Logger.getLogger(UpnpHeaders.class.getName());
    protected Map<Type, List<UpnpHeader>> parsedHeaders;

    public UpnpHeaders() {
    }

    public UpnpHeaders(Map<String, List<String>> map) {
        super(map);
    }

    public UpnpHeaders(ByteArrayInputStream byteArrayInputStream) {
        super(byteArrayInputStream);
    }

    public UpnpHeaders(boolean z) {
        super(z);
    }

    /* access modifiers changed from: protected */
    public void parseHeaders() {
        this.parsedHeaders = new LinkedHashMap();
        if (log.isLoggable(Level.FINE)) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Parsing all HTTP headers for known UPnP headers: ");
            sb.append(size());
            logger.fine(sb.toString());
        }
        for (Entry entry : entrySet()) {
            if (entry.getKey() != null) {
                Type byHttpName = Type.getByHttpName((String) entry.getKey());
                if (byHttpName != null) {
                    for (String str : (List) entry.getValue()) {
                        UpnpHeader newInstance = UpnpHeader.newInstance(byHttpName, str);
                        if (newInstance != null && newInstance.getValue() != null) {
                            addParsedValue(byHttpName, newInstance);
                        } else if (log.isLoggable(Level.FINE)) {
                            Logger logger2 = log;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Ignoring known but irrelevant header (value violates the UDA specification?) '");
                            sb2.append(byHttpName.getHttpName());
                            sb2.append("': ");
                            sb2.append(str);
                            logger2.fine(sb2.toString());
                        }
                    }
                } else if (log.isLoggable(Level.FINE)) {
                    Logger logger3 = log;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Ignoring non-UPNP HTTP header: ");
                    sb3.append((String) entry.getKey());
                    logger3.fine(sb3.toString());
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void addParsedValue(Type type, UpnpHeader upnpHeader) {
        if (log.isLoggable(Level.FINE)) {
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append("Adding parsed header: ");
            sb.append(upnpHeader);
            logger.fine(sb.toString());
        }
        List list = (List) this.parsedHeaders.get(type);
        if (list == null) {
            list = new LinkedList();
            this.parsedHeaders.put(type, list);
        }
        list.add(upnpHeader);
    }

    public List<String> put(String str, List<String> list) {
        this.parsedHeaders = null;
        return super.put(str, list);
    }

    public void add(String str, String str2) {
        this.parsedHeaders = null;
        super.add(str, str2);
    }

    public List<String> remove(Object obj) {
        this.parsedHeaders = null;
        return super.remove(obj);
    }

    public void clear() {
        this.parsedHeaders = null;
        super.clear();
    }

    public boolean containsKey(Type type) {
        if (this.parsedHeaders == null) {
            parseHeaders();
        }
        return this.parsedHeaders.containsKey(type);
    }

    public List<UpnpHeader> get(Type type) {
        if (this.parsedHeaders == null) {
            parseHeaders();
        }
        return (List) this.parsedHeaders.get(type);
    }

    public void add(Type type, UpnpHeader upnpHeader) {
        super.add(type.getHttpName(), upnpHeader.getString());
        if (this.parsedHeaders != null) {
            addParsedValue(type, upnpHeader);
        }
    }

    public void remove(Type type) {
        super.remove((Object) type.getHttpName());
        Map<Type, List<UpnpHeader>> map = this.parsedHeaders;
        if (map != null) {
            map.remove(type);
        }
    }

    public UpnpHeader[] getAsArray(Type type) {
        if (this.parsedHeaders == null) {
            parseHeaders();
        }
        return this.parsedHeaders.get(type) != null ? (UpnpHeader[]) ((List) this.parsedHeaders.get(type)).toArray(new UpnpHeader[((List) this.parsedHeaders.get(type)).size()]) : new UpnpHeader[0];
    }

    public UpnpHeader getFirstHeader(Type type) {
        if (getAsArray(type).length > 0) {
            return getAsArray(type)[0];
        }
        return null;
    }

    public <H extends UpnpHeader> H getFirstHeader(Type type, Class<H> cls) {
        H[] asArray = getAsArray(type);
        if (asArray.length == 0) {
            return null;
        }
        for (H h : asArray) {
            if (cls.isAssignableFrom(h.getClass())) {
                return h;
            }
        }
        return null;
    }

    public String getFirstHeaderString(Type type) {
        UpnpHeader firstHeader = getFirstHeader(type);
        if (firstHeader != null) {
            return firstHeader.getString();
        }
        return null;
    }

    public void log() {
        if (log.isLoggable(Level.FINE)) {
            log.fine("############################ RAW HEADERS ###########################");
            for (Entry entry : entrySet()) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("=== NAME : ");
                sb.append((String) entry.getKey());
                logger.fine(sb.toString());
                for (String str : (List) entry.getValue()) {
                    Logger logger2 = log;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("VALUE: ");
                    sb2.append(str);
                    logger2.fine(sb2.toString());
                }
            }
            Map<Type, List<UpnpHeader>> map = this.parsedHeaders;
            if (map != null && map.size() > 0) {
                log.fine("########################## PARSED HEADERS ##########################");
                for (Entry entry2 : this.parsedHeaders.entrySet()) {
                    Logger logger3 = log;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("=== TYPE: ");
                    sb3.append(entry2.getKey());
                    logger3.fine(sb3.toString());
                    for (UpnpHeader upnpHeader : (List) entry2.getValue()) {
                        Logger logger4 = log;
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("HEADER: ");
                        sb4.append(upnpHeader);
                        logger4.fine(sb4.toString());
                    }
                }
            }
            log.fine("####################################################################");
        }
    }
}
