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

public class SafeVerActivity_ViewBinding implements Unbinder {
    private SafeVerActivity target;
    private View view7f09039c;
    private View view7f09040c;

    @UiThread
    public SafeVerActivity_ViewBinding(SafeVerActivity safeVerActivity) {
        this(safeVerActivity, safeVerActivity.getWindow().getDecorView());
    }

    @UiThread
    public SafeVerActivity_ViewBinding(final SafeVerActivity safeVerActivity, View view) {
        this.target = safeVerActivity;
        safeVerActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        safeVerActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                safeVerActivity.onClick(view);
            }
        });
        safeVerActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        safeVerActivity.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        safeVerActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        safeVerActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        safeVerActivity.titleRightTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_right, "field 'titleRightTxt'", TextView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.send_verify, "field 'sendVerBtn' and method 'onClick'");
        safeVerActivity.sendVerBtn = (TextView) Utils.castView(findRequiredView2, R.id.send_verify, "field 'sendVerBtn'", TextView.class);
        this.view7f09039c = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                safeVerActivity.onClick(view);
            }
        });
        safeVerActivity.safeVerNum = (TextView) Utils.findRequiredViewAsType(view, R.id.safever_num, "field 'safeVerNum'", TextView.class);
    }

    @CallSuper
    public void unbind() {
        SafeVerActivity safeVerActivity = this.target;
        if (safeVerActivity != null) {
            this.target = null;
            safeVerActivity.titleRelateLayout = null;
            safeVerActivity.titleLeftLayout = null;
            safeVerActivity.titleLeftImg = null;
            safeVerActivity.titleRightLayout = null;
            safeVerActivity.titleTV = null;
            safeVerActivity.titleRightImg = null;
            safeVerActivity.titleRightTxt = null;
            safeVerActivity.sendVerBtn = null;
            safeVerActivity.safeVerNum = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f09039c.setOnClickListener(null);
            this.view7f09039c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
