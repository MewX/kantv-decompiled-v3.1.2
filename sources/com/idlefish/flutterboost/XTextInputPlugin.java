package com.idlefish.flutterboost;

import android.text.Editable;
import android.text.Editable.Factory;
import android.text.Selection;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.InputDeviceCompat;
import io.flutter.embedding.engine.systemchannels.TextInputChannel;
import io.flutter.embedding.engine.systemchannels.TextInputChannel.Configuration;
import io.flutter.embedding.engine.systemchannels.TextInputChannel.InputType;
import io.flutter.embedding.engine.systemchannels.TextInputChannel.TextCapitalization;
import io.flutter.embedding.engine.systemchannels.TextInputChannel.TextEditState;
import io.flutter.embedding.engine.systemchannels.TextInputChannel.TextInputMethodHandler;
import io.flutter.embedding.engine.systemchannels.TextInputChannel.TextInputType;
import io.flutter.plugin.platform.PlatformViewsController;
import tv.danmaku.ijk.media.player.IjkMediaPlayer.OnNativeInvokeListener;

public class XTextInputPlugin {
    @Nullable
    private Configuration configuration;
    @NonNull
    private InputTarget inputTarget = new InputTarget(Type.NO_TARGET, 0);
    private boolean isInputConnectionLocked;
    @Nullable
    private InputConnection lastInputConnection;
    @Nullable
    private Editable mEditable;
    @NonNull
    private final InputMethodManager mImm;
    private boolean mRestartInputPending;
    /* access modifiers changed from: private */
    @NonNull
    public View mView;
    @NonNull
    private PlatformViewsController platformViewsController;
    @NonNull
    private final TextInputChannel textInputChannel;

    private static class InputTarget {
        int id;
        @NonNull
        Type type;

        enum Type {
            NO_TARGET,
            FRAMEWORK_CLIENT,
            PLATFORM_VIEW
        }

        public InputTarget(@NonNull Type type2, int i) {
            this.type = type2;
            this.id = i;
        }
    }

    public XTextInputPlugin(View view, @NonNull TextInputChannel textInputChannel2, @NonNull PlatformViewsController platformViewsController2) {
        this.mView = view;
        this.mImm = (InputMethodManager) view.getContext().getSystemService("input_method");
        this.textInputChannel = textInputChannel2;
        this.platformViewsController = platformViewsController2;
    }

    public void release() {
        this.mView = null;
    }

    public void setTextInputMethodHandler() {
        this.textInputChannel.setTextInputMethodHandler(new TextInputMethodHandler() {
            public void show() {
                XTextInputPlugin xTextInputPlugin = XTextInputPlugin.this;
                xTextInputPlugin.showTextInput(xTextInputPlugin.mView);
            }

            public void hide() {
                XTextInputPlugin xTextInputPlugin = XTextInputPlugin.this;
                xTextInputPlugin.hideTextInput(xTextInputPlugin.mView);
            }

            public void setClient(int i, Configuration configuration) {
                XTextInputPlugin.this.setTextInputClient(i, configuration);
            }

            public void setPlatformViewClient(int i) {
                XTextInputPlugin.this.setPlatformViewTextInputClient(i);
            }

            public void setEditingState(TextEditState textEditState) {
                XTextInputPlugin xTextInputPlugin = XTextInputPlugin.this;
                xTextInputPlugin.setTextInputEditingState(xTextInputPlugin.mView, textEditState);
            }

            public void clearClient() {
                XTextInputPlugin.this.clearTextInputClient();
            }
        });
    }

    @NonNull
    public InputMethodManager getInputMethodManager() {
        return this.mImm;
    }

    public void lockPlatformViewInputConnection() {
        if (this.inputTarget.type == Type.PLATFORM_VIEW) {
            this.isInputConnectionLocked = true;
        }
    }

    public void unlockPlatformViewInputConnection() {
        this.isInputConnectionLocked = false;
    }

    public void destroy() {
        this.platformViewsController.detachTextInputPlugin();
    }

    private static int inputTypeFromTextInputType(InputType inputType, boolean z, boolean z2, TextCapitalization textCapitalization) {
        if (inputType.type == TextInputType.DATETIME) {
            return 4;
        }
        if (inputType.type == TextInputType.NUMBER) {
            int i = 2;
            if (inputType.isSigned) {
                i = InputDeviceCompat.SOURCE_TOUCHSCREEN;
            }
            if (inputType.isDecimal) {
                i |= 8192;
            }
            return i;
        } else if (inputType.type == TextInputType.PHONE) {
            return 3;
        } else {
            int i2 = 1;
            if (inputType.type == TextInputType.MULTILINE) {
                i2 = OnNativeInvokeListener.CTRL_WILL_TCP_OPEN;
            } else if (inputType.type == TextInputType.EMAIL_ADDRESS) {
                i2 = 33;
            } else if (inputType.type == TextInputType.URL) {
                i2 = 17;
            } else if (inputType.type == TextInputType.VISIBLE_PASSWORD) {
                i2 = 145;
            }
            if (z) {
                i2 = 524288 | i2 | 128;
            } else if (z2) {
                i2 |= 32768;
            }
            if (textCapitalization == TextCapitalization.CHARACTERS) {
                i2 |= 4096;
            } else if (textCapitalization == TextCapitalization.WORDS) {
                i2 |= 8192;
            } else if (textCapitalization == TextCapitalization.SENTENCES) {
                i2 |= 16384;
            }
            return i2;
        }
    }

