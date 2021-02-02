package master.flame.danmaku.danmaku.model.android;

import android.graphics.Typeface;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import master.flame.danmaku.controller.DanmakuFilters;
import master.flame.danmaku.controller.DanmakuFilters.BaseDanmakuFilter;
import master.flame.danmaku.danmaku.model.AbsDanmakuSync;
import master.flame.danmaku.danmaku.model.AbsDisplayer;
import master.flame.danmaku.danmaku.model.AlphaValue;
import master.flame.danmaku.danmaku.model.GlobalFlagValues;
import master.flame.danmaku.danmaku.model.IDanmakus.BaseComparator;
import master.flame.danmaku.danmaku.model.android.BaseCacheStuffer.Proxy;

public class DanmakuContext implements Cloneable {
    public boolean FBDanmakuVisibility = true;
    public boolean FTDanmakuVisibility = true;
    public boolean L2RDanmakuVisibility = true;
    public boolean R2LDanmakuVisibility = true;
    public boolean SpecialDanmakuVisibility = true;
    public CachingPolicy cachingPolicy = CachingPolicy.POLICY_DEFAULT;
    public AbsDanmakuSync danmakuSync;
    private BaseComparator mBaseComparator;
    private boolean mBlockGuestDanmaku = false;
    private BaseCacheStuffer mCacheStuffer;
    private List<WeakReference<ConfigChangedCallback>> mCallbackList;
    List<Integer> mColorValueWhiteList = new ArrayList();
    public DanmakuFactory mDanmakuFactory = DanmakuFactory.create();
    public DanmakuFilters mDanmakuFilters = new DanmakuFilters();
    public AbsDisplayer mDisplayer = new AndroidDisplayer();
    private boolean mDuplicateMergingEnable = false;
    List<Integer> mFilterTypes = new ArrayList();
    public Typeface mFont = null;
    public GlobalFlagValues mGlobalFlagValues = new GlobalFlagValues();
    private boolean mIsAlignBottom = false;
    private boolean mIsMaxLinesLimited;
    private boolean mIsPreventOverlappingEnabled;
    List<String> mUserHashBlackList = new ArrayList();
    List<Integer> mUserIdBlackList = new ArrayList();
    public int margin = 0;
    public int maximumNumsInScreen = -1;
    public float scaleTextSize = 1.0f;
    public float scrollSpeedFactor = 1.0f;
    public int transparency = AlphaValue.MAX;
    public byte updateMethod = 0;

    public interface ConfigChangedCallback {
        boolean onDanmakuConfigChanged(DanmakuContext danmakuContext, DanmakuConfigTag danmakuConfigTag, Object... objArr);
    }

    public enum DanmakuConfigTag {
        FT_DANMAKU_VISIBILITY,
        FB_DANMAKU_VISIBILITY,
        L2R_DANMAKU_VISIBILITY,
        R2L_DANMAKU_VISIBILIY,
        SPECIAL_DANMAKU_VISIBILITY,
        TYPEFACE,
        TRANSPARENCY,
        SCALE_TEXTSIZE,
        MAXIMUM_NUMS_IN_SCREEN,
        DANMAKU_STYLE,
        DANMAKU_BOLD,
        COLOR_VALUE_WHITE_LIST,
        USER_ID_BLACK_LIST,
        USER_HASH_BLACK_LIST,
        SCROLL_SPEED_FACTOR,
        BLOCK_GUEST_DANMAKU,
        DUPLICATE_MERGING_ENABLED,
        MAXIMUN_LINES,
        OVERLAPPING_ENABLE,
        ALIGN_BOTTOM,
        DANMAKU_MARGIN,
        DANMAKU_SYNC;

