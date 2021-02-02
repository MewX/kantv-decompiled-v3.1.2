package fleamarket.taobao.com.xservicekit.handler;

import java.util.List;
import java.util.Map;

public interface MessageHandler<T> {
    Object getContext();

    List<String> handleMessageNames();

    boolean onMethodCall(String str, Map map, MessageResult<T> messageResult);

    String service();

    void setContext(Object obj);
}
