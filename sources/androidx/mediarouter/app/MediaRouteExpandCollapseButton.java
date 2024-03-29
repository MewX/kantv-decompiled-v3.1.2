package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import androidx.core.content.ContextCompat;
import androidx.mediarouter.R;

class MediaRouteExpandCollapseButton extends ImageButton {
    final AnimationDrawable mCollapseAnimationDrawable;
    final String mCollapseGroupDescription;
    final AnimationDrawable mExpandAnimationDrawable;
    final String mExpandGroupDescription;
    boolean mIsGroupExpanded;
    OnClickListener mListener;

    public MediaRouteExpandCollapseButton(Context context) {
        this(context, null);
    }

    public MediaRouteExpandCollapseButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MediaRouteExpandCollapseButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mExpandAnimationDrawable = (AnimationDrawable) ContextCompat.getDrawable(context, R.drawable.mr_group_expand);
        this.mCollapseAnimationDrawable = (AnimationDrawable) ContextCompat.getDrawable(context, R.drawable.mr_group_collapse);
        PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(MediaRouterThemeHelper.getControllerColor(context, i), Mode.SRC_IN);
        this.mExpandAnimationDrawable.setColorFilter(porterDuffColorFilter);
        this.mCollapseAnimationDrawable.setColorFilter(porterDuffColorFilter);
        this.mExpandGroupDescription = context.getString(R.string.mr_controller_expand_group);
        this.mCollapseGroupDescription = context.getString(R.string.mr_controller_collapse_group);
        setImageDrawable(this.mExpandAnimationDrawable.getFrame(0));
        setContentDescription(this.mExpandGroupDescription);
        super.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton = MediaRouteExpandCollapseButton.this;
                mediaRouteExpandCollapseButton.mIsGroupExpanded = !mediaRouteExpandCollapseButton.mIsGroupExpanded;
                if (MediaRouteExpandCollapseButton.this.mIsGroupExpanded) {
                    MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton2 = MediaRouteExpandCollapseButton.this;
                    mediaRouteExpandCollapseButton2.setImageDrawable(mediaRouteExpandCollapseButton2.mExpandAnimationDrawable);
                    MediaRouteExpandCollapseButton.this.mExpandAnimationDrawable.start();
                    MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton3 = MediaRouteExpandCollapseButton.this;
                    mediaRouteExpandCollapseButton3.setContentDescription(mediaRouteExpandCollapseButton3.mCollapseGroupDescription);
                } else {
                    MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton4 = MediaRouteExpandCollapseButton.this;
                    mediaRouteExpandCollapseButton4.setImageDrawable(mediaRouteExpandCollapseButton4.mCollapseAnimationDrawable);
                    MediaRouteExpandCollapseButton.this.mCollapseAnimationDrawable.start();
                    MediaRouteExpandCollapseButton mediaRouteExpandCollapseButton5 = MediaRouteExpandCollapseButton.this;
                    mediaRouteExpandCollapseButton5.setContentDescription(mediaRouteExpandCollapseButton5.mExpandGroupDescription);
                }
                if (MediaRouteExpandCollapseButton.this.mListener != null) {
                    MediaRouteExpandCollapseButton.this.mListener.onClick(view);
                }
            }
        });
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.mListener = onClickListener;
    }
}