        public boolean isVisibilityRelatedTag() {
            return equals(FT_DANMAKU_VISIBILITY) || equals(FB_DANMAKU_VISIBILITY) || equals(L2R_DANMAKU_VISIBILITY) || equals(R2L_DANMAKU_VISIBILIY) || equals(SPECIAL_DANMAKU_VISIBILITY) || equals(COLOR_VALUE_WHITE_LIST) || equals(USER_ID_BLACK_LIST);
        }
    }

    public static DanmakuContext create() {
        return new DanmakuContext();
    }

    public BaseComparator getBaseComparator() {
        return this.mBaseComparator;
    }

    public void setBaseComparator(BaseComparator baseComparator) {
        this.mBaseComparator = baseComparator;
    }

    public AbsDisplayer getDisplayer() {
        return this.mDisplayer;
    }

    public DanmakuContext setTypeface(Typeface typeface) {
        if (this.mFont != typeface) {
            this.mFont = typeface;
            this.mDisplayer.clearTextHeightCache();
            this.mDisplayer.setTypeFace(typeface);
            notifyConfigureChanged(DanmakuConfigTag.TYPEFACE, new Object[0]);
        }
        return this;
    }

    public DanmakuContext setDanmakuTransparency(float f) {
        int i = (int) (((float) AlphaValue.MAX) * f);
        if (i != this.transparency) {
            this.transparency = i;
            this.mDisplayer.setTransparency(i);
            notifyConfigureChanged(DanmakuConfigTag.TRANSPARENCY, Float.valueOf(f));
        }
        return this;
    }

    public DanmakuContext setScaleTextSize(float f) {
        if (this.scaleTextSize != f) {
            this.scaleTextSize = f;
            this.mDisplayer.clearTextHeightCache();
            this.mDisplayer.setScaleTextSizeFactor(f);
            this.mGlobalFlagValues.updateMeasureFlag();
            this.mGlobalFlagValues.updateVisibleFlag();
            notifyConfigureChanged(DanmakuConfigTag.SCALE_TEXTSIZE, Float.valueOf(f));
        }
        return this;
    }

    public DanmakuContext setDanmakuMargin(int i) {
        if (this.margin != i) {
            this.margin = i;
            this.mDisplayer.setMargin(i);
            this.mGlobalFlagValues.updateFilterFlag();
            this.mGlobalFlagValues.updateVisibleFlag();
            notifyConfigureChanged(DanmakuConfigTag.DANMAKU_MARGIN, Integer.valueOf(i));
        }
        return this;
    }

    public DanmakuContext setMarginTop(int i) {
        this.mDisplayer.setAllMarginTop(i);
        return this;
    }

    public boolean getFTDanmakuVisibility() {
        return this.FTDanmakuVisibility;
    }

    public DanmakuContext setFTDanmakuVisibility(boolean z) {
        setDanmakuVisible(z, 5);
        setFilterData(DanmakuFilters.TAG_TYPE_DANMAKU_FILTER, this.mFilterTypes);
        this.mGlobalFlagValues.updateFilterFlag();
        if (this.FTDanmakuVisibility != z) {
            this.FTDanmakuVisibility = z;
            notifyConfigureChanged(DanmakuConfigTag.FT_DANMAKU_VISIBILITY, Boolean.valueOf(z));
        }
        return this;
    }

    private <T> void setFilterData(String str, T t) {
        setFilterData(str, t, true);
    }

    private <T> void setFilterData(String str, T t, boolean z) {
        this.mDanmakuFilters.get(str, z).setData(t);
    }

    private void setDanmakuVisible(boolean z, int i) {
        if (z) {
            this.mFilterTypes.remove(Integer.valueOf(i));
        } else if (!this.mFilterTypes.contains(Integer.valueOf(i))) {
            this.mFilterTypes.add(Integer.valueOf(i));
        }
    }

    public boolean getFBDanmakuVisibility() {
        return this.FBDanmakuVisibility;
    }

