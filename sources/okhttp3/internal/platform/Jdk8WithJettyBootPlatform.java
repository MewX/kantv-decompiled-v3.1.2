package okhttp3.internal.platform;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
import okhttp3.Protocol;
import okhttp3.internal.Util;

class Jdk8WithJettyBootPlatform extends Platform {
    private final Class<?> clientProviderClass;
    private final Method getMethod;
    private final Method putMethod;
    private final Method removeMethod;
    private final Class<?> serverProviderClass;

    private static class AlpnProvider implements InvocationHandler {
        private final List<String> protocols;
        String selected;
        boolean unsupported;

        AlpnProvider(List<String> list) {
            this.protocols = list;
        }

        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<String> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = Util.EMPTY_STRING_ARRAY;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.valueOf(true);
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.unsupported = true;
                return null;
            } else if (name.equals("protocols") && objArr.length == 0) {
                return this.protocols;
            } else {
                if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1 && (objArr[0] instanceof List)) {
                    List list = (List) objArr[0];
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        String str = (String) list.get(i);
                        if (this.protocols.contains(str)) {
                            this.selected = str;
                            return str;
                        }
                    }
                    String str2 = (String) this.protocols.get(0);
                    this.selected = str2;
                    return str2;
                } else if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                    return method.invoke(this, objArr);
                } else {
                    this.selected = (String) objArr[0];
                    return null;
                }
            }
        }
    }

    Jdk8WithJettyBootPlatform(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.putMethod = method;
        this.getMethod = method2;
        this.removeMethod = method3;
        this.clientProviderClass = cls;
        this.serverProviderClass = cls2;
    }

    public void configureTlsExtensions(SSLSocket sSLSocket, String str, List<Protocol> list) {
        List alpnProtocolNames = alpnProtocolNames(list);
        try {
            Object newProxyInstance = Proxy.newProxyInstance(Platform.class.getClassLoader(), new Class[]{this.clientProviderClass, this.serverProviderClass}, new AlpnProvider(alpnProtocolNames));
            this.putMethod.invoke(null, new Object[]{sSLSocket, newProxyInstance});
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new AssertionError("failed to set ALPN", e);
        }
    }

    public void afterHandshake(SSLSocket sSLSocket) {
        try {
            this.removeMethod.invoke(null, new Object[]{sSLSocket});
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new AssertionError("failed to remove ALPN", e);
        }
    }

    @Nullable
    public String getSelectedProtocol(SSLSocket sSLSocket) {
        try {
            Object[] objArr = {sSLSocket};
            String str = null;
            AlpnProvider alpnProvider = (AlpnProvider) Proxy.getInvocationHandler(this.getMethod.invoke(null, objArr));
            if (alpnProvider.unsupported || alpnProvider.selected != null) {
                if (!alpnProvider.unsupported) {
                    str = alpnProvider.selected;
                }
                return str;
            }
            Platform.get().log(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", null);
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new AssertionError("failed to get ALPN selected protocol", e);
        }
    }

    public static Platform buildIfSupported() {
        String str = "org.eclipse.jetty.alpn.ALPN";
        try {
            Class cls = Class.forName(str, true, null);
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("$Provider");
            Class cls2 = Class.forName(sb.toString(), true, null);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append("$ClientProvider");
            Class cls3 = Class.forName(sb2.toString(), true, null);
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            sb3.append("$ServerProvider");
            Class cls4 = Class.forName(sb3.toString(), true, null);
            Method method = cls.getMethod("put", new Class[]{SSLSocket.class, cls2});
            Method method2 = method;
            Jdk8WithJettyBootPlatform jdk8WithJettyBootPlatform = new Jdk8WithJettyBootPlatform(method2, cls.getMethod("get", new Class[]{SSLSocket.class}), cls.getMethod("remove", new Class[]{SSLSocket.class}), cls3, cls4);
            return jdk8WithJettyBootPlatform;
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }
}