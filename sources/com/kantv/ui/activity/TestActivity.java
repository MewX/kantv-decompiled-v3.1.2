package com.kantv.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import com.imkan.tv.R;

public class TestActivity extends PackageSimpleActivity {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_welcome);
        findViewById(R.id.welcome_img).setVisibility(0);
        findViewById(R.id.bottom_img).setVisibility(0);
        this.mMyHandler.postDelayed(new Runnable() {
            public void run() {
                Bundle bundle = new Bundle();
                bundle.putString("tid", "301938777647001");
                bundle.putString("seo", "movie");
                Intent intent = new Intent(TestActivity.this, VideoPlayActivity.class);
                intent.putExtras(bundle);
                TestActivity.this.startActivity(intent);
                TestActivity.this.finish();
            }
        }, 5000);
    }
}
