package com.kantv.ui.fragment;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.kantv.common.base.BaseFragment;
import com.kantv.ui.MainActivity;
import com.kantv.ui.MainActivity.IFragment;
import com.kantv.ui.config.Definition.UserPreference;
import debug.KanApplication;

public class LiveFragment extends BaseFragment implements IFragment {
    MainActivity mainActivity = null;

    public int getIndex() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public View initView(LayoutInflater layoutInflater) {
        this.mainActivity = (MainActivity) getActivity();
        return null;
    }

    public void initData() {
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse("http://huaren.tv"));
            startActivity(intent);
        } catch (ActivityNotFoundException e) {
            e.getMessage();
        }
        MainActivity mainActivity2 = this.mainActivity;
        if (mainActivity2 != null) {
            mainActivity2.setTab(0);
        }
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN2);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
    }
}
