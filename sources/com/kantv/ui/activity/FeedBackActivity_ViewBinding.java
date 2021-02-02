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

public class FeedBackActivity_ViewBinding implements Unbinder {
    private FeedBackActivity target;
    private View view7f090142;
    private View view7f09040c;
    private View view7f090430;

    @UiThread
    public FeedBackActivity_ViewBinding(FeedBackActivity feedBackActivity) {
        this(feedBackActivity, feedBackActivity.getWindow().getDecorView());
    }

    @UiThread
    public FeedBackActivity_ViewBinding(final FeedBackActivity feedBackActivity, View view) {
        this.target = feedBackActivity;
        feedBackActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        feedBackActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                feedBackActivity.onClick(view);
            }
        });
        feedBackActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        feedBackActivity.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        feedBackActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        feedBackActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.tv_right, "field 'titleRightTxt' and method 'onClick'");
        feedBackActivity.titleRightTxt = (TextView) Utils.castView(findRequiredView2, R.id.tv_right, "field 'titleRightTxt'", TextView.class);
        this.view7f090430 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                feedBackActivity.onClick(view);
            }
        });
        feedBackActivity.mType = (TextView) Utils.findRequiredViewAsType(view, R.id.feedback_type, "field 'mType'", TextView.class);
        feedBackActivity.mEdit = (EditText) Utils.findRequiredViewAsType(view, R.id.feedback_edit, "field 'mEdit'", EditText.class);
        feedBackActivity.mMail = (EditText) Utils.findRequiredViewAsType(view, R.id.forum_mail, "field 'mMail'", EditText.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.feedback_type_ll, "method 'onClick'");
        this.view7f090142 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                feedBackActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        FeedBackActivity feedBackActivity = this.target;
        if (feedBackActivity != null) {
            this.target = null;
            feedBackActivity.titleRelateLayout = null;
            feedBackActivity.titleLeftLayout = null;
            feedBackActivity.titleLeftImg = null;
            feedBackActivity.titleRightLayout = null;
            feedBackActivity.titleTV = null;
            feedBackActivity.titleRightImg = null;
            feedBackActivity.titleRightTxt = null;
            feedBackActivity.mType = null;
            feedBackActivity.mEdit = null;
            feedBackActivity.mMail = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f090430.setOnClickListener(null);
            this.view7f090430 = null;
            this.view7f090142.setOnClickListener(null);
            this.view7f090142 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
