package com.kantv.ui;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.ui.view.CustomDrawerLayout;
import com.kantv.ui.view.CustomFragmentTabHost;

public class MainActivity_ViewBinding implements Unbinder {
    private MainActivity target;

    @UiThread
    public MainActivity_ViewBinding(MainActivity mainActivity) {
        this(mainActivity, mainActivity.getWindow().getDecorView());
    }

    @UiThread
    public MainActivity_ViewBinding(MainActivity mainActivity, View view) {
        this.target = mainActivity;
        mainActivity.mTabHost = (CustomFragmentTabHost) Utils.findRequiredViewAsType(view, R.id.act_main_ftb, "field 'mTabHost'", CustomFragmentTabHost.class);
        mainActivity.ll_movie_histroy = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_movie_histroy, "field 'll_movie_histroy'", LinearLayout.class);
        mainActivity.iv_src = (ImageView) Utils.findRequiredViewAsType(view, R.id.iv_src, "field 'iv_src'", ImageView.class);
        mainActivity.tv_name = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_name, "field 'tv_name'", TextView.class);
        mainActivity.tv_content = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_content, "field 'tv_content'", TextView.class);
        mainActivity.iv_play = (ImageView) Utils.findRequiredViewAsType(view, R.id.iv_play, "field 'iv_play'", ImageView.class);
        mainActivity.iv_close = (ImageView) Utils.findRequiredViewAsType(view, R.id.iv_close, "field 'iv_close'", ImageView.class);
        mainActivity.mRoot = (CustomDrawerLayout) Utils.findRequiredViewAsType(view, R.id.root, "field 'mRoot'", CustomDrawerLayout.class);
        mainActivity.mTabLine = Utils.findRequiredView(view, R.id.tab_line, "field 'mTabLine'");
    }

    @CallSuper
    public void unbind() {
        MainActivity mainActivity = this.target;
        if (mainActivity != null) {
            this.target = null;
            mainActivity.mTabHost = null;
            mainActivity.ll_movie_histroy = null;
            mainActivity.iv_src = null;
            mainActivity.tv_name = null;
            mainActivity.tv_content = null;
            mainActivity.iv_play = null;
            mainActivity.iv_close = null;
            mainActivity.mRoot = null;
            mainActivity.mTabLine = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
