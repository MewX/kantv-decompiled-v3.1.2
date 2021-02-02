package com.kantv.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class AreaActivity_ViewBinding implements Unbinder {
    private AreaActivity target;
    private View view7f09040e;

    @UiThread
    public AreaActivity_ViewBinding(AreaActivity areaActivity) {
        this(areaActivity, areaActivity.getWindow().getDecorView());
    }

    @UiThread
    public AreaActivity_ViewBinding(final AreaActivity areaActivity, View view) {
        this.target = areaActivity;
        areaActivity.mSelectStateRV = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.select_state, "field 'mSelectStateRV'", RecyclerView.class);
        areaActivity.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitle'", TextView.class);
        areaActivity.deleteImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'deleteImg'", ImageView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.title_right_ll, "method 'onClick'");
        this.view7f09040e = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                areaActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        AreaActivity areaActivity = this.target;
        if (areaActivity != null) {
            this.target = null;
            areaActivity.mSelectStateRV = null;
            areaActivity.mTitle = null;
            areaActivity.deleteImg = null;
            this.view7f09040e.setOnClickListener(null);
            this.view7f09040e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
