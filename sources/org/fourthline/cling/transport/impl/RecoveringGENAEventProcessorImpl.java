package org.fourthline.cling.transport.impl;

import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.enterprise.inject.Alternative;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.XMLUtil;
import org.fourthline.cling.model.message.gena.IncomingEventRequestMessage;
import org.fourthline.cling.transport.spi.GENAEventProcessor;
import org.seamless.xml.XmlPullParserUtils;

@Alternative
public class RecoveringGENAEventProcessorImpl extends PullGENAEventProcessorImpl {
    private static Logger log = Logger.getLogger(GENAEventProcessor.class.getName());

    public void readBody(IncomingEventRequestMessage incomingEventRequestMessage) throws UnsupportedDataException {
        try {
            super.readBody(incomingEventRequestMessage);
        } catch (UnsupportedDataException e) {
            if (incomingEventRequestMessage.isBodyNonEmptyString()) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Trying to recover from invalid GENA XML event: ");
                sb.append(e);
                logger.warning(sb.toString());
                incomingEventRequestMessage.getStateVariableValues().clear();
                try {
                    incomingEventRequestMessage.setBody(fixXMLEncodedLastChange(XmlPullParserUtils.fixXMLEntities(getMessageBody(incomingEventRequestMessage))));
                    super.readBody(incomingEventRequestMessage);
                } catch (UnsupportedDataException unused) {
                    if (!incomingEventRequestMessage.getStateVariableValues().isEmpty()) {
                        log.warning("Partial read of GENA event properties (probably due to truncated XML)");
                        return;
                    }
                    throw e;
                }
            } else {
                throw e;
            }
        }
    }

    /* access modifiers changed from: protected */
    public String fixXMLEncodedLastChange(String str) {
        Matcher matcher = Pattern.compile("<LastChange>(.*)</LastChange>", 32).matcher(str);
        if (matcher.find() && matcher.groupCount() == 1) {
            String group = matcher.group(1);
            if (XmlPullParserUtils.isNullOrEmpty(group)) {
                return str;
            }
            String trim = group.trim();
            String encodeText = trim.charAt(0) == '<' ? XMLUtil.encodeText(trim) : trim;
            if (encodeText.equals(trim)) {
                return str;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("<?xml version=\"1.0\" encoding=\"utf-8\"?><e:propertyset xmlns:e=\"urn:schemas-upnp-org:event-1-0\"><e:property><LastChange>");
            sb.append(encodeText);
            sb.append("</LastChange>");
            sb.append("</e:property>");
            sb.append("</e:propertyset>");
            str = sb.toString();
        }
        return str;
    }
}
