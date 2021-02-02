package org.fourthline.cling.support.shared;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class NewPlatformApple {

    static class AppListenerProxy implements InvocationHandler {
        private Object object;
        private ShutdownHandler shutdownHandler;

        public static Object newInstance(Object obj, ShutdownHandler shutdownHandler2) {
            return Proxy.newProxyInstance(obj.getClass().getClassLoader(), obj.getClass().getInterfaces(), new AppListenerProxy(obj, shutdownHandler2));
        }

        private AppListenerProxy(Object obj, ShutdownHandler shutdownHandler2) {
            this.object = obj;
            this.shutdownHandler = shutdownHandler2;
        }

        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                if (!"handleQuit".equals(method.getName())) {
                    return method.invoke(this.object, objArr);
                }
                if (this.shutdownHandler == null) {
                    return null;
                }
                this.shutdownHandler.shutdown();
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public static void setup(ShutdownHandler shutdownHandler, String str) throws Exception {
        String str2 = "true";
        System.setProperty("apple.laf.useScreenMenuBar", str2);
        System.setProperty("com.apple.mrj.application.apple.menu.about.name", str);
        System.setProperty("apple.awt.showGrowBox", str2);
        Class cls = Class.forName("com.apple.eawt.Application");
        Object newInstance = cls.newInstance();
        cls.getDeclaredMethod("addApplicationListener", new Class[]{Class.forName("com.apple.eawt.ApplicationListener")}).invoke(newInstance, new Object[]{AppListenerProxy.newInstance(Class.forName("com.apple.eawt.ApplicationAdapter").newInstance(), shutdownHandler)});
    }
}
