package com.kantv.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class SoareSubFragment_ViewBinding implements Unbinder {
    private SoareSubFragment target;

    @UiThread
    public SoareSubFragment_ViewBinding(SoareSubFragment soareSubFragment, View view) {
        this.target = soareSubFragment;
        soareSubFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.common_recycleview, "field 'mRecyclerView'", RecyclerView.class);
    }

    @CallSuper
    public void unbind() {
        SoareSubFragment soareSubFragment = this.target;
        if (soareSubFragment != null) {
            this.target = null;
            soareSubFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
