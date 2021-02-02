package fleamarket.taobao.com.xservicekit.service;

import fleamarket.taobao.com.xservicekit.handler.MessageDispatcher;
import fleamarket.taobao.com.xservicekit.handler.MessageHandler;
import fleamarket.taobao.com.xservicekit.handler.MessageResult;
import fleamarket.taobao.com.xservicekit.handler.flutter.FlutterMessage;
import fleamarket.taobao.com.xservicekit.handler.flutter.FlutterMessageDispatcher;
import fleamarket.taobao.com.xservicekit.handler.flutter.FlutterMessageHost;
import fleamarket.taobao.com.xservicekit.message.MessengerFacade;
import io.flutter.plugin.common.EventChannel.EventSink;
import io.flutter.plugin.common.EventChannel.StreamHandler;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class ServiceTemplate implements Service, MessageHandler {
    private Object args;
    private EventSink eventSink;
    /* access modifiers changed from: private */
    public MessageDispatcher mDispatcher;
    private Map<String, List<ServiceEventListner>> mEventListners = new HashMap();
    private String mName = "";

    public Object getContext() {
        return null;
    }

    public void setContext(Object obj) {
    }

    public ServiceTemplate(String str) {
        this.mName = str;
        this.mDispatcher = new FlutterMessageDispatcher();
        this.mDispatcher.setContext(this);
        registerHandler(this);
    }

    public String serviceName() {
        return this.mName;
    }

    public String methodChannelName() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.mName);
        sb.append("_method_channel");
        return sb.toString();
    }

    public String eventChannelName() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.mName);
        sb.append("_event_channel");
        return sb.toString();
    }

    public void didRecieveEventSink(EventSink eventSink2, Object obj) {
        this.eventSink = eventSink2;
        this.args = obj;
    }

    public void didCancelEvenStream(Object obj) {
        this.args = null;
        this.eventSink = null;
    }

    public void invoke(String str, Object obj, String str2, Result result) {
        MessengerFacade.sharedInstance().sendMessage(str, obj, str2, result);
    }

    public void registerHandler(MessageHandler messageHandler) {
        this.mDispatcher.registerHandler(messageHandler);
    }

    public void start() {
        MessengerFacade.sharedInstance().registerMethodChannel(methodChannelName());
        MessengerFacade.sharedInstance().registerEventChannel(eventChannelName());
        MessengerFacade.sharedInstance().setMethodCallHandler(new MethodCallHandler() {
            public void onMethodCall(MethodCall methodCall, final Result result) {
                ServiceTemplate.this.mDispatcher.dispatch(new FlutterMessage(methodCall.method, methodCall.arguments, new FlutterMessageHost(ServiceTemplate.this.methodChannelName())), new MessageResult() {
                    public void success(Object obj) {
                        result.success(obj);
                    }

                    public void error(String str, String str2, Object obj) {
                        result.error(str, str2, obj);
                    }

                    public void notImplemented() {
                        result.notImplemented();
                    }
                });
            }
        }, methodChannelName());
        MessengerFacade.sharedInstance().setStreamHandler(new StreamHandler() {
            public void onCancel(Object obj) {
            }

            public void onListen(Object obj, final EventSink eventSink) {
                ServiceTemplate.this.didRecieveEventSink(new EventSink() {
                    public void success(Object obj) {
                        eventSink.success(obj);
                    }

                    public void error(String str, String str2, Object obj) {
                        eventSink.error(str, str2, obj);
                    }

                    public void endOfStream() {
                        eventSink.endOfStream();
                    }
                }, obj);
            }
        }, eventChannelName());
    }

    public void end() {
        MessengerFacade.sharedInstance().setMethodCallHandler(null, methodChannelName());
        MessengerFacade.sharedInstance().setStreamHandler(null, eventChannelName());
    }

    public void emitEvent(Map map) {
        EventSink eventSink2 = this.eventSink;
        if (eventSink2 != null) {
            eventSink2.success(checkType(map));
        }
    }

    private Map checkType(Map map) {
        HashMap hashMap = new HashMap();
        Boolean valueOf = Boolean.valueOf(true);
        hashMap.put("Integer", valueOf);
        hashMap.put("Double", valueOf);
        hashMap.put("Boolean", valueOf);
        hashMap.put("String", valueOf);
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            if (!(entry == null || entry.getKey() == null || entry.getValue() == null)) {
                entry.getValue().getClass().getSimpleName();
                if (!(entry.getValue() instanceof Map) && !(entry.getValue() instanceof List) && !((Boolean) hashMap.get(entry.getValue().getClass().getSimpleName())).booleanValue()) {
                    it.remove();
                }
            }
        }
        return map;
    }

    public boolean onMethodCall(String str, Map map, MessageResult messageResult) {
        onEvent((String) map.get("event"), (Map) map.get("params"));
        return true;
    }

    public List<String> handleMessageNames() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("__event__");
        return arrayList;
    }

    public String service() {
        return serviceName();
    }

    private void onEvent(String str, Map map) {
        if (str != null) {
            List<ServiceEventListner> list = (List) this.mEventListners.get(str);
            if (list != null) {
                for (ServiceEventListner onEvent : list) {
                    onEvent.onEvent(str, map);
                }
            }
        }
    }

    public void emitEvent(String str, Map map) {
        if (str != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("event", str);
            if (map != null) {
                hashMap.put("params", map);
            }
            invoke("__event__", hashMap, methodChannelName(), new Result() {
                public void error(String str, String str2, Object obj) {
                }

                public void notImplemented() {
                }

                public void success(Object obj) {
                }
            });
        }
    }

    public void addEventListner(String str, ServiceEventListner serviceEventListner) {
        if (str != null && serviceEventListner != null) {
            List list = (List) this.mEventListners.get(str);
            if (list == null) {
                list = new ArrayList();
                this.mEventListners.put(str, list);
            }
            list.add(serviceEventListner);
        }
    }

    public void removeEventListner(String str, ServiceEventListner serviceEventListner) {
        if (str != null && serviceEventListner != null) {
            List list = (List) this.mEventListners.get(str);
            if (list != null) {
                list.remove(serviceEventListner);
            }
        }
    }
}
