package org.fourthline.cling.transport.impl;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.enterprise.inject.Alternative;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.message.gena.IncomingEventRequestMessage;
import org.fourthline.cling.model.meta.StateVariable;
import org.fourthline.cling.model.state.StateVariableValue;
import org.fourthline.cling.transport.spi.GENAEventProcessor;
import org.seamless.xml.XmlPullParserUtils;
import org.xmlpull.v1.XmlPullParser;

@Alternative
public class PullGENAEventProcessorImpl extends GENAEventProcessorImpl {
    private static Logger log = Logger.getLogger(GENAEventProcessor.class.getName());

    public void readBody(IncomingEventRequestMessage incomingEventRequestMessage) throws UnsupportedDataException {
        Logger logger = log;
        StringBuilder sb = new StringBuilder();
        sb.append("Reading body of: ");
        sb.append(incomingEventRequestMessage);
        logger.fine(sb.toString());
        if (log.isLoggable(Level.FINER)) {
            log.finer("===================================== GENA BODY BEGIN ============================================");
            log.finer(incomingEventRequestMessage.getBody() != null ? incomingEventRequestMessage.getBody().toString() : null);
            log.finer("-===================================== GENA BODY END ============================================");
        }
        String messageBody = getMessageBody(incomingEventRequestMessage);
        try {
            readProperties(XmlPullParserUtils.createParser(messageBody), incomingEventRequestMessage);
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Can't transform message payload: ");
            sb2.append(e.getMessage());
            throw new UnsupportedDataException(sb2.toString(), e, messageBody);
        }
    }

    /* access modifiers changed from: protected */
    public void readProperties(XmlPullParser xmlPullParser, IncomingEventRequestMessage incomingEventRequestMessage) throws Exception {
        StateVariable[] stateVariables = incomingEventRequestMessage.getService().getStateVariables();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            if (next == 2 && xmlPullParser.getName().equals("property")) {
                readProperty(xmlPullParser, incomingEventRequestMessage, stateVariables);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void readProperty(XmlPullParser xmlPullParser, IncomingEventRequestMessage incomingEventRequestMessage, StateVariable[] stateVariableArr) throws Exception {
        while (true) {
            int next = xmlPullParser.next();
            if (next == 2) {
                String name = xmlPullParser.getName();
                int length = stateVariableArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    StateVariable stateVariable = stateVariableArr[i];
                    if (stateVariable.getName().equals(name)) {
                        Logger logger = log;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Reading state variable value: ");
                        sb.append(name);
                        logger.fine(sb.toString());
                        incomingEventRequestMessage.getStateVariableValues().add(new StateVariableValue(stateVariable, xmlPullParser.nextText()));
                        break;
                    }
                    i++;
                }
            }
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlPullParser.getName().equals("property")) {
                return;
            }
        }
    }
}
