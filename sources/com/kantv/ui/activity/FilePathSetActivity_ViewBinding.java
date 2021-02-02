package com.kantv.ui.activity;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;

public class FilePathSetActivity_ViewBinding implements Unbinder {
    private FilePathSetActivity target;
    private View view7f0900df;
    private View view7f090314;
    private View view7f090377;

    @UiThread
    public FilePathSetActivity_ViewBinding(FilePathSetActivity filePathSetActivity) {
        this(filePathSetActivity, filePathSetActivity.getWindow().getDecorView());
    }

    @UiThread
    public FilePathSetActivity_ViewBinding(final FilePathSetActivity filePathSetActivity, View view) {
        this.target = filePathSetActivity;
        filePathSetActivity.phonesd_tv = (TextView) Utils.findRequiredViewAsType(view, R.id.item_phone_name, "field 'phonesd_tv'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.sd_layout, "field 'sdLayout' and method 'onClick'");
        filePathSetActivity.sdLayout = (RelativeLayout) Utils.castView(findRequiredView, R.id.sd_layout, "field 'sdLayout'", RelativeLayout.class);
        this.view7f090377 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                filePathSetActivity.onClick(view);
            }
        });
        filePathSetActivity.sddescribe_tv = (TextView) Utils.findRequiredViewAsType(view, R.id.sd_describe, "field 'sddescribe_tv'", TextView.class);
        filePathSetActivity.checkBox_phone = (CheckBox) Utils.findRequiredViewAsType(view, R.id.item_phone_check, "field 'checkBox_phone'", CheckBox.class);
        filePathSetActivity.checkBox_sd = (CheckBox) Utils.findRequiredViewAsType(view, R.id.sd_check, "field 'checkBox_sd'", CheckBox.class);
        filePathSetActivity.sdp_iv = (ImageView) Utils.findRequiredViewAsType(view, R.id.item_phone_img, "field 'sdp_iv'", ImageView.class);
        filePathSetActivity.sd_iv = (ImageView) Utils.findRequiredViewAsType(view, R.id.sd_iv, "field 'sd_iv'", ImageView.class);
        String str = "method 'onClick'";
        View findRequiredView2 = Utils.findRequiredView(view, R.id.phone_layout, str);
        this.view7f090314 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                filePathSetActivity.onClick(view);
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.common_title_left, str);
        this.view7f0900df = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                filePathSetActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        FilePathSetActivity filePathSetActivity = this.target;
        if (filePathSetActivity != null) {
            this.target = null;
            filePathSetActivity.phonesd_tv = null;
            filePathSetActivity.sdLayout = null;
            filePathSetActivity.sddescribe_tv = null;
            filePathSetActivity.checkBox_phone = null;
            filePathSetActivity.checkBox_sd = null;
            filePathSetActivity.sdp_iv = null;
            filePathSetActivity.sd_iv = null;
            this.view7f090377.setOnClickListener(null);
            this.view7f090377 = null;
            this.view7f090314.setOnClickListener(null);
            this.view7f090314 = null;
            this.view7f0900df.setOnClickListener(null);
            this.view7f0900df = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
