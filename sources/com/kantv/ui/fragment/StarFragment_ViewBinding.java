package com.kantv.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.lib.recyclerview.XRecyclerView;

public class StarFragment_ViewBinding implements Unbinder {
    private StarFragment target;

    @UiThread
    public StarFragment_ViewBinding(StarFragment starFragment, View view) {
        this.target = starFragment;
        starFragment.mRecyclerView = (XRecyclerView) Utils.findRequiredViewAsType(view, R.id.star_recycleview, "field 'mRecyclerView'", XRecyclerView.class);
    }

    @CallSuper
    public void unbind() {
        StarFragment starFragment = this.target;
        if (starFragment != null) {
            this.target = null;
            starFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
