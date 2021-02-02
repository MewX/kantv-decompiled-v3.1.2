package tv.cjump.jni;

import android.os.Build;
import android.text.TextUtils;
import java.lang.reflect.Field;

public class DeviceUtils {
    public static final String ABI_MIPS = "mips";
    public static final String ABI_X86 = "x86";
    private static final int EM_386 = 3;
    private static final int EM_AARCH64 = 183;
    private static final int EM_ARM = 40;
    private static final int EM_MIPS = 8;
    private static ARCH sArch = ARCH.Unknown;

    public enum ARCH {
        Unknown,
        ARM,
        X86,
        MIPS,
        ARM64
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x0084 A[SYNTHETIC, Splitter:B:38:0x0084] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0090 A[SYNTHETIC, Splitter:B:45:0x0090] */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0098 A[SYNTHETIC, Splitter:B:49:0x0098] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:42:0x008b=Splitter:B:42:0x008b, B:35:0x007f=Splitter:B:35:0x007f} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized tv.cjump.jni.DeviceUtils.ARCH getMyCpuArch() {
        /*
            java.lang.Class<tv.cjump.jni.DeviceUtils> r0 = tv.cjump.jni.DeviceUtils.class
            monitor-enter(r0)
            r1 = 20
            byte[] r1 = new byte[r1]     // Catch:{ all -> 0x00a5 }
            java.io.File r2 = new java.io.File     // Catch:{ all -> 0x00a5 }
            java.io.File r3 = android.os.Environment.getRootDirectory()     // Catch:{ all -> 0x00a5 }
            java.lang.String r4 = "lib/libc.so"
            r2.<init>(r3, r4)     // Catch:{ all -> 0x00a5 }
            boolean r3 = r2.canRead()     // Catch:{ all -> 0x00a5 }
            if (r3 == 0) goto L_0x00a1
            r3 = 0
            java.io.RandomAccessFile r4 = new java.io.RandomAccessFile     // Catch:{ FileNotFoundException -> 0x008a, IOException -> 0x007e }
            java.lang.String r5 = "r"
            r4.<init>(r2, r5)     // Catch:{ FileNotFoundException -> 0x008a, IOException -> 0x007e }
            r4.readFully(r1)     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
            r2 = 19
            byte r2 = r1[r2]     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
            r3 = 8
            int r2 = r2 << r3
            r5 = 18
            byte r1 = r1[r5]     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
            r1 = r1 | r2
            r2 = 3
            if (r1 == r2) goto L_0x0066
            if (r1 == r3) goto L_0x0061
            r2 = 40
            if (r1 == r2) goto L_0x005c
            r2 = 183(0xb7, float:2.56E-43)
            if (r1 == r2) goto L_0x0057
            java.lang.String r2 = "NativeBitmapFactory"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
            r3.<init>()     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
            java.lang.String r5 = "libc.so is unknown arch: "
            r3.append(r5)     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
            java.lang.String r1 = java.lang.Integer.toHexString(r1)     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
            r3.append(r1)     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
            java.lang.String r1 = r3.toString()     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
            android.util.Log.e(r2, r1)     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
            goto L_0x006a
        L_0x0057:
            tv.cjump.jni.DeviceUtils$ARCH r1 = tv.cjump.jni.DeviceUtils.ARCH.ARM64     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
            sArch = r1     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
            goto L_0x006a
        L_0x005c:
            tv.cjump.jni.DeviceUtils$ARCH r1 = tv.cjump.jni.DeviceUtils.ARCH.ARM     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
            sArch = r1     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
            goto L_0x006a
        L_0x0061:
            tv.cjump.jni.DeviceUtils$ARCH r1 = tv.cjump.jni.DeviceUtils.ARCH.MIPS     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
            sArch = r1     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
            goto L_0x006a
        L_0x0066:
            tv.cjump.jni.DeviceUtils$ARCH r1 = tv.cjump.jni.DeviceUtils.ARCH.X86     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
            sArch = r1     // Catch:{ FileNotFoundException -> 0x0078, IOException -> 0x0075, all -> 0x0073 }
        L_0x006a:
            r4.close()     // Catch:{ IOException -> 0x006e }
            goto L_0x00a1
        L_0x006e:
            r1 = move-exception
        L_0x006f:
            r1.printStackTrace()     // Catch:{ all -> 0x00a5 }
            goto L_0x00a1
        L_0x0073:
            r1 = move-exception
            goto L_0x0096
        L_0x0075:
            r1 = move-exception
            r3 = r4
            goto L_0x007f
        L_0x0078:
            r1 = move-exception
            r3 = r4
            goto L_0x008b
        L_0x007b:
            r1 = move-exception
            r4 = r3
            goto L_0x0096
        L_0x007e:
            r1 = move-exception
        L_0x007f:
            r1.printStackTrace()     // Catch:{ all -> 0x007b }
            if (r3 == 0) goto L_0x00a1
            r3.close()     // Catch:{ IOException -> 0x0088 }
            goto L_0x00a1
        L_0x0088:
            r1 = move-exception
            goto L_0x006f
        L_0x008a:
            r1 = move-exception
        L_0x008b:
            r1.printStackTrace()     // Catch:{ all -> 0x007b }
            if (r3 == 0) goto L_0x00a1
            r3.close()     // Catch:{ IOException -> 0x0094 }
            goto L_0x00a1
        L_0x0094:
            r1 = move-exception
            goto L_0x006f
        L_0x0096:
            if (r4 == 0) goto L_0x00a0
            r4.close()     // Catch:{ IOException -> 0x009c }
            goto L_0x00a0
        L_0x009c:
            r2 = move-exception
            r2.printStackTrace()     // Catch:{ all -> 0x00a5 }
        L_0x00a0:
            throw r1     // Catch:{ all -> 0x00a5 }
        L_0x00a1:
            tv.cjump.jni.DeviceUtils$ARCH r1 = sArch     // Catch:{ all -> 0x00a5 }
            monitor-exit(r0)
            return r1
        L_0x00a5:
            r1 = move-exception
            monitor-exit(r0)
            goto L_0x00a9
        L_0x00a8:
            throw r1
        L_0x00a9:
            goto L_0x00a8
        */
        throw new UnsupportedOperationException("Method not decompiled: tv.cjump.jni.DeviceUtils.getMyCpuArch():tv.cjump.jni.DeviceUtils$ARCH");
    }

