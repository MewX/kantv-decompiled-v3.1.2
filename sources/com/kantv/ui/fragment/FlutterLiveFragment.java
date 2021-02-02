package com.kantv.ui.fragment;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.idlefish.flutterboost.containers.NewFlutterFragment;
import com.kantv.common.log.AILog;
import com.kantv.ui.flutter.PageRouter;
import java.util.HashMap;
import java.util.Map;

public class FlutterLiveFragment extends NewFlutterFragment {
    private static final String TAG = "FlutterLiveFragment";

    public String getContainerUrl() {
        return PageRouter.NATIVE_PAGE_URL;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AILog.d(TAG, "FlutterLiveFragment onCreate");
    }

    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        AILog.d(TAG, "FlutterLiveFragment onCreateView");
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    public void onDetach() {
        AILog.d(TAG, "FlutterLiveFragment onDetach");
        super.onDetach();
    }

    public void onAttach(@NonNull Context context) {
        AILog.d(TAG, "FlutterLiveFragment onAttach");
        super.onAttach(context);
    }

    public Map getContainerUrlParams() {
        Log.d(TAG, "LiveDetailPage");
        HashMap hashMap = new HashMap();
        hashMap.put("tag", "haah");
        return hashMap;
    }

    public void onResume() {
        super.onResume();
    }

    public void onDestroy() {
        super.onDestroy();
    }

    public void onDestroyView() {
        super.onDestroyView();
    }
}
