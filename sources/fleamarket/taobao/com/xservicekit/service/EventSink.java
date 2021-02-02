package fleamarket.taobao.com.xservicekit.service;

public interface EventSink {
    void endOfStream();

    void error(String str, String str2, Object obj);

    void success(Object obj);
}
