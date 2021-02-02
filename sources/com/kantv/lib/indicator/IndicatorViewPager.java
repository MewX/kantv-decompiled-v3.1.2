package com.kantv.lib.indicator;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager.widget.ViewPager.OnPageChangeListener;
import com.kantv.lib.indicator.Indicator.IndicatorAdapter;
import com.kantv.lib.indicator.Indicator.OnIndicatorItemClickListener;
import com.kantv.lib.indicator.Indicator.OnItemSelectedListener;
import com.kantv.lib.indicator.Indicator.OnTransitionListener;
import com.kantv.lib.indicator.slidebar.ScrollBar;
import com.kantv.lib.viewpager.RecyclingPagerAdapter;
import com.kantv.lib.viewpager.SViewPager;

public class IndicatorViewPager {
    private IndicatorPagerAdapter adapter;
    /* access modifiers changed from: private */
    public boolean anim;
    protected Indicator indicatorView;
    protected OnIndicatorPageChangeListener onIndicatorPageChangeListener;
    protected ViewPager viewPager;

    public static abstract class IndicatorFragmentPagerAdapter extends LoopAdapter {
        private IndicatorAdapter indicatorAdapter = new IndicatorAdapter() {
            public View getView(int i, View view, ViewGroup viewGroup) {
                return IndicatorFragmentPagerAdapter.this.getViewForTab(i, view, viewGroup);
            }

            public int getCount() {
                return IndicatorFragmentPagerAdapter.this.getCount();
            }
        };
        /* access modifiers changed from: private */
        public boolean loop;
        private FragmentListPageAdapter pagerAdapter;

        public abstract int getCount();

        public abstract Fragment getFragmentForPage(int i);

        public int getItemPosition(Object obj) {
            return -1;
        }

        public float getPageRatio(int i) {
            return 1.0f;
        }

        public abstract View getViewForTab(int i, View view, ViewGroup viewGroup);

        /* access modifiers changed from: 0000 */
        public int getRealPosition(int i) {
            return i % getCount();
        }

        /* access modifiers changed from: 0000 */
        public void setLoop(boolean z) {
            this.loop = z;
            this.indicatorAdapter.setIsLoop(z);
        }

        public IndicatorFragmentPagerAdapter(FragmentManager fragmentManager) {
            this.pagerAdapter = new FragmentListPageAdapter(fragmentManager) {
                public int getCount() {
                    if (IndicatorFragmentPagerAdapter.this.getCount() == 0) {
                        return 0;
                    }
                    if (IndicatorFragmentPagerAdapter.this.loop) {
                        return 2147483547;
                    }
                    return IndicatorFragmentPagerAdapter.this.getCount();
                }

                public Fragment getItem(int i) {
                    IndicatorFragmentPagerAdapter indicatorFragmentPagerAdapter = IndicatorFragmentPagerAdapter.this;
                    return indicatorFragmentPagerAdapter.getFragmentForPage(indicatorFragmentPagerAdapter.getRealPosition(i));
                }

                public float getPageWidth(int i) {
                    IndicatorFragmentPagerAdapter indicatorFragmentPagerAdapter = IndicatorFragmentPagerAdapter.this;
                    return indicatorFragmentPagerAdapter.getPageRatio(indicatorFragmentPagerAdapter.getRealPosition(i));
                }

                public int getItemPosition(Object obj) {
                    return IndicatorFragmentPagerAdapter.this.getItemPosition(obj);
                }
            };
        }

        public Fragment getExitFragment(int i) {
            return this.pagerAdapter.getExitFragment(i);
        }

        public Fragment getCurrentFragment() {
            return this.pagerAdapter.getCurrentFragment();
        }

        public void notifyDataSetChanged() {
            this.indicatorAdapter.notifyDataSetChanged();
            this.pagerAdapter.notifyDataSetChanged();
        }

        public PagerAdapter getPagerAdapter() {
            return this.pagerAdapter;
        }

        public IndicatorAdapter getIndicatorAdapter() {
            return this.indicatorAdapter;
        }
    }

    public interface IndicatorPagerAdapter {
        IndicatorAdapter getIndicatorAdapter();

