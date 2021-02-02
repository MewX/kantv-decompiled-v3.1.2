package com.idlefish.flutterboost;

import android.content.Context;
import android.text.TextUtils;
import com.idlefish.flutterboost.NewFlutterBoost.ConfigBuilder;
import com.idlefish.flutterboost.interfaces.IContainerManager;
import com.idlefish.flutterboost.interfaces.IContainerRecord;
import com.idlefish.flutterboost.interfaces.IFlutterViewContainer;
import com.idlefish.flutterboost.interfaces.IOperateSyncer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.Stack;

public class FlutterViewContainerManager implements IContainerManager {
    private final Map<String, OnResult> mOnResults = new HashMap();
    private final Map<IFlutterViewContainer, IContainerRecord> mRecordMap = new LinkedHashMap();
    private final Stack<IContainerRecord> mRecordStack = new Stack<>();
    private final Set<ContainerRef> mRefs = new HashSet();

    public static class ContainerRef {
        public final WeakReference<IFlutterViewContainer> container;
        public final String uniqueId;

        ContainerRef(String str, IFlutterViewContainer iFlutterViewContainer) {
            this.uniqueId = str;
            this.container = new WeakReference<>(iFlutterViewContainer);
        }
    }

    interface OnResult {
        void onResult(Map<String, Object> map);
    }

    FlutterViewContainerManager() {
    }

    public IOperateSyncer generateSyncer(IFlutterViewContainer iFlutterViewContainer) {
        Utils.assertCallOnMainThread();
        ContainerRecord containerRecord = new ContainerRecord(this, iFlutterViewContainer);
        if (this.mRecordMap.put(iFlutterViewContainer, containerRecord) != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("container:");
            sb.append(iFlutterViewContainer.getContainerUrl());
            sb.append(" already exists!");
            Debuger.exception(sb.toString());
        }
        this.mRefs.add(new ContainerRef(containerRecord.uniqueId(), iFlutterViewContainer));
        return containerRecord;
    }

    /* access modifiers changed from: 0000 */
    public void pushRecord(IContainerRecord iContainerRecord) {
        if (!this.mRecordMap.containsValue(iContainerRecord)) {
            Debuger.exception("invalid record!");
        }
        this.mRecordStack.push(iContainerRecord);
    }

    /* access modifiers changed from: 0000 */
    public void popRecord(IContainerRecord iContainerRecord) {
        if (this.mRecordStack.peek() == iContainerRecord) {
            this.mRecordStack.pop();
        }
    }

    /* access modifiers changed from: 0000 */
    public void removeRecord(IContainerRecord iContainerRecord) {
        this.mRecordStack.remove(iContainerRecord);
        this.mRecordMap.remove(iContainerRecord.getContainer());
        if (this.mRecordStack.empty() && NewFlutterBoost.instance().platform().whenEngineDestroy() == ConfigBuilder.All_FLUTTER_ACTIVITY_DESTROY) {
            NewFlutterBoost.instance().boostDestroy();
        }
    }

    /* access modifiers changed from: 0000 */
    public void setContainerResult(IContainerRecord iContainerRecord, int i, int i2, Map<String, Object> map) {
        if (findContainerById(iContainerRecord.uniqueId()) == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("setContainerResult error, url=");
            sb.append(iContainerRecord.getContainer().getContainerUrl());
            Debuger.exception(sb.toString());
        }
        if (map == null) {
            map = new HashMap<>();
        }
        map.put("_requestCode__", Integer.valueOf(i));
        map.put("_resultCode__", Integer.valueOf(i2));
        OnResult onResult = (OnResult) this.mOnResults.remove(iContainerRecord.uniqueId());
        if (onResult != null) {
            onResult.onResult(map);
        }
    }

    public IContainerRecord recordOf(IFlutterViewContainer iFlutterViewContainer) {
        return (IContainerRecord) this.mRecordMap.get(iFlutterViewContainer);
    }

