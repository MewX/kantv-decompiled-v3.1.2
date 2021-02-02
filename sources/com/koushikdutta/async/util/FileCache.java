package com.koushikdutta.async.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.Provider.Service;
import java.security.Security;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;

public class FileCache {
    private static String hashAlgorithm = "MD5";
    static MessageDigest messageDigest;
    long blockSize = 4096;
    InternalCache cache;
    Comparator<File> dateCompare = new Comparator<File>() {
        public int compare(File file, File file2) {
            long lastModified = file.lastModified();
            long lastModified2 = file2.lastModified();
            if (lastModified < lastModified2) {
                return -1;
            }
            return lastModified2 > lastModified ? 1 : 0;
        }
    };
    File directory;
    boolean loadAsync;
    boolean loading;
    Random random = new Random();
    long size;

    class CacheEntry {
        final long size;

        public CacheEntry(File file) {
            this.size = file.length();
        }
    }

    class InternalCache extends LruCache<String, CacheEntry> {
        public InternalCache() {
            super(FileCache.this.size);
        }

        /* access modifiers changed from: protected */
        public long sizeOf(String str, CacheEntry cacheEntry) {
            return Math.max(FileCache.this.blockSize, cacheEntry.size);
        }

        /* access modifiers changed from: protected */
        public void entryRemoved(boolean z, String str, CacheEntry cacheEntry, CacheEntry cacheEntry2) {
            super.entryRemoved(z, str, cacheEntry, cacheEntry2);
            if (cacheEntry2 == null && !FileCache.this.loading) {
                new File(FileCache.this.directory, str).delete();
            }
        }
    }

    public static class Snapshot {
        FileInputStream[] fins;
        long[] lens;

        Snapshot(FileInputStream[] fileInputStreamArr, long[] jArr) {
            this.fins = fileInputStreamArr;
            this.lens = jArr;
        }

        public long getLength(int i) {
            return this.lens[i];
        }

        public void close() {
            StreamUtility.closeQuietly(this.fins);
        }
    }

    private static MessageDigest findAlternativeMessageDigest() {
        if ("MD5".equals(hashAlgorithm)) {
            for (Provider services : Security.getProviders()) {
                for (Service algorithm : services.getServices()) {
                    hashAlgorithm = algorithm.getAlgorithm();
                    try {
                        MessageDigest instance = MessageDigest.getInstance(hashAlgorithm);
                        if (instance != null) {
                            return instance;
                        }
                    } catch (NoSuchAlgorithmException unused) {
                    }
                }
            }
        }
        return null;
    }

    static {
        try {
            messageDigest = MessageDigest.getInstance(hashAlgorithm);
        } catch (NoSuchAlgorithmException e) {
            messageDigest = findAlternativeMessageDigest();
            if (messageDigest == null) {
                throw new RuntimeException(e);
            }
        }
        try {
            messageDigest = (MessageDigest) messageDigest.clone();
        } catch (CloneNotSupportedException unused) {
        }
    }

    public static synchronized String toKeyString(Object... objArr) {
        String bigInteger;
        synchronized (FileCache.class) {
            messageDigest.reset();
            for (Object obj : objArr) {
                messageDigest.update(obj.toString().getBytes());
            }
            bigInteger = new BigInteger(1, messageDigest.digest()).toString(16);
        }
        return bigInteger;
    }

    public File getTempFile() {
        File file;
        do {
            file = new File(this.directory, new BigInteger(128, this.random).toString(16));
        } while (file.exists());
        return file;
    }

    public File[] getTempFiles(int i) {
        File[] fileArr = new File[i];
        for (int i2 = 0; i2 < i; i2++) {
            fileArr[i2] = getTempFile();
        }
        return fileArr;
    }

    public static void removeFiles(File... fileArr) {
        if (fileArr != null) {
            for (File delete : fileArr) {
                delete.delete();
            }
        }
    }