        PagerAdapter getPagerAdapter();

        void notifyDataSetChanged();
    }

    public static abstract class IndicatorViewPagerAdapter extends LoopAdapter {
        private IndicatorAdapter indicatorAdapter = new IndicatorAdapter() {
            public View getView(int i, View view, ViewGroup viewGroup) {
                return IndicatorViewPagerAdapter.this.getViewForTab(i, view, viewGroup);
            }

            public int getCount() {
                return IndicatorViewPagerAdapter.this.getCount();
            }
        };
        /* access modifiers changed from: private */
        public boolean loop;
        private RecyclingPagerAdapter pagerAdapter = new RecyclingPagerAdapter() {
            public int getCount() {
                if (IndicatorViewPagerAdapter.this.getCount() == 0) {
                    return 0;
                }
                if (IndicatorViewPagerAdapter.this.loop) {
                    return 2147483547;
                }
                return IndicatorViewPagerAdapter.this.getCount();
            }

            public View getView(int i, View view, ViewGroup viewGroup) {
                IndicatorViewPagerAdapter indicatorViewPagerAdapter = IndicatorViewPagerAdapter.this;
                return indicatorViewPagerAdapter.getViewForPage(indicatorViewPagerAdapter.getRealPosition(i), view, viewGroup);
            }

            public float getPageWidth(int i) {
                IndicatorViewPagerAdapter indicatorViewPagerAdapter = IndicatorViewPagerAdapter.this;
                return indicatorViewPagerAdapter.getPageRatio(indicatorViewPagerAdapter.getRealPosition(i));
            }

            public int getItemPosition(Object obj) {
                return IndicatorViewPagerAdapter.this.getItemPosition(obj);
            }

            public int getItemViewType(int i) {
                IndicatorViewPagerAdapter indicatorViewPagerAdapter = IndicatorViewPagerAdapter.this;
                return indicatorViewPagerAdapter.getPageViewType(indicatorViewPagerAdapter.getRealPosition(i));
            }

            public int getViewTypeCount() {
                return IndicatorViewPagerAdapter.this.getPageViewTypeCount();
            }
        };

        public abstract int getCount();

        public int getItemPosition(Object obj) {
            return -1;
        }

        public float getPageRatio(int i) {
            return 1.0f;
        }

        public int getPageViewType(int i) {
            return 0;
        }

        public int getPageViewTypeCount() {
            return 1;
        }

        public abstract View getViewForPage(int i, View view, ViewGroup viewGroup);

        public abstract View getViewForTab(int i, View view, ViewGroup viewGroup);

        /* access modifiers changed from: 0000 */
        public int getRealPosition(int i) {
            if (getCount() == 0) {
                return 0;
            }
            return i % getCount();
        }

        /* access modifiers changed from: 0000 */
        public void setLoop(boolean z) {
            this.loop = z;
            this.indicatorAdapter.setIsLoop(z);
        }

        public void notifyDataSetChanged() {
            this.indicatorAdapter.notifyDataSetChanged();
            this.pagerAdapter.notifyDataSetChanged();
        }

        public PagerAdapter getPagerAdapter() {
            return this.pagerAdapter;
        }

        public IndicatorAdapter getIndicatorAdapter() {
            return this.indicatorAdapter;
        }
    }

    static abstract class LoopAdapter implements IndicatorPagerAdapter {
        /* access modifiers changed from: 0000 */
        public abstract int getCount();

        /* access modifiers changed from: 0000 */
        public abstract int getRealPosition(int i);

        /* access modifiers changed from: 0000 */
        public abstract void setLoop(boolean z);

        LoopAdapter() {
        }
    }

    public interface OnIndicatorPageChangeListener {
        void onIndicatorPageChange(int i, int i2);
    }

    public IndicatorViewPager(Indicator indicator, ViewPager viewPager2) {
        this(indicator, viewPager2, true);
    }

    public IndicatorViewPager(Indicator indicator, ViewPager viewPager2, boolean z) {
        this.anim = true;
        this.indicatorView = indicator;
        this.viewPager = viewPager2;
        indicator.setItemClickable(z);
        iniOnItemSelectedListener();
        iniOnPageChangeListener();
    }

