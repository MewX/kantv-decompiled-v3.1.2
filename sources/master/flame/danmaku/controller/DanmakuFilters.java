package master.flame.danmaku.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;
import master.flame.danmaku.danmaku.model.BaseDanmaku;
import master.flame.danmaku.danmaku.model.DanmakuTimer;
import master.flame.danmaku.danmaku.model.Duration;
import master.flame.danmaku.danmaku.model.IDanmakus;
import master.flame.danmaku.danmaku.model.IDanmakus.DefaultConsumer;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.model.android.Danmakus;
import master.flame.danmaku.danmaku.util.SystemClock;

public class DanmakuFilters {
    public static final int FILTER_TYPE_DUPLICATE_MERGE = 128;
    public static final int FILTER_TYPE_ELAPSED_TIME = 4;
    public static final int FILTER_TYPE_MAXIMUM_LINES = 256;
    public static final int FILTER_TYPE_OVERLAPPING = 512;
    public static final int FILTER_TYPE_TEXTCOLOR = 8;
    public static final int FILTER_TYPE_TYPE = 1;
    public static final int FILTER_TYPE_USER_GUEST = 64;
    public static final int FILTER_TYPE_USER_HASH = 32;
    public static final int FILTER_TYPE_USER_ID = 16;
    public static final int FILYER_TYPE_QUANTITY = 2;
    public static final String TAG_DUPLICATE_FILTER = "1017_Filter";
    public static final String TAG_ELAPSED_TIME_FILTER = "1012_Filter";
    public static final String TAG_GUEST_FILTER = "1016_Filter";
    public static final String TAG_MAXIMUN_LINES_FILTER = "1018_Filter";
    public static final String TAG_OVERLAPPING_FILTER = "1019_Filter";
    public static final String TAG_PRIMARY_CUSTOM_FILTER = "2000_Primary_Custom_Filter";
    public static final String TAG_QUANTITY_DANMAKU_FILTER = "1011_Filter";
    public static final String TAG_TEXT_COLOR_DANMAKU_FILTER = "1013_Filter";
    public static final String TAG_TYPE_DANMAKU_FILTER = "1010_Filter";
    public static final String TAG_USER_HASH_FILTER = "1015_Filter";
    public static final String TAG_USER_ID_FILTER = "1014_Filter";
    public final Exception filterException = new Exception("not suuport this filter tag");
    private final Map<String, IDanmakuFilter<?>> filters = Collections.synchronizedSortedMap(new TreeMap());
    private final Map<String, IDanmakuFilter<?>> filtersSecondary = Collections.synchronizedSortedMap(new TreeMap());
    IDanmakuFilter<?>[] mFilterArray = new IDanmakuFilter[0];
    IDanmakuFilter<?>[] mFilterArraySecondary = new IDanmakuFilter[0];

    public static abstract class BaseDanmakuFilter<T> implements IDanmakuFilter<T> {
        public void clear() {
        }
    }

    public static class DuplicateMergingFilter extends BaseDanmakuFilter<Void> {
        protected final IDanmakus blockedDanmakus = new Danmakus(4);
        protected final LinkedHashMap<String, BaseDanmaku> currentDanmakus = new LinkedHashMap<>();
        private final IDanmakus passedDanmakus = new Danmakus(4);

        public void setData(Void voidR) {
        }

        private final void removeTimeoutDanmakus(IDanmakus iDanmakus, final long j) {
            iDanmakus.forEachSync(new DefaultConsumer<BaseDanmaku>() {
                long startTime = SystemClock.uptimeMillis();

                public int accept(BaseDanmaku baseDanmaku) {
                    try {
                        if (SystemClock.uptimeMillis() - this.startTime <= j && baseDanmaku.isTimeOut()) {
                            return 2;
                        }
                    } catch (Exception unused) {
                    }
                    return 1;
                }
            });
        }

