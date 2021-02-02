package fleamarket.taobao.com.xservicekit.service;

import fleamarket.taobao.com.xservicekit.handler.MessageHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import java.util.Map;

public interface Service {
    void addEventListner(String str, ServiceEventListner serviceEventListner);

    void didCancelEvenStream(Object obj);

    void didRecieveEventSink(EventSink eventSink, Object obj);

    void emitEvent(String str, Map map);

    @Deprecated
    void emitEvent(Map map);

    void end();

    String eventChannelName();

    void invoke(String str, Object obj, String str2, Result result);

    String methodChannelName();

    void registerHandler(MessageHandler messageHandler);

    void removeEventListner(String str, ServiceEventListner serviceEventListner);

    String serviceName();

    void start();
}
