package fleamarket.taobao.com.xservicekit.message;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.EventChannel.StreamHandler;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class MessengerFacade {
    private static MessengerFacade instance = new MessengerFacade();
    private Map<String, EventChannel> mEventChannels = new HashMap();
    private Map<String, MethodChannel> mMethodChannels = new HashMap();
    private Map<String, String> mPendingEventChannels = new HashMap();
    private Map<String, StreamHandler> mPendingEventStreamHandlers = new HashMap();
    private Map<String, String> mPendingMethodChannels = new HashMap();
    private Map<String, MethodCallHandler> mPendingMethodHandlers = new HashMap();
    private BinaryMessenger messenger;

    public static MessengerFacade sharedInstance() {
        return instance;
    }

    private MessengerFacade() {
    }

    public void setMessenger(BinaryMessenger binaryMessenger) {
        this.messenger = binaryMessenger;
        if (this.messenger != null) {
            loadPendings();
        }
    }

    public BinaryMessenger getMessenger() {
        return this.messenger;
    }

    private void loadPendings() {
        for (String str : this.mPendingMethodChannels.keySet()) {
            registerMethodChannel(str);
            setMethodCallHandler((MethodCallHandler) this.mPendingMethodHandlers.get(str), str);
        }
        for (String str2 : this.mPendingEventChannels.keySet()) {
            registerEventChannel(str2);
            setStreamHandler((StreamHandler) this.mPendingEventStreamHandlers.get(str2), str2);
        }
        this.mPendingMethodChannels.clear();
        this.mPendingEventChannels.clear();
        this.mPendingEventStreamHandlers.clear();
        this.mPendingMethodHandlers.clear();
    }

    private MethodChannel methodChannelForName(String str) {
        if (str == null) {
            return null;
        }
        return (MethodChannel) this.mMethodChannels.get(str);
    }

    private EventChannel eventChannelForName(String str) {
        if (str == null) {
            return null;
        }
        return (EventChannel) this.mEventChannels.get(str);
    }

    public void sendMessage(String str, Object obj, String str2, Result result) {
        if (str != null) {
            MethodChannel methodChannelForName = methodChannelForName(str2);
            if (methodChannelForName != null) {
                methodChannelForName.invokeMethod(str, obj, result);
            }
        }
    }

    public void setMethodCallHandler(MethodCallHandler methodCallHandler, String str) {
        if (methodCallHandler == null && str != null) {
            this.mMethodChannels.remove(str);
        } else if (str != null) {
            MethodChannel methodChannelForName = methodChannelForName(str);
            if (methodChannelForName != null) {
                methodChannelForName.setMethodCallHandler(methodCallHandler);
            } else {
                this.mPendingMethodHandlers.put(str, methodCallHandler);
            }
        }
    }

    public void setStreamHandler(StreamHandler streamHandler, String str) {
        if (streamHandler == null && str != null) {
            this.mEventChannels.remove(str);
        } else if (str != null) {
            EventChannel eventChannelForName = eventChannelForName(str);
            if (eventChannelForName != null) {
                eventChannelForName.setStreamHandler(streamHandler);
            } else {
                this.mPendingEventStreamHandlers.put(str, streamHandler);
            }
        }
    }

    public void registerMethodChannel(String str) {
        if (str != null) {
            if (this.messenger == null) {
                this.mPendingMethodChannels.put(str, str);
            } else if (((MethodChannel) this.mMethodChannels.get(str)) == null) {
                this.mMethodChannels.put(str, new MethodChannel(this.messenger, str));
            }
        }
    }

    public void registerEventChannel(String str) {
        if (this.messenger == null) {
            this.mPendingEventChannels.put(str, str);
        } else if (((EventChannel) this.mEventChannels.get(str)) == null) {
            this.mEventChannels.put(str, new EventChannel(this.messenger, str));
        }
    }

    public Collection<MethodChannel> getAllMethodChannels() {
        return this.mMethodChannels.values();
    }

    public Collection<EventChannel> getAllEventChannels() {
        return this.mEventChannels.values();
    }
}