        private void removeTimeoutDanmakus(LinkedHashMap<String, BaseDanmaku> linkedHashMap, int i) {
            Iterator it = linkedHashMap.entrySet().iterator();
            long uptimeMillis = SystemClock.uptimeMillis();
            while (it.hasNext()) {
                try {
                    if (((BaseDanmaku) ((Entry) it.next()).getValue()).isTimeOut()) {
                        it.remove();
                        if (SystemClock.uptimeMillis() - uptimeMillis > ((long) i)) {
                            return;
                        }
                    } else {
                        return;
                    }
                } catch (Exception unused) {
                    return;
                }
            }
        }

        public synchronized boolean needFilter(BaseDanmaku baseDanmaku, int i, int i2, DanmakuTimer danmakuTimer, boolean z) {
            removeTimeoutDanmakus(this.blockedDanmakus, 2);
            removeTimeoutDanmakus(this.passedDanmakus, 2);
            removeTimeoutDanmakus(this.currentDanmakus, 3);
            if (this.blockedDanmakus.contains(baseDanmaku) && !baseDanmaku.isOutside()) {
                return true;
            }
            if (this.passedDanmakus.contains(baseDanmaku)) {
                return false;
            }
            if (this.currentDanmakus.containsKey(baseDanmaku.text)) {
                this.currentDanmakus.put(String.valueOf(baseDanmaku.text), baseDanmaku);
                this.blockedDanmakus.removeItem(baseDanmaku);
                this.blockedDanmakus.addItem(baseDanmaku);
                return true;
            }
            this.currentDanmakus.put(String.valueOf(baseDanmaku.text), baseDanmaku);
            this.passedDanmakus.addItem(baseDanmaku);
            return false;
        }

        public boolean filter(BaseDanmaku baseDanmaku, int i, int i2, DanmakuTimer danmakuTimer, boolean z, DanmakuContext danmakuContext) {
            boolean needFilter = needFilter(baseDanmaku, i, i2, danmakuTimer, z);
            if (needFilter) {
                baseDanmaku.mFilterParam |= 128;
            }
            return needFilter;
        }

        public synchronized void reset() {
            this.passedDanmakus.clear();
            this.blockedDanmakus.clear();
            this.currentDanmakus.clear();
        }

        public void clear() {
            reset();
        }
    }

    public static class ElapsedTimeFilter extends BaseDanmakuFilter<Object> {
        long mMaxTime = 20;