    public DanmakuContext setFBDanmakuVisibility(boolean z) {
        setDanmakuVisible(z, 4);
        setFilterData(DanmakuFilters.TAG_TYPE_DANMAKU_FILTER, this.mFilterTypes);
        this.mGlobalFlagValues.updateFilterFlag();
        if (this.FBDanmakuVisibility != z) {
            this.FBDanmakuVisibility = z;
            notifyConfigureChanged(DanmakuConfigTag.FB_DANMAKU_VISIBILITY, Boolean.valueOf(z));
        }
        return this;
    }

    public boolean getL2RDanmakuVisibility() {
        return this.L2RDanmakuVisibility;
    }

    public DanmakuContext setL2RDanmakuVisibility(boolean z) {
        setDanmakuVisible(z, 6);
        setFilterData(DanmakuFilters.TAG_TYPE_DANMAKU_FILTER, this.mFilterTypes);
        this.mGlobalFlagValues.updateFilterFlag();
        if (this.L2RDanmakuVisibility != z) {
            this.L2RDanmakuVisibility = z;
            notifyConfigureChanged(DanmakuConfigTag.L2R_DANMAKU_VISIBILITY, Boolean.valueOf(z));
        }
        return this;
    }

    public boolean getR2LDanmakuVisibility() {
        return this.R2LDanmakuVisibility;
    }

    public DanmakuContext setR2LDanmakuVisibility(boolean z) {
        setDanmakuVisible(z, 1);
        setFilterData(DanmakuFilters.TAG_TYPE_DANMAKU_FILTER, this.mFilterTypes);
        this.mGlobalFlagValues.updateFilterFlag();
        if (this.R2LDanmakuVisibility != z) {
            this.R2LDanmakuVisibility = z;
            notifyConfigureChanged(DanmakuConfigTag.R2L_DANMAKU_VISIBILIY, Boolean.valueOf(z));
        }
        return this;
    }

    public boolean getSpecialDanmakuVisibility() {
        return this.SpecialDanmakuVisibility;
    }

    public DanmakuContext setSpecialDanmakuVisibility(boolean z) {
        setDanmakuVisible(z, 7);
        setFilterData(DanmakuFilters.TAG_TYPE_DANMAKU_FILTER, this.mFilterTypes);
        this.mGlobalFlagValues.updateFilterFlag();
        if (this.SpecialDanmakuVisibility != z) {
            this.SpecialDanmakuVisibility = z;
            notifyConfigureChanged(DanmakuConfigTag.SPECIAL_DANMAKU_VISIBILITY, Boolean.valueOf(z));
        }
        return this;
    }

    public DanmakuContext setMaximumVisibleSizeInScreen(int i) {
        this.maximumNumsInScreen = i;
        String str = DanmakuFilters.TAG_ELAPSED_TIME_FILTER;
        String str2 = DanmakuFilters.TAG_QUANTITY_DANMAKU_FILTER;
        if (i == 0) {
            this.mDanmakuFilters.unregisterFilter(str2);
            this.mDanmakuFilters.unregisterFilter(str);
            notifyConfigureChanged(DanmakuConfigTag.MAXIMUM_NUMS_IN_SCREEN, Integer.valueOf(i));
            return this;
        } else if (i == -1) {
            this.mDanmakuFilters.unregisterFilter(str2);
            this.mDanmakuFilters.registerFilter(str);
            notifyConfigureChanged(DanmakuConfigTag.MAXIMUM_NUMS_IN_SCREEN, Integer.valueOf(i));
            return this;
        } else {
            setFilterData(str2, Integer.valueOf(i));
            this.mGlobalFlagValues.updateFilterFlag();
            notifyConfigureChanged(DanmakuConfigTag.MAXIMUM_NUMS_IN_SCREEN, Integer.valueOf(i));
            return this;
        }
    }

    public DanmakuContext setDanmakuStyle(int i, float... fArr) {
        this.mDisplayer.setDanmakuStyle(i, fArr);
        notifyConfigureChanged(DanmakuConfigTag.DANMAKU_STYLE, Integer.valueOf(i), fArr);
        return this;
    }

