package com.kantv.lib.indicator;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.Fragment.SavedState;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.viewpager.widget.PagerAdapter;

public abstract class FragmentListPageAdapter extends PagerAdapter {
    private static final boolean DEBUG = false;
    private static final String TAG = "FragmentStatePagerAdapter";
    private FragmentTransaction mCurTransaction = null;
    private Fragment mCurrentPrimaryItem = null;
    private final FragmentManager mFragmentManager;
    private SparseArray<Fragment> mFragments = new SparseArray<>();
    private SparseArray<SavedState> mSavedState = new SparseArray<>();

    public abstract Fragment getItem(int i);

    public Parcelable saveState() {
        return null;
    }

    public void startUpdate(ViewGroup viewGroup) {
    }

    public FragmentListPageAdapter(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }

    public Fragment getExitFragment(int i) {
        return (Fragment) this.mFragments.get(i);
    }

    public Fragment getCurrentFragment() {
        return this.mCurrentPrimaryItem;
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Fragment fragment = (Fragment) this.mFragments.get(i);
        if (fragment != null) {
            return fragment;
        }
        if (this.mCurTransaction == null) {
            this.mCurTransaction = this.mFragmentManager.beginTransaction();
        }
        Fragment item = getItem(i);
        SavedState savedState = (SavedState) this.mSavedState.get(i);
        if (savedState != null) {
            item.setInitialSavedState(savedState);
        }
        item.setMenuVisibility(false);
        item.setUserVisibleHint(false);
        this.mFragments.put(i, item);
        this.mCurTransaction.add(viewGroup.getId(), item);
        return item;
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.mCurTransaction == null) {
            this.mCurTransaction = this.mFragmentManager.beginTransaction();
        }
        this.mSavedState.put(i, this.mFragmentManager.saveFragmentInstanceState(fragment));
        this.mFragments.remove(i);
        this.mCurTransaction.remove(fragment);
    }

    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.mCurrentPrimaryItem;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                this.mCurrentPrimaryItem.setUserVisibleHint(false);
            }
            if (fragment != null) {
                fragment.setMenuVisibility(true);
                fragment.setUserVisibleHint(true);
            }
            this.mCurrentPrimaryItem = fragment;
        }
    }

    public void finishUpdate(ViewGroup viewGroup) {
        FragmentTransaction fragmentTransaction = this.mCurTransaction;
        if (fragmentTransaction != null) {
            fragmentTransaction.commitAllowingStateLoss();
            this.mCurTransaction = null;
            this.mFragmentManager.executePendingTransactions();
        }
    }

    public boolean isViewFromObject(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            this.mSavedState.clear();
            this.mFragments.clear();
            String str = "states";
            if (bundle.containsKey(str)) {
                this.mSavedState = bundle.getSparseParcelableArray(str);
            }
            for (String str2 : bundle.keySet()) {
                if (str2.startsWith("f")) {
                    int parseInt = Integer.parseInt(str2.substring(1));
                    Fragment fragment = this.mFragmentManager.getFragment(bundle, str2);
                    if (fragment != null) {
                        fragment.setMenuVisibility(false);
                        this.mFragments.put(parseInt, fragment);
                    }
                }
            }
        }
    }
}
