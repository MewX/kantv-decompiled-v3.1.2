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

public class MsgSendFragment_ViewBinding implements Unbinder {
    private MsgSendFragment target;
    private View view7f09040c;

    @UiThread
    public MsgSendFragment_ViewBinding(final MsgSendFragment msgSendFragment, View view) {
        this.target = msgSendFragment;
        msgSendFragment.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        msgSendFragment.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                msgSendFragment.onClick(view);
            }
        });
        msgSendFragment.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        msgSendFragment.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitle'", TextView.class);
        msgSendFragment.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        msgSendFragment.mRecyclerView = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.allcomment_recycler, "field 'mRecyclerView'", XRecyclerView.class);
        msgSendFragment.mTip = (TextView) Utils.findRequiredViewAsType(view, R.id.empty_tip, "field 'mTip'", TextView.class);
    }

    @CallSuper
    public void unbind() {
        MsgSendFragment msgSendFragment = this.target;
        if (msgSendFragment != null) {
            this.target = null;
            msgSendFragment.titleRelateLayout = null;
            msgSendFragment.titleLeftLayout = null;
            msgSendFragment.titleLeftImg = null;
            msgSendFragment.mTitle = null;
            msgSendFragment.titleRightLayout = null;
            msgSendFragment.mRecyclerView = null;
            msgSendFragment.mTip = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
