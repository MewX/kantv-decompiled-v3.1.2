package com.kantv.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class UpdateSubFragment_ViewBinding implements Unbinder {
    private UpdateSubFragment target;

    @UiThread
    public UpdateSubFragment_ViewBinding(UpdateSubFragment updateSubFragment, View view) {
        this.target = updateSubFragment;
        updateSubFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.common_recycleview, "field 'mRecyclerView'", RecyclerView.class);
    }

    @CallSuper
    public void unbind() {
        UpdateSubFragment updateSubFragment = this.target;
        if (updateSubFragment != null) {
            this.target = null;
            updateSubFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