    public static String get_CPU_ABI() {
        return Build.CPU_ABI;
    }

    public static String get_CPU_ABI2() {
        try {
            Field declaredField = Build.class.getDeclaredField("CPU_ABI2");
            if (declaredField == null) {
                return null;
            }
            Object obj = declaredField.get(null);
            if (!(obj instanceof String)) {
                return null;
            }
            return (String) obj;
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean supportABI(String str) {
        String _cpu_abi = get_CPU_ABI();
        boolean z = true;
        if (!TextUtils.isEmpty(_cpu_abi) && _cpu_abi.equalsIgnoreCase(str)) {
            return true;
        }
        if (TextUtils.isEmpty(get_CPU_ABI2()) || !_cpu_abi.equalsIgnoreCase(str)) {
            z = false;
        }
        return z;
    }

    public static boolean supportX86() {
        return supportABI(ABI_X86);
    }

    public static boolean supportMips() {
        return supportABI(ABI_MIPS);
    }

    public static boolean isARMSimulatedByX86() {
        return !supportX86() && ARCH.X86.equals(getMyCpuArch());
    }

    public static boolean isMiBox2Device() {
        return Build.MANUFACTURER.equalsIgnoreCase("Xiaomi") && Build.PRODUCT.equalsIgnoreCase("dredd");
    }

    public static boolean isMagicBoxDevice() {
        String str = "MagicBox";
        return Build.MANUFACTURER.equalsIgnoreCase(str) && Build.PRODUCT.equalsIgnoreCase(str);
    }

    public static boolean isProblemBoxDevice() {
        return isMiBox2Device() || isMagicBoxDevice();
    }

    public static boolean isRealARMArch() {
        return (supportABI("armeabi-v7a") || supportABI("armeabi")) && ARCH.ARM.equals(getMyCpuArch());
    }

    public static boolean isRealX86Arch() {
        return supportABI(ABI_X86) || ARCH.X86.equals(getMyCpuArch());
    }
}
