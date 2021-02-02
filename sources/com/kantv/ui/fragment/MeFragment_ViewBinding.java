package com.kantv.ui.fragment;

import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.imkan.tv.R;
import com.kantv.ui.view.CircleImageView;
import com.kantv.ui.view.WaveView;

public class MeFragment_ViewBinding implements Unbinder {
    private MeFragment target;
    private View view7f09000b;
    private View view7f09010d;
    private View view7f090160;
    private View view7f09028a;
    private View view7f0902c4;
    private View view7f0902c5;
    private View view7f0903a4;
    private View view7f0903a5;
    private View view7f0903ab;
    private View view7f090448;
    private View view7f09047b;
    private View view7f09047d;

    @UiThread
    public MeFragment_ViewBinding(final MeFragment meFragment, View view) {
        this.target = meFragment;
        meFragment.mNologin = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.mine_nologin_rl, "field 'mNologin'", RelativeLayout.class);
        meFragment.mInlogin = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.mine_inlogin_rl, "field 'mInlogin'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.waveView, "field 'mWaveView' and method 'onClick'");
        meFragment.mWaveView = (WaveView) Utils.castView(findRequiredView, R.id.waveView, "field 'mWaveView'", WaveView.class);
        this.view7f09047d = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                meFragment.onClick(view);
            }
        });
        meFragment.mHead = (CircleImageView) Utils.findRequiredViewAsType(view, R.id.mine_head, "field 'mHead'", CircleImageView.class);
        meFragment.mName = (TextView) Utils.findRequiredViewAsType(view, R.id.mine_name, "field 'mName'", TextView.class);
        meFragment.watchHistoryRV = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.watch_history, "field 'watchHistoryRV'", RecyclerView.class);
        meFragment.versionTv = (TextView) Utils.findRequiredViewAsType(view, R.id.version_tv, "field 'versionTv'", TextView.class);
        meFragment.mMyMsg = (TextView) Utils.findRequiredViewAsType(view, R.id.my_msg, "field 'mMyMsg'", TextView.class);
        String str = "method 'onClick'";
        View findRequiredView2 = Utils.findRequiredView(view, R.id.fragment_mine_top, str);
        this.view7f090160 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                meFragment.onClick(view);
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.mine_set, str);
        this.view7f09028a = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                meFragment.onClick(view);
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, R.id.set_video_cache, str);
        this.view7f0903a5 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                meFragment.onClick(view);
            }
        });
        View findRequiredView5 = Utils.findRequiredView(view, R.id.watch_history_ll, str);
        this.view7f09047b = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                meFragment.onClick(view);
            }
        });
        View findRequiredView6 = Utils.findRequiredView(view, R.id.disclaimer, str);
        this.view7f09010d = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                meFragment.onClick(view);
            }
        });
        View findRequiredView7 = Utils.findRequiredView(view, R.id.aboutus, str);
        this.view7f09000b = findRequiredView7;
        findRequiredView7.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                meFragment.onClick(view);
            }
        });
        View findRequiredView8 = Utils.findRequiredView(view, R.id.versionUpdate, str);
        this.view7f090448 = findRequiredView8;
        findRequiredView8.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                meFragment.onClick(view);
            }
        });
        View findRequiredView9 = Utils.findRequiredView(view, R.id.shareKTV, str);
        this.view7f0903ab = findRequiredView9;
        findRequiredView9.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                meFragment.onClick(view);
            }
        });
        View findRequiredView10 = Utils.findRequiredView(view, R.id.myCollect_layout, str);
        this.view7f0902c5 = findRequiredView10;
        findRequiredView10.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                meFragment.onClick(view);
            }
        });
        View findRequiredView11 = Utils.findRequiredView(view, R.id.set_message, str);
        this.view7f0903a4 = findRequiredView11;
        findRequiredView11.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                meFragment.onClick(view);
            }
        });
        View findRequiredView12 = Utils.findRequiredView(view, R.id.myCollectNews_layout, str);
        this.view7f0902c4 = findRequiredView12;
        findRequiredView12.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                meFragment.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        MeFragment meFragment = this.target;
        if (meFragment != null) {
            this.target = null;
            meFragment.mNologin = null;
            meFragment.mInlogin = null;
            meFragment.mWaveView = null;
            meFragment.mHead = null;
            meFragment.mName = null;
            meFragment.watchHistoryRV = null;
            meFragment.versionTv = null;
            meFragment.mMyMsg = null;
            this.view7f09047d.setOnClickListener(null);
            this.view7f09047d = null;
            this.view7f090160.setOnClickListener(null);
            this.view7f090160 = null;
            this.view7f09028a.setOnClickListener(null);
            this.view7f09028a = null;
            this.view7f0903a5.setOnClickListener(null);
            this.view7f0903a5 = null;
            this.view7f09047b.setOnClickListener(null);
            this.view7f09047b = null;
            this.view7f09010d.setOnClickListener(null);
            this.view7f09010d = null;
            this.view7f09000b.setOnClickListener(null);
            this.view7f09000b = null;
            this.view7f090448.setOnClickListener(null);
            this.view7f090448 = null;
            this.view7f0903ab.setOnClickListener(null);
            this.view7f0903ab = null;
            this.view7f0902c5.setOnClickListener(null);
            this.view7f0902c5 = null;
            this.view7f0903a4.setOnClickListener(null);
            this.view7f0903a4 = null;
            this.view7f0902c4.setOnClickListener(null);
            this.view7f0902c4 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
