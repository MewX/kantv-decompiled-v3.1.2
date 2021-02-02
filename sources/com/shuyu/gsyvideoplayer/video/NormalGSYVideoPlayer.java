package com.shuyu.gsyvideoplayer.video;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.shuyu.gsyvideoplayer.R;

public class NormalGSYVideoPlayer extends StandardGSYVideoPlayer {
    public NormalGSYVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
    }

    public NormalGSYVideoPlayer(Context context) {
        super(context);
    }

    public NormalGSYVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public int getLayoutId() {
        return R.layout.video_layout_normal;
    }

    /* access modifiers changed from: protected */
    public void updateStartImage() {
        if (this.mStartButton instanceof ImageView) {
            ImageView imageView = (ImageView) this.mStartButton;
            if (this.mCurrentState == 2) {
                imageView.setImageResource(R.drawable.video_click_pause_selector);
            } else if (this.mCurrentState == 7) {
                imageView.setImageResource(R.drawable.video_click_play_selector);
            } else {
                imageView.setImageResource(R.drawable.video_click_play_selector);
            }
        }
    }
}