    public DanmakuContext setDanmakuBold(boolean z) {
        this.mDisplayer.setFakeBoldText(z);
        notifyConfigureChanged(DanmakuConfigTag.DANMAKU_BOLD, Boolean.valueOf(z));
        return this;
    }

    public DanmakuContext setColorValueWhiteList(Integer... numArr) {
        this.mColorValueWhiteList.clear();
        String str = DanmakuFilters.TAG_TEXT_COLOR_DANMAKU_FILTER;
        if (numArr == null || numArr.length == 0) {
            this.mDanmakuFilters.unregisterFilter(str);
        } else {
            Collections.addAll(this.mColorValueWhiteList, numArr);
            setFilterData(str, this.mColorValueWhiteList);
        }
        this.mGlobalFlagValues.updateFilterFlag();
        notifyConfigureChanged(DanmakuConfigTag.COLOR_VALUE_WHITE_LIST, this.mColorValueWhiteList);
        return this;
    }

    public List<Integer> getColorValueWhiteList() {
        return this.mColorValueWhiteList;
    }

    public DanmakuContext setUserHashBlackList(String... strArr) {
        this.mUserHashBlackList.clear();
        String str = DanmakuFilters.TAG_USER_HASH_FILTER;
        if (strArr == null || strArr.length == 0) {
            this.mDanmakuFilters.unregisterFilter(str);
        } else {
            Collections.addAll(this.mUserHashBlackList, strArr);
            setFilterData(str, this.mUserHashBlackList);
        }
        this.mGlobalFlagValues.updateFilterFlag();
        notifyConfigureChanged(DanmakuConfigTag.USER_HASH_BLACK_LIST, this.mUserHashBlackList);
        return this;
    }

    public DanmakuContext removeUserHashBlackList(String... strArr) {
        if (!(strArr == null || strArr.length == 0)) {
            for (String remove : strArr) {
                this.mUserHashBlackList.remove(remove);
            }
            setFilterData(DanmakuFilters.TAG_USER_HASH_FILTER, this.mUserHashBlackList);
            this.mGlobalFlagValues.updateFilterFlag();
            notifyConfigureChanged(DanmakuConfigTag.USER_HASH_BLACK_LIST, this.mUserHashBlackList);
        }
        return this;
    }

    public DanmakuContext addUserHashBlackList(String... strArr) {
        if (!(strArr == null || strArr.length == 0)) {
            Collections.addAll(this.mUserHashBlackList, strArr);
            setFilterData(DanmakuFilters.TAG_USER_HASH_FILTER, this.mUserHashBlackList);
            this.mGlobalFlagValues.updateFilterFlag();
            notifyConfigureChanged(DanmakuConfigTag.USER_HASH_BLACK_LIST, this.mUserHashBlackList);
        }
        return this;
    }

    public List<String> getUserHashBlackList() {
        return this.mUserHashBlackList;
    }

    public DanmakuContext setUserIdBlackList(Integer... numArr) {
        this.mUserIdBlackList.clear();
        String str = DanmakuFilters.TAG_USER_ID_FILTER;
        if (numArr == null || numArr.length == 0) {
            this.mDanmakuFilters.unregisterFilter(str);
        } else {
            Collections.addAll(this.mUserIdBlackList, numArr);
            setFilterData(str, this.mUserIdBlackList);
        }
        this.mGlobalFlagValues.updateFilterFlag();
        notifyConfigureChanged(DanmakuConfigTag.USER_ID_BLACK_LIST, this.mUserIdBlackList);
        return this;
    }

