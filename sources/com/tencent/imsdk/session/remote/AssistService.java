package com.tencent.imsdk.session.remote;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import androidx.annotation.Nullable;

@Deprecated
public class AssistService extends Service {
    private static final String TAG = "AssistService";

    public class LocalBinder extends Binder {
        public LocalBinder() {
        }

        public AssistService getService() {
            return AssistService.this;
        }
    }

    @Nullable
    public IBinder onBind(Intent intent) {
        RLog.i(TAG, "AssistService onBind");
        return new LocalBinder();
    }

    public void onDestroy() {
        RLog.i(TAG, "AssistService onDestroy");
        super.onDestroy();
    }
}
