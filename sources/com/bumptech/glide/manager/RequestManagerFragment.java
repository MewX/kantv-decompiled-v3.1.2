package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.os.Build.VERSION;
import android.util.Log;
import com.bumptech.glide.RequestManager;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@TargetApi(11)
public class RequestManagerFragment extends Fragment {
    private static final String TAG = "RMFragment";
    private final HashSet<RequestManagerFragment> childRequestManagerFragments;
    private final ActivityFragmentLifecycle lifecycle;
    private RequestManager requestManager;
    private final RequestManagerTreeNode requestManagerTreeNode;
    private RequestManagerFragment rootRequestManagerFragment;

    private class FragmentRequestManagerTreeNode implements RequestManagerTreeNode {
        private FragmentRequestManagerTreeNode() {
        }

        public Set<RequestManager> getDescendants() {
            Set<RequestManagerFragment> descendantRequestManagerFragments = RequestManagerFragment.this.getDescendantRequestManagerFragments();
            HashSet hashSet = new HashSet(descendantRequestManagerFragments.size());
            for (RequestManagerFragment requestManagerFragment : descendantRequestManagerFragments) {
                if (requestManagerFragment.getRequestManager() != null) {
                    hashSet.add(requestManagerFragment.getRequestManager());
                }
            }
            return hashSet;
        }
    }

    public RequestManagerFragment() {
        this(new ActivityFragmentLifecycle());
    }

    @SuppressLint({"ValidFragment"})
    RequestManagerFragment(ActivityFragmentLifecycle activityFragmentLifecycle) {
        this.requestManagerTreeNode = new FragmentRequestManagerTreeNode();
        this.childRequestManagerFragments = new HashSet<>();
        this.lifecycle = activityFragmentLifecycle;
    }

    public void setRequestManager(RequestManager requestManager2) {
        this.requestManager = requestManager2;
    }

    /* access modifiers changed from: 0000 */
    public ActivityFragmentLifecycle getLifecycle() {
        return this.lifecycle;
    }

    public RequestManager getRequestManager() {
        return this.requestManager;
    }

    public RequestManagerTreeNode getRequestManagerTreeNode() {
        return this.requestManagerTreeNode;
    }

    private void addChildRequestManagerFragment(RequestManagerFragment requestManagerFragment) {
        this.childRequestManagerFragments.add(requestManagerFragment);
    }

    private void removeChildRequestManagerFragment(RequestManagerFragment requestManagerFragment) {
        this.childRequestManagerFragments.remove(requestManagerFragment);
    }

    @TargetApi(17)
    public Set<RequestManagerFragment> getDescendantRequestManagerFragments() {
        RequestManagerFragment requestManagerFragment = this.rootRequestManagerFragment;
        if (requestManagerFragment == this) {
            return Collections.unmodifiableSet(this.childRequestManagerFragments);
        }
        if (requestManagerFragment == null || VERSION.SDK_INT < 17) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        for (RequestManagerFragment requestManagerFragment2 : this.rootRequestManagerFragment.getDescendantRequestManagerFragments()) {
            if (isDescendant(requestManagerFragment2.getParentFragment())) {
                hashSet.add(requestManagerFragment2);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @TargetApi(17)
    private boolean isDescendant(Fragment fragment) {
        Fragment parentFragment = getParentFragment();
        while (fragment.getParentFragment() != null) {
            if (fragment.getParentFragment() == parentFragment) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
        return false;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            this.rootRequestManagerFragment = RequestManagerRetriever.get().getRequestManagerFragment(getActivity().getFragmentManager());
            if (this.rootRequestManagerFragment != this) {
                this.rootRequestManagerFragment.addChildRequestManagerFragment(this);
            }
        } catch (IllegalStateException e) {
            String str = TAG;
            if (Log.isLoggable(str, 5)) {
                Log.w(str, "Unable to register fragment with root", e);
            }
        }
    }

    public void onDetach() {
        super.onDetach();
        RequestManagerFragment requestManagerFragment = this.rootRequestManagerFragment;
        if (requestManagerFragment != null) {
            requestManagerFragment.removeChildRequestManagerFragment(this);
            this.rootRequestManagerFragment = null;
        }
    }

    public void onStart() {
        super.onStart();
        this.lifecycle.onStart();
    }

    public void onStop() {
        super.onStop();
        this.lifecycle.onStop();
    }

    public void onDestroy() {
        super.onDestroy();
        this.lifecycle.onDestroy();
    }

    public void onTrimMemory(int i) {
        RequestManager requestManager2 = this.requestManager;
        if (requestManager2 != null) {
            requestManager2.onTrimMemory(i);
        }
    }

    public void onLowMemory() {
        RequestManager requestManager2 = this.requestManager;
        if (requestManager2 != null) {
            requestManager2.onLowMemory();
        }
    }
}
