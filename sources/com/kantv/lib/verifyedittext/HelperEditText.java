package com.kantv.lib.verifyedittext;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View.OnKeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import androidx.appcompat.widget.AppCompatEditText;

public class HelperEditText extends AppCompatEditText {
    /* access modifiers changed from: private */
    public OnKeyListener keyListener;

    private class MyInputConnection extends InputConnectionWrapper {
        public MyInputConnection(InputConnection inputConnection, boolean z) {
            super(inputConnection, z);
        }

        public boolean sendKeyEvent(KeyEvent keyEvent) {
            if (HelperEditText.this.keyListener != null) {
                HelperEditText.this.keyListener.onKey(HelperEditText.this, keyEvent.getKeyCode(), keyEvent);
            }
            return super.sendKeyEvent(keyEvent);
        }

        public boolean deleteSurroundingText(int i, int i2) {
            boolean z = true;
            if (i != 1 && i2 != 0 && i != 0) {
                return super.deleteSurroundingText(i, i2);
            }
            if (!sendKeyEvent(new KeyEvent(0, 67)) || !sendKeyEvent(new KeyEvent(1, 67))) {
                z = false;
            }
            return z;
        }
    }

    public HelperEditText(Context context) {
        super(context);
    }

    public HelperEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HelperEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return new MyInputConnection(super.onCreateInputConnection(editorInfo), true);
    }

    public void setDeleteEventListener(OnKeyListener onKeyListener) {
        this.keyListener = onKeyListener;
    }
}
