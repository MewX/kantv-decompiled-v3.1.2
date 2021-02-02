package com.avos.avoscloud;

import android.content.SharedPreferences.Editor;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.LogUtil.log;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class AVPersistenceUtils {
    private static ConcurrentHashMap<String, ReentrantReadWriteLock> fileLocks = new ConcurrentHashMap<>();
    private static AVPersistenceUtils instance;

    public static ReentrantReadWriteLock getLock(String str) {
        ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) fileLocks.get(str);
        if (reentrantReadWriteLock != null) {
            return reentrantReadWriteLock;
        }
        ReentrantReadWriteLock reentrantReadWriteLock2 = new ReentrantReadWriteLock();
        ReentrantReadWriteLock reentrantReadWriteLock3 = (ReentrantReadWriteLock) fileLocks.putIfAbsent(str, reentrantReadWriteLock2);
        return reentrantReadWriteLock3 != null ? reentrantReadWriteLock3 : reentrantReadWriteLock2;
    }

    public static void removeLock(String str) {
        fileLocks.remove(str);
    }

    private AVPersistenceUtils() {
    }

    public static synchronized AVPersistenceUtils sharedInstance() {
        AVPersistenceUtils aVPersistenceUtils;
        synchronized (AVPersistenceUtils.class) {
            if (instance == null) {
                instance = new AVPersistenceUtils();
            }
            aVPersistenceUtils = instance;
        }
        return aVPersistenceUtils;
    }

    public static File getPaasDocumentDir() {
        if (AVOSCloud.applicationContext != null) {
            return AVOSCloud.applicationContext.getDir("Paas", 0);
        }
        throw new IllegalStateException("applicationContext is null, Please call AVOSCloud.initialize first");
    }

    public static File getCacheDir() {
        if (AVOSCloud.applicationContext != null) {
            return AVOSCloud.applicationContext.getCacheDir();
        }
        throw new IllegalStateException("applicationContext is null, Please call AVOSCloud.initialize first");
    }

    public static File getCommandCacheDir() {
        if (AVOSCloud.applicationContext != null) {
            File file = new File(getCacheDir(), "CommandCache");
            file.mkdirs();
            return file;
        }
        throw new IllegalStateException("applicationContext is null, Please call AVOSCloud.initialize first");
    }

    public static File getAnalysisCacheDir() {
        if (AVOSCloud.applicationContext != null) {
            File file = new File(getCacheDir(), "Analysis");
            file.mkdirs();
            return file;
        }
        throw new IllegalStateException("applicationContext is null, Please call AVOSCloud.initialize first");
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                log.d(e.toString());
            }
        }
    }

    private static File getFile(String str, String str2) {
        if (AVUtils.isBlankString(str)) {
            return new File(getPaasDocumentDir(), str2);
        }
        File file = new File(getPaasDocumentDir(), str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, str2);
    }

    public void saveToDocumentDir(String str, String str2) {
        saveToDocumentDir(str, null, str2);
    }

    public void saveToDocumentDir(String str, String str2, String str3) {
        saveContentToFile(str, getFile(str2, str3));
    }

    public static boolean saveContentToFile(String str, File file) {
        try {
            return saveContentToFile(str.getBytes("utf-8"), file);
        } catch (UnsupportedEncodingException e) {
            log.d(e.toString());
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0035  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x003e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean saveContentToFile(byte[] r4, java.io.File r5) {
        /*
            java.lang.String r0 = r5.getAbsolutePath()
            java.util.concurrent.locks.ReentrantReadWriteLock r0 = getLock(r0)
            java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r0 = r0.writeLock()
            boolean r1 = r0.tryLock()
            r2 = 0
            if (r1 == 0) goto L_0x0045
            r1 = 0
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x002b }
            r3.<init>(r5, r2)     // Catch:{ Exception -> 0x002b }
            r3.write(r4)     // Catch:{ Exception -> 0x0026, all -> 0x0023 }
            closeQuietly(r3)
            r0.unlock()
            goto L_0x0045
        L_0x0023:
            r4 = move-exception
            r1 = r3
            goto L_0x003c
        L_0x0026:
            r4 = move-exception
            r1 = r3
            goto L_0x002c
        L_0x0029:
            r4 = move-exception
            goto L_0x003c
        L_0x002b:
            r4 = move-exception
        L_0x002c:
            java.lang.String r4 = r4.toString()     // Catch:{ all -> 0x0029 }
            com.avos.avoscloud.LogUtil.log.d(r4)     // Catch:{ all -> 0x0029 }
            if (r1 == 0) goto L_0x0038
            closeQuietly(r1)
        L_0x0038:
            r0.unlock()
            goto L_0x0046
        L_0x003c:
            if (r1 == 0) goto L_0x0041
            closeQuietly(r1)
        L_0x0041:
            r0.unlock()
            throw r4
        L_0x0045:
            r2 = 1
        L_0x0046:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVPersistenceUtils.saveContentToFile(byte[], java.io.File):boolean");
    }

    public String getFromDocumentDir(String str, String str2) {
        return readContentFromFile(getFile(str, str2));
    }

    public String getFromDocumentDir(String str) {
        return getFromDocumentDir(null, str);
    }

    public static String readContentFromFile(File file) {
        byte[] readContentBytesFromFile = readContentBytesFromFile(file);
        return (readContentBytesFromFile == null || readContentBytesFromFile.length == 0) ? "" : new String(readContentBytesFromFile);
    }

    public static InputStream getInputStreamFromFile(File file) throws IOException {
        if (file == null) {
            avlog.e("null file object.");
            return null;
        } else if (file.exists() && file.isFile()) {
            return new BufferedInputStream(new FileInputStream(file), 8192);
        } else {
            if (AVOSCloud.isDebugLogEnabled()) {
                log.d("not file object", (Exception) new FileNotFoundException());
            }
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x0059 A[Catch:{ all -> 0x0065 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] readContentBytesFromFile(java.io.File r6) {
        /*
            r0 = 0
            if (r6 != 0) goto L_0x0009
            java.lang.String r6 = "null file object."
            com.avos.avoscloud.LogUtil.avlog.e(r6)
            return r0
        L_0x0009:
            boolean r1 = r6.exists()
            if (r1 == 0) goto L_0x006e
            boolean r1 = r6.isFile()
            if (r1 != 0) goto L_0x0016
            goto L_0x006e
        L_0x0016:
            java.lang.String r1 = r6.getAbsolutePath()
            java.util.concurrent.locks.ReentrantReadWriteLock r1 = getLock(r1)
            java.util.concurrent.locks.ReentrantReadWriteLock$ReadLock r1 = r1.readLock()
            r1.lock()
            long r2 = r6.length()     // Catch:{ IOException -> 0x0051, all -> 0x004f }
            int r3 = (int) r2     // Catch:{ IOException -> 0x0051, all -> 0x004f }
            byte[] r2 = new byte[r3]     // Catch:{ IOException -> 0x0051, all -> 0x004f }
            r3 = 0
            java.io.BufferedInputStream r4 = new java.io.BufferedInputStream     // Catch:{ IOException -> 0x0051, all -> 0x004f }
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch:{ IOException -> 0x0051, all -> 0x004f }
            r5.<init>(r6)     // Catch:{ IOException -> 0x0051, all -> 0x004f }
            r6 = 8192(0x2000, float:1.14794E-41)
            r4.<init>(r5, r6)     // Catch:{ IOException -> 0x0051, all -> 0x004f }
        L_0x0039:
            int r6 = r2.length     // Catch:{ IOException -> 0x004d }
            if (r3 >= r6) goto L_0x0046
            int r6 = r2.length     // Catch:{ IOException -> 0x004d }
            int r6 = r6 - r3
            int r6 = r4.read(r2, r3, r6)     // Catch:{ IOException -> 0x004d }
            if (r6 <= 0) goto L_0x0039
            int r3 = r3 + r6
            goto L_0x0039
        L_0x0046:
            closeQuietly(r4)
            r1.unlock()
            return r2
        L_0x004d:
            r6 = move-exception
            goto L_0x0053
        L_0x004f:
            r6 = move-exception
            goto L_0x0067
        L_0x0051:
            r6 = move-exception
            r4 = r0
        L_0x0053:
            boolean r2 = com.avos.avoscloud.AVOSCloud.isDebugLogEnabled()     // Catch:{ all -> 0x0065 }
            if (r2 == 0) goto L_0x005e
            java.lang.String r2 = "Exception during file read"
            com.avos.avoscloud.LogUtil.log.e(r2, r6)     // Catch:{ all -> 0x0065 }
        L_0x005e:
            closeQuietly(r4)
            r1.unlock()
            return r0
        L_0x0065:
            r6 = move-exception
            r0 = r4
        L_0x0067:
            closeQuietly(r0)
            r1.unlock()
            throw r6
        L_0x006e:
            boolean r1 = com.avos.avoscloud.AVOSCloud.isDebugLogEnabled()
            if (r1 == 0) goto L_0x0098
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "not found file: "
            r1.append(r2)
            java.lang.String r2 = r6.getPath()
            r1.append(r2)
            java.lang.String r2 = "/"
            r1.append(r2)
            java.lang.String r6 = r6.getName()
            r1.append(r6)
            java.lang.String r6 = r1.toString()
            com.avos.avoscloud.LogUtil.log.d(r6)
        L_0x0098:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVPersistenceUtils.readContentBytesFromFile(java.io.File):byte[]");
    }

    public void savePersistentSettingBoolean(String str, String str2, Boolean bool) {
        if (AVOSCloud.applicationContext == null) {
            log.e("applicationContext is null, Please call AVOSCloud.initialize first");
            return;
        }
        Editor edit = AVOSCloud.applicationContext.getSharedPreferences(str, 0).edit();
        edit.putBoolean(str2, bool.booleanValue());
        edit.commit();
    }

    public boolean getPersistentSettingBoolean(String str, String str2) {
        return getPersistentSettingBoolean(str, str2, Boolean.valueOf(false));
    }

    public boolean getPersistentSettingBoolean(String str, String str2, Boolean bool) {
        if (AVOSCloud.applicationContext != null) {
            return AVOSCloud.applicationContext.getSharedPreferences(str, 0).getBoolean(str2, bool.booleanValue());
        }
        log.e("applicationContext is null, Please call AVOSCloud.initialize first");
        return bool.booleanValue();
    }

    public void savePersistentSettingInteger(String str, String str2, Integer num) {
        if (AVOSCloud.applicationContext == null) {
            log.e("applicationContext is null, Please call AVOSCloud.initialize first");
            return;
        }
        Editor edit = AVOSCloud.applicationContext.getSharedPreferences(str, 0).edit();
        edit.putInt(str2, num.intValue());
        edit.commit();
    }

    public Integer getPersistentSettingInteger(String str, String str2, Integer num) {
        if (AVOSCloud.applicationContext != null) {
            return Integer.valueOf(AVOSCloud.applicationContext.getSharedPreferences(str, 0).getInt(str2, num.intValue()));
        }
        log.e("applicationContext is null, Please call AVOSCloud.initialize first");
        return num;
    }

    public void savePersistentSettingLong(String str, String str2, Long l) {
        if (AVOSCloud.applicationContext == null) {
            log.e("applicationContext is null, Please call AVOSCloud.initialize first");
            return;
        }
        Editor edit = AVOSCloud.applicationContext.getSharedPreferences(str, 0).edit();
        edit.putLong(str2, l.longValue());
        edit.commit();
    }

    public Long getPersistentSettingLong(String str, String str2, Long l) {
        if (AVOSCloud.applicationContext != null) {
            return Long.valueOf(AVOSCloud.applicationContext.getSharedPreferences(str, 0).getLong(str2, l.longValue()));
        }
        log.e("applicationContext is null, Please call AVOSCloud.initialize first");
        return l;
    }

    public void savePersistentSettingString(String str, String str2, String str3) {
        if (AVOSCloud.applicationContext == null) {
            log.e("applicationContext is null, Please call AVOSCloud.initialize first");
            return;
        }
        Editor edit = AVOSCloud.applicationContext.getSharedPreferences(str, 0).edit();
        edit.putString(str2, str3);
        edit.commit();
    }

    public String getPersistentSettingString(String str, String str2, String str3) {
        if (AVOSCloud.applicationContext != null) {
            return AVOSCloud.applicationContext.getSharedPreferences(str, 0).getString(str2, str3);
        }
        log.e("applicationContext is null, Please call AVOSCloud.initialize first");
        return str3;
    }

    public void removePersistentSettingString(String str, String str2) {
        Editor edit = AVOSCloud.applicationContext.getSharedPreferences(str, 0).edit();
        edit.remove(str2);
        edit.commit();
    }

    public String removePersistentSettingString(String str, String str2, String str3) {
        String persistentSettingString = getPersistentSettingString(str, str2, str3);
        Editor edit = AVOSCloud.applicationContext.getSharedPreferences(str, 0).edit();
        edit.remove(str2);
        edit.commit();
        return persistentSettingString;
    }

    public void removeKeyZonePersistentSettings(String str) {
        Editor edit = AVOSCloud.applicationContext.getSharedPreferences(str, 0).edit();
        edit.clear();
        edit.commit();
    }
}
