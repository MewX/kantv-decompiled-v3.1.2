package com.kantv.android.screen.samsung;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;

public class CastStateMachineSingleton implements CastStateHandler {
    private static CastStateMachineSingleton mInstance;
    private final String TAG = "CastStateM.Singleton";
    private List<CastStateObserver> listners = new ArrayList();
    private CastStates mCurrentCastState;

    private void initCastStateMachine() {
        this.mCurrentCastState = CastStates.IDLE;
    }

    private CastStateMachineSingleton() {
        initCastStateMachine();
    }

    public static CastStateMachineSingleton getInstance() {
        if (mInstance == null) {
            mInstance = new CastStateMachineSingleton();
        }
        return mInstance;
    }

    public void setCurrentCastState(CastStates castStates) {
        StringBuilder sb = new StringBuilder();
        sb.append("Cast Satatus Changed to: ");
        sb.append(castStates.name());
        Log.d("CastStateM.Singleton", sb.toString());
        this.mCurrentCastState = castStates;
        castStatusChangeObserver(castStates);
    }

    public CastStates getCurrentCastState() {
        return this.mCurrentCastState;
    }

    public void registerObserver(CastStateObserver castStateObserver) {
        StringBuilder sb = new StringBuilder();
        sb.append("Observer Registered: ");
        sb.append(castStateObserver.toString());
        Log.v("CastStateM.Singleton", sb.toString());
        this.listners.add(castStateObserver);
    }

    public void removeObserver(CastStateObserver castStateObserver) {
        StringBuilder sb = new StringBuilder();
        sb.append("Observer Un-registered: ");
        sb.append(castStateObserver.toString());
        Log.v("CastStateM.Singleton", sb.toString());
        this.listners.remove(castStateObserver);
    }

    public void castStatusChangeObserver(CastStates castStates) {
        for (CastStateObserver onCastStatusChange : this.listners) {
            onCastStatusChange.onCastStatusChange(castStates);
        }
    }
}
