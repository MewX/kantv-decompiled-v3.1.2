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

public class EditNicknameActivity_ViewBinding implements Unbinder {
    private EditNicknameActivity target;
    private View view7f090353;
    private View view7f09040c;
    private View view7f090430;

    @UiThread
    public EditNicknameActivity_ViewBinding(EditNicknameActivity editNicknameActivity) {
        this(editNicknameActivity, editNicknameActivity.getWindow().getDecorView());
    }

    @UiThread
    public EditNicknameActivity_ViewBinding(final EditNicknameActivity editNicknameActivity, View view) {
        this.target = editNicknameActivity;
        editNicknameActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        editNicknameActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                editNicknameActivity.onClick(view);
            }
        });
        editNicknameActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        editNicknameActivity.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitle'", TextView.class);
        editNicknameActivity.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        editNicknameActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.tv_right, "field 'titleRightTv' and method 'onClick'");
        editNicknameActivity.titleRightTv = (TextView) Utils.castView(findRequiredView2, R.id.tv_right, "field 'titleRightTv'", TextView.class);
        this.view7f090430 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                editNicknameActivity.onClick(view);
            }
        });
        editNicknameActivity.nickName = (EditText) Utils.findRequiredViewAsType(view, R.id.login_nickname, "field 'nickName'", EditText.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.rm_nickname, "method 'onClick'");
        this.view7f090353 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                editNicknameActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        EditNicknameActivity editNicknameActivity = this.target;
        if (editNicknameActivity != null) {
            this.target = null;
            editNicknameActivity.titleRelateLayout = null;
            editNicknameActivity.titleLeftLayout = null;
            editNicknameActivity.titleLeftImg = null;
            editNicknameActivity.mTitle = null;
            editNicknameActivity.titleRightLayout = null;
            editNicknameActivity.titleRightImg = null;
            editNicknameActivity.titleRightTv = null;
            editNicknameActivity.nickName = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f090430.setOnClickListener(null);
            this.view7f090430 = null;
            this.view7f090353.setOnClickListener(null);
            this.view7f090353 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
