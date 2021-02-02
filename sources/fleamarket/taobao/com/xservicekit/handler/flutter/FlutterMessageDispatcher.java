package fleamarket.taobao.com.xservicekit.handler.flutter;

import fleamarket.taobao.com.xservicekit.handler.Message;
import fleamarket.taobao.com.xservicekit.handler.MessageDispatcher;
import fleamarket.taobao.com.xservicekit.handler.MessageHandler;
import fleamarket.taobao.com.xservicekit.handler.MessageResult;
import java.util.HashMap;
import java.util.Map;

public class FlutterMessageDispatcher implements MessageDispatcher {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Map<String, MessageHandler> _handlers = new HashMap();
    private Object mContenxt;

    public void dispatch(Message message, MessageResult messageResult) {
        if (message != null && messageResult != null) {
            MessageHandler messageHandler = (MessageHandler) this._handlers.get(message.name());
            if (messageHandler != null) {
                messageHandler.onMethodCall(message.name(), (Map) message.arguments(), messageResult);
            }
        }
    }

    public void registerHandler(MessageHandler messageHandler) {
        if (messageHandler != null) {
            messageHandler.setContext(getContext());
            for (String str : messageHandler.handleMessageNames()) {
                if (this._handlers.get(str) == null) {
                    this._handlers.put(str, messageHandler);
                }
            }
        }
    }

    public void removeHandler(MessageHandler messageHandler) {
        if (messageHandler != null) {
            for (String remove : messageHandler.handleMessageNames()) {
                this._handlers.remove(remove);
            }
        }
    }

    public void removeAll() {
        this._handlers.clear();
    }

    public Object getContext() {
        return this.mContenxt;
    }

    public void setContext(Object obj) {
        this.mContenxt = obj;
    }
}
