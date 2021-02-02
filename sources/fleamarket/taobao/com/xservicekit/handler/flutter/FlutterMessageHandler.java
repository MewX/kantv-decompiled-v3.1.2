package fleamarket.taobao.com.xservicekit.handler.flutter;

import fleamarket.taobao.com.xservicekit.handler.MessageHandler;
import fleamarket.taobao.com.xservicekit.handler.MessageResult;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class FlutterMessageHandler implements MessageHandler {
    private Object mContext;

    public boolean onMethodCall(String str, Map map, MessageResult messageResult) {
        return false;
    }

    public String service() {
        return "root";
    }

    public Object getContext() {
        return this.mContext;
    }

    public void setContext(Object obj) {
        this.mContext = obj;
    }

    public List<String> handleMessageNames() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("");
        return arrayList;
    }
}
