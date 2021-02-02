package com.kantv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class SetActivity_ViewBinding implements Unbinder {
    private SetActivity target;
    private View view7f0900cb;
    private View view7f0900f2;
    private View view7f090340;
    private View view7f090359;
    private View view7f0903a0;
    private View view7f0903a1;
    private View view7f0903b4;
    private View view7f09040c;

    @UiThread
    public SetActivity_ViewBinding(SetActivity setActivity) {
        this(setActivity, setActivity.getWindow().getDecorView());
    }

    @UiThread
    public SetActivity_ViewBinding(final SetActivity setActivity, View view) {
        this.target = setActivity;
        setActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        setActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                setActivity.onClick(view);
            }
        });
        setActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        setActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        setActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.sign_out, "field 'signOutLayout' and method 'onClick'");
        setActivity.signOutLayout = (LinearLayout) Utils.castView(findRequiredView2, R.id.sign_out, "field 'signOutLayout'", LinearLayout.class);
        this.view7f0903b4 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                setActivity.onClick(view);
            }
        });
        setActivity.wxHelpTv = (TextView) Utils.findRequiredViewAsType(view, R.id.wx_help, "field 'wxHelpTv'", TextView.class);
        setActivity.typeSwitch = (Switch) Utils.findRequiredViewAsType(view, R.id.downloadTypeSwitch, "field 'typeSwitch'", Switch.class);
        setActivity.setHistroyShow = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.setHistroyShow, "field 'setHistroyShow'", LinearLayout.class);
        setActivity.setHistroyShowSwitch = (Switch) Utils.findRequiredViewAsType(view, R.id.setHistroyShowSwitch, "field 'setHistroyShowSwitch'", Switch.class);
        String str = "method 'onClick'";
        View findRequiredView3 = Utils.findRequiredView(view, R.id.safecenter, str);
        this.view7f090359 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                setActivity.onClick(view);
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, R.id.clearCache, str);
        this.view7f0900cb = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                setActivity.onClick(view);
            }
        });
        View findRequiredView5 = Utils.findRequiredView(view, R.id.customHelp, str);
        this.view7f0900f2 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                setActivity.onClick(view);
            }
        });
        View findRequiredView6 = Utils.findRequiredView(view, R.id.request_film_ll, str);
        this.view7f090340 = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                setActivity.onClick(view);
            }
        });
        View findRequiredView7 = Utils.findRequiredView(view, R.id.setCachePath, str);
        this.view7f0903a0 = findRequiredView7;
        findRequiredView7.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                setActivity.onClick(view);
            }
        });
        View findRequiredView8 = Utils.findRequiredView(view, R.id.setDownloadType, str);
        this.view7f0903a1 = findRequiredView8;
        findRequiredView8.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                setActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        SetActivity setActivity = this.target;
        if (setActivity != null) {
            this.target = null;
            setActivity.titleRelateLayout = null;
            setActivity.titleLeftLayout = null;
            setActivity.titleLeftImg = null;
            setActivity.titleTV = null;
            setActivity.titleRightImg = null;
            setActivity.signOutLayout = null;
            setActivity.wxHelpTv = null;
            setActivity.typeSwitch = null;
            setActivity.setHistroyShow = null;
            setActivity.setHistroyShowSwitch = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f0903b4.setOnClickListener(null);
            this.view7f0903b4 = null;
            this.view7f090359.setOnClickListener(null);
            this.view7f090359 = null;
            this.view7f0900cb.setOnClickListener(null);
            this.view7f0900cb = null;
            this.view7f0900f2.setOnClickListener(null);
            this.view7f0900f2 = null;
            this.view7f090340.setOnClickListener(null);
            this.view7f090340 = null;
            this.view7f0903a0.setOnClickListener(null);
            this.view7f0903a0 = null;
            this.view7f0903a1.setOnClickListener(null);
            this.view7f0903a1 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
