package com.kantv.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.lib.recyclerview.XRecyclerView;

public class TvDefaultFragment_ViewBinding implements Unbinder {
    private TvDefaultFragment target;

    @UiThread
    public TvDefaultFragment_ViewBinding(TvDefaultFragment tvDefaultFragment, View view) {
        this.target = tvDefaultFragment;
        tvDefaultFragment.mRecommendRV = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.header_item_recommend, "field 'mRecommendRV'", XRecyclerView.class);
    }

    @CallSuper
    public void unbind() {
        TvDefaultFragment tvDefaultFragment = this.target;
        if (tvDefaultFragment != null) {
            this.target = null;
            tvDefaultFragment.mRecommendRV = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
