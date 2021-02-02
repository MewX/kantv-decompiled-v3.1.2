package com.kantv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class WxHaoActivity_ViewBinding implements Unbinder {
    private WxHaoActivity target;
    private View view7f0900ed;
    private View view7f090489;

    @UiThread
    public WxHaoActivity_ViewBinding(WxHaoActivity wxHaoActivity) {
        this(wxHaoActivity, wxHaoActivity.getWindow().getDecorView());
    }

    @UiThread
    public WxHaoActivity_ViewBinding(final WxHaoActivity wxHaoActivity, View view) {
        this.target = wxHaoActivity;
        wxHaoActivity.mTitleText = (TextView) Utils.findRequiredViewAsType(view, R.id.title, "field 'mTitleText'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.wx_hao_close, "field 'mClose' and method 'onViewClicked'");
        wxHaoActivity.mClose = (ImageView) Utils.castView(findRequiredView, R.id.wx_hao_close, "field 'mClose'", ImageView.class);
        this.view7f090489 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                wxHaoActivity.onViewClicked(view);
            }
        });
        wxHaoActivity.mTip1Text = (TextView) Utils.findRequiredViewAsType(view, R.id.tip1, "field 'mTip1Text'", TextView.class);
        wxHaoActivity.mTip2Text = (TextView) Utils.findRequiredViewAsType(view, R.id.tip2, "field 'mTip2Text'", TextView.class);
        wxHaoActivity.mTip3Text = (TextView) Utils.findRequiredViewAsType(view, R.id.tip3, "field 'mTip3Text'", TextView.class);
        wxHaoActivity.mTip4Text = (TextView) Utils.findRequiredViewAsType(view, R.id.tip4, "field 'mTip4Text'", TextView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.copy_code, "field 'mCopyCodeText' and method 'onViewClicked'");
        wxHaoActivity.mCopyCodeText = (TextView) Utils.castView(findRequiredView2, R.id.copy_code, "field 'mCopyCodeText'", TextView.class);
        this.view7f0900ed = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                wxHaoActivity.onViewClicked(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        WxHaoActivity wxHaoActivity = this.target;
        if (wxHaoActivity != null) {
            this.target = null;
            wxHaoActivity.mTitleText = null;
            wxHaoActivity.mClose = null;
            wxHaoActivity.mTip1Text = null;
            wxHaoActivity.mTip2Text = null;
            wxHaoActivity.mTip3Text = null;
            wxHaoActivity.mTip4Text = null;
            wxHaoActivity.mCopyCodeText = null;
            this.view7f090489.setOnClickListener(null);
            this.view7f090489 = null;
            this.view7f0900ed.setOnClickListener(null);
            this.view7f0900ed = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
