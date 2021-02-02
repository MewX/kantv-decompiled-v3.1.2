package org.fourthline.cling.support.model.dlna.message;

import java.io.ByteArrayInputStream;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.support.model.dlna.message.header.DLNAHeader;
import org.fourthline.cling.support.model.dlna.message.header.DLNAHeader.Type;

public class DLNAHeaders extends UpnpHeaders {
    private static final Logger log = Logger.getLogger(DLNAHeaders.class.getName());
    protected Map<Type, List<UpnpHeader>> parsedDLNAHeaders;

    public DLNAHeaders() {
    }

    public DLNAHeaders(Map<String, List<String>> map) {
        super(map);
    }

    public DLNAHeaders(ByteArrayInputStream byteArrayInputStream) {
        super(byteArrayInputStream);
    }

    /* access modifiers changed from: protected */
    public void parseHeaders() {
        if (this.parsedHeaders == null) {
            super.parseHeaders();
        }
        this.parsedDLNAHeaders = new LinkedHashMap();
        log.log(Level.FINE, "Parsing all HTTP headers for known UPnP headers: {0}", Integer.valueOf(size()));
        for (Entry entry : entrySet()) {
            if (entry.getKey() != null) {
                Type byHttpName = Type.getByHttpName((String) entry.getKey());
                if (byHttpName == null) {
                    log.log(Level.FINE, "Ignoring non-UPNP HTTP header: {0}", entry.getKey());
                } else {
                    for (String str : (List) entry.getValue()) {
                        DLNAHeader newInstance = DLNAHeader.newInstance(byHttpName, str);
                        if (newInstance == null || newInstance.getValue() == null) {
                            log.log(Level.FINE, "Ignoring known but non-parsable header (value violates the UDA specification?) '{0}': {1}", new Object[]{byHttpName.getHttpName(), str});
                        } else {
                            addParsedValue(byHttpName, newInstance);
                        }
                    }
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void addParsedValue(Type type, UpnpHeader upnpHeader) {
        log.log(Level.FINE, "Adding parsed header: {0}", upnpHeader);
        List list = (List) this.parsedDLNAHeaders.get(type);
        if (list == null) {
            list = new LinkedList();
            this.parsedDLNAHeaders.put(type, list);
        }
        list.add(upnpHeader);
    }

    public List<String> put(String str, List<String> list) {
        this.parsedDLNAHeaders = null;
        return super.put(str, list);
    }

    public void add(String str, String str2) {
        this.parsedDLNAHeaders = null;
        super.add(str, str2);
    }

    public List<String> remove(Object obj) {
        this.parsedDLNAHeaders = null;
        return super.remove(obj);
    }

    public void clear() {
        this.parsedDLNAHeaders = null;
        super.clear();
    }

    public boolean containsKey(Type type) {
        if (this.parsedDLNAHeaders == null) {
            parseHeaders();
        }
        return this.parsedDLNAHeaders.containsKey(type);
    }

    public List<UpnpHeader> get(Type type) {
        if (this.parsedDLNAHeaders == null) {
            parseHeaders();
        }
        return (List) this.parsedDLNAHeaders.get(type);
    }

    public void add(Type type, UpnpHeader upnpHeader) {
        super.add(type.getHttpName(), upnpHeader.getString());
        if (this.parsedDLNAHeaders != null) {
            addParsedValue(type, upnpHeader);
        }
    }

    public void remove(Type type) {
        super.remove((Object) type.getHttpName());
        Map<Type, List<UpnpHeader>> map = this.parsedDLNAHeaders;
        if (map != null) {
            map.remove(type);
        }
    }

    public UpnpHeader[] getAsArray(Type type) {
        if (this.parsedDLNAHeaders == null) {
            parseHeaders();
        }
        return this.parsedDLNAHeaders.get(type) != null ? (UpnpHeader[]) ((List) this.parsedDLNAHeaders.get(type)).toArray(new UpnpHeader[((List) this.parsedDLNAHeaders.get(type)).size()]) : new UpnpHeader[0];
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

    public void log() {
        if (log.isLoggable(Level.FINE)) {
            super.log();
            Map<Type, List<UpnpHeader>> map = this.parsedDLNAHeaders;
            if (map != null && map.size() > 0) {
                log.fine("########################## PARSED DLNA HEADERS ##########################");
                for (Entry entry : this.parsedDLNAHeaders.entrySet()) {
                    log.log(Level.FINE, "=== TYPE: {0}", entry.getKey());
                    for (UpnpHeader log2 : (List) entry.getValue()) {
                        log.log(Level.FINE, "HEADER: {0}", log2);
                    }
                }
            }
            log.fine("####################################################################");
        }
    }
}
