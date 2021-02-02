package com.shuyu.gsyvideoplayer.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.shuyu.gsyvideoplayer.R;
import com.shuyu.gsyvideoplayer.model.GSYVideoModel;
import com.shuyu.gsyvideoplayer.utils.CommonUtil;
import com.shuyu.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class GSYSampleADVideoPlayer extends ListGSYVideoPlayer {
    protected boolean isAdModel = false;
    protected boolean isFirstPrepared = false;
    protected TextView mADTime;
    protected View mJumpAd;
    protected ViewGroup mWidgetContainer;

    public static class GSYADVideoModel extends GSYVideoModel {
        public static int TYPE_AD = 1;
        public static int TYPE_NORMAL;
        private boolean isSkip;
        private int mType;

        public GSYADVideoModel(String str, String str2, int i) {
            this(str, str2, i, false);
        }

        public GSYADVideoModel(String str, String str2, int i, boolean z) {
            super(str, str2);
            this.mType = TYPE_NORMAL;
            this.mType = i;
            this.isSkip = z;
        }

        public int getType() {
            return this.mType;
        }

        public void setType(int i) {
            this.mType = i;
        }

        public boolean isSkip() {
            return this.isSkip;
        }

        public void setSkip(boolean z) {
            this.isSkip = z;
        }
    }

    public GSYSampleADVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
    }

    public GSYSampleADVideoPlayer(Context context) {
        super(context);
    }

    public GSYSampleADVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public void init(Context context) {
        super.init(context);
        this.mJumpAd = findViewById(R.id.jump_ad);
        this.mADTime = (TextView) findViewById(R.id.ad_time);
        this.mWidgetContainer = (ViewGroup) findViewById(R.id.widget_container);
        View view = this.mJumpAd;
        if (view != null) {
            view.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    GSYSampleADVideoPlayer.this.playNext();
                }
            });
        }
    }

    public int getLayoutId() {
        return R.layout.video_layout_sample_ad;
    }

    public boolean setUp(List<GSYVideoModel> list, boolean z, int i) {
        return setUp(list, z, i, null);
    }

    public boolean setUp(List<GSYVideoModel> list, boolean z, int i, File file) {
        return setUp(list, z, i, file, new HashMap());
    }

    public boolean setUp(List<GSYVideoModel> list, boolean z, int i, File file, Map<String, String> map) {
        return setUp(list, z, i, file, map, true);
    }

    /* access modifiers changed from: protected */
    public boolean setUp(List<GSYVideoModel> list, boolean z, int i, File file, Map<String, String> map, boolean z2) {
        GSYVideoModel gSYVideoModel = (GSYVideoModel) list.get(i);
        if (gSYVideoModel instanceof GSYADVideoModel) {
            GSYADVideoModel gSYADVideoModel = (GSYADVideoModel) gSYVideoModel;
            boolean z3 = true;
            if (!gSYADVideoModel.isSkip() || i >= list.size() - 1) {
                if (gSYADVideoModel.getType() != GSYADVideoModel.TYPE_AD) {
                    z3 = false;
                }
                this.isAdModel = z3;
            } else {
                return setUp(list, z, i + 1, file, map, z2);
            }
        }
        changeAdUIState();
        return super.setUp(list, z, i, file, map, z2);
    }

    public void onPrepared() {
        super.onPrepared();
        this.isFirstPrepared = true;
        changeAdUIState();
    }

    /* access modifiers changed from: protected */
    public void updateStartImage() {
        if (this.mStartButton != null && (this.mStartButton instanceof ImageView)) {
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

    /* access modifiers changed from: protected */
    public void touchDoubleUp() {
        if (!this.isAdModel) {
            super.touchDoubleUp();
        }
    }

    /* access modifiers changed from: protected */
    public void touchSurfaceMove(float f, float f2, float f3) {
        if (!this.mChangePosition || !this.isAdModel) {
            super.touchSurfaceMove(f, f2, f3);
        }
    }

    /* access modifiers changed from: protected */
    public void touchSurfaceMoveFullLogic(float f, float f2) {
        if (f > ((float) this.mThreshold) || f2 > ((float) this.mThreshold)) {
            int screenWidth = CommonUtil.getScreenWidth(getContext());
            if (!this.isAdModel || f < ((float) this.mThreshold) || Math.abs(((float) screenWidth) - this.mDownX) <= ((float) this.mSeekEndOffset)) {
                super.touchSurfaceMoveFullLogic(f, f2);
                return;
            }
            this.mChangePosition = true;
            this.mDownPosition = getCurrentPositionWhenPlaying();
        }
    }

    /* access modifiers changed from: protected */
    public void touchSurfaceUp() {
        if (!this.mChangePosition || !this.isAdModel) {
            super.touchSurfaceUp();
        }
    }

    /* access modifiers changed from: protected */
    public void hideAllWidget() {
        if (!this.isFirstPrepared || !this.isAdModel) {
            super.hideAllWidget();
        }
    }

    /* access modifiers changed from: protected */
    public void setProgressAndTime(int i, int i2, int i3, int i4) {
        super.setProgressAndTime(i, i2, i3, i4);
        TextView textView = this.mADTime;
        if (textView != null && i3 > 0) {
            int i5 = i4 / 1000;
            int i6 = i3 / 1000;
            StringBuilder sb = new StringBuilder();
            sb.append("");
            sb.append(i5 - i6);
            textView.setText(sb.toString());
        }
    }

    /* access modifiers changed from: protected */
    public void cloneParams(GSYBaseVideoPlayer gSYBaseVideoPlayer, GSYBaseVideoPlayer gSYBaseVideoPlayer2) {
        super.cloneParams(gSYBaseVideoPlayer, gSYBaseVideoPlayer2);
        GSYSampleADVideoPlayer gSYSampleADVideoPlayer = (GSYSampleADVideoPlayer) gSYBaseVideoPlayer;
        GSYSampleADVideoPlayer gSYSampleADVideoPlayer2 = (GSYSampleADVideoPlayer) gSYBaseVideoPlayer2;
        gSYSampleADVideoPlayer2.isAdModel = gSYSampleADVideoPlayer.isAdModel;
        gSYSampleADVideoPlayer2.isFirstPrepared = gSYSampleADVideoPlayer.isFirstPrepared;
        gSYSampleADVideoPlayer2.changeAdUIState();
    }

    /* access modifiers changed from: protected */
    public void changeAdUIState() {
        View view = this.mJumpAd;
        int i = 8;
        boolean z = false;
        if (view != null) {
            view.setVisibility((!this.isFirstPrepared || !this.isAdModel) ? 8 : 0);
        }
        TextView textView = this.mADTime;
        if (textView != null) {
            textView.setVisibility((!this.isFirstPrepared || !this.isAdModel) ? 8 : 0);
        }
        ViewGroup viewGroup = this.mWidgetContainer;
        if (viewGroup != null) {
            if (!this.isFirstPrepared || !this.isAdModel) {
                i = 0;
            }
            viewGroup.setVisibility(i);
        }
        if (this.mBottomContainer != null) {
            this.mBottomContainer.setBackgroundColor((!this.isFirstPrepared || !this.isAdModel) ? getContext().getResources().getColor(R.color.bottom_container_bg) : 0);
        }
        int i2 = 4;
        if (this.mCurrentTimeTextView != null) {
            this.mCurrentTimeTextView.setVisibility((!this.isFirstPrepared || !this.isAdModel) ? 0 : 4);
        }
        if (this.mTotalTimeTextView != null) {
            this.mTotalTimeTextView.setVisibility((!this.isFirstPrepared || !this.isAdModel) ? 0 : 4);
        }
        if (this.mProgressBar != null) {
            SeekBar seekBar = this.mProgressBar;
            if (!this.isFirstPrepared || !this.isAdModel) {
                i2 = 0;
            }
            seekBar.setVisibility(i2);
            SeekBar seekBar2 = this.mProgressBar;
            if (!this.isFirstPrepared || !this.isAdModel) {
                z = true;
            }
            seekBar2.setEnabled(z);
        }
    }

    public boolean setAdUp(ArrayList<GSYADVideoModel> arrayList, boolean z, int i) {
        return setUp((ArrayList) arrayList.clone(), z, i);
    }

    public boolean setAdUp(ArrayList<GSYADVideoModel> arrayList, boolean z, int i, File file) {
        return setUp((ArrayList) arrayList.clone(), z, i, file);
    }

    public boolean setAdUp(ArrayList<GSYADVideoModel> arrayList, boolean z, int i, File file, Map<String, String> map) {
        return setUp((ArrayList) arrayList.clone(), z, i, file, map);
    }
}
