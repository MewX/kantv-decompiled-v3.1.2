package com.kantv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.ui.view.CircleImageView;

public class MyInfoActivity_ViewBinding implements Unbinder {
    private MyInfoActivity target;
    private View view7f0901a4;
    private View view7f0901a5;
    private View view7f0901a6;
    private View view7f0901a7;
    private View view7f0901a8;
    private View view7f0901a9;
    private View view7f0901aa;
    private View view7f0901ab;
    private View view7f09040c;
    private View view7f09040e;

    @UiThread
    public MyInfoActivity_ViewBinding(MyInfoActivity myInfoActivity) {
        this(myInfoActivity, myInfoActivity.getWindow().getDecorView());
    }

    @UiThread
    public MyInfoActivity_ViewBinding(final MyInfoActivity myInfoActivity, View view) {
        this.target = myInfoActivity;
        myInfoActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.info_sex, "field 'sexInfoLayout' and method 'onClick'");
        myInfoActivity.sexInfoLayout = (RelativeLayout) Utils.castView(findRequiredView, R.id.info_sex, "field 'sexInfoLayout'", RelativeLayout.class);
        this.view7f0901ab = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                myInfoActivity.onClick(view);
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        myInfoActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView2, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                myInfoActivity.onClick(view);
            }
        });
        myInfoActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        myInfoActivity.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitle'", TextView.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.title_right_ll, "field 'titleRightLayout' and method 'onClick'");
        myInfoActivity.titleRightLayout = (LinearLayout) Utils.castView(findRequiredView3, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        this.view7f09040e = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                myInfoActivity.onClick(view);
            }
        });
        myInfoActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        myInfoActivity.titleRightTv = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_right, "field 'titleRightTv'", TextView.class);
        myInfoActivity.mAvatar = (CircleImageView) Utils.findRequiredViewAsType(view, R.id.avatar, "field 'mAvatar'", CircleImageView.class);
        myInfoActivity.sexTv = (TextView) Utils.findRequiredViewAsType(view, R.id.sex_tv, "field 'sexTv'", TextView.class);
        myInfoActivity.nickNameTv = (TextView) Utils.findRequiredViewAsType(view, R.id.nickname_tv, "field 'nickNameTv'", TextView.class);
        myInfoActivity.birthTv = (TextView) Utils.findRequiredViewAsType(view, R.id.birth_tv, "field 'birthTv'", TextView.class);
        myInfoActivity.bgImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.bg_img, "field 'bgImg'", ImageView.class);
        myInfoActivity.areaTv = (TextView) Utils.findRequiredViewAsType(view, R.id.area_tv, "field 'areaTv'", TextView.class);
        myInfoActivity.aboutTv = (TextView) Utils.findRequiredViewAsType(view, R.id.about_tv, "field 'aboutTv'", TextView.class);
        myInfoActivity.homeTv = (TextView) Utils.findRequiredViewAsType(view, R.id.home_tv, "field 'homeTv'", TextView.class);
        myInfoActivity.headTip = (TextView) Utils.findRequiredViewAsType(view, R.id.head_tip, "field 'headTip'", TextView.class);
        myInfoActivity.nichengTip = (TextView) Utils.findRequiredViewAsType(view, R.id.nicheng_tip, "field 'nichengTip'", TextView.class);
        myInfoActivity.shengriTip = (TextView) Utils.findRequiredViewAsType(view, R.id.shengri_tip, "field 'shengriTip'", TextView.class);
        myInfoActivity.sexTip = (TextView) Utils.findRequiredViewAsType(view, R.id.sex_tip, "field 'sexTip'", TextView.class);
        myInfoActivity.homeTip = (TextView) Utils.findRequiredViewAsType(view, R.id.home_tip, "field 'homeTip'", TextView.class);
        String str = "method 'onClick'";
        View findRequiredView4 = Utils.findRequiredView(view, R.id.info_avatar, str);
        this.view7f0901a6 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                myInfoActivity.onClick(view);
            }
        });
        View findRequiredView5 = Utils.findRequiredView(view, R.id.info_nickname, str);
        this.view7f0901aa = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                myInfoActivity.onClick(view);
            }
        });
        View findRequiredView6 = Utils.findRequiredView(view, R.id.info_area, str);
        this.view7f0901a5 = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                myInfoActivity.onClick(view);
            }
        });
        View findRequiredView7 = Utils.findRequiredView(view, R.id.info_birth, str);
        this.view7f0901a8 = findRequiredView7;
        findRequiredView7.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                myInfoActivity.onClick(view);
            }
        });
        View findRequiredView8 = Utils.findRequiredView(view, R.id.info_bg, str);
        this.view7f0901a7 = findRequiredView8;
        findRequiredView8.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                myInfoActivity.onClick(view);
            }
        });
        View findRequiredView9 = Utils.findRequiredView(view, R.id.info_about, str);
        this.view7f0901a4 = findRequiredView9;
        findRequiredView9.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                myInfoActivity.onClick(view);
            }
        });
        View findRequiredView10 = Utils.findRequiredView(view, R.id.info_home, str);
        this.view7f0901a9 = findRequiredView10;
        findRequiredView10.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                myInfoActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        MyInfoActivity myInfoActivity = this.target;
        if (myInfoActivity != null) {
            this.target = null;
            myInfoActivity.titleRelateLayout = null;
            myInfoActivity.sexInfoLayout = null;
            myInfoActivity.titleLeftLayout = null;
            myInfoActivity.titleLeftImg = null;
            myInfoActivity.mTitle = null;
            myInfoActivity.titleRightLayout = null;
            myInfoActivity.titleRightImg = null;
            myInfoActivity.titleRightTv = null;
            myInfoActivity.mAvatar = null;
            myInfoActivity.sexTv = null;
            myInfoActivity.nickNameTv = null;
            myInfoActivity.birthTv = null;
            myInfoActivity.bgImg = null;
            myInfoActivity.areaTv = null;
            myInfoActivity.aboutTv = null;
            myInfoActivity.homeTv = null;
            myInfoActivity.headTip = null;
            myInfoActivity.nichengTip = null;
            myInfoActivity.shengriTip = null;
            myInfoActivity.sexTip = null;
            myInfoActivity.homeTip = null;
            this.view7f0901ab.setOnClickListener(null);
            this.view7f0901ab = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f09040e.setOnClickListener(null);
            this.view7f09040e = null;
            this.view7f0901a6.setOnClickListener(null);
            this.view7f0901a6 = null;
            this.view7f0901aa.setOnClickListener(null);
            this.view7f0901aa = null;
            this.view7f0901a5.setOnClickListener(null);
            this.view7f0901a5 = null;
            this.view7f0901a8.setOnClickListener(null);
            this.view7f0901a8 = null;
            this.view7f0901a7.setOnClickListener(null);
            this.view7f0901a7 = null;
            this.view7f0901a4.setOnClickListener(null);
            this.view7f0901a4 = null;
            this.view7f0901a9.setOnClickListener(null);
            this.view7f0901a9 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
