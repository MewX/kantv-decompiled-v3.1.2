package com.crashlytics.android.core;

import android.content.Context;
import android.os.Bundle;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Logger;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import org.json.JSONException;
import org.json.JSONObject;

class DefaultAppMeasurementEventListenerRegistrar implements AppMeasurementEventListenerRegistrar {
    private static final String ANALYTIC_CLASS = "com.google.android.gms.measurement.AppMeasurement";
    private static final String ANALYTIC_CLASS_ON_EVENT_LISTENER = "com.google.android.gms.measurement.AppMeasurement$OnEventListener";
    private static final String CRASH_ORIGIN = "crash";
    private static final String GET_INSTANCE_METHOD = "getInstance";
    private static final String NAME = "name";
    private static final String PARAMETERS = "parameters";
    private static final String REGISTER_METHOD = "registerOnMeasurementEventListener";
    /* access modifiers changed from: private */
    public final CrashlyticsCore crashlyticsCore;

    static AppMeasurementEventListenerRegistrar instanceFrom(CrashlyticsCore crashlyticsCore2) {
        return new DefaultAppMeasurementEventListenerRegistrar(crashlyticsCore2);
    }

    private DefaultAppMeasurementEventListenerRegistrar(CrashlyticsCore crashlyticsCore2) {
        this.crashlyticsCore = crashlyticsCore2;
    }

    public boolean register() {
        Class cls = getClass(ANALYTIC_CLASS);
        String str = CrashlyticsCore.TAG;
        if (cls == null) {
            Fabric.getLogger().w(str, "Firebase Analytics is not present; you will not see automatic logging of events before a crash occurs.");
            return false;
        }
        Object instance = getInstance(cls);
        if (instance != null) {
            return invoke(cls, instance, REGISTER_METHOD);
        }
        Fabric.getLogger().w(str, "Could not create an instance of Firebase Analytics.");
        return false;
    }

    private Class<?> getClass(String str) {
        try {
            return this.crashlyticsCore.getContext().getClassLoader().loadClass(str);
        } catch (Exception unused) {
            return null;
        }
    }

    private Object getInstance(Class<?> cls) {
        try {
            return cls.getDeclaredMethod(GET_INSTANCE_METHOD, new Class[]{Context.class}).invoke(cls, new Object[]{this.crashlyticsCore.getContext()});
        } catch (Exception unused) {
            return null;
        }
    }

    private boolean invoke(Class<?> cls, Object obj, String str) {
        String str2 = CrashlyticsCore.TAG;
        Class cls2 = getClass(ANALYTIC_CLASS_ON_EVENT_LISTENER);
        try {
            cls.getDeclaredMethod(str, new Class[]{cls2}).invoke(obj, new Object[]{onEventListenerProxy(cls2)});
            return true;
        } catch (NoSuchMethodException e) {
            Logger logger = Fabric.getLogger();
            StringBuilder sb = new StringBuilder();
            sb.append("Expected method missing: ");
            sb.append(str);
            logger.w(str2, sb.toString(), e);
            return false;
        } catch (InvocationTargetException e2) {
            Logger logger2 = Fabric.getLogger();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Cannot invoke method: ");
            sb2.append(str);
            logger2.w(str2, sb2.toString(), e2);
            return false;
        } catch (IllegalAccessException e3) {
            Logger logger3 = Fabric.getLogger();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Cannot access method: ");
            sb3.append(str);
            logger3.w(str2, sb3.toString(), e3);
            return false;
        }
    }

    private Object onEventListenerProxy(Class cls) {
        return Proxy.newProxyInstance(this.crashlyticsCore.getContext().getClassLoader(), new Class[]{cls}, new InvocationHandler() {
            public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                if (objArr.length == 4) {
                    String str = objArr[0];
                    String str2 = objArr[1];
                    Bundle bundle = objArr[2];
                    if (str != null && !str.equals("crash")) {
                        DefaultAppMeasurementEventListenerRegistrar.writeEventToUserLog(DefaultAppMeasurementEventListenerRegistrar.this.crashlyticsCore, str2, bundle);
                    }
                    return null;
                }
                throw new RuntimeException("Unexpected AppMeasurement.OnEventListener signature");
            }
        });
    }

    /* access modifiers changed from: private */
    public static void writeEventToUserLog(CrashlyticsCore crashlyticsCore2, String str, Bundle bundle) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("$A$:");
            sb.append(serializeEvent(str, bundle));
            crashlyticsCore2.log(sb.toString());
        } catch (JSONException unused) {
            Logger logger = Fabric.getLogger();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unable to serialize Firebase Analytics event; ");
            sb2.append(str);
            logger.w(CrashlyticsCore.TAG, sb2.toString());
        }
    }

    private static String serializeEvent(String str, Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put("name", str);
        jSONObject.put(PARAMETERS, jSONObject2);
        return jSONObject.toString();
    }
}
