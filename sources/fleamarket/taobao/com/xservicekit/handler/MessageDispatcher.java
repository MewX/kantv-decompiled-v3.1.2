package fleamarket.taobao.com.xservicekit.handler;

public interface MessageDispatcher {
    void dispatch(Message message, MessageResult messageResult);

    Object getContext();

    void registerHandler(MessageHandler messageHandler);

    void removeAll();

    void removeHandler(MessageHandler messageHandler);

    void setContext(Object obj);
}
