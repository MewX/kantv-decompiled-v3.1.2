package fleamarket.taobao.com.xservicekit.handler.flutter;

import fleamarket.taobao.com.xservicekit.handler.Message;
import fleamarket.taobao.com.xservicekit.handler.MessageHost;

public class FlutterMessage implements Message {
    private Object mArgs;
    private MessageHost mHost;
    private String mName;

    public FlutterMessage(String str, Object obj, MessageHost messageHost) {
        this.mName = str;
        this.mArgs = obj;
        this.mHost = messageHost;
    }

    public String name() {
        return this.mName;
    }

    public Object arguments() {
        return this.mArgs;
    }

    public MessageHost Host() {
        return this.mHost;
    }
}
