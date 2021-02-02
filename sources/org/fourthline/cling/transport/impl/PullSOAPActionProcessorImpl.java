package org.fourthline.cling.transport.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.logging.Logger;
import javax.enterprise.inject.Alternative;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.action.ActionArgumentValue;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.control.ActionRequestMessage;
import org.fourthline.cling.model.message.control.ActionResponseMessage;
import org.fourthline.cling.model.meta.ActionArgument;
import org.fourthline.cling.model.types.ErrorCode;
import org.fourthline.cling.transport.spi.SOAPActionProcessor;
import org.seamless.xml.XmlPullParserUtils;
import org.xmlpull.v1.XmlPullParser;

@Alternative
public class PullSOAPActionProcessorImpl extends SOAPActionProcessorImpl {
    protected static Logger log = Logger.getLogger(SOAPActionProcessor.class.getName());

    public void readBody(ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) throws UnsupportedDataException {
        String messageBody = getMessageBody(actionRequestMessage);
        try {
            readBodyRequest(XmlPullParserUtils.createParser(messageBody), actionRequestMessage, actionInvocation);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Can't transform message payload: ");
            sb.append(e);
            throw new UnsupportedDataException(sb.toString(), e, messageBody);
        }
    }

    public void readBody(ActionResponseMessage actionResponseMessage, ActionInvocation actionInvocation) throws UnsupportedDataException {
        String messageBody = getMessageBody(actionResponseMessage);
        try {
            XmlPullParser createParser = XmlPullParserUtils.createParser(messageBody);
            readBodyElement(createParser);
            readBodyResponse(createParser, actionInvocation);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Can't transform message payload: ");
            sb.append(e);
            throw new UnsupportedDataException(sb.toString(), e, messageBody);
        }
    }

    /* access modifiers changed from: protected */
    public void readBodyElement(XmlPullParser xmlPullParser) throws Exception {
        XmlPullParserUtils.searchTag(xmlPullParser, "Body");
    }

    /* access modifiers changed from: protected */
    public void readBodyRequest(XmlPullParser xmlPullParser, ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) throws Exception {
        XmlPullParserUtils.searchTag(xmlPullParser, actionInvocation.getAction().getName());
        readActionInputArguments(xmlPullParser, actionInvocation);
    }

    /* access modifiers changed from: protected */
    public void readBodyResponse(XmlPullParser xmlPullParser, ActionInvocation actionInvocation) throws Exception {
        String str;
        while (true) {
            int next = xmlPullParser.next();
            str = "Response";
            if (next == 2) {
                if (xmlPullParser.getName().equals("Fault")) {
                    actionInvocation.setFailure(readFaultElement(xmlPullParser));
                    return;
                }
                String name = xmlPullParser.getName();
                StringBuilder sb = new StringBuilder();
                sb.append(actionInvocation.getAction().getName());
                sb.append(str);
                if (name.equals(sb.toString())) {
                    readActionOutputArguments(xmlPullParser, actionInvocation);
                    return;
                }
            }
            if (next == 1 || (next == 3 && xmlPullParser.getName().equals("Body"))) {
                ErrorCode errorCode = ErrorCode.ACTION_FAILED;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(actionInvocation.getAction().getName());
                sb2.append(str);
            }
        }
        ErrorCode errorCode2 = ErrorCode.ACTION_FAILED;
        StringBuilder sb22 = new StringBuilder();
        sb22.append(actionInvocation.getAction().getName());
        sb22.append(str);
        throw new ActionException(errorCode2, String.format("Action SOAP response do not contain %s element", new Object[]{sb22.toString()}));
    }

    /* access modifiers changed from: protected */
    public void readActionInputArguments(XmlPullParser xmlPullParser, ActionInvocation actionInvocation) throws Exception {
        actionInvocation.setInput((ActionArgumentValue<S>[]) readArgumentValues(xmlPullParser, actionInvocation.getAction().getInputArguments()));
    }

