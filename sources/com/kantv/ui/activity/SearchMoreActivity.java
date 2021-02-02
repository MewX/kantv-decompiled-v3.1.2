package com.kantv.ui.activity;

import android.os.Bundle;
import com.imkan.tv.R;
import com.kantv.ui.PackageActivity;

public class SearchMoreActivity extends PackageActivity {
    private static final String TAG = "SearchMoreActivity";

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_search_video_more);
        getSupportFragmentManager().findFragmentById(R.id.fragment).setArguments(getIntent().getExtras());
        initStatusBar();
    }

    public void onDestroy() {
        super.onDestroy();
    }
}
