package org.fourthline.cling.transport.impl;

import java.util.logging.Logger;
import javax.enterprise.inject.Alternative;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.control.ActionRequestMessage;
import org.fourthline.cling.model.message.control.ActionResponseMessage;
import org.fourthline.cling.transport.spi.SOAPActionProcessor;
import org.seamless.xml.XmlPullParserUtils;

@Alternative
public class RecoveringSOAPActionProcessorImpl extends PullSOAPActionProcessorImpl {
    private static Logger log = Logger.getLogger(SOAPActionProcessor.class.getName());

    public void readBody(ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) throws UnsupportedDataException {
        try {
            super.readBody(actionRequestMessage, actionInvocation);
        } catch (UnsupportedDataException e) {
            if (actionRequestMessage.isBodyNonEmptyString()) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Trying to recover from invalid SOAP XML request: ");
                sb.append(e);
                logger.warning(sb.toString());
                try {
                    actionRequestMessage.setBody(XmlPullParserUtils.fixXMLEntities(getMessageBody(actionRequestMessage)));
                    super.readBody(actionRequestMessage, actionInvocation);
                } catch (UnsupportedDataException e2) {
                    handleInvalidMessage(actionInvocation, e, e2);
                }
            } else {
                throw e;
            }
        }
    }

    public void readBody(ActionResponseMessage actionResponseMessage, ActionInvocation actionInvocation) throws UnsupportedDataException {
        try {
            super.readBody(actionResponseMessage, actionInvocation);
        } catch (UnsupportedDataException e) {
            if (actionResponseMessage.isBodyNonEmptyString()) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Trying to recover from invalid SOAP XML response: ");
                sb.append(e);
                logger.warning(sb.toString());
                String fixXMLEntities = XmlPullParserUtils.fixXMLEntities(getMessageBody(actionResponseMessage));
                if (fixXMLEntities.endsWith("</s:Envelop")) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(fixXMLEntities);
                    sb2.append("e>");
                    fixXMLEntities = sb2.toString();
                }
                try {
                    actionResponseMessage.setBody(fixXMLEntities);
                    super.readBody(actionResponseMessage, actionInvocation);
                } catch (UnsupportedDataException e2) {
                    handleInvalidMessage(actionInvocation, e, e2);
                }
            } else {
                throw e;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void handleInvalidMessage(ActionInvocation actionInvocation, UnsupportedDataException unsupportedDataException, UnsupportedDataException unsupportedDataException2) throws UnsupportedDataException {
        throw unsupportedDataException;
    }
}