    public void setClickIndicatorAnim(boolean z) {
        this.anim = z;
    }

    /* access modifiers changed from: protected */
    public void iniOnItemSelectedListener() {
        this.indicatorView.setOnItemSelectListener(new OnItemSelectedListener() {
            public void onItemSelected(View view, int i, int i2) {
                if (IndicatorViewPager.this.viewPager instanceof SViewPager) {
                    IndicatorViewPager.this.viewPager.setCurrentItem(i, ((SViewPager) IndicatorViewPager.this.viewPager).isCanScroll());
                } else {
                    IndicatorViewPager.this.viewPager.setCurrentItem(i, IndicatorViewPager.this.anim);
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void iniOnPageChangeListener() {
        this.viewPager.addOnPageChangeListener(new OnPageChangeListener() {
            public void onPageSelected(int i) {
                IndicatorViewPager.this.indicatorView.setCurrentItem(i, true);
                if (IndicatorViewPager.this.onIndicatorPageChangeListener != null) {
                    IndicatorViewPager.this.onIndicatorPageChangeListener.onIndicatorPageChange(IndicatorViewPager.this.indicatorView.getPreSelectItem(), i);
                }
            }

            public void onPageScrolled(int i, float f, int i2) {
                IndicatorViewPager.this.indicatorView.onPageScrolled(i, f, i2);
            }

            public void onPageScrollStateChanged(int i) {
                IndicatorViewPager.this.indicatorView.onPageScrollStateChanged(i);
            }
        });
    }

    public void setAdapter(IndicatorPagerAdapter indicatorPagerAdapter) {
        this.adapter = indicatorPagerAdapter;
        this.viewPager.setAdapter(indicatorPagerAdapter.getPagerAdapter());
        this.indicatorView.setAdapter(indicatorPagerAdapter.getIndicatorAdapter());
    }

    public void setCurrentItem(int i, boolean z) {
        this.viewPager.setCurrentItem(i, z);
        this.indicatorView.setCurrentItem(i, z);
    }

    public void setOnIndicatorPageChangeListener(OnIndicatorPageChangeListener onIndicatorPageChangeListener2) {
        this.onIndicatorPageChangeListener = onIndicatorPageChangeListener2;
    }

    public void setIndicatorOnTransitionListener(OnTransitionListener onTransitionListener) {
        this.indicatorView.setOnTransitionListener(onTransitionListener);
    }

    public void setIndicatorScrollBar(ScrollBar scrollBar) {
        this.indicatorView.setScrollBar(scrollBar);
    }

    public void setOnIndicatorItemClickListener(OnIndicatorItemClickListener onIndicatorItemClickListener) {
        this.indicatorView.setOnIndicatorItemClickListener(onIndicatorItemClickListener);
    }

    public OnIndicatorItemClickListener getOnIndicatorItemClickListener() {
        return this.indicatorView.getOnIndicatorItemClickListener();
    }

    public void setPageOffscreenLimit(int i) {
        this.viewPager.setOffscreenPageLimit(i);
    }

    public void setPageMargin(int i) {
        this.viewPager.setPageMargin(i);
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.viewPager.setPageMarginDrawable(drawable);
    }

    public void setPageMarginDrawable(int i) {
        this.viewPager.setPageMarginDrawable(i);
    }

    public int getPreSelectItem() {
        return this.indicatorView.getPreSelectItem();
    }

    public int getCurrentItem() {
        return this.indicatorView.getCurrentItem();
    }

    public IndicatorPagerAdapter getAdapter() {
        return this.adapter;
    }

    public OnIndicatorPageChangeListener getOnIndicatorPageChangeListener() {
        return this.onIndicatorPageChangeListener;
    }

    public Indicator getIndicatorView() {
        return this.indicatorView;
    }

    public ViewPager getViewPager() {
        return this.viewPager;
    }

    public void notifyDataSetChanged() {
        IndicatorPagerAdapter indicatorPagerAdapter = this.adapter;
        if (indicatorPagerAdapter != null) {
            indicatorPagerAdapter.notifyDataSetChanged();
        }
    }
}
