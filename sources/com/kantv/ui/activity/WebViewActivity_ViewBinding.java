package com.kantv.ui.activity;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class WebViewActivity_ViewBinding implements Unbinder {
    private WebViewActivity target;
    private View view7f09040c;
    private View view7f09040e;

    @UiThread
    public WebViewActivity_ViewBinding(WebViewActivity webViewActivity) {
        this(webViewActivity, webViewActivity.getWindow().getDecorView());
    }

    @UiThread
    public WebViewActivity_ViewBinding(final WebViewActivity webViewActivity, View view) {
        this.target = webViewActivity;
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        webViewActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                webViewActivity.onClick(view);
            }
        });
        webViewActivity.mLin = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.webview_ll, "field 'mLin'", LinearLayout.class);
        webViewActivity.mBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.webview_progressBar, "field 'mBar'", ProgressBar.class);
        webViewActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.title_right_ll, "method 'onClick'");
        this.view7f09040e = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                webViewActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        WebViewActivity webViewActivity = this.target;
        if (webViewActivity != null) {
            this.target = null;
            webViewActivity.titleLeftLayout = null;
            webViewActivity.mLin = null;
            webViewActivity.mBar = null;
            webViewActivity.titleTV = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f09040e.setOnClickListener(null);
            this.view7f09040e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
