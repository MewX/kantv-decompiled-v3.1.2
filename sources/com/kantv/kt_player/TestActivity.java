package com.kantv.kt_player;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.kantv.kt_player.ExoPlayer.ExoPlayView;

public class TestActivity extends Activity {
    /* access modifiers changed from: protected */
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.kt_video_test);
        final ExoPlayView exoPlayView = (ExoPlayView) findViewById(R.id.ktv_videoplayer);
        exoPlayView.setDefaultConfig();
        exoPlayView.initVideo();
        new Handler().postDelayed(new Runnable() {
            public void run() {
                exoPlayView.setUp("https://hls.cntv.baishancdnx.cn/asp/hls/main/0303000a/3/default/e2579451cd694bdf8a6c19b860ece19e/main.m3u8", true, "good");
                exoPlayView.startPlayLogic();
            }
        }, 5000);
    }
}
