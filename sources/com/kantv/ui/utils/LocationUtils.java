package com.kantv.ui.utils;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import androidx.core.app.ActivityCompat;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.kantv.common.log.AILog;
import com.kantv.common.view.MyHandler;
import java.util.ArrayList;
import java.util.List;

public class LocationUtils {
    private static String TAG = "LocationUtils";
    private static volatile LocationUtils uniqueInstance;
    List<ILocation> iLocations = new ArrayList();
    private Location location;
    LocationListener locationListener = new LocationListener() {
        public void onProviderDisabled(String str) {
        }

        public void onProviderEnabled(String str) {
        }

        public void onStatusChanged(String str, int i, Bundle bundle) {
        }

        public void onLocationChanged(Location location) {
            location.getAccuracy();
            LocationUtils.this.setLocation(location);
        }
    };
    private LocationManager locationManager;
    private String locationProvider;
    private Context mContext;
    private final MyHandler mHandler;

    public interface ILocation {
        void onLocation(Location location);
    }

    private LocationUtils(Context context) {
        this.mContext = context;
        lambda$getLocation$0$LocationUtils();
        this.mHandler = new MyHandler((Activity) context);
    }

    public static LocationUtils getInstance(Context context) {
        if (uniqueInstance == null) {
            synchronized (LocationUtils.class) {
                if (uniqueInstance == null) {
                    uniqueInstance = new LocationUtils(context);
                    LocationUtils locationUtils = uniqueInstance;
                    return locationUtils;
                }
            }
        }
        if (uniqueInstance.locationProvider == null) {
            uniqueInstance.lambda$getLocation$0$LocationUtils();
        }
        return uniqueInstance;
    }

    /* access modifiers changed from: private */
    /* renamed from: getLocation */
    public void lambda$getLocation$0$LocationUtils() {
        String str = "gps";
        String str2 = "network";
        try {
            if (VERSION.SDK_INT < 23 || ActivityCompat.checkSelfPermission(this.mContext, "android.permission.ACCESS_FINE_LOCATION") == 0 || ActivityCompat.checkSelfPermission(this.mContext, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                AILog.d(TAG, "getLocation");
                this.locationManager = (LocationManager) this.mContext.getSystemService(Param.LOCATION);
                List providers = this.locationManager.getProviders(true);
                if (providers.contains(str2)) {
                    AILog.d(TAG, "网络定位");
                    this.locationProvider = str2;
                } else if (providers.contains(str)) {
                    AILog.d(TAG, "GPS定位");
                    this.locationProvider = str;
                } else {
                    AILog.d(TAG, "没有可用的位置提供器");
                    if (this.iLocations != null && this.iLocations.size() > 0 && this.locationProvider == null) {
                        this.mHandler.postDelayed(new Runnable() {
                            public final void run() {
                                LocationUtils.this.lambda$getLocation$0$LocationUtils();
                            }
                        }, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
                    }
                    return;
                }
                Location lastKnownLocation = this.locationManager.getLastKnownLocation(this.locationProvider);
                if (lastKnownLocation != null) {
                    setLocation(lastKnownLocation);
                }
                this.locationManager.requestLocationUpdates(this.locationProvider, 0, 0.0f, this.locationListener);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* access modifiers changed from: private */
    public void setLocation(Location location2) {
        if (location2 != null) {
            this.location = location2;
            StringBuilder sb = new StringBuilder();
            sb.append("纬度：");
            sb.append(location2.getLatitude());
            sb.append("经度：");
            sb.append(location2.getLongitude());
            String sb2 = sb.toString();
            List<ILocation> list = this.iLocations;
            if (list != null && list.size() > 0) {
                for (ILocation iLocation : this.iLocations) {
                    if (iLocation != null) {
                        iLocation.onLocation(location2);
                    }
                }
                this.iLocations.clear();
            }
            AILog.d(TAG, sb2);
        }
    }

    public Location showLocation() {
        return this.location;
    }

    public void showLocationAsyn(ILocation iLocation) {
        Location location2 = this.location;
        if (location2 != null) {
            iLocation.onLocation(location2);
            return;
        }
        this.iLocations.add(iLocation);
        if (uniqueInstance.locationProvider == null) {
            uniqueInstance.lambda$getLocation$0$LocationUtils();
        }
    }

    public void removeLocationUpdatesListener() {
        MyHandler myHandler = this.mHandler;
        if (myHandler != null) {
            myHandler.removeCallbacksAndMessages(null);
        }
        List<ILocation> list = this.iLocations;
        if (list != null) {
            list.clear();
        }
        if (VERSION.SDK_INT < 23 || ActivityCompat.checkSelfPermission(this.mContext, "android.permission.ACCESS_FINE_LOCATION") == 0 || ActivityCompat.checkSelfPermission(this.mContext, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
            LocationManager locationManager2 = this.locationManager;
            if (locationManager2 != null) {
                uniqueInstance = null;
                locationManager2.removeUpdates(this.locationListener);
            }
        }
    }
}