        /* JADX WARNING: Code restructure failed: missing block: B:19:0x0021, code lost:
            return false;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private synchronized boolean needFilter(master.flame.danmaku.danmaku.model.BaseDanmaku r3, int r4, int r5, master.flame.danmaku.danmaku.model.DanmakuTimer r6, boolean r7) {
            /*
                r2 = this;
                monitor-enter(r2)
                r4 = 0
                if (r6 == 0) goto L_0x0020
                boolean r3 = r3.isOutside()     // Catch:{ all -> 0x001d }
                if (r3 != 0) goto L_0x000b
                goto L_0x0020
            L_0x000b:
                long r0 = master.flame.danmaku.danmaku.util.SystemClock.uptimeMillis()     // Catch:{ all -> 0x001d }
                long r5 = r6.currMillisecond     // Catch:{ all -> 0x001d }
                long r0 = r0 - r5
                long r5 = r2.mMaxTime     // Catch:{ all -> 0x001d }
                int r3 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
                if (r3 < 0) goto L_0x001b
                r3 = 1
                monitor-exit(r2)
                return r3
            L_0x001b:
                monitor-exit(r2)
                return r4
            L_0x001d:
                r3 = move-exception
                monitor-exit(r2)
                throw r3
            L_0x0020:
                monitor-exit(r2)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: master.flame.danmaku.controller.DanmakuFilters.ElapsedTimeFilter.needFilter(master.flame.danmaku.danmaku.model.BaseDanmaku, int, int, master.flame.danmaku.danmaku.model.DanmakuTimer, boolean):boolean");
        }

        public boolean filter(BaseDanmaku baseDanmaku, int i, int i2, DanmakuTimer danmakuTimer, boolean z, DanmakuContext danmakuContext) {
            boolean needFilter = needFilter(baseDanmaku, i, i2, danmakuTimer, z);
            if (needFilter) {
                baseDanmaku.mFilterParam |= 4;
            }
            return needFilter;
        }

        public void setData(Object obj) {
            reset();
        }

        public synchronized void reset() {
        }

        public void clear() {
            reset();
        }
    }

    public static class GuestFilter extends BaseDanmakuFilter<Boolean> {
        private Boolean mBlock = Boolean.valueOf(false);

        public boolean filter(BaseDanmaku baseDanmaku, int i, int i2, DanmakuTimer danmakuTimer, boolean z, DanmakuContext danmakuContext) {
            boolean z2 = this.mBlock.booleanValue() && baseDanmaku.isGuest;
            if (z2) {
                baseDanmaku.mFilterParam |= 64;
            }
            return z2;
        }

        public void setData(Boolean bool) {
            this.mBlock = bool;
        }

        public void reset() {
            this.mBlock = Boolean.valueOf(false);
        }
    }

    public interface IDanmakuFilter<T> {
        void clear();

        boolean filter(BaseDanmaku baseDanmaku, int i, int i2, DanmakuTimer danmakuTimer, boolean z, DanmakuContext danmakuContext);

        void reset();

        void setData(T t);
    }

    public static class MaximumLinesFilter extends BaseDanmakuFilter<Map<Integer, Integer>> {
        private Map<Integer, Integer> mMaximumLinesPairs;

        public boolean filter(BaseDanmaku baseDanmaku, int i, int i2, DanmakuTimer danmakuTimer, boolean z, DanmakuContext danmakuContext) {
            Map<Integer, Integer> map = this.mMaximumLinesPairs;
            boolean z2 = false;
            if (map != null) {
                Integer num = (Integer) map.get(Integer.valueOf(baseDanmaku.getType()));
                if (num != null && i >= num.intValue()) {
                    z2 = true;
                }
                if (z2) {
                    baseDanmaku.mFilterParam |= 256;
                }
            }
            return z2;
        }

        public void setData(Map<Integer, Integer> map) {
            this.mMaximumLinesPairs = map;
        }

        public void reset() {
            this.mMaximumLinesPairs = null;
        }
    }

    public static class OverlappingFilter extends BaseDanmakuFilter<Map<Integer, Boolean>> {
        private Map<Integer, Boolean> mEnabledPairs;

        public boolean filter(BaseDanmaku baseDanmaku, int i, int i2, DanmakuTimer danmakuTimer, boolean z, DanmakuContext danmakuContext) {
            Map<Integer, Boolean> map = this.mEnabledPairs;
            boolean z2 = false;
            if (map != null) {
                Boolean bool = (Boolean) map.get(Integer.valueOf(baseDanmaku.getType()));
                if (bool != null && bool.booleanValue() && z) {
                    z2 = true;
                }
                if (z2) {
                    baseDanmaku.mFilterParam |= 512;
                }
            }
            return z2;
        }

        public void setData(Map<Integer, Boolean> map) {
            this.mEnabledPairs = map;
        }

        public void reset() {
            this.mEnabledPairs = null;
        }
    }

    public static class QuantityDanmakuFilter extends BaseDanmakuFilter<Integer> {
        private float mFilterFactor = 1.0f;
        protected BaseDanmaku mLastSkipped = null;
        protected int mMaximumSize = -1;

        private boolean needFilter(BaseDanmaku baseDanmaku, int i, int i2, DanmakuTimer danmakuTimer, boolean z, DanmakuContext danmakuContext) {
            if (this.mMaximumSize > 0 && baseDanmaku.getType() == 1) {
                BaseDanmaku baseDanmaku2 = this.mLastSkipped;
                if (baseDanmaku2 == null || baseDanmaku2.isTimeOut()) {
                    this.mLastSkipped = baseDanmaku;
                } else {
                    long actualTime = baseDanmaku.getActualTime() - this.mLastSkipped.getActualTime();
                    Duration duration = danmakuContext.mDanmakuFactory.MAX_Duration_Scroll_Danmaku;
                    if ((actualTime >= 0 && duration != null && ((float) actualTime) < ((float) duration.value) * this.mFilterFactor) || i > this.mMaximumSize) {
                        return true;
                    }
                    this.mLastSkipped = baseDanmaku;
                    return false;
                }
            }
            return false;
        }

        public synchronized boolean filter(BaseDanmaku baseDanmaku, int i, int i2, DanmakuTimer danmakuTimer, boolean z, DanmakuContext danmakuContext) {
            boolean needFilter;
            needFilter = needFilter(baseDanmaku, i, i2, danmakuTimer, z, danmakuContext);
            if (needFilter) {
                baseDanmaku.mFilterParam |= 2;
            }
            return needFilter;
        }

        public void setData(Integer num) {
            reset();
            if (!(num == null || num.intValue() == this.mMaximumSize)) {
                this.mMaximumSize = num.intValue() + (num.intValue() / 5);
                this.mFilterFactor = 1.0f / ((float) this.mMaximumSize);
            }
        }

        public synchronized void reset() {
            this.mLastSkipped = null;
        }

        public void clear() {
            reset();
        }
    }

    public static class TextColorFilter extends BaseDanmakuFilter<List<Integer>> {
        public List<Integer> mWhiteList = new ArrayList();

        private void addToWhiteList(Integer num) {
            if (!this.mWhiteList.contains(num)) {
                this.mWhiteList.add(num);
            }
        }

        public boolean filter(BaseDanmaku baseDanmaku, int i, int i2, DanmakuTimer danmakuTimer, boolean z, DanmakuContext danmakuContext) {
            boolean z2 = baseDanmaku != null && !this.mWhiteList.contains(Integer.valueOf(baseDanmaku.textColor));
            if (z2) {
                baseDanmaku.mFilterParam |= 8;
            }
            return z2;
        }

        public void setData(List<Integer> list) {
            reset();
            if (list != null) {
                for (Integer addToWhiteList : list) {
                    addToWhiteList(addToWhiteList);
                }
            }
        }

        public void reset() {
            this.mWhiteList.clear();
        }
    }

    public static class TypeDanmakuFilter extends BaseDanmakuFilter<List<Integer>> {
        final List<Integer> mFilterTypes = Collections.synchronizedList(new ArrayList());

        public void enableType(Integer num) {
            if (!this.mFilterTypes.contains(num)) {
                this.mFilterTypes.add(num);
            }
        }

        public void disableType(Integer num) {
            if (this.mFilterTypes.contains(num)) {
                this.mFilterTypes.remove(num);
            }
        }

        public boolean filter(BaseDanmaku baseDanmaku, int i, int i2, DanmakuTimer danmakuTimer, boolean z, DanmakuContext danmakuContext) {
            boolean z2 = baseDanmaku != null && this.mFilterTypes.contains(Integer.valueOf(baseDanmaku.getType()));
            if (z2) {
                baseDanmaku.mFilterParam = 1 | baseDanmaku.mFilterParam;
            }
            return z2;
        }

        public void setData(List<Integer> list) {
            reset();
            if (list != null) {
                for (Integer enableType : list) {
                    enableType(enableType);
                }
            }
        }

        public void reset() {
            this.mFilterTypes.clear();
        }
    }

    public static abstract class UserFilter<T> extends BaseDanmakuFilter<List<T>> {
        public List<T> mBlackList = new ArrayList();

        public abstract boolean filter(BaseDanmaku baseDanmaku, int i, int i2, DanmakuTimer danmakuTimer, boolean z, DanmakuContext danmakuContext);

        private void addToBlackList(T t) {
            if (!this.mBlackList.contains(t)) {
                this.mBlackList.add(t);
            }
        }

        public void setData(List<T> list) {
            reset();
            if (list != null) {
                for (T addToBlackList : list) {
                    addToBlackList(addToBlackList);
                }
            }
        }

        public void reset() {
            this.mBlackList.clear();
        }
    }

    public static class UserHashFilter extends UserFilter<String> {
        public boolean filter(BaseDanmaku baseDanmaku, int i, int i2, DanmakuTimer danmakuTimer, boolean z, DanmakuContext danmakuContext) {
            boolean z2 = baseDanmaku != null && this.mBlackList.contains(baseDanmaku.userHash);
            if (z2) {
                baseDanmaku.mFilterParam |= 32;
            }
            return z2;
        }
    }

    public static class UserIdFilter extends UserFilter<Integer> {
        public boolean filter(BaseDanmaku baseDanmaku, int i, int i2, DanmakuTimer danmakuTimer, boolean z, DanmakuContext danmakuContext) {
            boolean z2 = baseDanmaku != null && this.mBlackList.contains(Integer.valueOf(baseDanmaku.userId));
            if (z2) {
                baseDanmaku.mFilterParam |= 16;
            }
            return z2;
        }
    }

    public void filter(BaseDanmaku baseDanmaku, int i, int i2, DanmakuTimer danmakuTimer, boolean z, DanmakuContext danmakuContext) {
        IDanmakuFilter<?>[] iDanmakuFilterArr;
        for (IDanmakuFilter<?> iDanmakuFilter : this.mFilterArray) {
            if (iDanmakuFilter != null) {
                boolean filter = iDanmakuFilter.filter(baseDanmaku, i, i2, danmakuTimer, z, danmakuContext);
                baseDanmaku.filterResetFlag = danmakuContext.mGlobalFlagValues.FILTER_RESET_FLAG;
                if (filter) {
                    return;
                }
            } else {
                BaseDanmaku baseDanmaku2 = baseDanmaku;
                DanmakuContext danmakuContext2 = danmakuContext;
            }
        }
    }

    public boolean filterSecondary(BaseDanmaku baseDanmaku, int i, int i2, DanmakuTimer danmakuTimer, boolean z, DanmakuContext danmakuContext) {
        IDanmakuFilter<?>[] iDanmakuFilterArr;
        for (IDanmakuFilter<?> iDanmakuFilter : this.mFilterArraySecondary) {
            if (iDanmakuFilter != null) {
                boolean filter = iDanmakuFilter.filter(baseDanmaku, i, i2, danmakuTimer, z, danmakuContext);
                baseDanmaku.filterResetFlag = danmakuContext.mGlobalFlagValues.FILTER_RESET_FLAG;
                if (filter) {
                    return true;
                }
            } else {
                BaseDanmaku baseDanmaku2 = baseDanmaku;
                DanmakuContext danmakuContext2 = danmakuContext;
            }
        }
        return false;
    }

    public IDanmakuFilter<?> get(String str) {
        return get(str, true);
    }

    public IDanmakuFilter<?> get(String str, boolean z) {
        IDanmakuFilter<?> iDanmakuFilter = (IDanmakuFilter) (z ? this.filters : this.filtersSecondary).get(str);
        return iDanmakuFilter == null ? registerFilter(str, z) : iDanmakuFilter;
    }

    public IDanmakuFilter<?> registerFilter(String str) {
        return registerFilter(str, true);
    }

    public IDanmakuFilter<?> registerFilter(String str, boolean z) {
        if (str == null) {
            throwFilterException();
            return null;
        }
        IDanmakuFilter<?> iDanmakuFilter = (IDanmakuFilter) this.filters.get(str);
        if (iDanmakuFilter == null) {
            if (TAG_TYPE_DANMAKU_FILTER.equals(str)) {
                iDanmakuFilter = new TypeDanmakuFilter<>();
            } else if (TAG_QUANTITY_DANMAKU_FILTER.equals(str)) {
                iDanmakuFilter = new QuantityDanmakuFilter<>();
            } else if (TAG_ELAPSED_TIME_FILTER.equals(str)) {
                iDanmakuFilter = new ElapsedTimeFilter<>();
            } else if (TAG_TEXT_COLOR_DANMAKU_FILTER.equals(str)) {
                iDanmakuFilter = new TextColorFilter<>();
            } else if (TAG_USER_ID_FILTER.equals(str)) {
                iDanmakuFilter = new UserIdFilter<>();
            } else if (TAG_USER_HASH_FILTER.equals(str)) {
                iDanmakuFilter = new UserHashFilter<>();
            } else if (TAG_GUEST_FILTER.equals(str)) {
                iDanmakuFilter = new GuestFilter<>();
            } else if (TAG_DUPLICATE_FILTER.equals(str)) {
                iDanmakuFilter = new DuplicateMergingFilter<>();
            } else if (TAG_MAXIMUN_LINES_FILTER.equals(str)) {
                iDanmakuFilter = new MaximumLinesFilter<>();
            } else if (TAG_OVERLAPPING_FILTER.equals(str)) {
                iDanmakuFilter = new OverlappingFilter<>();
            }
        }
        if (iDanmakuFilter == null) {
            throwFilterException();
            return null;
        }
        iDanmakuFilter.setData(null);
        if (z) {
            this.filters.put(str, iDanmakuFilter);
            this.mFilterArray = (IDanmakuFilter[]) this.filters.values().toArray(this.mFilterArray);
        } else {
            this.filtersSecondary.put(str, iDanmakuFilter);
            this.mFilterArraySecondary = (IDanmakuFilter[]) this.filtersSecondary.values().toArray(this.mFilterArraySecondary);
        }
        return iDanmakuFilter;
    }

    public void registerFilter(BaseDanmakuFilter baseDanmakuFilter) {
        Map<String, IDanmakuFilter<?>> map = this.filters;
        StringBuilder sb = new StringBuilder();
        sb.append("2000_Primary_Custom_Filter_");
        sb.append(baseDanmakuFilter.hashCode());
        map.put(sb.toString(), baseDanmakuFilter);
        this.mFilterArray = (IDanmakuFilter[]) this.filters.values().toArray(this.mFilterArray);
    }

    public void unregisterFilter(String str) {
        unregisterFilter(str, true);
    }

    public void unregisterFilter(String str, boolean z) {
        IDanmakuFilter iDanmakuFilter = (IDanmakuFilter) (z ? this.filters : this.filtersSecondary).remove(str);
        if (iDanmakuFilter != null) {
            iDanmakuFilter.clear();
            if (z) {
                this.mFilterArray = (IDanmakuFilter[]) this.filters.values().toArray(this.mFilterArray);
            } else {
                this.mFilterArraySecondary = (IDanmakuFilter[]) this.filtersSecondary.values().toArray(this.mFilterArraySecondary);
            }
        }
    }

    public void unregisterFilter(BaseDanmakuFilter baseDanmakuFilter) {
        Map<String, IDanmakuFilter<?>> map = this.filters;
        StringBuilder sb = new StringBuilder();
        sb.append("2000_Primary_Custom_Filter_");
        sb.append(baseDanmakuFilter.hashCode());
        map.remove(sb.toString());
        this.mFilterArray = (IDanmakuFilter[]) this.filters.values().toArray(this.mFilterArray);
    }

    public void clear() {
        IDanmakuFilter<?>[] iDanmakuFilterArr;
        IDanmakuFilter<?>[] iDanmakuFilterArr2;
        for (IDanmakuFilter<?> iDanmakuFilter : this.mFilterArray) {
            if (iDanmakuFilter != null) {
                iDanmakuFilter.clear();
            }
        }
        for (IDanmakuFilter<?> iDanmakuFilter2 : this.mFilterArraySecondary) {
            if (iDanmakuFilter2 != null) {
                iDanmakuFilter2.clear();
            }
        }
    }

    public void reset() {
        IDanmakuFilter<?>[] iDanmakuFilterArr;
        IDanmakuFilter<?>[] iDanmakuFilterArr2;
        for (IDanmakuFilter<?> iDanmakuFilter : this.mFilterArray) {
            if (iDanmakuFilter != null) {
                iDanmakuFilter.reset();
            }
        }
        for (IDanmakuFilter<?> iDanmakuFilter2 : this.mFilterArraySecondary) {
            if (iDanmakuFilter2 != null) {
                iDanmakuFilter2.reset();
            }
        }
    }

    public void release() {
        clear();
        this.filters.clear();
        this.mFilterArray = new IDanmakuFilter[0];
        this.filtersSecondary.clear();
        this.mFilterArraySecondary = new IDanmakuFilter[0];
    }

    private void throwFilterException() {
        try {
            throw this.filterException;
        } catch (Exception unused) {
        }
    }
}
