package com.idlefish.flutterboost;

import android.content.Intent;
import com.idlefish.flutterboost.interfaces.IContainerRecord;
import com.idlefish.flutterboost.interfaces.IFlutterViewContainer;
import java.util.HashMap;
import java.util.Map;

public class ContainerRecord implements IContainerRecord {
    /* access modifiers changed from: private */
    public final IFlutterViewContainer mContainer;
    private final FlutterViewContainerManager mManager;
    private MethodChannelProxy mProxy = new MethodChannelProxy();
    private int mState = 0;
    /* access modifiers changed from: private */
    public final String mUniqueId;

    private class MethodChannelProxy {
        private int mState;

        private MethodChannelProxy() {
            this.mState = 0;
        }

        /* access modifiers changed from: private */
        public void create() {
            if (this.mState == 0) {
                invokeChannelUnsafe("didInitPageContainer", ContainerRecord.this.mContainer.getContainerUrl(), ContainerRecord.this.mContainer.getContainerUrlParams(), ContainerRecord.this.mUniqueId);
                this.mState = 1;
            }
        }

        /* access modifiers changed from: private */
        public void appear() {
            invokeChannelUnsafe("didShowPageContainer", ContainerRecord.this.mContainer.getContainerUrl(), ContainerRecord.this.mContainer.getContainerUrlParams(), ContainerRecord.this.mUniqueId);
            this.mState = 2;
        }

        /* access modifiers changed from: private */
        public void disappear() {
            if (this.mState < 3) {
                invokeChannel("didDisappearPageContainer", ContainerRecord.this.mContainer.getContainerUrl(), ContainerRecord.this.mContainer.getContainerUrlParams(), ContainerRecord.this.mUniqueId);
                this.mState = 3;
            }
        }

        /* access modifiers changed from: private */
        public void destroy() {
            if (this.mState < 4) {
                invokeChannel("willDeallocPageContainer", ContainerRecord.this.mContainer.getContainerUrl(), ContainerRecord.this.mContainer.getContainerUrlParams(), ContainerRecord.this.mUniqueId);
                this.mState = 4;
            }
        }

        public void invokeChannel(String str, String str2, Map map, String str3) {
            HashMap hashMap = new HashMap();
            hashMap.put("pageName", str2);
            hashMap.put("params", map);
            hashMap.put("uniqueId", str3);
            NewFlutterBoost.instance().channel().invokeMethod(str, hashMap);
        }

        public void invokeChannelUnsafe(String str, String str2, Map map, String str3) {
            HashMap hashMap = new HashMap();
            hashMap.put("pageName", str2);
            hashMap.put("params", map);
            hashMap.put("uniqueId", str3);
            NewFlutterBoost.instance().channel().invokeMethodUnsafe(str, hashMap);
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    public void onLowMemory() {
    }

    public void onNewIntent(Intent intent) {
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
    }

    public void onTrimMemory(int i) {
    }

    public void onUserLeaveHint() {
    }

    ContainerRecord(FlutterViewContainerManager flutterViewContainerManager, IFlutterViewContainer iFlutterViewContainer) {
        Map containerUrlParams = iFlutterViewContainer.getContainerUrlParams();
        if (containerUrlParams != null) {
            String str = IContainerRecord.UNIQ_KEY;
            if (containerUrlParams.containsKey(str)) {
                this.mUniqueId = String.valueOf(containerUrlParams.get(str));
                this.mManager = flutterViewContainerManager;
                this.mContainer = iFlutterViewContainer;
            }
        }
        this.mUniqueId = genUniqueId(this);
        this.mManager = flutterViewContainerManager;
        this.mContainer = iFlutterViewContainer;
    }

    public String uniqueId() {
        return this.mUniqueId;
    }

    public IFlutterViewContainer getContainer() {
        return this.mContainer;
    }

    public int getState() {
        return this.mState;
    }

    public void onCreate() {
        Utils.assertCallOnMainThread();
        if (this.mState != 0) {
            Debuger.exception("state error");
        }
        this.mState = 1;
        this.mProxy.create();
    }

    public void onAppear() {
        Utils.assertCallOnMainThread();
        int i = this.mState;
        if (!(i == 1 || i == 3)) {
            Debuger.exception("state error");
        }
        this.mState = 2;
        this.mManager.pushRecord(this);
        this.mContainer.getBoostFlutterView().onAttach();
        this.mProxy.appear();
    }

    public void onDisappear() {
        Utils.assertCallOnMainThread();
        if (this.mState != 2) {
            Debuger.exception("state error");
        }
        this.mState = 3;
        this.mProxy.disappear();
        if (getContainer().getContextActivity().isFinishing()) {
            this.mProxy.destroy();
        }
        this.mContainer.getBoostFlutterView().onDetach();
        this.mManager.popRecord(this);
    }

    public void onDestroy() {
        Utils.assertCallOnMainThread();
        if (this.mState != 3) {
            Debuger.exception("state error");
        }
        this.mState = 4;
        this.mProxy.destroy();
        this.mManager.removeRecord(this);
        this.mManager.setContainerResult(this, -1, -1, null);
        this.mManager.hasContainerAppear();
    }

    public void onBackPressed() {
        Utils.assertCallOnMainThread();
        int i = this.mState;
        if (i == 0 || i == 4) {
            Debuger.exception("state error");
        }
        HashMap hashMap = new HashMap();
        hashMap.put("type", "backPressedCallback");
        hashMap.put("name", this.mContainer.getContainerUrl());
        hashMap.put("uniqueId", this.mUniqueId);
        NewFlutterBoost.instance().channel().sendEvent("lifecycle", hashMap);
    }

    public void onContainerResult(int i, int i2, Map<String, Object> map) {
        this.mManager.setContainerResult(this, i, i2, map);
    }

    public static String genUniqueId(Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append(System.currentTimeMillis());
        sb.append("-");
        sb.append(obj.hashCode());
        return sb.toString();
    }
}
