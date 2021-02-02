package com.kantv.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class HotSubFragment_ViewBinding implements Unbinder {
    private HotSubFragment target;

    @UiThread
    public HotSubFragment_ViewBinding(HotSubFragment hotSubFragment, View view) {
        this.target = hotSubFragment;
        hotSubFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.common_recycleview, "field 'mRecyclerView'", RecyclerView.class);
    }

    @CallSuper
    public void unbind() {
        HotSubFragment hotSubFragment = this.target;
        if (hotSubFragment != null) {
            this.target = null;
            hotSubFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
