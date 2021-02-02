package io.flutter.view;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.flutter.embedding.engine.FlutterJNI;
import io.flutter.util.PathUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;

public class FlutterMain {
    private static final String AOT_SHARED_LIBRARY_NAME = "aot-shared-library-name";
    private static final String DEFAULT_AOT_SHARED_LIBRARY_NAME = "libapp.so";
    private static final String DEFAULT_FLUTTER_ASSETS_DIR = "flutter_assets";
    private static final String DEFAULT_ISOLATE_SNAPSHOT_DATA = "isolate_snapshot_data";
    private static final String DEFAULT_KERNEL_BLOB = "kernel_blob.bin";
    private static final String DEFAULT_LIBRARY = "libflutter.so";
    private static final String DEFAULT_VM_SNAPSHOT_DATA = "vm_snapshot_data";
    private static final String FLUTTER_ASSETS_DIR_KEY = "flutter-assets-dir";
    private static final String ISOLATE_SNAPSHOT_DATA_KEY = "isolate-snapshot-data";
    public static final String PUBLIC_AOT_SHARED_LIBRARY_NAME;
    public static final String PUBLIC_FLUTTER_ASSETS_DIR_KEY;
    public static final String PUBLIC_ISOLATE_SNAPSHOT_DATA_KEY;
    public static final String PUBLIC_VM_SNAPSHOT_DATA_KEY;
    private static final String SNAPSHOT_ASSET_PATH_KEY = "snapshot-asset-path";
    private static final String TAG = "FlutterMain";
    private static final String VM_SNAPSHOT_DATA_KEY = "vm-snapshot-data";
    private static boolean isRunningInRobolectricTest = false;
    private static String sAotSharedLibraryName = DEFAULT_AOT_SHARED_LIBRARY_NAME;
    private static String sFlutterAssetsDir = DEFAULT_FLUTTER_ASSETS_DIR;
    private static boolean sInitialized = false;
    private static String sIsolateSnapshotData = DEFAULT_ISOLATE_SNAPSHOT_DATA;
    /* access modifiers changed from: private */
    @Nullable
    public static ResourceExtractor sResourceExtractor;
    @Nullable
    private static Settings sSettings;
    private static String sVmSnapshotData = DEFAULT_VM_SNAPSHOT_DATA;

    public static class Settings {
        private String logTag;

        @Nullable
        public String getLogTag() {
            return this.logTag;
        }

        public void setLogTag(String str) {
            this.logTag = str;
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(FlutterMain.class.getName());
        sb.append('.');
        sb.append(AOT_SHARED_LIBRARY_NAME);
        PUBLIC_AOT_SHARED_LIBRARY_NAME = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(FlutterMain.class.getName());
        sb2.append('.');
        sb2.append(VM_SNAPSHOT_DATA_KEY);
        PUBLIC_VM_SNAPSHOT_DATA_KEY = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(FlutterMain.class.getName());
        sb3.append('.');
        sb3.append(ISOLATE_SNAPSHOT_DATA_KEY);
        PUBLIC_ISOLATE_SNAPSHOT_DATA_KEY = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        sb4.append(FlutterMain.class.getName());
        sb4.append('.');
        sb4.append(FLUTTER_ASSETS_DIR_KEY);
        PUBLIC_FLUTTER_ASSETS_DIR_KEY = sb4.toString();
    }

    @VisibleForTesting
    public static void setIsRunningInRobolectricTest(boolean z) {
        isRunningInRobolectricTest = z;
    }

    @NonNull
    private static String fromFlutterAssets(@NonNull String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(sFlutterAssetsDir);
        sb.append(File.separator);
        sb.append(str);
        return sb.toString();
    }

    public static void startInitialization(@NonNull Context context) {
        if (!isRunningInRobolectricTest) {
            startInitialization(context, new Settings());
        }
    }

