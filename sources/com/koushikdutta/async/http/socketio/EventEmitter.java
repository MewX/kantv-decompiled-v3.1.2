package com.koushikdutta.async.http.socketio;

import com.koushikdutta.async.util.HashList;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;

public class EventEmitter {
    HashList<EventCallback> callbacks = new HashList<>();

    interface OnceCallback extends EventCallback {
    }

    /* access modifiers changed from: 0000 */
    public void onEvent(String str, JSONArray jSONArray, Acknowledge acknowledge) {
        ArrayList arrayList = this.callbacks.get(str);
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                EventCallback eventCallback = (EventCallback) it.next();
                eventCallback.onEvent(jSONArray, acknowledge);
                if (eventCallback instanceof OnceCallback) {
                    it.remove();
                }
            }
        }
    }

    public void addListener(String str, EventCallback eventCallback) {
        on(str, eventCallback);
    }

    public void once(String str, final EventCallback eventCallback) {
        on(str, new OnceCallback() {
            public void onEvent(JSONArray jSONArray, Acknowledge acknowledge) {
                eventCallback.onEvent(jSONArray, acknowledge);
            }
        });
    }

    public void on(String str, EventCallback eventCallback) {
        this.callbacks.add(str, eventCallback);
    }

    public void removeListener(String str, EventCallback eventCallback) {
        ArrayList arrayList = this.callbacks.get(str);
        if (arrayList != null) {
            arrayList.remove(eventCallback);
        }
    }
}