    /* access modifiers changed from: 0000 */
    public void openContainer(String str, Map<String, Object> map, Map<String, Object> map2, OnResult onResult) {
        Context currentActivity = NewFlutterBoost.instance().currentActivity();
        if (currentActivity == null) {
            currentActivity = NewFlutterBoost.instance().platform().getApplication();
        }
        Context context = currentActivity;
        if (map == null) {
            map = new HashMap<>();
        }
        Map<String, Object> map3 = map;
        Object remove = map3.remove("requestCode");
        int intValue = remove != null ? Integer.valueOf(String.valueOf(remove)).intValue() : 0;
        String genUniqueId = ContainerRecord.genUniqueId(str);
        map3.put(IContainerRecord.UNIQ_KEY, genUniqueId);
        if (onResult != null) {
            this.mOnResults.put(genUniqueId, onResult);
        }
        NewFlutterBoost.instance().platform().openContainer(context, str, map3, intValue, map2);
    }

    /* access modifiers changed from: 0000 */
    public IContainerRecord closeContainer(String str, Map<String, Object> map, Map<String, Object> map2) {
        IContainerRecord iContainerRecord;
        Iterator it = this.mRecordMap.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                iContainerRecord = null;
                break;
            }
            Entry entry = (Entry) it.next();
            if (TextUtils.equals(str, ((IContainerRecord) entry.getValue()).uniqueId())) {
                iContainerRecord = (IContainerRecord) entry.getValue();
                break;
            }
        }
        if (iContainerRecord == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("closeContainer can not find uniqueId:");
            sb.append(str);
            Debuger.exception(sb.toString());
        }
        NewFlutterBoost.instance().platform().closeContainer(iContainerRecord, map, map2);
        return iContainerRecord;
    }

    public IContainerRecord getCurrentTopRecord() {
        if (this.mRecordStack.isEmpty()) {
            return null;
        }
        return (IContainerRecord) this.mRecordStack.peek();
    }

    public IContainerRecord getLastGenerateRecord() {
        Collection values = this.mRecordMap.values();
        if (values.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(values);
        return (IContainerRecord) arrayList.get(arrayList.size() - 1);
    }

    public IFlutterViewContainer findContainerById(String str) {
        IFlutterViewContainer iFlutterViewContainer;
        Iterator it = this.mRecordMap.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                iFlutterViewContainer = null;
                break;
            }
            Entry entry = (Entry) it.next();
            if (TextUtils.equals(str, ((IContainerRecord) entry.getValue()).uniqueId())) {
                iFlutterViewContainer = (IFlutterViewContainer) entry.getKey();
                break;
            }
        }
        if (iFlutterViewContainer == null) {
            for (ContainerRef containerRef : this.mRefs) {
                if (TextUtils.equals(str, containerRef.uniqueId)) {
                    return (IFlutterViewContainer) containerRef.container.get();
                }
            }
        }
        return iFlutterViewContainer;
    }

    /* access modifiers changed from: 0000 */
    public void onShownContainerChanged(String str, String str2) {
        Utils.assertCallOnMainThread();
        IFlutterViewContainer iFlutterViewContainer = null;
        IFlutterViewContainer iFlutterViewContainer2 = null;
        for (Entry entry : this.mRecordMap.entrySet()) {
            if (TextUtils.equals(str, ((IContainerRecord) entry.getValue()).uniqueId())) {
                iFlutterViewContainer = (IFlutterViewContainer) entry.getKey();
            }
            if (TextUtils.equals(str2, ((IContainerRecord) entry.getValue()).uniqueId())) {
                iFlutterViewContainer2 = (IFlutterViewContainer) entry.getKey();
            }
            if (iFlutterViewContainer != null && iFlutterViewContainer2 != null) {
                break;
            }
        }
        if (iFlutterViewContainer2 != null) {
            iFlutterViewContainer2.onContainerShown();
        }
        if (iFlutterViewContainer != null) {
            iFlutterViewContainer.onContainerHidden();
        }
    }

    public boolean hasContainerAppear() {
        for (Entry value : this.mRecordMap.entrySet()) {
            if (((IContainerRecord) value.getValue()).getState() == 2) {
                return true;
            }
        }
        return false;
    }
}
