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

public class ForumActivity_ViewBinding implements Unbinder {
    private ForumActivity target;
    private View view7f09015a;
    private View view7f09015b;
    private View view7f09040c;

    @UiThread
    public ForumActivity_ViewBinding(ForumActivity forumActivity) {
        this(forumActivity, forumActivity.getWindow().getDecorView());
    }

    @UiThread
    public ForumActivity_ViewBinding(final ForumActivity forumActivity, View view) {
        this.target = forumActivity;
        forumActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        forumActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                forumActivity.onClick(view);
            }
        });
        forumActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        forumActivity.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        forumActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        forumActivity.mType = (TextView) Utils.findRequiredViewAsType(view, R.id.forum_type, "field 'mType'", TextView.class);
        forumActivity.mEdit = (EditText) Utils.findRequiredViewAsType(view, R.id.forum_edit, "field 'mEdit'", EditText.class);
        forumActivity.mMail = (EditText) Utils.findRequiredViewAsType(view, R.id.forum_mail, "field 'mMail'", EditText.class);
        String str = "method 'onClick'";
        View findRequiredView2 = Utils.findRequiredView(view, R.id.forum_ok, str);
        this.view7f09015a = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                forumActivity.onClick(view);
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.forum_select_ll, str);
        this.view7f09015b = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                forumActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        ForumActivity forumActivity = this.target;
        if (forumActivity != null) {
            this.target = null;
            forumActivity.titleRelateLayout = null;
            forumActivity.titleLeftLayout = null;
            forumActivity.titleLeftImg = null;
            forumActivity.titleRightLayout = null;
            forumActivity.titleTV = null;
            forumActivity.mType = null;
            forumActivity.mEdit = null;
            forumActivity.mMail = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f09015a.setOnClickListener(null);
            this.view7f09015a = null;
            this.view7f09015b.setOnClickListener(null);
            this.view7f09015b = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
