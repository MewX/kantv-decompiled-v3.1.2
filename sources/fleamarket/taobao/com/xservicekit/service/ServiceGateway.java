package fleamarket.taobao.com.xservicekit.service;

import fleamarket.taobao.com.xservicekit.handler.MessageHandler;
import java.util.HashMap;
import java.util.Map;

public class ServiceGateway {
    private static final ServiceGateway instance = new ServiceGateway();
    private Map<String, Service> mServices = new HashMap();

    public static ServiceGateway sharedInstance() {
        return instance;
    }

    public void addService(Service service) {
        if (service != null) {
            this.mServices.put(service.serviceName(), service);
            service.start();
        }
    }

    public void registerHandler(MessageHandler messageHandler) {
        ((Service) this.mServices.get(messageHandler.service())).registerHandler(messageHandler);
    }

    public void removeService(Service service) {
        if (service != null) {
            this.mServices.remove(service.serviceName());
            service.end();
        }
    }
}
