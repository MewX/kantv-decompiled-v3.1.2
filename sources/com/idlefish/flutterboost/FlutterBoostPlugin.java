package com.idlefish.flutterboost;

import androidx.annotation.Nullable;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class FlutterBoostPlugin {
    private static final Set<ActionAfterRegistered> sActions = new HashSet();
    private static FlutterBoostPlugin sInstance;
    /* access modifiers changed from: private */
    public final Map<String, Set<EventListener>> mEventListeners = new HashMap();
    /* access modifiers changed from: private */
    public final Set<MethodCallHandler> mMethodCallHandlers = new HashSet();
    private final MethodChannel mMethodChannel;

    public interface ActionAfterRegistered {
        void onChannelRegistered(FlutterBoostPlugin flutterBoostPlugin);
    }

    class BoostMethodHandler implements MethodCallHandler {
        BoostMethodHandler() {
        }

        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onMethodCall(io.flutter.plugin.common.MethodCall r10, final io.flutter.plugin.common.MethodChannel.Result r11) {
            /*
                r9 = this;
                com.idlefish.flutterboost.NewFlutterBoost r0 = com.idlefish.flutterboost.NewFlutterBoost.instance()
                com.idlefish.flutterboost.interfaces.IContainerManager r0 = r0.containerManager()
                com.idlefish.flutterboost.FlutterViewContainerManager r0 = (com.idlefish.flutterboost.FlutterViewContainerManager) r0
                java.lang.String r1 = r10.method
                int r2 = r1.hashCode()
                java.lang.String r3 = "onShownContainerChanged"
                r4 = 3
                r5 = 2
                r6 = 1
                java.lang.Boolean r7 = java.lang.Boolean.valueOf(r6)
                switch(r2) {
                    case -1037220475: goto L_0x003b;
                    case -504772615: goto L_0x0031;
                    case -482608985: goto L_0x0027;
                    case 1791664180: goto L_0x001d;
                    default: goto L_0x001c;
                }
            L_0x001c:
                goto L_0x0043
            L_0x001d:
                java.lang.String r2 = "pageOnStart"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x0043
                r1 = 0
                goto L_0x0044
            L_0x0027:
                java.lang.String r2 = "closePage"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x0043
                r1 = 2
                goto L_0x0044
            L_0x0031:
                java.lang.String r2 = "openPage"
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L_0x0043
                r1 = 1
                goto L_0x0044
            L_0x003b:
                boolean r1 = r1.equals(r3)
                if (r1 == 0) goto L_0x0043
                r1 = 3
                goto L_0x0044
            L_0x0043:
                r1 = -1
            L_0x0044:
                java.lang.String r2 = "uniqueId"
                if (r1 == 0) goto L_0x00c8
                java.lang.String r8 = "exts"
                if (r1 == r6) goto L_0x009e
                if (r1 == r5) goto L_0x0077
                if (r1 == r4) goto L_0x0055
                r11.notImplemented()
                goto L_0x0108
            L_0x0055:
                java.lang.String r1 = "newName"
                java.lang.Object r1 = r10.argument(r1)     // Catch:{ Throwable -> 0x006d }
                java.lang.String r1 = (java.lang.String) r1     // Catch:{ Throwable -> 0x006d }
                java.lang.String r2 = "oldName"
                java.lang.Object r10 = r10.argument(r2)     // Catch:{ Throwable -> 0x006d }
                java.lang.String r10 = (java.lang.String) r10     // Catch:{ Throwable -> 0x006d }
                r0.onShownContainerChanged(r1, r10)     // Catch:{ Throwable -> 0x006d }
                r11.success(r7)     // Catch:{ Throwable -> 0x006d }
                goto L_0x0108
            L_0x006d:
                r10 = move-exception
                java.lang.String r0 = r10.getMessage()
                r11.error(r3, r0, r10)
                goto L_0x0108
            L_0x0077:
                java.lang.Object r1 = r10.argument(r2)     // Catch:{ Throwable -> 0x0093 }
                java.lang.String r1 = (java.lang.String) r1     // Catch:{ Throwable -> 0x0093 }
                java.lang.String r2 = "result"
                java.lang.Object r2 = r10.argument(r2)     // Catch:{ Throwable -> 0x0093 }
                java.util.Map r2 = (java.util.Map) r2     // Catch:{ Throwable -> 0x0093 }
                java.lang.Object r10 = r10.argument(r8)     // Catch:{ Throwable -> 0x0093 }
                java.util.Map r10 = (java.util.Map) r10     // Catch:{ Throwable -> 0x0093 }
                r0.closeContainer(r1, r2, r10)     // Catch:{ Throwable -> 0x0093 }
                r11.success(r7)     // Catch:{ Throwable -> 0x0093 }
                goto L_0x0108
            L_0x0093:
                r10 = move-exception
                java.lang.String r0 = r10.getMessage()
                java.lang.String r1 = "close page error"
                r11.error(r1, r0, r10)
                goto L_0x0108
            L_0x009e:
                java.lang.String r1 = "urlParams"
                java.lang.Object r1 = r10.argument(r1)     // Catch:{ Throwable -> 0x00bd }
                java.util.Map r1 = (java.util.Map) r1     // Catch:{ Throwable -> 0x00bd }
                java.lang.Object r2 = r10.argument(r8)     // Catch:{ Throwable -> 0x00bd }
                java.util.Map r2 = (java.util.Map) r2     // Catch:{ Throwable -> 0x00bd }
                java.lang.String r3 = "url"
                java.lang.Object r10 = r10.argument(r3)     // Catch:{ Throwable -> 0x00bd }
                java.lang.String r10 = (java.lang.String) r10     // Catch:{ Throwable -> 0x00bd }
                com.idlefish.flutterboost.FlutterBoostPlugin$BoostMethodHandler$1 r3 = new com.idlefish.flutterboost.FlutterBoostPlugin$BoostMethodHandler$1     // Catch:{ Throwable -> 0x00bd }
                r3.<init>(r11)     // Catch:{ Throwable -> 0x00bd }
                r0.openContainer(r10, r1, r2, r3)     // Catch:{ Throwable -> 0x00bd }
                goto L_0x0108
            L_0x00bd:
                r10 = move-exception
                java.lang.String r0 = r10.getMessage()
                java.lang.String r1 = "open page error"
                r11.error(r1, r0, r10)
                goto L_0x0108
            L_0x00c8:
                java.util.HashMap r10 = new java.util.HashMap
                r10.<init>()
                com.idlefish.flutterboost.interfaces.IContainerRecord r1 = r0.getCurrentTopRecord()     // Catch:{ Throwable -> 0x00fe }
                if (r1 != 0) goto L_0x00d7
                com.idlefish.flutterboost.interfaces.IContainerRecord r1 = r0.getLastGenerateRecord()     // Catch:{ Throwable -> 0x00fe }
            L_0x00d7:
                if (r1 == 0) goto L_0x00fa
                java.lang.String r0 = "name"
                com.idlefish.flutterboost.interfaces.IFlutterViewContainer r3 = r1.getContainer()     // Catch:{ Throwable -> 0x00fe }
                java.lang.String r3 = r3.getContainerUrl()     // Catch:{ Throwable -> 0x00fe }
                r10.put(r0, r3)     // Catch:{ Throwable -> 0x00fe }
                java.lang.String r0 = "params"
                com.idlefish.flutterboost.interfaces.IFlutterViewContainer r3 = r1.getContainer()     // Catch:{ Throwable -> 0x00fe }
                java.util.Map r3 = r3.getContainerUrlParams()     // Catch:{ Throwable -> 0x00fe }
                r10.put(r0, r3)     // Catch:{ Throwable -> 0x00fe }
                java.lang.String r0 = r1.uniqueId()     // Catch:{ Throwable -> 0x00fe }
                r10.put(r2, r0)     // Catch:{ Throwable -> 0x00fe }
            L_0x00fa:
                r11.success(r10)     // Catch:{ Throwable -> 0x00fe }
                goto L_0x0108
            L_0x00fe:
                r10 = move-exception
                java.lang.String r0 = r10.getMessage()
                java.lang.String r1 = "no flutter page found!"
                r11.error(r1, r0, r10)
            L_0x0108:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.idlefish.flutterboost.FlutterBoostPlugin.BoostMethodHandler.onMethodCall(io.flutter.plugin.common.MethodCall, io.flutter.plugin.common.MethodChannel$Result):void");
        }
    }

    public interface EventListener {
        void onEvent(String str, Map map);
    }

    public static FlutterBoostPlugin singleton() {
        FlutterBoostPlugin flutterBoostPlugin = sInstance;
        if (flutterBoostPlugin != null) {
            return flutterBoostPlugin;
        }
        throw new RuntimeException("FlutterBoostPlugin not register yet");
    }

    public static void addActionAfterRegistered(ActionAfterRegistered actionAfterRegistered) {
        if (actionAfterRegistered != null) {
            FlutterBoostPlugin flutterBoostPlugin = sInstance;
            if (flutterBoostPlugin == null) {
                sActions.add(actionAfterRegistered);
            } else {
                actionAfterRegistered.onChannelRegistered(flutterBoostPlugin);
            }
        }
    }

    public static void registerWith(Registrar registrar) {
        sInstance = new FlutterBoostPlugin(registrar);
        for (ActionAfterRegistered onChannelRegistered : sActions) {
            onChannelRegistered.onChannelRegistered(sInstance);
        }
        sActions.clear();
    }

    private FlutterBoostPlugin(Registrar registrar) {
        this.mMethodChannel = new MethodChannel(registrar.messenger(), "flutter_boost");
        this.mMethodChannel.setMethodCallHandler(new MethodCallHandler() {
            public void onMethodCall(MethodCall methodCall, Result result) {
                Object[] array;
                int i = 0;
                if (methodCall.method.equals("__event__")) {
                    String str = (String) methodCall.argument("name");
                    Map map = (Map) methodCall.argument("arguments");
                    Object[] objArr = null;
                    synchronized (FlutterBoostPlugin.this.mEventListeners) {
                        Set set = (Set) FlutterBoostPlugin.this.mEventListeners.get(str);
                        if (set != null) {
                            objArr = set.toArray();
                        }
                    }
                    if (objArr != null) {
                        int length = objArr.length;
                        while (i < length) {
                            ((EventListener) objArr[i]).onEvent(str, map);
                            i++;
                        }
                        return;
                    }
                    return;
                }
                synchronized (FlutterBoostPlugin.this.mMethodCallHandlers) {
                    array = FlutterBoostPlugin.this.mMethodCallHandlers.toArray();
                }
                int length2 = array.length;
                while (i < length2) {
                    ((MethodCallHandler) array[i]).onMethodCall(methodCall, result);
                    i++;
                }
            }
        });
        addMethodCallHandler(new BoostMethodHandler());
    }

    public void invokeMethodUnsafe(final String str, Serializable serializable) {
        invokeMethod(str, serializable, new Result() {
            public void success(@Nullable Object obj) {
            }

            public void error(String str, @Nullable String str2, @Nullable Object obj) {
                StringBuilder sb = new StringBuilder();
                sb.append("invoke method ");
                sb.append(str);
                sb.append(" error:");
                sb.append(str);
                sb.append(" | ");
                sb.append(str2);
                Debuger.log(sb.toString());
            }

            public void notImplemented() {
                StringBuilder sb = new StringBuilder();
                sb.append("invoke method ");
                sb.append(str);
                sb.append(" notImplemented");
                Debuger.log(sb.toString());
            }
        });
    }

    public void invokeMethod(final String str, Serializable serializable) {
        invokeMethod(str, serializable, new Result() {
            public void success(@Nullable Object obj) {
            }

            public void error(String str, @Nullable String str2, @Nullable Object obj) {
                StringBuilder sb = new StringBuilder();
                sb.append("invoke method ");
                sb.append(str);
                sb.append(" error:");
                sb.append(str);
                sb.append(" | ");
                sb.append(str2);
                Debuger.exception(sb.toString());
            }

            public void notImplemented() {
                StringBuilder sb = new StringBuilder();
                sb.append("invoke method ");
                sb.append(str);
                sb.append(" notImplemented");
                Debuger.exception(sb.toString());
            }
        });
    }

    public void invokeMethod(String str, Serializable serializable, Result result) {
        if ("__event__".equals(str)) {
            Debuger.exception("method name should not be __event__");
        }
        this.mMethodChannel.invokeMethod(str, serializable, result);
    }

    public void addMethodCallHandler(MethodCallHandler methodCallHandler) {
        synchronized (this.mMethodCallHandlers) {
            this.mMethodCallHandlers.add(methodCallHandler);
        }
    }

    public void removeMethodCallHandler(MethodCallHandler methodCallHandler) {
        synchronized (this.mMethodCallHandlers) {
            this.mMethodCallHandlers.remove(methodCallHandler);
        }
    }

    public void addEventListener(String str, EventListener eventListener) {
        synchronized (this.mEventListeners) {
            Set set = (Set) this.mEventListeners.get(str);
            if (set == null) {
                set = new HashSet();
            }
            set.add(eventListener);
            this.mEventListeners.put(str, set);
        }
    }

    public void removeEventListener(EventListener eventListener) {
        synchronized (this.mEventListeners) {
            for (Set remove : this.mEventListeners.values()) {
                remove.remove(eventListener);
            }
        }
    }

    public void sendEvent(String str, Map map) {
        HashMap hashMap = new HashMap();
        hashMap.put("name", str);
        hashMap.put("arguments", map);
        this.mMethodChannel.invokeMethod("__event__", hashMap);
    }
}
