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

public class MsgReciverFragment_ViewBinding implements Unbinder {
    private MsgReciverFragment target;
    private View view7f09040c;

    @UiThread
    public MsgReciverFragment_ViewBinding(final MsgReciverFragment msgReciverFragment, View view) {
        this.target = msgReciverFragment;
        msgReciverFragment.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        msgReciverFragment.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                msgReciverFragment.onClick(view);
            }
        });
        msgReciverFragment.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        msgReciverFragment.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitle'", TextView.class);
        msgReciverFragment.titleRightLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        msgReciverFragment.mRecyclerView = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.allcomment_recycler, "field 'mRecyclerView'", XRecyclerView.class);
        msgReciverFragment.mTip = (TextView) Utils.findRequiredViewAsType(view, R.id.empty_tip, "field 'mTip'", TextView.class);
    }

    @CallSuper
    public void unbind() {
        MsgReciverFragment msgReciverFragment = this.target;
        if (msgReciverFragment != null) {
            this.target = null;
            msgReciverFragment.titleRelateLayout = null;
            msgReciverFragment.titleLeftLayout = null;
            msgReciverFragment.titleLeftImg = null;
            msgReciverFragment.mTitle = null;
            msgReciverFragment.titleRightLayout = null;
            msgReciverFragment.mRecyclerView = null;
            msgReciverFragment.mTip = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
