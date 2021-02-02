package com.kantv.ui.fragment;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class KanListFragment_ViewBinding implements Unbinder {
    private KanListFragment target;

    @UiThread
    public KanListFragment_ViewBinding(KanListFragment kanListFragment, View view) {
        this.target = kanListFragment;
        kanListFragment.titleLeftLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        kanListFragment.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        kanListFragment.mLin = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.webview_ll, "field 'mLin'", LinearLayout.class);
        kanListFragment.mBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.webview_progressBar, "field 'mBar'", ProgressBar.class);
        kanListFragment.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
    }

    @CallSuper
    public void unbind() {
        KanListFragment kanListFragment = this.target;
        if (kanListFragment != null) {
            this.target = null;
            kanListFragment.titleLeftLayout = null;
            kanListFragment.titleRightLayout = null;
            kanListFragment.mLin = null;
            kanListFragment.mBar = null;
            kanListFragment.titleTV = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
