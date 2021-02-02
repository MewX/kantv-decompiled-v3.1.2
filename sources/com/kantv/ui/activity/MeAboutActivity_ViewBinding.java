package com.kantv.ui.activity;

import android.view.View;
import android.widget.EditText;
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

public class MeAboutActivity_ViewBinding implements Unbinder {
    private MeAboutActivity target;
    private View view7f09040c;
    private View view7f090430;

    @UiThread
    public MeAboutActivity_ViewBinding(MeAboutActivity meAboutActivity) {
        this(meAboutActivity, meAboutActivity.getWindow().getDecorView());
    }

    @UiThread
    public MeAboutActivity_ViewBinding(final MeAboutActivity meAboutActivity, View view) {
        this.target = meAboutActivity;
        meAboutActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        meAboutActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                meAboutActivity.onClick(view);
            }
        });
        meAboutActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        meAboutActivity.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitle'", TextView.class);
        meAboutActivity.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        meAboutActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.tv_right, "field 'titleRightTv' and method 'onClick'");
        meAboutActivity.titleRightTv = (TextView) Utils.castView(findRequiredView2, R.id.tv_right, "field 'titleRightTv'", TextView.class);
        this.view7f090430 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                meAboutActivity.onClick(view);
            }
        });
        meAboutActivity.aboutEdit = (EditText) Utils.findRequiredViewAsType(view, R.id.about_edit, "field 'aboutEdit'", EditText.class);
    }

    @CallSuper
    public void unbind() {
        MeAboutActivity meAboutActivity = this.target;
        if (meAboutActivity != null) {
            this.target = null;
            meAboutActivity.titleRelateLayout = null;
            meAboutActivity.titleLeftLayout = null;
            meAboutActivity.titleLeftImg = null;
            meAboutActivity.mTitle = null;
            meAboutActivity.titleRightLayout = null;
            meAboutActivity.titleRightImg = null;
            meAboutActivity.titleRightTv = null;
            meAboutActivity.aboutEdit = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f090430.setOnClickListener(null);
            this.view7f090430 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
