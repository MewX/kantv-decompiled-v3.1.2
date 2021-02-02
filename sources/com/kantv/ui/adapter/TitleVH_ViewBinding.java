package com.kantv.ui.adapter;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class TitleVH_ViewBinding implements Unbinder {
    private TitleVH target;

    @UiThread
    public TitleVH_ViewBinding(TitleVH titleVH, View view) {
        this.target = titleVH;
        titleVH.mText = (TextView) Utils.findRequiredViewAsType(view, R.id.header_index, "field 'mText'", TextView.class);
    }

    @CallSuper
    public void unbind() {
        TitleVH titleVH = this.target;
        if (titleVH != null) {
            this.target = null;
            titleVH.mText = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
