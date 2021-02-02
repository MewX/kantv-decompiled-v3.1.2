package com.kantv.ui.adapter;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class HistoryVH_ViewBinding implements Unbinder {
    private HistoryVH target;

    @UiThread
    public HistoryVH_ViewBinding(HistoryVH historyVH, View view) {
        this.target = historyVH;
        historyVH.mDelete = (TextView) Utils.findRequiredViewAsType(view, R.id.item_history_delete, "field 'mDelete'", TextView.class);
        historyVH.mCheck = (CheckBox) Utils.findRequiredViewAsType(view, R.id.item_history_detail_check, "field 'mCheck'", CheckBox.class);
        historyVH.mMovie = (ImageView) Utils.findRequiredViewAsType(view, R.id.item_history_detail_movie, "field 'mMovie'", ImageView.class);
        historyVH.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.item_history_detail_title, "field 'mTitle'", TextView.class);
        historyVH.mTag = (TextView) Utils.findRequiredViewAsType(view, R.id.item_history_detail_tag, "field 'mTag'", TextView.class);
        historyVH.mActor = (TextView) Utils.findRequiredViewAsType(view, R.id.item_history_detail_actor, "field 'mActor'", TextView.class);
        historyVH.mQj = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.item_history_detail_rl, "field 'mQj'", RelativeLayout.class);
    }

    @CallSuper
    public void unbind() {
        HistoryVH historyVH = this.target;
        if (historyVH != null) {
            this.target = null;
            historyVH.mDelete = null;
            historyVH.mCheck = null;
            historyVH.mMovie = null;
            historyVH.mTitle = null;
            historyVH.mTag = null;
            historyVH.mActor = null;
            historyVH.mQj = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
