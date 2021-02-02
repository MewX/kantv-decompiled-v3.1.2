package com.kantv.android.screen.samsung;

interface CastStateHandler {
    void castStatusChangeObserver(CastStates castStates);

    void registerObserver(CastStateObserver castStateObserver);

    void removeObserver(CastStateObserver castStateObserver);
}
