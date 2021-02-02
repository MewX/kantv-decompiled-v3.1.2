package com.kantv.ui.fragment;

import android.net.http.SslError;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import butterknife.BindView;
import com.imkan.tv.R;
import com.kantv.common.base.BaseFragment;
import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import com.kantv.ui.MainActivity.IFragment;
import com.kantv.ui.activity.VideoPlayActivity;
import com.kantv.ui.config.Definition.UserPreference;
import com.kantv.ui.utils.PreferenceUtil;
import com.kantv.ui.view.AlertDialog;

public class KanListFragment extends BaseFragment implements IFragment {
    private boolean isFirst = true;
    @BindView(2131297408)
    ProgressBar mBar;
    @BindView(2131297407)
    LinearLayout mLin;
    WebView mWebView;
    @BindView(2131297292)
    LinearLayout titleLeftLayout;
    @BindView(2131297294)
    LinearLayout titleRightLayout;
    @BindView(2131296483)
    TextView titleTV;

    public int getIndex() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public View initView(LayoutInflater layoutInflater) {
        this.mRootView = layoutInflater.inflate(R.layout.fragment_kanlist, null);
        return this.mRootView;
    }

    public void initData() {
        this.titleRightLayout.setVisibility(4);
        this.titleTV.setText("专题");
        String str = (String) PreferenceUtil.get(Utils.getContext(), UserPreference.WATCHLIST_TOPIC_URL, "");
        if (StringUtils.isEmpty(str)) {
            initWebView("http://kantv6.com/watchlist");
        } else {
            initWebView(str);
        }
    }

    private void initWebView(String str) {
        this.mWebView = new WebView(getContext());
        this.mLin.addView(this.mWebView);
        this.mWebView.loadUrl(str);
        this.mWebView.setWebViewClient(new WebViewClient() {
            public void onReceivedSslError(WebView webView, final SslErrorHandler sslErrorHandler, SslError sslError) {
                new AlertDialog(KanListFragment.this.getContext()).builder().setMsg(KanListFragment.this.getResources().getString(R.string.notification_error_ssl_cert_invalid)).setPositiveButton("继续", new OnClickListener() {
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
                if (str == null || (!str.contains("redirect") && !str.contains("movie"))) {
                    webView.loadUrl(str);
                    return true;
                }
                KanListFragment.this.jumpNewsLink(str);
                return true;
            }
        });
        this.mWebView.getSettings().setCacheMode(1);
        this.mWebView.setWebChromeClient(new WebChromeClient() {
            public void onProgressChanged(WebView webView, int i) {
                if (i == 100) {
                    KanListFragment.this.mBar.setVisibility(8);
                    return;
                }
                KanListFragment.this.mBar.setVisibility(0);
                KanListFragment.this.mBar.setProgress(i);
            }
        });
        this.isFirst = false;
    }

    public void onResume() {
        super.onResume();
        if (!this.isFirst) {
            this.mWebView.getSettings().setJavaScriptEnabled(true);
        }
    }

    public void onStop() {
        super.onStop();
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.getSettings().setJavaScriptEnabled(false);
        }
    }

    /* access modifiers changed from: private */
    public void jumpNewsLink(String str) {
        if (!StringUtils.isEmpty(str)) {
            String[] split = str.split("/");
            int length = split.length;
            if (length > 2) {
                Bundle bundle = new Bundle();
                bundle.putString("seo", split[length - 2]);
                bundle.putString("tid", split[length - 1]);
                gotoActivity(bundle, VideoPlayActivity.class);
            }
        }
    }

    public void onDestroy() {
        super.onDestroy();
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.removeAllViews();
            this.mWebView.destroy();
            this.mWebView = null;
        }
    }
}
