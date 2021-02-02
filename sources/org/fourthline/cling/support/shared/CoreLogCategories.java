package org.fourthline.cling.support.shared;

import java.util.ArrayList;
import java.util.logging.Level;
import org.fourthline.cling.binding.xml.DeviceDescriptorBinder;
import org.fourthline.cling.binding.xml.ServiceDescriptorBinder;
import org.fourthline.cling.model.DefaultServiceManager;
import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.meta.LocalService;
import org.fourthline.cling.protocol.ProtocolFactory;
import org.fourthline.cling.protocol.RetrieveRemoteDescriptors;
import org.fourthline.cling.protocol.sync.ReceivingAction;
import org.fourthline.cling.protocol.sync.ReceivingEvent;
import org.fourthline.cling.protocol.sync.ReceivingRetrieval;
import org.fourthline.cling.protocol.sync.ReceivingSubscribe;
import org.fourthline.cling.protocol.sync.ReceivingUnsubscribe;
import org.fourthline.cling.protocol.sync.SendingAction;
import org.fourthline.cling.protocol.sync.SendingEvent;
import org.fourthline.cling.protocol.sync.SendingRenewal;
import org.fourthline.cling.protocol.sync.SendingSubscribe;
import org.fourthline.cling.protocol.sync.SendingUnsubscribe;
import org.fourthline.cling.registry.Registry;
import org.fourthline.cling.transport.Router;
import org.fourthline.cling.transport.spi.DatagramIO;
import org.fourthline.cling.transport.spi.DatagramProcessor;
import org.fourthline.cling.transport.spi.GENAEventProcessor;
import org.fourthline.cling.transport.spi.MulticastReceiver;
import org.fourthline.cling.transport.spi.SOAPActionProcessor;
import org.fourthline.cling.transport.spi.StreamClient;
import org.fourthline.cling.transport.spi.StreamServer;
import org.fourthline.cling.transport.spi.UpnpStream;
import org.seamless.swing.logging.LogCategory;
import org.seamless.swing.logging.LogCategory.Group;
import org.seamless.swing.logging.LogCategory.LoggerLevel;

public class CoreLogCategories extends ArrayList<LogCategory> {
    public CoreLogCategories() {
        super(10);
        add(new LogCategory("Network", new Group[]{new Group("UDP communication", new LoggerLevel[]{new LoggerLevel(DatagramIO.class.getName(), Level.FINE), new LoggerLevel(MulticastReceiver.class.getName(), Level.FINE)}), new Group("UDP datagram processing and content", new LoggerLevel[]{new LoggerLevel(DatagramProcessor.class.getName(), Level.FINER)}), new Group("TCP communication", new LoggerLevel[]{new LoggerLevel(UpnpStream.class.getName(), Level.FINER), new LoggerLevel(StreamServer.class.getName(), Level.FINE), new LoggerLevel(StreamClient.class.getName(), Level.FINE)}), new Group("SOAP action message processing and content", new LoggerLevel[]{new LoggerLevel(SOAPActionProcessor.class.getName(), Level.FINER)}), new Group("GENA event message processing and content", new LoggerLevel[]{new LoggerLevel(GENAEventProcessor.class.getName(), Level.FINER)}), new Group("HTTP header processing", new LoggerLevel[]{new LoggerLevel(UpnpHeaders.class.getName(), Level.FINER)})}));
        add(new LogCategory("UPnP Protocol", new Group[]{new Group("Discovery (Notification & Search)", new LoggerLevel[]{new LoggerLevel(ProtocolFactory.class.getName(), Level.FINER), new LoggerLevel("org.fourthline.cling.protocol.async", Level.FINER)}), new Group("Description", new LoggerLevel[]{new LoggerLevel(ProtocolFactory.class.getName(), Level.FINER), new LoggerLevel(RetrieveRemoteDescriptors.class.getName(), Level.FINE), new LoggerLevel(ReceivingRetrieval.class.getName(), Level.FINE), new LoggerLevel(DeviceDescriptorBinder.class.getName(), Level.FINE), new LoggerLevel(ServiceDescriptorBinder.class.getName(), Level.FINE)}), new Group("Control", new LoggerLevel[]{new LoggerLevel(ProtocolFactory.class.getName(), Level.FINER), new LoggerLevel(ReceivingAction.class.getName(), Level.FINER), new LoggerLevel(SendingAction.class.getName(), Level.FINER)}), new Group("GENA ", new LoggerLevel[]{new LoggerLevel("org.fourthline.cling.model.gena", Level.FINER), new LoggerLevel(ProtocolFactory.class.getName(), Level.FINER), new LoggerLevel(ReceivingEvent.class.getName(), Level.FINER), new LoggerLevel(ReceivingSubscribe.class.getName(), Level.FINER), new LoggerLevel(ReceivingUnsubscribe.class.getName(), Level.FINER), new LoggerLevel(SendingEvent.class.getName(), Level.FINER), new LoggerLevel(SendingSubscribe.class.getName(), Level.FINER), new LoggerLevel(SendingUnsubscribe.class.getName(), Level.FINER), new LoggerLevel(SendingRenewal.class.getName(), Level.FINER)})}));
        add(new LogCategory("Core", new Group[]{new Group("Router", new LoggerLevel[]{new LoggerLevel(Router.class.getName(), Level.FINER)}), new Group("Registry", new LoggerLevel[]{new LoggerLevel(Registry.class.getName(), Level.FINER)}), new Group("Local service binding & invocation", new LoggerLevel[]{new LoggerLevel("org.fourthline.cling.binding.annotations", Level.FINER), new LoggerLevel(LocalService.class.getName(), Level.FINER), new LoggerLevel("org.fourthline.cling.model.action", Level.FINER), new LoggerLevel("org.fourthline.cling.model.state", Level.FINER), new LoggerLevel(DefaultServiceManager.class.getName(), Level.FINER)}), new Group("Control Point interaction", new LoggerLevel[]{new LoggerLevel("org.fourthline.cling.controlpoint", Level.FINER)})}));
    }
}
