package com.kantv.ui.activity;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.imkan.tv.R;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.config.Definition.UserPreference;
import debug.KanApplication;

public class MeActivity extends PackageActivity {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_me);
        initStatusBar();
        KanApplication.getDefaultTracker().setScreenName(UserPreference.ANALYZE_SCREEN4);
        KanApplication.getDefaultTracker().send(new ScreenViewBuilder().build());
        ImageView imageView = (ImageView) findViewById(R.id.fragment).findViewById(R.id.iv_back);
        imageView.setVisibility(0);
        imageView.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MeActivity.this.finish();
            }
        });
    }

    public void onDestroy() {
        super.onDestroy();
    }
}
