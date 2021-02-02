package com.kantv.ui.activity;

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

public class SendEmailResultActivity_ViewBinding implements Unbinder {
    private SendEmailResultActivity target;
    private View view7f090342;
    private View view7f09039f;
    private View view7f09040c;
    private View view7f09040e;

    @UiThread
    public SendEmailResultActivity_ViewBinding(SendEmailResultActivity sendEmailResultActivity) {
        this(sendEmailResultActivity, sendEmailResultActivity.getWindow().getDecorView());
    }

    @UiThread
    public SendEmailResultActivity_ViewBinding(final SendEmailResultActivity sendEmailResultActivity, View view) {
        this.target = sendEmailResultActivity;
        View findRequiredView = Utils.findRequiredView(view, R.id.title_left_ll, "field 'titleLeftLayout' and method 'onClick'");
        sendEmailResultActivity.titleLeftLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        this.view7f09040c = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                sendEmailResultActivity.onClick(view);
            }
        });
        sendEmailResultActivity.mTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'mTitle'", TextView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.title_right_ll, "field 'titleRightLayout' and method 'onClick'");
        sendEmailResultActivity.titleRightLayout = (LinearLayout) Utils.castView(findRequiredView2, R.id.title_right_ll, "field 'titleRightLayout'", LinearLayout.class);
        this.view7f09040e = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                sendEmailResultActivity.onClick(view);
            }
        });
        sendEmailResultActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        sendEmailResultActivity.titleRightTv = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_right, "field 'titleRightTv'", TextView.class);
        sendEmailResultActivity.resendTv = (TextView) Utils.findRequiredViewAsType(view, R.id.resend_tv, "field 'resendTv'", TextView.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.resend_email, "field 'resendEmail' and method 'onClick'");
        sendEmailResultActivity.resendEmail = (LinearLayout) Utils.castView(findRequiredView3, R.id.resend_email, "field 'resendEmail'", LinearLayout.class);
        this.view7f090342 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                sendEmailResultActivity.onClick(view);
            }
        });
        sendEmailResultActivity.sendEmailResultTv = (TextView) Utils.findRequiredViewAsType(view, R.id.sendemail_result_tv, "field 'sendEmailResultTv'", TextView.class);
        sendEmailResultActivity.verLoginTipLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.verlogin_tip_layout, "field 'verLoginTipLayout'", RelativeLayout.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.sendemail_verify, "method 'onClick'");
        this.view7f09039f = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                sendEmailResultActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        SendEmailResultActivity sendEmailResultActivity = this.target;
        if (sendEmailResultActivity != null) {
            this.target = null;
            sendEmailResultActivity.titleLeftLayout = null;
            sendEmailResultActivity.mTitle = null;
            sendEmailResultActivity.titleRightLayout = null;
            sendEmailResultActivity.titleRightImg = null;
            sendEmailResultActivity.titleRightTv = null;
            sendEmailResultActivity.resendTv = null;
            sendEmailResultActivity.resendEmail = null;
            sendEmailResultActivity.sendEmailResultTv = null;
            sendEmailResultActivity.verLoginTipLayout = null;
            this.view7f09040c.setOnClickListener(null);
            this.view7f09040c = null;
            this.view7f09040e.setOnClickListener(null);
            this.view7f09040e = null;
            this.view7f090342.setOnClickListener(null);
            this.view7f090342 = null;
            this.view7f09039f.setOnClickListener(null);
            this.view7f09039f = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
