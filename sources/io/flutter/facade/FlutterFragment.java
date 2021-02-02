package io.flutter.facade;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import io.flutter.view.FlutterView;

public class FlutterFragment extends Fragment {
    public static final String ARG_ROUTE = "route";
    private String mRoute = "/";

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.mRoute = getArguments().getString(ARG_ROUTE);
        }
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        super.onInflate(context, attributeSet, bundle);
    }

    public FlutterView onCreateView(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return Flutter.createView(getActivity(), getLifecycle(), this.mRoute);
    }
}
