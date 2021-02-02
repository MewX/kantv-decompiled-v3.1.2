package fleamarket.taobao.com.xservicekit.handler;

public interface MessageResult<T> {
    void error(String str, String str2, Object obj);

    void notImplemented();

    void success(T t);
}
