package com.kantv.common.base;

import android.app.Activity;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Message;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.ViewCompat;
import butterknife.ButterKnife;
import com.kantv.common.view.MyHandler;
import io.flutter.plugin.platform.PlatformPlugin;
import java.util.HashMap;
import java.util.Map;

public abstract class BaseActivity extends AppCompatActivity {
    protected boolean isDestroy = false;
    protected MyHandler mMyHandler;
    protected Map<String, String> request = new HashMap();

    /* access modifiers changed from: protected */
    public void handleIntent(Intent intent) {
    }

    /* access modifiers changed from: protected */
    public void handleMessages(Message message) {
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        BaseApplication.getInstance().addActivity(this);
        if (getIntent() != null) {
            handleIntent(getIntent());
        }
        this.mMyHandler = new MyHandler(this) {
            public void handleMessage(Message message) {
                super.handleMessage(message);
                if (BaseActivity.this.mMyHandler.weakReference.get() != null) {
                    BaseActivity.this.handleMessages(message);
                }
            }
        };
    }

    /* access modifiers changed from: protected */
    public void initBase() {
        ButterKnife.bind((Activity) this);
    }

    /* access modifiers changed from: protected */
    public void initStatusBar() {
        if (VERSION.SDK_INT >= 19) {
            getWindow().addFlags(67108864);
            ViewGroup viewGroup = (ViewGroup) ((ViewGroup) findViewById(16908290)).getChildAt(0);
            ViewCompat.setFitsSystemWindows(viewGroup, false);
            viewGroup.setClipToPadding(true);
        }
        if (VERSION.SDK_INT >= 21) {
            getWindow().clearFlags(201326592);
            getWindow().getDecorView().setSystemUiVisibility(PlatformPlugin.DEFAULT_SYSTEM_UI);
            getWindow().addFlags(Integer.MIN_VALUE);
            getWindow().setStatusBarColor(0);
        }
    }

    public void closekeyboard() {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(getWindow().getDecorView().getWindowToken(), 0);
        }
    }

    public void gotoActivity(Class cls) {
        startActivity(new Intent(this, cls));
    }

    public void gotoActivity(Bundle bundle, Class cls) {
        Intent intent = new Intent(this, cls);
        intent.putExtras(bundle);
        startActivity(intent);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.isDestroy = true;
        BaseApplication.getInstance().finishActivity((Activity) this);
        MyHandler myHandler = this.mMyHandler;
        if (myHandler != null) {
            myHandler.removeCallbacksAndMessages(null);
            this.mMyHandler = null;
        }
    }

    public boolean isDestroy() {
        return this.isDestroy;
    }
}