    public InputConnection createInputConnection(View view, EditorInfo editorInfo) {
        if (this.inputTarget.type == Type.NO_TARGET) {
            this.lastInputConnection = null;
            return null;
        } else if (this.inputTarget.type != Type.PLATFORM_VIEW) {
            editorInfo.inputType = inputTypeFromTextInputType(this.configuration.inputType, this.configuration.obscureText, this.configuration.autocorrect, this.configuration.textCapitalization);
            editorInfo.imeOptions = 33554432;
            int i = this.configuration.inputAction == null ? (131072 & editorInfo.inputType) != 0 ? 1 : 6 : this.configuration.inputAction.intValue();
            if (this.configuration.actionLabel != null) {
                editorInfo.actionLabel = this.configuration.actionLabel;
                editorInfo.actionId = i;
            }
            editorInfo.imeOptions = i | editorInfo.imeOptions;
            XInputConnectionAdaptor xInputConnectionAdaptor = new XInputConnectionAdaptor(view, this.inputTarget.id, this.textInputChannel, this.mEditable);
            editorInfo.initialSelStart = Selection.getSelectionStart(this.mEditable);
            editorInfo.initialSelEnd = Selection.getSelectionEnd(this.mEditable);
            this.lastInputConnection = xInputConnectionAdaptor;
            return this.lastInputConnection;
        } else if (this.isInputConnectionLocked) {
            return this.lastInputConnection;
        } else {
            this.lastInputConnection = this.platformViewsController.getPlatformViewById(Integer.valueOf(this.inputTarget.id)).onCreateInputConnection(editorInfo);
            return this.lastInputConnection;
        }
    }

    @Nullable
    public InputConnection getLastInputConnection() {
        return this.lastInputConnection;
    }

    public void clearPlatformViewClient(int i) {
        if (this.inputTarget.type == Type.PLATFORM_VIEW && this.inputTarget.id == i) {
            this.inputTarget = new InputTarget(Type.NO_TARGET, 0);
            hideTextInput(this.mView);
            this.mImm.restartInput(this.mView);
            this.mRestartInputPending = false;
        }
    }

    /* access modifiers changed from: private */
    public void showTextInput(View view) {
        view.requestFocus();
        this.mImm.showSoftInput(view, 0);
    }

    /* access modifiers changed from: private */
    public void hideTextInput(View view) {
        this.mImm.hideSoftInputFromWindow(view.getApplicationWindowToken(), 0);
    }

    /* access modifiers changed from: private */
    public void setTextInputClient(int i, Configuration configuration2) {
        this.inputTarget = new InputTarget(Type.FRAMEWORK_CLIENT, i);
        this.configuration = configuration2;
        this.mEditable = Factory.getInstance().newEditable("");
        this.mRestartInputPending = true;
        unlockPlatformViewInputConnection();
    }

    /* access modifiers changed from: private */
    public void setPlatformViewTextInputClient(int i) {
        this.mView.requestFocus();
        this.inputTarget = new InputTarget(Type.PLATFORM_VIEW, i);
        this.mImm.restartInput(this.mView);
        this.mRestartInputPending = false;
    }

    private void applyStateToSelection(TextEditState textEditState) {
        int i = textEditState.selectionStart;
        int i2 = textEditState.selectionEnd;
        if (i < 0 || i > this.mEditable.length() || i2 < 0 || i2 > this.mEditable.length()) {
            Selection.removeSelection(this.mEditable);
        } else {
            Selection.setSelection(this.mEditable, i, i2);
        }
    }

    /* access modifiers changed from: private */
    public void setTextInputEditingState(View view, TextEditState textEditState) {
        if (this.mRestartInputPending || !textEditState.text.equals(this.mEditable.toString())) {
            Editable editable = this.mEditable;
            editable.replace(0, editable.length(), textEditState.text);
            applyStateToSelection(textEditState);
            this.mImm.restartInput(view);
            this.mRestartInputPending = false;
            return;
        }
        applyStateToSelection(textEditState);
        this.mImm.updateSelection(this.mView, Math.max(Selection.getSelectionStart(this.mEditable), 0), Math.max(Selection.getSelectionEnd(this.mEditable), 0), BaseInputConnection.getComposingSpanStart(this.mEditable), BaseInputConnection.getComposingSpanEnd(this.mEditable));
    }

    /* access modifiers changed from: private */
    public void clearTextInputClient() {
        if (this.inputTarget.type != Type.PLATFORM_VIEW) {
            this.inputTarget = new InputTarget(Type.NO_TARGET, 0);
            unlockPlatformViewInputConnection();
        }
    }
}
