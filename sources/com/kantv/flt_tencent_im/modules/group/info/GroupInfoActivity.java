package com.kantv.flt_tencent_im.modules.group.info;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.Nullable;

public class GroupInfoActivity extends Activity {
    /* access modifiers changed from: protected */
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    public void finish() {
        super.finish();
        setResult(1001);
    }
}
