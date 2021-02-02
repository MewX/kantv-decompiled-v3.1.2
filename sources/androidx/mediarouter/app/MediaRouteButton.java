package androidx.mediarouter.app;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.View.MeasureSpec;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.mediarouter.R;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.MediaRouter.Callback;
import androidx.mediarouter.media.MediaRouter.ProviderInfo;
import androidx.mediarouter.media.MediaRouter.RouteInfo;

public class MediaRouteButton extends View {
    private static final int[] CHECKABLE_STATE_SET = {16842911};
    private static final int[] CHECKED_STATE_SET = {16842912};
    private static final String CHOOSER_FRAGMENT_TAG = "android.support.v7.mediarouter:MediaRouteChooserDialogFragment";
    private static final String CONTROLLER_FRAGMENT_TAG = "android.support.v7.mediarouter:MediaRouteControllerDialogFragment";
    private static final String TAG = "MediaRouteButton";
    static final SparseArray<ConstantState> sRemoteIndicatorCache = new SparseArray<>(2);
    private boolean mAttachedToWindow;
    private ColorStateList mButtonTint;
    private final MediaRouterCallback mCallback;
    private MediaRouteDialogFactory mDialogFactory;
    private boolean mIsConnecting;
    private int mMinHeight;
    private int mMinWidth;
    private boolean mRemoteActive;
    private Drawable mRemoteIndicator;
    RemoteIndicatorLoader mRemoteIndicatorLoader;
    private final MediaRouter mRouter;
    private MediaRouteSelector mSelector;

    private final class MediaRouterCallback extends Callback {
        MediaRouterCallback() {
        }

        public void onRouteAdded(MediaRouter mediaRouter, RouteInfo routeInfo) {
            MediaRouteButton.this.refreshRoute();
        }

        public void onRouteRemoved(MediaRouter mediaRouter, RouteInfo routeInfo) {
            MediaRouteButton.this.refreshRoute();
        }

        public void onRouteChanged(MediaRouter mediaRouter, RouteInfo routeInfo) {
            MediaRouteButton.this.refreshRoute();
        }

        public void onRouteSelected(MediaRouter mediaRouter, RouteInfo routeInfo) {
            MediaRouteButton.this.refreshRoute();
        }

        public void onRouteUnselected(MediaRouter mediaRouter, RouteInfo routeInfo) {
            MediaRouteButton.this.refreshRoute();
        }

        public void onProviderAdded(MediaRouter mediaRouter, ProviderInfo providerInfo) {
            MediaRouteButton.this.refreshRoute();
        }

        public void onProviderRemoved(MediaRouter mediaRouter, ProviderInfo providerInfo) {
            MediaRouteButton.this.refreshRoute();
        }

        public void onProviderChanged(MediaRouter mediaRouter, ProviderInfo providerInfo) {
            MediaRouteButton.this.refreshRoute();
        }
    }

    private final class RemoteIndicatorLoader extends AsyncTask<Void, Void, Drawable> {
        private final int mResId;

        RemoteIndicatorLoader(int i) {
            this.mResId = i;
        }

        /* access modifiers changed from: protected */
        public Drawable doInBackground(Void... voidArr) {
            return MediaRouteButton.this.getContext().getResources().getDrawable(this.mResId);
        }

        /* access modifiers changed from: protected */
        public void onPostExecute(Drawable drawable) {
            cacheAndReset(drawable);
            MediaRouteButton.this.setRemoteIndicatorDrawable(drawable);
        }

        /* access modifiers changed from: protected */
        public void onCancelled(Drawable drawable) {
            cacheAndReset(drawable);
        }

        private void cacheAndReset(Drawable drawable) {
            if (drawable != null) {
                MediaRouteButton.sRemoteIndicatorCache.put(this.mResId, drawable.getConstantState());
            }
            MediaRouteButton.this.mRemoteIndicatorLoader = null;
        }
    }

    public MediaRouteButton(Context context) {
        this(context, null);
    }

