package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.os.Binder;
import android.util.Log;
import com.google.android.gms.common.util.SharedPreferencesUtils;
import com.google.android.gms.flags.Flag;
import com.google.android.gms.flags.Flag.StringFlag;
import com.google.android.gms.flags.Singletons;
import com.google.android.gms.flags.impl.DataUtils.StringUtils;
import java.util.ArrayList;
import java.util.List;

public class ServiceApi {
    public static void persistGserviceValues(Context context) {
        try {
            Editor edit = SharedPreferencesFactory.getSharedPreferences(context).edit();
            for (Flag flag : Singletons.flagRegistry().registeredFlags()) {
                if (flag.getSource() == 0) {
                    DataUtils forFlag = DataUtils.forFlag(flag);
                    forFlag.putInSharedPreferences(edit, forFlag.getGservicesValue().get());
                }
            }
            SharedPreferencesUtils.publishWorldReadableSharedPreferences(context, edit, "google_sdk_flags");
        } catch (Exception e) {
            String str = "Failed to write shared flags: ";
            String valueOf = String.valueOf(e.getMessage());
            Log.e("FlagsServiceApi", valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
    }

    public List<String> getExperimentIdsFromService() {
        ArrayList arrayList = new ArrayList();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            for (StringFlag stringUtils : Singletons.flagRegistry().registeredServiceExperimentIdFlags()) {
                String str = (String) new StringUtils(stringUtils).getGservicesValue().get();
                if (str != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }
}
