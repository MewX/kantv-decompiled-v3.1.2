package org.fourthline.cling.support.model;

import java.util.logging.Logger;

public enum Protocol {
    ALL("*"),
    HTTP_GET("http-get"),
    RTSP_RTP_UDP("rtsp-rtp-udp"),
    INTERNAL("internal"),
    IEC61883("iec61883"),
    XBMC_GET("xbmc-get"),
    OTHER("other");
    
    private static final Logger LOG = null;
    private String protocolString;

    static {
        LOG = Logger.getLogger(Protocol.class.getName());
    }

    private Protocol(String str) {
        this.protocolString = str;
    }

    public String toString() {
        return this.protocolString;
    }

    public static Protocol value(String str) {
        Protocol[] values;
        for (Protocol protocol : values()) {
            if (protocol.toString().equals(str)) {
                return protocol;
            }
        }
        Logger logger = LOG;
        StringBuilder sb = new StringBuilder();
        sb.append("Unsupported OTHER protocol string: ");
        sb.append(str);
        logger.info(sb.toString());
        return OTHER;
    }
}