    public void remove(String str) {
        for (int i = 0; this.cache.remove(getPartName(str, i)) != null; i++) {
        }
        removePartFiles(str);
    }

    public boolean exists(String str, int i) {
        return getPartFile(str, i).exists();
    }

    public boolean exists(String str) {
        return getPartFile(str, 0).exists();
    }

    public File touch(File file) {
        this.cache.get(file.getName());
        file.setLastModified(System.currentTimeMillis());
        return file;
    }

    public FileInputStream get(String str) throws IOException {
        return new FileInputStream(touch(getPartFile(str, 0)));
    }

    public File getFile(String str) {
        return touch(getPartFile(str, 0));
    }

    public FileInputStream[] get(String str, int i) throws IOException {
        FileInputStream[] fileInputStreamArr = new FileInputStream[i];
        int i2 = 0;
        while (i2 < i) {
            try {
                fileInputStreamArr[i2] = new FileInputStream(touch(getPartFile(str, i2)));
                i2++;
            } catch (IOException e) {
                int length = fileInputStreamArr.length;
                for (int i3 = 0; i3 < length; i3++) {
                    StreamUtility.closeQuietly(fileInputStreamArr[i3]);
                }
                remove(str);
                throw e;
            }
        }
        return fileInputStreamArr;
    }

    /* access modifiers changed from: 0000 */
    public String getPartName(String str, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(".");
        sb.append(i);
        return sb.toString();
    }

    public void commitTempFiles(String str, File... fileArr) {
        removePartFiles(str);
        for (int i = 0; i < fileArr.length; i++) {
            File file = fileArr[i];
            File partFile = getPartFile(str, i);
            if (!file.renameTo(partFile)) {
                removeFiles(fileArr);
                remove(str);
                return;
            }
            remove(file.getName());
            this.cache.put(getPartName(str, i), new CacheEntry(partFile));
        }
    }

    /* access modifiers changed from: 0000 */
    public void removePartFiles(String str) {
        int i = 0;
        while (true) {
            File partFile = getPartFile(str, i);
            if (partFile.exists()) {
                partFile.delete();
                i++;
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public File getPartFile(String str, int i) {
        return new File(this.directory, getPartName(str, i));
    }

    public void setBlockSize(long j) {
        this.blockSize = j;
    }

    /* access modifiers changed from: 0000 */
    public void load() {
        this.loading = true;
        try {
            File[] listFiles = this.directory.listFiles();
            if (listFiles != null) {
                ArrayList arrayList = new ArrayList();
                Collections.addAll(arrayList, listFiles);
                Collections.sort(arrayList, this.dateCompare);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    File file = (File) it.next();
                    String name = file.getName();
                    this.cache.put(name, new CacheEntry(file));
                    this.cache.get(name);
                }
                this.loading = false;
            }
        } finally {
            this.loading = false;
        }
    }

    private void doLoad() {
        if (this.loadAsync) {
            new Thread() {
                public void run() {
                    FileCache.this.load();
                }
            }.start();
        } else {
            load();
        }
    }

    public FileCache(File file, long j, boolean z) {
        this.directory = file;
        this.size = j;
        this.loadAsync = z;
        this.cache = new InternalCache();
        file.mkdirs();
        doLoad();
    }

    public long size() {
        return this.cache.size();
    }

    public void clear() {
        removeFiles(this.directory.listFiles());
        this.cache.evictAll();
    }

    public Set<String> keySet() {
        HashSet hashSet = new HashSet();
        File[] listFiles = this.directory.listFiles();
        if (listFiles == null) {
            return hashSet;
        }
        for (File name : listFiles) {
            String name2 = name.getName();
            int lastIndexOf = name2.lastIndexOf(46);
            if (lastIndexOf != -1) {
                hashSet.add(name2.substring(0, lastIndexOf));
            }
        }
        return hashSet;
    }

    public void setMaxSize(long j) {
        this.cache.setMaxSize(j);
        doLoad();
    }
}
