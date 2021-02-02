package com.kantv.common.base;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import butterknife.ButterKnife;
import java.util.HashMap;
import java.util.Map;

public abstract class BaseFragment extends Fragment {
    protected boolean isonDestroy = false;
    protected ProgressDialog mDialog = null;
    protected View mRootView = null;
    protected Map<String, String> request = new HashMap();
    protected int versionCode;

    /* access modifiers changed from: protected */
    public void InItBase() {
    }

    public abstract void initData();

    /* access modifiers changed from: protected */
    public abstract View initView(LayoutInflater layoutInflater);

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.mRootView == null) {
            this.mRootView = initView(layoutInflater);
        }
        ButterKnife.bind((Object) this, this.mRootView);
        return this.mRootView;
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getUserVisibleHint()) {
            initData();
        }
    }

    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (getUserVisibleHint() && (this.mRootView != null)) {
            initData();
        }
    }

    public void onDestroyView() {
        super.onDestroyView();
        View view = this.mRootView;
        if (view != null && view.getParent() != null) {
            ((ViewGroup) this.mRootView.getParent()).removeView(this.mRootView);
        }
    }

    public void gotoActivity(Class cls) {
        startActivity(new Intent(getContext(), cls));
    }

    public void gotoActivity(Bundle bundle, Class cls) {
        Intent intent = new Intent(getContext(), cls);
        intent.putExtras(bundle);
        startActivity(intent);
    }

    /* access modifiers changed from: protected */
    public void InItDialog(String str, Context context) {
        this.mDialog = ProgressDialog.show(context, "", str);
        this.mDialog.show();
    }

    private void hideLoadingDialog() {
        ProgressDialog progressDialog = this.mDialog;
        if (progressDialog != null && progressDialog.isShowing()) {
            this.mDialog.dismiss();
        }
    }

    public void onDestroy() {
        super.onDestroy();
        this.isonDestroy = true;
        this.mRootView = null;
    }
}
