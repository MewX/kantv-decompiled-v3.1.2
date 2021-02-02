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

public class MessageActivity_ViewBinding implements Unbinder {
    private MessageActivity target;
    private View view7f09027e;
    private View view7f09027f;
    private View view7f090280;

    @UiThread
    public MessageActivity_ViewBinding(MessageActivity messageActivity) {
        this(messageActivity, messageActivity.getWindow().getDecorView());
    }

    @UiThread
    public MessageActivity_ViewBinding(final MessageActivity messageActivity, View view) {
        this.target = messageActivity;
        messageActivity.titleRelateLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.common_title_rl, "field 'titleRelateLayout'", RelativeLayout.class);
        messageActivity.titleLeftLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.title_left_ll, "field 'titleLeftLayout'", LinearLayout.class);
        messageActivity.titleLeftImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_leftimg, "field 'titleLeftImg'", ImageView.class);
        messageActivity.titleRightImg = (ImageView) Utils.findRequiredViewAsType(view, R.id.title_rightimg, "field 'titleRightImg'", ImageView.class);
        messageActivity.titleTV = (TextView) Utils.findRequiredViewAsType(view, R.id.common_title_tv, "field 'titleTV'", TextView.class);
        messageActivity.sendText = (TextView) Utils.findRequiredViewAsType(view, R.id.send_msg_text, "field 'sendText'", TextView.class);
        messageActivity.likeText = (TextView) Utils.findRequiredViewAsType(view, R.id.like_msg_text, "field 'likeText'", TextView.class);
        String str = "method 'onClick'";
        View findRequiredView = Utils.findRequiredView(view, R.id.message_received, str);
        this.view7f09027f = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                messageActivity.onClick(view);
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.message_send, str);
        this.view7f090280 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                messageActivity.onClick(view);
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.message_agree, str);
        this.view7f09027e = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                messageActivity.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        MessageActivity messageActivity = this.target;
        if (messageActivity != null) {
            this.target = null;
            messageActivity.titleRelateLayout = null;
            messageActivity.titleLeftLayout = null;
            messageActivity.titleLeftImg = null;
            messageActivity.titleRightImg = null;
            messageActivity.titleTV = null;
            messageActivity.sendText = null;
            messageActivity.likeText = null;
            this.view7f09027f.setOnClickListener(null);
            this.view7f09027f = null;
            this.view7f090280.setOnClickListener(null);
            this.view7f090280 = null;
            this.view7f09027e.setOnClickListener(null);
            this.view7f09027e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
