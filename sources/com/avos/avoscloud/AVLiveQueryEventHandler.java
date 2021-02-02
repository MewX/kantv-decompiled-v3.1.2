package com.avos.avoscloud;

import com.avos.avoscloud.AVLiveQuery.EventType;
import java.util.List;

public abstract class AVLiveQueryEventHandler {
    public void onObjectCreated(AVObject aVObject) {
    }

    public void onObjectDeleted(String str) {
    }

    public void onObjectEnter(AVObject aVObject, List<String> list) {
    }

    public void onObjectLeave(AVObject aVObject, List<String> list) {
    }

    public void onObjectUpdated(AVObject aVObject, List<String> list) {
    }

    public void onUserLogin(AVUser aVUser) {
    }

    public void done(EventType eventType, AVObject aVObject, List<String> list) {
        switch (eventType) {
            case ENTER:
                onObjectEnter(aVObject, list);
                return;
            case UPDATE:
                onObjectUpdated(aVObject, list);
                return;
            case DELETE:
                onObjectDeleted(aVObject.getObjectId());
                return;
            case LEAVE:
                onObjectLeave(aVObject, list);
                return;
            case LOGIN:
                if (aVObject instanceof AVUser) {
                    onUserLogin((AVUser) aVObject);
                    return;
                }
                return;
            case CREATE:
                onObjectCreated(aVObject);
                return;
            default:
                return;
        }
    }
}
