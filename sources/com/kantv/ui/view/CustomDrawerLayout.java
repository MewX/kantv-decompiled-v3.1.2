package com.kantv.ui.view;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.drawerlayout.widget.DrawerLayout.DrawerListener;
import androidx.drawerlayout.widget.DrawerLayout.LayoutParams;
import androidx.fragment.app.Fragment;
import com.imkan.tv.R;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.MainActivity.IFragment;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.viewmodel.CommonViewModel;

public class CustomDrawerLayout extends DrawerLayout {
    private static String TAG = "MainActivity";
    /* access modifiers changed from: private */
    public ImageView mAdImg;
    /* access modifiers changed from: private */
    public boolean mHadAd;
    private CustomFragmentTabHost mTabHost;

    public CustomDrawerLayout(Context context) {
        super(context);
        init();
    }

    public CustomDrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public CustomDrawerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    private void init() {
        addDrawerListener(new DrawerListener() {
            public void onDrawerSlide(@NonNull View view, float f) {
            }

            public void onDrawerStateChanged(int i) {
            }

            public void onDrawerOpened(@NonNull View view) {
                CommonViewModel.getAdData();
            }

            public void onDrawerClosed(@NonNull View view) {
                String str = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.AD_DATA, "");
                if (!StringUtils.isEmpty(str) && CustomDrawerLayout.this.mAdImg != null) {
                    CustomDrawerLayout customDrawerLayout = CustomDrawerLayout.this;
                    customDrawerLayout.mHadAd = CommonViewModel.bindAd(customDrawerLayout.getContext(), str, CustomDrawerLayout.this.mAdImg);
                }
            }
        });
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        CustomFragmentTabHost customFragmentTabHost = this.mTabHost;
        if (customFragmentTabHost != null && this.mHadAd && customFragmentTabHost.getCurrentTab() == 0) {
            String currentTabTag = this.mTabHost.getCurrentTabTag();
            if (!StringUtils.isEmpty(currentTabTag)) {
                Fragment findFragmentByTag = ((AppCompatActivity) getContext()).getSupportFragmentManager().findFragmentByTag(currentTabTag);
                if (findFragmentByTag != null && (findFragmentByTag instanceof IFragment) && ((IFragment) findFragmentByTag).getIndex() == 0) {
                    try {
                        return super.onInterceptTouchEvent(motionEvent);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return false;
    }

    public void setTagView(CustomFragmentTabHost customFragmentTabHost) {
        this.mTabHost = customFragmentTabHost;
        this.mAdImg = (ImageView) findViewById(R.id.ad_img);
        String str = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.AD_DATA, "");
        if (!StringUtils.isEmpty(str)) {
            this.mHadAd = CommonViewModel.bindAd(getContext(), str, this.mAdImg);
        } else {
            this.mHadAd = false;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Activity) getContext()).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        LayoutParams layoutParams = (LayoutParams) this.mAdImg.getLayoutParams();
        layoutParams.height = displayMetrics.heightPixels;
        layoutParams.width = i;
        this.mAdImg.setLayoutParams(layoutParams);
    }
}
