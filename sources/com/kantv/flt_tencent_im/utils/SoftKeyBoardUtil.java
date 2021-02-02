package com.kantv.flt_tencent_im.utils;

import android.app.Activity;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.os.IBinder;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.kantv.flt_tencent_im.TUIKit;

public class SoftKeyBoardUtil {
    private static InputMethodManager imm = ((InputMethodManager) TUIKit.getAppContext().getSystemService("input_method"));
    /* access modifiers changed from: private */
    public static SharedPreferences preferences = TUIKit.getAppContext().getSharedPreferences(TUIKitConstants.UI_PARAMS, 0);
    /* access modifiers changed from: private */
    public static View rootView;
    /* access modifiers changed from: private */
    public static int rootViewVisibleHeight;
    /* access modifiers changed from: private */
    public static int softKeyBoardHeight;

    public interface SoftKeyboardStateListener {
        void onSoftKeyboardClosed();

        void onSoftKeyboardOpened(int i);
    }

    public static void calculateHeight(Activity activity) {
        AnonymousClass1 r0 = new OnGlobalLayoutListener() {
            public void onGlobalLayout() {
                if (SoftKeyBoardUtil.softKeyBoardHeight == 0) {
                    Rect rect = new Rect();
                    SoftKeyBoardUtil.rootView.getWindowVisibleDisplayFrame(rect);
                    int height = rect.height();
                    if (SoftKeyBoardUtil.rootViewVisibleHeight == 0) {
                        SoftKeyBoardUtil.rootViewVisibleHeight = height;
                        return;
                    }
                    if (SoftKeyBoardUtil.rootViewVisibleHeight != height && SoftKeyBoardUtil.rootViewVisibleHeight - height > 200) {
                        SoftKeyBoardUtil.softKeyBoardHeight = (SoftKeyBoardUtil.rootViewVisibleHeight - height) - ScreenUtil.getNavigationBarHeight();
                        SoftKeyBoardUtil.preferences.edit().putInt(TUIKitConstants.SOFT_KEY_BOARD_HEIGHT, SoftKeyBoardUtil.softKeyBoardHeight).apply();
                    }
                }
            }
        };
        rootView = activity.getWindow().getDecorView();
        rootView.getViewTreeObserver().addOnGlobalLayoutListener(r0);
    }

    public static int getSoftKeyBoardHeight() {
        int i = softKeyBoardHeight;
        if (i != 0) {
            return i;
        }
        softKeyBoardHeight = preferences.getInt(TUIKitConstants.SOFT_KEY_BOARD_HEIGHT, 0);
        int i2 = softKeyBoardHeight;
        if (i2 == 0) {
            i2 = (getScreenSize()[1] * 2) / 5;
        }
        return i2;
    }

    public static int[] getScreenSize() {
        DisplayMetrics displayMetrics = TUIKit.getAppContext().getResources().getDisplayMetrics();
        return new int[]{displayMetrics.widthPixels, displayMetrics.heightPixels};
    }

    public static void SoftKeyboardStateHelper(final View view, final SoftKeyboardStateListener softKeyboardStateListener) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(new OnGlobalLayoutListener() {
            public void onGlobalLayout() {
                Rect rect = new Rect();
                view.getWindowVisibleDisplayFrame(rect);
                int height = view.getRootView().getHeight();
                int i = height - rect.bottom;
                if (i > height / 3) {
                    softKeyboardStateListener.onSoftKeyboardOpened(i);
                } else {
                    softKeyboardStateListener.onSoftKeyboardClosed();
                }
            }
        });
    }

    public static void hideKeyBoard(EditText editText) {
        imm.hideSoftInputFromWindow(editText.getWindowToken(), 0);
    }

    public static void hideKeyBoard(IBinder iBinder) {
        imm.hideSoftInputFromWindow(iBinder, 0);
    }
}
