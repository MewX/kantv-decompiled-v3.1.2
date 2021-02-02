package fleamarket.taobao.com.xservicekit.handler;

public interface Message {
    MessageHost Host();

    Object arguments();

    String name();
}
