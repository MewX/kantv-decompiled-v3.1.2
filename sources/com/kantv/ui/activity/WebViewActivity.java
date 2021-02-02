package com.kantv.ui.activity;

import android.net.http.SslError;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.VideoView;
import butterknife.BindView;
import butterknife.OnClick;
import com.imkan.tv.R;
import com.kantv.ui.PackageActivity;
import com.kantv.ui.view.AlertDialog;

public class WebViewActivity extends PackageActivity {
    private boolean isFirst = true;
    @BindView(2131297408)
    ProgressBar mBar;
    @BindView(2131297407)
    LinearLayout mLin;
    VideoView mVideoView = null;
    WebView mWebView = null;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131296483)
    TextView titleTV;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_webview);
        initBase();
        this.titleLeftLayout.setVisibility(0);
        if (getIntent().getExtras() != null) {
            Bundle extras = getIntent().getExtras();
            this.titleTV.setText(extras.getString("title"));
            initWebView(extras.getString("url"));
        }
    }

    private void initWebView(String str) {
        if (str.contains(".mp4")) {
            this.mVideoView = new VideoView(this);
            this.mLin.addView(this.mVideoView);
            this.mVideoView.setVideoPath(str);
            this.mVideoView.start();
        } else {
            this.mWebView = new WebView(this);
            this.mLin.addView(this.mWebView);
            this.mWebView.loadUrl(str);
            this.mWebView.setWebViewClient(new WebViewClient() {
                public void onReceivedSslError(WebView webView, final SslErrorHandler sslErrorHandler, SslError sslError) {
                    new AlertDialog(WebViewActivity.this).builder().setMsg(WebViewActivity.this.getResources().getString(R.string.notification_error_ssl_cert_invalid)).setPositiveButton("继续", new OnClickListener() {
                        public void onClick(View view) {
                            sslErrorHandler.proceed();
                        }
                    }).setNegativeButton("取消", new OnClickListener() {
                        public void onClick(View view) {
                            sslErrorHandler.cancel();
                        }
                    }).show();
                }

                public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                    webView.loadUrl(str);
                    return true;
                }
            });
            this.mWebView.getSettings().setCacheMode(1);
            this.mWebView.setWebChromeClient(new WebChromeClient() {
                public void onProgressChanged(WebView webView, int i) {
                    if (i == 100) {
                        WebViewActivity.this.mBar.setVisibility(8);
                        return;
                    }
                    WebViewActivity.this.mBar.setVisibility(0);
                    WebViewActivity.this.mBar.setProgress(i);
                }
            });
        }
        this.isFirst = false;
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        WebView webView = this.mWebView;
        if (webView != null && !this.isFirst) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.getSettings().setJavaScriptEnabled(false);
        }
    }

    @OnClick({2131297292, 2131297294})
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.title_left_ll) {
            finish();
        } else if (id == R.id.title_right_ll) {
            finish();
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.removeAllViews();
            this.mWebView.destroy();
            this.mWebView = null;
        }
        if (this.mVideoView != null) {
            this.mVideoView = null;
        }
    }
}