    public static void startInitialization(@NonNull Context context, @NonNull Settings settings) {
        if (!isRunningInRobolectricTest) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                throw new IllegalStateException("startInitialization must be called on the main thread");
            } else if (sSettings == null) {
                sSettings = settings;
                long uptimeMillis = SystemClock.uptimeMillis();
                initConfig(context);
                initResources(context);
                System.loadLibrary("flutter");
                VsyncWaiter.getInstance((WindowManager) context.getSystemService("window")).init();
                FlutterJNI.nativeRecordStartTimestamp(SystemClock.uptimeMillis() - uptimeMillis);
            }
        }
    }

    public static void ensureInitializationComplete(@NonNull Context context, @Nullable String[] strArr) {
        String str = "--aot-shared-library-name=";
        if (!isRunningInRobolectricTest) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                throw new IllegalStateException("ensureInitializationComplete must be called on the main thread");
            } else if (sSettings == null) {
                throw new IllegalStateException("ensureInitializationComplete must be called after startInitialization");
            } else if (!sInitialized) {
                try {
                    if (sResourceExtractor != null) {
                        sResourceExtractor.waitForCompletion();
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.add("--icu-symbol-prefix=_binary_icudtl_dat");
                    ApplicationInfo applicationInfo = getApplicationInfo(context);
                    StringBuilder sb = new StringBuilder();
                    sb.append("--icu-native-lib-path=");
                    sb.append(applicationInfo.nativeLibraryDir);
                    sb.append(File.separator);
                    sb.append(DEFAULT_LIBRARY);
                    arrayList.add(sb.toString());
                    if (strArr != null) {
                        Collections.addAll(arrayList, strArr);
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(sAotSharedLibraryName);
                    arrayList.add(sb2.toString());
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(str);
                    sb3.append(applicationInfo.nativeLibraryDir);
                    sb3.append(File.separator);
                    sb3.append(sAotSharedLibraryName);
                    arrayList.add(sb3.toString());
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("--cache-dir-path=");
                    sb4.append(PathUtils.getCacheDirectory(context));
                    arrayList.add(sb4.toString());
                    if (sSettings.getLogTag() != null) {
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("--log-tag=");
                        sb5.append(sSettings.getLogTag());
                        arrayList.add(sb5.toString());
                    }
                    FlutterJNI.nativeInit(context, (String[]) arrayList.toArray(new String[0]), null, PathUtils.getFilesDir(context), PathUtils.getCacheDirectory(context));
                    sInitialized = true;
                } catch (Exception e) {
                    Log.e(TAG, "Flutter initialization failed.", e);
                    throw new RuntimeException(e);
                }
            }
        }
    }

    public static void ensureInitializationCompleteAsync(@NonNull final Context context, @Nullable final String[] strArr, @NonNull final Handler handler, @NonNull final Runnable runnable) {
        if (!isRunningInRobolectricTest) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                throw new IllegalStateException("ensureInitializationComplete must be called on the main thread");
            } else if (sSettings == null) {
                throw new IllegalStateException("ensureInitializationComplete must be called after startInitialization");
            } else if (!sInitialized) {
                new Thread(new Runnable() {
                    public void run() {
                        if (FlutterMain.sResourceExtractor != null) {
                            FlutterMain.sResourceExtractor.waitForCompletion();
                        }
                        new Handler(Looper.getMainLooper()).post(new Runnable() {
                            public void run() {
                                FlutterMain.ensureInitializationComplete(context.getApplicationContext(), strArr);
                                handler.post(runnable);
                            }
                        });
                    }
                }).start();
            }
        }
    }

    @NonNull
    private static ApplicationInfo getApplicationInfo(@NonNull Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (NameNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    private static void initConfig(@NonNull Context context) {
        Bundle bundle = getApplicationInfo(context).metaData;
        if (bundle != null) {
            sAotSharedLibraryName = bundle.getString(PUBLIC_AOT_SHARED_LIBRARY_NAME, DEFAULT_AOT_SHARED_LIBRARY_NAME);
            sFlutterAssetsDir = bundle.getString(PUBLIC_FLUTTER_ASSETS_DIR_KEY, DEFAULT_FLUTTER_ASSETS_DIR);
            sVmSnapshotData = bundle.getString(PUBLIC_VM_SNAPSHOT_DATA_KEY, DEFAULT_VM_SNAPSHOT_DATA);
            sIsolateSnapshotData = bundle.getString(PUBLIC_ISOLATE_SNAPSHOT_DATA_KEY, DEFAULT_ISOLATE_SNAPSHOT_DATA);
        }
    }

    private static void initResources(@NonNull Context context) {
        new ResourceCleaner(context).start();
    }

    @NonNull
    public static String findAppBundlePath() {
        return sFlutterAssetsDir;
    }

    @Deprecated
    @Nullable
    public static String findAppBundlePath(@NonNull Context context) {
        return sFlutterAssetsDir;
    }

    @NonNull
    public static String getLookupKeyForAsset(@NonNull String str) {
        return fromFlutterAssets(str);
    }

    @NonNull
    public static String getLookupKeyForAsset(@NonNull String str, @NonNull String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append("packages");
        sb.append(File.separator);
        sb.append(str2);
        sb.append(File.separator);
        sb.append(str);
        return getLookupKeyForAsset(sb.toString());
    }
}
