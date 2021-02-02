package com.kantv.ui.activity;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.ui.view.CircleImageView;

public class BasicInfoActivity_ViewBinding implements Unbinder {
    private BasicInfoActivity target;
    private View view7f090083;
    private View view7f090084;
    private View view7f090085;
    private View view7f090086;
    private View view7f09040c;

    @UiThread
    public BasicInfoActivity_ViewBinding(BasicInfoActivity basicInfoActivity) {
        this(basicInfoActivity, basicInfoActivity.getWindow().getDecorView());
    }

    @UiThread
    public BasicInfoActivity_ViewBinding(final BasicInfoActivity basicInfoActivity, View view) {
        this.target = basicInfoActivity;
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        basicInfoActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                basicInfoActivity.onClick(view);
            }
        });
        basicInfoActivity.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitle'", TextView.class);
        basicInfoActivity.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        basicInfoActivity.mAvatar = (CircleImageView) Utils.findRequiredViewAsType(view, R.id.avatar, "field 'mAvatar'", CircleImageView.class);
        basicInfoActivity.sexTv = (TextView) Utils.findRequiredViewAsType(view, R.id.sex_tv, "field 'sexTv'", TextView.class);
        basicInfoActivity.nickNameTv = (TextView) Utils.findRequiredViewAsType(view, R.id.nickname_tv, "field 'nickNameTv'", TextView.class);
        String str = "method 'onClick'";
        View findRequiredView2 = Utils.findRequiredView(view, R.id.basic_avatar, str);
        this.view7f090083 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                basicInfoActivity.onClick(view);
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.basic_nickname, str);
        this.view7f090084 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                basicInfoActivity.onClick(view);
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, R.id.basic_sex, str);
        this.view7f090086 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                basicInfoActivity.onClick(view);
            }
        });
        View findRequiredView5 = Utils.findRequiredView(view, R.id.basic_reg, str);
        this.view7f090085 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                basicInfoActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        BasicInfoActivity basicInfoActivity = this.target;
        if (basicInfoActivity != null) {
            this.target = null;
            basicInfoActivity.titleLeftLayout = null;
            basicInfoActivity.mTitle = null;
            basicInfoActivity.titleRightLayout = null;
            basicInfoActivity.mAvatar = null;
            basicInfoActivity.sexTv = null;
            basicInfoActivity.nickNameTv = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f090083.setOnClickListener(null);
            this.view7f090083 = null;
            this.view7f090084.setOnClickListener(null);
            this.view7f090084 = null;
            this.view7f090086.setOnClickListener(null);
            this.view7f090086 = null;
            this.view7f090085.setOnClickListener(null);
            this.view7f090085 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
