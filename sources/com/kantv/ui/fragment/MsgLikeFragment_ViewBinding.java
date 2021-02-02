package com.kantv.ui.fragment;

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
import com.kantv.lib.recyclerview.XRecyclerView;

public class MsgLikeFragment_ViewBinding implements Unbinder {
    private MsgLikeFragment target;
    private View view7f09040c;

    @UiThread
    public MsgLikeFragment_ViewBinding(final MsgLikeFragment msgLikeFragment, View view) {
        this.target = msgLikeFragment;
        msgLikeFragment.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        msgLikeFragment.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                msgLikeFragment.onClick(view);
            }
        });
        msgLikeFragment.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        msgLikeFragment.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitle'", TextView.class);
        msgLikeFragment.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        msgLikeFragment.mRecyclerView = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.allcomment_recycler, "field 'mRecyclerView'", XRecyclerView.class);
        msgLikeFragment.mTip = (TextView) Utils.findRequiredViewAsType(view, R.id.empty_tip, "field 'mTip'", TextView.class);
    }

    @CallSuper
    public void unbind() {
        MsgLikeFragment msgLikeFragment = this.target;
        if (msgLikeFragment != null) {
            this.target = null;
            msgLikeFragment.titleRelateLayout = null;
            msgLikeFragment.titleLeftLayout = null;
            msgLikeFragment.titleLeftImg = null;
            msgLikeFragment.mTitle = null;
            msgLikeFragment.titleRightLayout = null;
            msgLikeFragment.mRecyclerView = null;
            msgLikeFragment.mTip = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
