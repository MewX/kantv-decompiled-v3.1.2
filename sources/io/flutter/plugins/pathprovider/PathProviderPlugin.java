package io.flutter.plugins.pathprovider;

import android.os.Build.VERSION;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import io.flutter.util.PathUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class PathProviderPlugin implements MethodCallHandler {
    private final Registrar mRegistrar;

    public static void registerWith(Registrar registrar) {
        new MethodChannel(registrar.messenger(), "plugins.flutter.io/path_provider").setMethodCallHandler(new PathProviderPlugin(registrar));
    }

    private PathProviderPlugin(Registrar registrar) {
        this.mRegistrar = registrar;
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMethodCall(io.flutter.plugin.common.MethodCall r8, @androidx.annotation.NonNull io.flutter.plugin.common.MethodChannel.Result r9) {
        /*
            r7 = this;
            java.lang.String r0 = r8.method
            int r1 = r0.hashCode()
            r2 = 5
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            switch(r1) {
                case -1832373352: goto L_0x0041;
                case -1208689078: goto L_0x0037;
                case 299667825: goto L_0x002d;
                case 1200320591: goto L_0x0023;
                case 1252916648: goto L_0x0019;
                case 1711844626: goto L_0x000f;
                default: goto L_0x000e;
            }
        L_0x000e:
            goto L_0x004b
        L_0x000f:
            java.lang.String r1 = "getTemporaryDirectory"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004b
            r0 = 0
            goto L_0x004c
        L_0x0019:
            java.lang.String r1 = "getStorageDirectory"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004b
            r0 = 2
            goto L_0x004c
        L_0x0023:
            java.lang.String r1 = "getApplicationDocumentsDirectory"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004b
            r0 = 1
            goto L_0x004c
        L_0x002d:
            java.lang.String r1 = "getExternalStorageDirectories"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004b
            r0 = 4
            goto L_0x004c
        L_0x0037:
            java.lang.String r1 = "getExternalCacheDirectories"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004b
            r0 = 3
            goto L_0x004c
        L_0x0041:
            java.lang.String r1 = "getApplicationSupportDirectory"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004b
            r0 = 5
            goto L_0x004c
        L_0x004b:
            r0 = -1
        L_0x004c:
            if (r0 == 0) goto L_0x0090
            if (r0 == r6) goto L_0x0088
            if (r0 == r5) goto L_0x0080
            if (r0 == r4) goto L_0x0078
            if (r0 == r3) goto L_0x0064
            if (r0 == r2) goto L_0x005c
            r9.notImplemented()
            goto L_0x0097
        L_0x005c:
            java.lang.String r8 = r7.getApplicationSupportDirectory()
            r9.success(r8)
            goto L_0x0097
        L_0x0064:
            java.lang.String r0 = "type"
            java.lang.Object r8 = r8.argument(r0)
            java.lang.Integer r8 = (java.lang.Integer) r8
            java.lang.String r8 = io.flutter.plugins.pathprovider.StorageDirectoryMapper.androidType(r8)
            java.util.List r8 = r7.getPathProviderExternalStorageDirectories(r8)
            r9.success(r8)
            goto L_0x0097
        L_0x0078:
            java.util.List r8 = r7.getPathProviderExternalCacheDirectories()
            r9.success(r8)
            goto L_0x0097
        L_0x0080:
            java.lang.String r8 = r7.getPathProviderStorageDirectory()
            r9.success(r8)
            goto L_0x0097
        L_0x0088:
            java.lang.String r8 = r7.getPathProviderApplicationDocumentsDirectory()
            r9.success(r8)
            goto L_0x0097
        L_0x0090:
            java.lang.String r8 = r7.getPathProviderTemporaryDirectory()
            r9.success(r8)
        L_0x0097:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.pathprovider.PathProviderPlugin.onMethodCall(io.flutter.plugin.common.MethodCall, io.flutter.plugin.common.MethodChannel$Result):void");
    }

    private String getPathProviderTemporaryDirectory() {
        return this.mRegistrar.context().getCacheDir().getPath();
    }

    private String getApplicationSupportDirectory() {
        return PathUtils.getFilesDir(this.mRegistrar.context());
    }

    private String getPathProviderApplicationDocumentsDirectory() {
        return PathUtils.getDataDirectory(this.mRegistrar.context());
    }

    private String getPathProviderStorageDirectory() {
        File externalFilesDir = this.mRegistrar.context().getExternalFilesDir(null);
        if (externalFilesDir == null) {
            return null;
        }
        return externalFilesDir.getAbsolutePath();
    }

    private List<String> getPathProviderExternalCacheDirectories() {
        File[] externalCacheDirs;
        ArrayList arrayList = new ArrayList();
        if (VERSION.SDK_INT >= 19) {
            for (File file : this.mRegistrar.context().getExternalCacheDirs()) {
                if (file != null) {
                    arrayList.add(file.getAbsolutePath());
                }
            }
        } else {
            File externalCacheDir = this.mRegistrar.context().getExternalCacheDir();
            if (externalCacheDir != null) {
                arrayList.add(externalCacheDir.getAbsolutePath());
            }
        }
        return arrayList;
    }

    private List<String> getPathProviderExternalStorageDirectories(String str) {
        File[] externalFilesDirs;
        ArrayList arrayList = new ArrayList();
        if (VERSION.SDK_INT >= 19) {
            for (File file : this.mRegistrar.context().getExternalFilesDirs(str)) {
                if (file != null) {
                    arrayList.add(file.getAbsolutePath());
                }
            }
        } else {
            File externalFilesDir = this.mRegistrar.context().getExternalFilesDir(str);
            if (externalFilesDir != null) {
                arrayList.add(externalFilesDir.getAbsolutePath());
            }
        }
        return arrayList;
    }
}
