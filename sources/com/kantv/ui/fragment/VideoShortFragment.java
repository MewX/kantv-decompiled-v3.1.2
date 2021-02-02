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
import java.util.HashMap;
import java.util.Map;

public class VideoShortFragment extends NewFlutterFragment {
    private static final String TAG = "VideoShortFragment";

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.d(TAG, "onCreate");
    }

    public String getContainerUrl() {
        Log.d(TAG, "getContainerUrl");
        return "ShortVideoListPage";
    }

    public Map getContainerUrlParams() {
        Log.d(TAG, "getContainerParams");
        HashMap hashMap = new HashMap();
        hashMap.put("tag", "haah");
        return hashMap;
    }

    public void onResume() {
        Log.d(TAG, "onResume");
        super.onResume();
    }

    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Log.d(TAG, "onCreateView");
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    public void onDestroy() {
        super.onDestroy();
        Log.d(TAG, "onDestroy");
    }

    public void onDestroyView() {
        super.onDestroyView();
        Log.d(TAG, "onDestroyView");
    }

    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        Log.d(TAG, "onAttach");
    }

    public void onPause() {
        super.onPause();
        Log.d(TAG, "onPause");
    }

    public void onDetach() {
        super.onDetach();
        Log.d(TAG, "onDetach");
    }
}
