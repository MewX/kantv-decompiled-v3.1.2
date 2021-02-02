package org.fourthline.cling.transport.impl;

import com.google.android.exoplayer2.C;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jetty.http.HttpVersions;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.message.IncomingDatagramMessage;
import org.fourthline.cling.model.message.OutgoingDatagramMessage;
import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.message.UpnpOperation;
import org.fourthline.cling.model.message.UpnpRequest;
import org.fourthline.cling.model.message.UpnpRequest.Method;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.transport.spi.DatagramProcessor;
import org.seamless.http.Headers;

public class DatagramProcessorImpl implements DatagramProcessor {
    private static Logger log = Logger.getLogger(DatagramProcessor.class.getName());

    public IncomingDatagramMessage read(InetAddress inetAddress, DatagramPacket datagramPacket) throws UnsupportedDataException {
        try {
            if (log.isLoggable(Level.FINER)) {
                log.finer("===================================== DATAGRAM BEGIN ============================================");
                log.finer(new String(datagramPacket.getData(), "UTF-8"));
                log.finer("-===================================== DATAGRAM END =============================================");
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(datagramPacket.getData());
            String[] split = Headers.readLine(byteArrayInputStream).split(" ");
            if (split[0].startsWith("HTTP/1.")) {
                return readResponseMessage(inetAddress, datagramPacket, byteArrayInputStream, Integer.valueOf(split[1]).intValue(), split[2], split[0]);
            }
            return readRequestMessage(inetAddress, datagramPacket, byteArrayInputStream, split[0], split[2]);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Could not parse headers: ");
            sb.append(e);
            throw new UnsupportedDataException(sb.toString(), e, datagramPacket.getData());
        }
    }

    public DatagramPacket write(OutgoingDatagramMessage outgoingDatagramMessage) throws UnsupportedDataException {
        StringBuilder sb = new StringBuilder();
        UpnpOperation operation = outgoingDatagramMessage.getOperation();
        String str = "HTTP/1.";
        String str2 = "\r\n";
        if (operation instanceof UpnpRequest) {
            sb.append(((UpnpRequest) operation).getHttpMethodName());
            sb.append(" * ");
            sb.append(str);
            sb.append(operation.getHttpMinorVersion());
            sb.append(str2);
        } else if (operation instanceof UpnpResponse) {
            UpnpResponse upnpResponse = (UpnpResponse) operation;
            sb.append(str);
            sb.append(operation.getHttpMinorVersion());
            String str3 = " ";
            sb.append(str3);
            sb.append(upnpResponse.getStatusCode());
            sb.append(str3);
            sb.append(upnpResponse.getStatusMessage());
            sb.append(str2);
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Message operation is not request or response, don't know how to process: ");
            sb2.append(outgoingDatagramMessage);
            throw new UnsupportedDataException(sb2.toString());
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(sb);
        sb3.append(outgoingDatagramMessage.getHeaders().toString());
        sb3.append(str2);
        if (log.isLoggable(Level.FINER)) {
            Logger logger = log;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("Writing message data for: ");
            sb4.append(outgoingDatagramMessage);
            logger.finer(sb4.toString());
            String str4 = "---------------------------------------------------------------------------------";
            log.finer(str4);
            log.finer(sb3.toString().substring(0, sb3.length() - 2));
            log.finer(str4);
        }
        try {
            byte[] bytes = sb3.toString().getBytes(C.ASCII_NAME);
            Logger logger2 = log;
            StringBuilder sb5 = new StringBuilder();
            sb5.append("Writing new datagram packet with ");
            sb5.append(bytes.length);
            sb5.append(" bytes for: ");
            sb5.append(outgoingDatagramMessage);
            logger2.fine(sb5.toString());
            return new DatagramPacket(bytes, bytes.length, outgoingDatagramMessage.getDestinationAddress(), outgoingDatagramMessage.getDestinationPort());
        } catch (UnsupportedEncodingException e) {
            StringBuilder sb6 = new StringBuilder();
            sb6.append("Can't convert message content to US-ASCII: ");
            sb6.append(e.getMessage());
            throw new UnsupportedDataException(sb6.toString(), e, sb3);
        }
    }

    /* access modifiers changed from: protected */
    public IncomingDatagramMessage readRequestMessage(InetAddress inetAddress, DatagramPacket datagramPacket, ByteArrayInputStream byteArrayInputStream, String str, String str2) throws Exception {
        UpnpHeaders upnpHeaders = new UpnpHeaders(byteArrayInputStream);
        UpnpRequest upnpRequest = new UpnpRequest(Method.getByHttpName(str));
        upnpRequest.setHttpMinorVersion(str2.toUpperCase(Locale.ROOT).equals(HttpVersions.HTTP_1_1) ? 1 : 0);
        IncomingDatagramMessage incomingDatagramMessage = new IncomingDatagramMessage(upnpRequest, datagramPacket.getAddress(), datagramPacket.getPort(), inetAddress);
        incomingDatagramMessage.setHeaders(upnpHeaders);
        return incomingDatagramMessage;
    }

    /* access modifiers changed from: protected */
    public IncomingDatagramMessage readResponseMessage(InetAddress inetAddress, DatagramPacket datagramPacket, ByteArrayInputStream byteArrayInputStream, int i, String str, String str2) throws Exception {
        UpnpHeaders upnpHeaders = new UpnpHeaders(byteArrayInputStream);
        UpnpResponse upnpResponse = new UpnpResponse(i, str);
        upnpResponse.setHttpMinorVersion(str2.toUpperCase(Locale.ROOT).equals(HttpVersions.HTTP_1_1) ? 1 : 0);
        IncomingDatagramMessage incomingDatagramMessage = new IncomingDatagramMessage(upnpResponse, datagramPacket.getAddress(), datagramPacket.getPort(), inetAddress);
        incomingDatagramMessage.setHeaders(upnpHeaders);
        return incomingDatagramMessage;
    }
}