    public DanmakuContext removeUserIdBlackList(Integer... numArr) {
        if (!(numArr == null || numArr.length == 0)) {
            for (Integer remove : numArr) {
                this.mUserIdBlackList.remove(remove);
            }
            setFilterData(DanmakuFilters.TAG_USER_ID_FILTER, this.mUserIdBlackList);
            this.mGlobalFlagValues.updateFilterFlag();
            notifyConfigureChanged(DanmakuConfigTag.USER_ID_BLACK_LIST, this.mUserIdBlackList);
        }
        return this;
    }

    public DanmakuContext addUserIdBlackList(Integer... numArr) {
        if (!(numArr == null || numArr.length == 0)) {
            Collections.addAll(this.mUserIdBlackList, numArr);
            setFilterData(DanmakuFilters.TAG_USER_ID_FILTER, this.mUserIdBlackList);
            this.mGlobalFlagValues.updateFilterFlag();
            notifyConfigureChanged(DanmakuConfigTag.USER_ID_BLACK_LIST, this.mUserIdBlackList);
        }
        return this;
    }

    public List<Integer> getUserIdBlackList() {
        return this.mUserIdBlackList;
    }

    public DanmakuContext blockGuestDanmaku(boolean z) {
        if (this.mBlockGuestDanmaku != z) {
            this.mBlockGuestDanmaku = z;
            String str = DanmakuFilters.TAG_GUEST_FILTER;
            if (z) {
                setFilterData(str, Boolean.valueOf(z));
            } else {
                this.mDanmakuFilters.unregisterFilter(str);
            }
            this.mGlobalFlagValues.updateFilterFlag();
            notifyConfigureChanged(DanmakuConfigTag.BLOCK_GUEST_DANMAKU, Boolean.valueOf(z));
        }
        return this;
    }

    public DanmakuContext setScrollSpeedFactor(float f) {
        if (this.scrollSpeedFactor != f) {
            this.scrollSpeedFactor = f;
            this.mDanmakuFactory.updateDurationFactor(f);
            this.mGlobalFlagValues.updateMeasureFlag();
            this.mGlobalFlagValues.updateVisibleFlag();
            notifyConfigureChanged(DanmakuConfigTag.SCROLL_SPEED_FACTOR, Float.valueOf(f));
        }
        return this;
    }

    public DanmakuContext setDuplicateMergingEnabled(boolean z) {
        if (this.mDuplicateMergingEnable != z) {
            this.mDuplicateMergingEnable = z;
            this.mGlobalFlagValues.updateFilterFlag();
            notifyConfigureChanged(DanmakuConfigTag.DUPLICATE_MERGING_ENABLED, Boolean.valueOf(z));
        }
        return this;
    }

    public boolean isDuplicateMergingEnabled() {
        return this.mDuplicateMergingEnable;
    }

    public DanmakuContext alignBottom(boolean z) {
        if (this.mIsAlignBottom != z) {
            this.mIsAlignBottom = z;
            notifyConfigureChanged(DanmakuConfigTag.ALIGN_BOTTOM, Boolean.valueOf(z));
            this.mGlobalFlagValues.updateVisibleFlag();
        }
        return this;
    }

    public boolean isAlignBottom() {
        return this.mIsAlignBottom;
    }

    public DanmakuContext setMaximumLines(Map<Integer, Integer> map) {
        this.mIsMaxLinesLimited = map != null;
        String str = DanmakuFilters.TAG_MAXIMUN_LINES_FILTER;
        if (map == null) {
            this.mDanmakuFilters.unregisterFilter(str, false);
        } else {
            setFilterData(str, map, false);
        }
        this.mGlobalFlagValues.updateFilterFlag();
        notifyConfigureChanged(DanmakuConfigTag.MAXIMUN_LINES, map);
        return this;
    }

    @Deprecated
    public DanmakuContext setOverlapping(Map<Integer, Boolean> map) {
        return preventOverlapping(map);
    }

