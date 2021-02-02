package com.avos.avoscloud;

import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.LogUtil.log;
import java.io.File;

public class AVCacheManager {
    private static AVCacheManager instance;

    private static File keyValueCacheDir() {
        File file = new File(AVPersistenceUtils.getCacheDir(), "PaasKeyValueCache");
        file.mkdirs();
        return file;
    }

    private static File getCacheFile(String str) {
        return new File(keyValueCacheDir(), str);
    }

    private AVCacheManager() {
    }

    public static synchronized AVCacheManager sharedInstance() {
        AVCacheManager aVCacheManager;
        synchronized (AVCacheManager.class) {
            if (instance == null) {
                instance = new AVCacheManager();
            }
            aVCacheManager = instance;
        }
        return aVCacheManager;
    }

    public String fileCacheKey(String str, String str2) {
        if (AVUtils.isBlankString(str2)) {
            return AVUtils.md5(str);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return AVUtils.md5(sb.toString());
    }

    public boolean hasCache(String str) {
        return hasCache(str, null);
    }

    public boolean hasCache(String str, String str2) {
        return getCacheFile(str, str2).exists();
    }

    public boolean hasValidCache(String str, String str2, long j) {
        File cacheFile = getCacheFile(str, str2);
        return cacheFile.exists() && (j <= 0 || System.currentTimeMillis() - cacheFile.lastModified() < j);
    }

    private File getCacheFile(String str, String str2) {
        return getCacheFile(fileCacheKey(str, str2));
    }

    public void get(String str, long j, String str2, GenericObjectCallback genericObjectCallback) {
        File cacheFile = getCacheFile(str, str2);
        if (!cacheFile.exists() || (j > 0 && System.currentTimeMillis() - cacheFile.lastModified() > j)) {
            genericObjectCallback.onFailure(AVErrorUtils.createException(120, AVException.cacheMissingErrorString), null);
        } else {
            genericObjectCallback.onSuccess(AVPersistenceUtils.readContentFromFile(cacheFile), null);
        }
    }

    public void delete(String str) {
        File cacheFile = getCacheFile(AVUtils.md5(str));
        String absolutePath = cacheFile.getAbsolutePath();
        if (!cacheFile.exists()) {
            return;
        }
        if (!cacheFile.delete()) {
            AVPersistenceUtils.saveContentToFile("{}", cacheFile);
        } else {
            AVPersistenceUtils.removeLock(absolutePath);
        }
    }

    public boolean save(String str, String str2, String str3) {
        return AVPersistenceUtils.saveContentToFile(str2, getCacheFile(str, str3));
    }

    public void remove(String str, String str2) {
        File cacheFile = getCacheFile(str, str2);
        String absolutePath = cacheFile.getAbsolutePath();
        if (!cacheFile.exists()) {
            return;
        }
        if (!cacheFile.delete()) {
            AVPersistenceUtils.saveContentToFile("{}", cacheFile);
        } else {
            AVPersistenceUtils.removeLock(absolutePath);
        }
    }

    public boolean haveCache(String str) {
        return getCacheFile(AVUtils.md5(str)).exists();
    }

    public static boolean clearAllCache() {
        return clearCacheMoreThanDays(-1);
    }

    public static boolean clearCacheMoreThanOneDay() {
        return clearCacheMoreThanDays(1);
    }

    public static boolean clearCacheMoreThanDays(int i) {
        File[] listFiles;
        File keyValueCacheDir = keyValueCacheDir();
        if (keyValueCacheDir == null || keyValueCacheDir.listFiles() == null) {
            avlog.d("Cache Directory Failure");
        } else {
            for (File file : keyValueCacheDir.listFiles()) {
                if (System.currentTimeMillis() - file.lastModified() > ((long) i) * 24 * 3600 * 1000 && file.exists()) {
                    String absolutePath = file.getAbsolutePath();
                    if (!file.delete()) {
                        return false;
                    }
                    AVPersistenceUtils.removeLock(absolutePath);
                }
            }
        }
        return true;
    }

    public static boolean clearFileCacheMoreThanDays(int i) {
        File[] listFiles;
        if (AVOSCloud.applicationContext == null) {
            log.e("applicationContext is null, Please call AVOSCloud.initialize first");
            return false;
        }
        File filesDir = AVOSCloud.applicationContext.getFilesDir();
        if (filesDir == null || filesDir.listFiles() == null) {
            avlog.d("File Cache Directory Failure");
        } else {
            for (File file : filesDir.listFiles()) {
                if (System.currentTimeMillis() - file.lastModified() > ((long) i) * 24 * 3600 * 1000 && file.exists() && file.isFile()) {
                    String absolutePath = file.getAbsolutePath();
                    if (!file.delete()) {
                        return false;
                    }
                    AVPersistenceUtils.removeLock(absolutePath);
                }
            }
        }
        return true;
    }
}