    public MediaRouteButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.mediaRouteButtonStyle);
    }

    public MediaRouteButton(Context context, AttributeSet attributeSet, int i) {
        super(MediaRouterThemeHelper.createThemedButtonContext(context), attributeSet, i);
        this.mSelector = MediaRouteSelector.EMPTY;
        this.mDialogFactory = MediaRouteDialogFactory.getDefault();
        Context context2 = getContext();
        this.mRouter = MediaRouter.getInstance(context2);
        this.mCallback = new MediaRouterCallback();
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.MediaRouteButton, i, 0);
        this.mButtonTint = obtainStyledAttributes.getColorStateList(R.styleable.MediaRouteButton_mediaRouteButtonTint);
        this.mMinWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaRouteButton_android_minWidth, 0);
        this.mMinHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.MediaRouteButton_android_minHeight, 0);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.MediaRouteButton_externalRouteEnabledDrawable, 0);
        obtainStyledAttributes.recycle();
        if (resourceId != 0) {
            ConstantState constantState = (ConstantState) sRemoteIndicatorCache.get(resourceId);
            if (constantState != null) {
                setRemoteIndicatorDrawable(constantState.newDrawable());
            } else {
                this.mRemoteIndicatorLoader = new RemoteIndicatorLoader(resourceId);
                this.mRemoteIndicatorLoader.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        }
        updateContentDescription();
        setClickable(true);
    }

    @NonNull
    public MediaRouteSelector getRouteSelector() {
        return this.mSelector;
    }

    public void setRouteSelector(MediaRouteSelector mediaRouteSelector) {
        if (mediaRouteSelector == null) {
            throw new IllegalArgumentException("selector must not be null");
        } else if (!this.mSelector.equals(mediaRouteSelector)) {
            if (this.mAttachedToWindow) {
                if (!this.mSelector.isEmpty()) {
                    this.mRouter.removeCallback(this.mCallback);
                }
                if (!mediaRouteSelector.isEmpty()) {
                    this.mRouter.addCallback(mediaRouteSelector, this.mCallback);
                }
            }
            this.mSelector = mediaRouteSelector;
            refreshRoute();
        }
    }

    @NonNull
    public MediaRouteDialogFactory getDialogFactory() {
        return this.mDialogFactory;
    }

    public void setDialogFactory(@NonNull MediaRouteDialogFactory mediaRouteDialogFactory) {
        if (mediaRouteDialogFactory != null) {
            this.mDialogFactory = mediaRouteDialogFactory;
            return;
        }
        throw new IllegalArgumentException("factory must not be null");
    }

    public boolean showDialog() {
        if (!this.mAttachedToWindow) {
            return false;
        }
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            RouteInfo selectedRoute = this.mRouter.getSelectedRoute();
            boolean isDefaultOrBluetooth = selectedRoute.isDefaultOrBluetooth();
            String str = TAG;
            if (isDefaultOrBluetooth || !selectedRoute.matchesSelector(this.mSelector)) {
                String str2 = CHOOSER_FRAGMENT_TAG;
                if (fragmentManager.findFragmentByTag(str2) != null) {
                    Log.w(str, "showDialog(): Route chooser dialog already showing!");
                    return false;
                }
                MediaRouteChooserDialogFragment onCreateChooserDialogFragment = this.mDialogFactory.onCreateChooserDialogFragment();
                onCreateChooserDialogFragment.setRouteSelector(this.mSelector);
                onCreateChooserDialogFragment.show(fragmentManager, str2);
            } else {
                String str3 = CONTROLLER_FRAGMENT_TAG;
                if (fragmentManager.findFragmentByTag(str3) != null) {
                    Log.w(str, "showDialog(): Route controller dialog already showing!");
                    return false;
                }
                MediaRouteControllerDialogFragment onCreateControllerDialogFragment = this.mDialogFactory.onCreateControllerDialogFragment();
                onCreateControllerDialogFragment.setRouteSelector(this.mSelector);
                onCreateControllerDialogFragment.show(fragmentManager, str3);
            }
            return true;
        }
        throw new IllegalStateException("The activity must be a subclass of FragmentActivity");
    }

    private FragmentManager getFragmentManager() {
        Activity activity = getActivity();
        if (activity instanceof FragmentActivity) {
            return ((FragmentActivity) activity).getSupportFragmentManager();
        }
        return null;
    }

    private Activity getActivity() {
        for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public void setCheatSheetEnabled(boolean z) {
        TooltipCompat.setTooltipText(this, z ? getContext().getString(R.string.mr_button_content_description) : null);
    }

    public boolean performClick() {
        boolean performClick = super.performClick();
        if (!performClick) {
            playSoundEffect(0);
        }
        if (showDialog() || performClick) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.mIsConnecting) {
            mergeDrawableStates(onCreateDrawableState, CHECKABLE_STATE_SET);
        } else if (this.mRemoteActive) {
            mergeDrawableStates(onCreateDrawableState, CHECKED_STATE_SET);
        }
        return onCreateDrawableState;
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.mRemoteIndicator != null) {
            this.mRemoteIndicator.setState(getDrawableState());
            invalidate();
        }
    }

    public void setRemoteIndicatorDrawable(Drawable drawable) {
        RemoteIndicatorLoader remoteIndicatorLoader = this.mRemoteIndicatorLoader;
        if (remoteIndicatorLoader != null) {
            remoteIndicatorLoader.cancel(false);
        }
        Drawable drawable2 = this.mRemoteIndicator;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.mRemoteIndicator);
        }
        if (drawable != null) {
            if (this.mButtonTint != null) {
                drawable = DrawableCompat.wrap(drawable.mutate());
                DrawableCompat.setTintList(drawable, this.mButtonTint);
            }
            drawable.setCallback(this);
            drawable.setState(getDrawableState());
            drawable.setVisible(getVisibility() == 0, false);
        }
        this.mRemoteIndicator = drawable;
        refreshDrawableState();
        if (this.mAttachedToWindow) {
            Drawable drawable3 = this.mRemoteIndicator;
            if (drawable3 != null && (drawable3.getCurrent() instanceof AnimationDrawable)) {
                AnimationDrawable animationDrawable = (AnimationDrawable) this.mRemoteIndicator.getCurrent();
                if (this.mIsConnecting) {
                    if (!animationDrawable.isRunning()) {
                        animationDrawable.start();
                    }
                } else if (this.mRemoteActive) {
                    if (animationDrawable.isRunning()) {
                        animationDrawable.stop();
                    }
                    animationDrawable.selectDrawable(animationDrawable.getNumberOfFrames() - 1);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mRemoteIndicator;
    }

    public void jumpDrawablesToCurrentState() {
        if (getBackground() != null) {
            DrawableCompat.jumpToCurrentState(getBackground());
        }
        Drawable drawable = this.mRemoteIndicator;
        if (drawable != null) {
            DrawableCompat.jumpToCurrentState(drawable);
        }
    }

    public void setVisibility(int i) {
        super.setVisibility(i);
        Drawable drawable = this.mRemoteIndicator;
        if (drawable != null) {
            drawable.setVisible(getVisibility() == 0, false);
        }
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mAttachedToWindow = true;
        if (!this.mSelector.isEmpty()) {
            this.mRouter.addCallback(this.mSelector, this.mCallback);
        }
        refreshRoute();
    }

    public void onDetachedFromWindow() {
        this.mAttachedToWindow = false;
        if (!this.mSelector.isEmpty()) {
            this.mRouter.removeCallback(this.mCallback);
        }
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        int i3 = this.mMinWidth;
        Drawable drawable = this.mRemoteIndicator;
        int i4 = 0;
        int max = Math.max(i3, drawable != null ? drawable.getIntrinsicWidth() + getPaddingLeft() + getPaddingRight() : 0);
        int i5 = this.mMinHeight;
        Drawable drawable2 = this.mRemoteIndicator;
        if (drawable2 != null) {
            i4 = drawable2.getIntrinsicHeight() + getPaddingTop() + getPaddingBottom();
        }
        int max2 = Math.max(i5, i4);
        if (mode == Integer.MIN_VALUE) {
            size = Math.min(size, max);
        } else if (mode != 1073741824) {
            size = max;
        }
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(size2, max2);
        } else if (mode2 != 1073741824) {
            size2 = max2;
        }
        setMeasuredDimension(size, size2);
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mRemoteIndicator != null) {
            int paddingLeft = getPaddingLeft();
            int width = getWidth() - getPaddingRight();
            int paddingTop = getPaddingTop();
            int height = getHeight() - getPaddingBottom();
            int intrinsicWidth = this.mRemoteIndicator.getIntrinsicWidth();
            int intrinsicHeight = this.mRemoteIndicator.getIntrinsicHeight();
            int i = paddingLeft + (((width - paddingLeft) - intrinsicWidth) / 2);
            int i2 = paddingTop + (((height - paddingTop) - intrinsicHeight) / 2);
            this.mRemoteIndicator.setBounds(i, i2, intrinsicWidth + i, intrinsicHeight + i2);
            this.mRemoteIndicator.draw(canvas);
        }
    }

    /* access modifiers changed from: 0000 */
    public void refreshRoute() {
        RouteInfo selectedRoute = this.mRouter.getSelectedRoute();
        boolean z = false;
        boolean z2 = !selectedRoute.isDefaultOrBluetooth() && selectedRoute.matchesSelector(this.mSelector);
        boolean z3 = z2 && selectedRoute.isConnecting();
        if (this.mRemoteActive != z2) {
            this.mRemoteActive = z2;
            z = true;
        }
        if (this.mIsConnecting != z3) {
            this.mIsConnecting = z3;
            z = true;
        }
        if (z) {
            updateContentDescription();
            refreshDrawableState();
        }
        if (this.mAttachedToWindow) {
            setEnabled(this.mRouter.isRouteAvailable(this.mSelector, 1));
        }
        Drawable drawable = this.mRemoteIndicator;
        if (drawable != null && (drawable.getCurrent() instanceof AnimationDrawable)) {
            AnimationDrawable animationDrawable = (AnimationDrawable) this.mRemoteIndicator.getCurrent();
            if (this.mAttachedToWindow) {
                if ((z || z3) && !animationDrawable.isRunning()) {
                    animationDrawable.start();
                }
            } else if (z2 && !z3) {
                if (animationDrawable.isRunning()) {
                    animationDrawable.stop();
                }
                animationDrawable.selectDrawable(animationDrawable.getNumberOfFrames() - 1);
            }
        }
    }

    private void updateContentDescription() {
        int i;
        if (this.mIsConnecting) {
            i = R.string.mr_cast_button_connecting;
        } else if (this.mRemoteActive) {
            i = R.string.mr_cast_button_connected;
        } else {
            i = R.string.mr_cast_button_disconnected;
        }
        setContentDescription(getContext().getString(i));
    }
}