    public DanmakuContext preventOverlapping(Map<Integer, Boolean> map) {
        this.mIsPreventOverlappingEnabled = map != null;
        String str = DanmakuFilters.TAG_OVERLAPPING_FILTER;
        if (map == null) {
            this.mDanmakuFilters.unregisterFilter(str, false);
        } else {
            setFilterData(str, map, false);
        }
        this.mGlobalFlagValues.updateFilterFlag();
        notifyConfigureChanged(DanmakuConfigTag.OVERLAPPING_ENABLE, map);
        return this;
    }

    public boolean isMaxLinesLimited() {
        return this.mIsMaxLinesLimited;
    }

    public boolean isPreventOverlappingEnabled() {
        return this.mIsPreventOverlappingEnabled;
    }

    public DanmakuContext setCacheStuffer(BaseCacheStuffer baseCacheStuffer, Proxy proxy) {
        this.mCacheStuffer = baseCacheStuffer;
        BaseCacheStuffer baseCacheStuffer2 = this.mCacheStuffer;
        if (baseCacheStuffer2 != null) {
            baseCacheStuffer2.setProxy(proxy);
            this.mDisplayer.setCacheStuffer(this.mCacheStuffer);
        }
        return this;
    }

    public DanmakuContext setDanmakuSync(AbsDanmakuSync absDanmakuSync) {
        this.danmakuSync = absDanmakuSync;
        return this;
    }

    public DanmakuContext setCachingPolicy(CachingPolicy cachingPolicy2) {
        this.cachingPolicy = cachingPolicy2;
        return this;
    }

    public void registerConfigChangedCallback(ConfigChangedCallback configChangedCallback) {
        if (configChangedCallback == null || this.mCallbackList == null) {
            this.mCallbackList = Collections.synchronizedList(new ArrayList());
        }
        for (WeakReference weakReference : this.mCallbackList) {
            if (configChangedCallback.equals(weakReference.get())) {
                return;
            }
        }
        this.mCallbackList.add(new WeakReference(configChangedCallback));
    }

    public void unregisterConfigChangedCallback(ConfigChangedCallback configChangedCallback) {
        if (configChangedCallback != null) {
            List<WeakReference<ConfigChangedCallback>> list = this.mCallbackList;
            if (list != null) {
                for (WeakReference weakReference : list) {
                    if (configChangedCallback.equals(weakReference.get())) {
                        this.mCallbackList.remove(configChangedCallback);
                        return;
                    }
                }
            }
        }
    }

    public void unregisterAllConfigChangedCallbacks() {
        List<WeakReference<ConfigChangedCallback>> list = this.mCallbackList;
        if (list != null) {
            list.clear();
            this.mCallbackList = null;
        }
    }

    private void notifyConfigureChanged(DanmakuConfigTag danmakuConfigTag, Object... objArr) {
        List<WeakReference<ConfigChangedCallback>> list = this.mCallbackList;
        if (list != null) {
            for (WeakReference weakReference : list) {
                ConfigChangedCallback configChangedCallback = (ConfigChangedCallback) weakReference.get();
                if (configChangedCallback != null) {
                    configChangedCallback.onDanmakuConfigChanged(this, danmakuConfigTag, objArr);
                }
            }
        }
    }

    public DanmakuContext registerFilter(BaseDanmakuFilter baseDanmakuFilter) {
        this.mDanmakuFilters.registerFilter(baseDanmakuFilter);
        this.mGlobalFlagValues.updateFilterFlag();
        return this;
    }

    public DanmakuContext unregisterFilter(BaseDanmakuFilter baseDanmakuFilter) {
        this.mDanmakuFilters.unregisterFilter(baseDanmakuFilter);
        this.mGlobalFlagValues.updateFilterFlag();
        return this;
    }

    public DanmakuContext resetContext() {
        this.mDisplayer = new AndroidDisplayer();
        this.mGlobalFlagValues = new GlobalFlagValues();
        this.mDanmakuFilters.clear();
        this.mDanmakuFactory = DanmakuFactory.create();
        return this;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}