    /* access modifiers changed from: protected */
    public void readActionOutputArguments(XmlPullParser xmlPullParser, ActionInvocation actionInvocation) throws Exception {
        actionInvocation.setOutput((ActionArgumentValue<S>[]) readArgumentValues(xmlPullParser, actionInvocation.getAction().getOutputArguments()));
    }

    /* access modifiers changed from: protected */
    public Map<String, String> getMatchingNodes(XmlPullParser xmlPullParser, ActionArgument[] actionArgumentArr) throws Exception {
        ArrayList arrayList = new ArrayList();
        for (ActionArgument actionArgument : actionArgumentArr) {
            arrayList.add(actionArgument.getName().toUpperCase(Locale.ROOT));
            for (String upperCase : Arrays.asList(actionArgument.getAliases())) {
                arrayList.add(upperCase.toUpperCase(Locale.ROOT));
            }
        }
        HashMap hashMap = new HashMap();
        String name = xmlPullParser.getName();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 2 && arrayList.contains(xmlPullParser.getName().toUpperCase(Locale.ROOT))) {
                hashMap.put(xmlPullParser.getName(), xmlPullParser.nextText());
            }
            if (next == 1 || (next == 3 && xmlPullParser.getName().equals(name))) {
            }
        }
        if (hashMap.size() >= actionArgumentArr.length) {
            return hashMap;
        }
        ErrorCode errorCode = ErrorCode.ARGUMENT_VALUE_INVALID;
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid number of input or output arguments in XML message, expected ");
        sb.append(actionArgumentArr.length);
        sb.append(" but found ");
        sb.append(hashMap.size());
        throw new ActionException(errorCode, sb.toString());
    }

    /* access modifiers changed from: protected */
    public ActionArgumentValue[] readArgumentValues(XmlPullParser xmlPullParser, ActionArgument[] actionArgumentArr) throws Exception {
        Map matchingNodes = getMatchingNodes(xmlPullParser, actionArgumentArr);
        ActionArgumentValue[] actionArgumentValueArr = new ActionArgumentValue[actionArgumentArr.length];
        int i = 0;
        while (i < actionArgumentArr.length) {
            ActionArgument actionArgument = actionArgumentArr[i];
            String findActionArgumentValue = findActionArgumentValue(matchingNodes, actionArgument);
            if (findActionArgumentValue != null) {
                Logger logger = log;
                StringBuilder sb = new StringBuilder();
                sb.append("Reading action argument: ");
                sb.append(actionArgument.getName());
                logger.fine(sb.toString());
                actionArgumentValueArr[i] = createValue(actionArgument, findActionArgumentValue);
                i++;
            } else {
                ErrorCode errorCode = ErrorCode.ARGUMENT_VALUE_INVALID;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Could not find argument '");
                sb2.append(actionArgument.getName());
                sb2.append("' node");
                throw new ActionException(errorCode, sb2.toString());
            }
        }
        return actionArgumentValueArr;
    }

    /* access modifiers changed from: protected */
    public String findActionArgumentValue(Map<String, String> map, ActionArgument actionArgument) {
        for (Entry entry : map.entrySet()) {
            if (actionArgument.isNameOrAlias((String) entry.getKey())) {
                return (String) entry.getValue();
            }
        }
        return null;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x003d A[SYNTHETIC, Splitter:B:16:0x003d] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public org.fourthline.cling.model.action.ActionException readFaultElement(org.xmlpull.v1.XmlPullParser r7) throws java.lang.Exception {
        /*
            r6 = this;
            java.lang.String r0 = "UPnPError"
            org.seamless.xml.XmlPullParserUtils.searchTag(r7, r0)
            r1 = 0
            r2 = r1
        L_0x0007:
            int r3 = r7.next()
            r4 = 2
            if (r3 != r4) goto L_0x002b
            java.lang.String r4 = r7.getName()
            java.lang.String r5 = "errorCode"
            boolean r5 = r4.equals(r5)
            if (r5 == 0) goto L_0x001f
            java.lang.String r1 = r7.nextText()
            goto L_0x002b
        L_0x001f:
            java.lang.String r5 = "errorDescription"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L_0x002b
            java.lang.String r2 = r7.nextText()
        L_0x002b:
            r4 = 1
            if (r3 == r4) goto L_0x003b
            r4 = 3
            if (r3 != r4) goto L_0x0007
            java.lang.String r3 = r7.getName()
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L_0x0007
        L_0x003b:
            if (r1 == 0) goto L_0x009c
            java.lang.Integer r7 = java.lang.Integer.valueOf(r1)     // Catch:{ NumberFormatException -> 0x0094 }
            int r7 = r7.intValue()     // Catch:{ NumberFormatException -> 0x0094 }
            org.fourthline.cling.model.types.ErrorCode r0 = org.fourthline.cling.model.types.ErrorCode.getByCode(r7)     // Catch:{ NumberFormatException -> 0x0094 }
            java.lang.String r1 = " - "
            java.lang.String r3 = "Reading fault element: "
            if (r0 == 0) goto L_0x0074
            java.util.logging.Logger r7 = log     // Catch:{ NumberFormatException -> 0x0094 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ NumberFormatException -> 0x0094 }
            r4.<init>()     // Catch:{ NumberFormatException -> 0x0094 }
            r4.append(r3)     // Catch:{ NumberFormatException -> 0x0094 }
            int r3 = r0.getCode()     // Catch:{ NumberFormatException -> 0x0094 }
            r4.append(r3)     // Catch:{ NumberFormatException -> 0x0094 }
            r4.append(r1)     // Catch:{ NumberFormatException -> 0x0094 }
            r4.append(r2)     // Catch:{ NumberFormatException -> 0x0094 }
            java.lang.String r1 = r4.toString()     // Catch:{ NumberFormatException -> 0x0094 }
            r7.fine(r1)     // Catch:{ NumberFormatException -> 0x0094 }
            org.fourthline.cling.model.action.ActionException r7 = new org.fourthline.cling.model.action.ActionException     // Catch:{ NumberFormatException -> 0x0094 }
            r1 = 0
            r7.<init>(r0, r2, r1)     // Catch:{ NumberFormatException -> 0x0094 }
            return r7
        L_0x0074:
            java.util.logging.Logger r0 = log     // Catch:{ NumberFormatException -> 0x0094 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ NumberFormatException -> 0x0094 }
            r4.<init>()     // Catch:{ NumberFormatException -> 0x0094 }
            r4.append(r3)     // Catch:{ NumberFormatException -> 0x0094 }
            r4.append(r7)     // Catch:{ NumberFormatException -> 0x0094 }
            r4.append(r1)     // Catch:{ NumberFormatException -> 0x0094 }
            r4.append(r2)     // Catch:{ NumberFormatException -> 0x0094 }
            java.lang.String r1 = r4.toString()     // Catch:{ NumberFormatException -> 0x0094 }
            r0.fine(r1)     // Catch:{ NumberFormatException -> 0x0094 }
            org.fourthline.cling.model.action.ActionException r0 = new org.fourthline.cling.model.action.ActionException     // Catch:{ NumberFormatException -> 0x0094 }
            r0.<init>(r7, r2)     // Catch:{ NumberFormatException -> 0x0094 }
            return r0
        L_0x0094:
            java.lang.RuntimeException r7 = new java.lang.RuntimeException
            java.lang.String r0 = "Error code was not a number"
            r7.<init>(r0)
            throw r7
        L_0x009c:
            java.lang.RuntimeException r7 = new java.lang.RuntimeException
            java.lang.String r0 = "Received fault element but no error code"
            r7.<init>(r0)
            goto L_0x00a5
        L_0x00a4:
            throw r7
        L_0x00a5:
            goto L_0x00a4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.transport.impl.PullSOAPActionProcessorImpl.readFaultElement(org.xmlpull.v1.XmlPullParser):org.fourthline.cling.model.action.ActionException");
    }
}
