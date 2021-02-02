package org.fourthline.cling.support.shared;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import javax.swing.JFrame;
import org.seamless.swing.Controller;

public class PlatformApple {

    static class AppListenerProxy implements InvocationHandler {
        private Controller<JFrame> appController;
        private Object object;

        public static Object newInstance(Object obj, Controller<JFrame> controller) {
            return Proxy.newProxyInstance(obj.getClass().getClassLoader(), obj.getClass().getInterfaces(), new AppListenerProxy(obj, controller));
        }

        private AppListenerProxy(Object obj, Controller<JFrame> controller) {
            this.object = obj;
            this.appController = controller;
        }

        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                if (!"handleQuit".equals(method.getName())) {
                    return method.invoke(this.object, objArr);
                }
                if (this.appController == null) {
                    return null;
                }
                this.appController.dispose();
                this.appController.getView().dispose();
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public static void setup(Controller<JFrame> controller, String str) throws Exception {
        String str2 = "true";
        System.setProperty("apple.laf.useScreenMenuBar", str2);
        System.setProperty("com.apple.mrj.application.apple.menu.about.name", str);
        System.setProperty("apple.awt.showGrowBox", str2);
        Class cls = Class.forName("com.apple.eawt.Application");
        Object newInstance = cls.newInstance();
        cls.getDeclaredMethod("addApplicationListener", new Class[]{Class.forName("com.apple.eawt.ApplicationListener")}).invoke(newInstance, new Object[]{AppListenerProxy.newInstance(Class.forName("com.apple.eawt.ApplicationAdapter").newInstance(), controller)});
    }
}
