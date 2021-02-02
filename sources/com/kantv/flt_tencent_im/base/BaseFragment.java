package com.kantv.flt_tencent_im.base;

import android.app.Fragment;
import android.app.FragmentTransaction;

public class BaseFragment extends Fragment {
    public void forward(Fragment fragment, boolean z) {
        forward(getId(), fragment, null, z);
    }

    public void forward(int i, Fragment fragment, String str, boolean z) {
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        if (z) {
            beginTransaction.hide(this);
            beginTransaction.add(i, fragment);
        } else {
            beginTransaction.replace(i, fragment);
        }
        beginTransaction.addToBackStack(str);
        beginTransaction.commitAllowingStateLoss();
    }

    public void backward() {
        getFragmentManager().popBackStack();
    }
}
