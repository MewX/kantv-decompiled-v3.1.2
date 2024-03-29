package com.google.android.exoplayer2.upstream.cache;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class SimpleCacheSpan extends CacheSpan {
    private static final Pattern CACHE_FILE_PATTERN_V1 = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);
    private static final Pattern CACHE_FILE_PATTERN_V2 = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);
    private static final Pattern CACHE_FILE_PATTERN_V3 = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);
    static final String COMMON_SUFFIX = ".exo";
    private static final String SUFFIX = ".v3.exo";

    public static File getCacheFile(File file, int i, long j, long j2) {
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        String str = ".";
        sb.append(str);
        sb.append(j);
        sb.append(str);
        sb.append(j2);
        sb.append(SUFFIX);
        return new File(file, sb.toString());
    }

    public static SimpleCacheSpan createLookup(String str, long j) {
        SimpleCacheSpan simpleCacheSpan = new SimpleCacheSpan(str, j, -1, C.TIME_UNSET, null);
        return simpleCacheSpan;
    }

    public static SimpleCacheSpan createOpenHole(String str, long j) {
        SimpleCacheSpan simpleCacheSpan = new SimpleCacheSpan(str, j, -1, C.TIME_UNSET, null);
        return simpleCacheSpan;
    }

    public static SimpleCacheSpan createClosedHole(String str, long j, long j2) {
        SimpleCacheSpan simpleCacheSpan = new SimpleCacheSpan(str, j, j2, C.TIME_UNSET, null);
        return simpleCacheSpan;
    }

    @Nullable
    public static SimpleCacheSpan createCacheEntry(File file, long j, CachedContentIndex cachedContentIndex) {
        return createCacheEntry(file, j, C.TIME_UNSET, cachedContentIndex);
    }

    @Nullable
    public static SimpleCacheSpan createCacheEntry(File file, long j, long j2, CachedContentIndex cachedContentIndex) {
        File file2;
        CachedContentIndex cachedContentIndex2 = cachedContentIndex;
        String name = file.getName();
        if (!name.endsWith(SUFFIX)) {
            File file3 = file;
            File upgradeFile = upgradeFile(file, cachedContentIndex2);
            if (upgradeFile == null) {
                return null;
            }
            file2 = upgradeFile;
            name = upgradeFile.getName();
        } else {
            file2 = file;
        }
        Matcher matcher = CACHE_FILE_PATTERN_V3.matcher(name);
        if (!matcher.matches()) {
            return null;
        }
        String keyForId = cachedContentIndex2.getKeyForId(Integer.parseInt(matcher.group(1)));
        if (keyForId == null) {
            return null;
        }
        long length = j == -1 ? file2.length() : j;
        if (length == 0) {
            return null;
        }
        SimpleCacheSpan simpleCacheSpan = new SimpleCacheSpan(keyForId, Long.parseLong(matcher.group(2)), length, j2 == C.TIME_UNSET ? Long.parseLong(matcher.group(3)) : j2, file2);
        return simpleCacheSpan;
    }

    @Nullable
    private static File upgradeFile(File file, CachedContentIndex cachedContentIndex) {
        String str;
        String name = file.getName();
        Matcher matcher = CACHE_FILE_PATTERN_V2.matcher(name);
        if (matcher.matches()) {
            str = Util.unescapeFileName(matcher.group(1));
            if (str == null) {
                return null;
            }
        } else {
            matcher = CACHE_FILE_PATTERN_V1.matcher(name);
            if (!matcher.matches()) {
                return null;
            }
            str = matcher.group(1);
        }
        File cacheFile = getCacheFile(file.getParentFile(), cachedContentIndex.assignIdForKey(str), Long.parseLong(matcher.group(2)), Long.parseLong(matcher.group(3)));
        if (!file.renameTo(cacheFile)) {
            return null;
        }
        return cacheFile;
    }

    private SimpleCacheSpan(String str, long j, long j2, long j3, @Nullable File file) {
        super(str, j, j2, j3, file);
    }

    public SimpleCacheSpan copyWithFileAndLastTouchTimestamp(File file, long j) {
        Assertions.checkState(this.isCached);
        SimpleCacheSpan simpleCacheSpan = new SimpleCacheSpan(this.key, this.position, this.length, j, file);
        return simpleCacheSpan;
    }
}
