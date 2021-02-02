package com.kantv.lib.verifyedittext;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.kantv.lib.R;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public class VerifyEditText extends LinearLayout {
    private final int DEFAULT_INPUT_COUNT;
    private final int DEFAULT_INPUT_SPACE;
    private final int DEFAULT_LINE_HEIGHT;
    private final int DEFAULT_LINE_SPACE;
    private final int DEFAULT_TEXT_SIZE;
    private Context context;
    /* access modifiers changed from: private */
    public int currentPosition;
    public List<HelperEditText> editTextList;
    /* access modifiers changed from: private */
    public inputCompleteListener inputCompleteListener;
    private int inputCount;
    private int inputSpace;
    /* access modifiers changed from: private */
    public boolean isAllLineLight;
    /* access modifiers changed from: private */
    @ColorInt
    public int lineDefaultColor;
    /* access modifiers changed from: private */
    @ColorInt
    public int lineFocusColor;
    private int lineHeight;
    private int lineSpace;
    @DrawableRes
    private int mCursorDrawable;
    private float textSize;
    /* access modifiers changed from: private */
    public List<View> underlineList;

    public interface inputCompleteListener {
        void inputComplete(VerifyEditText verifyEditText, String str);
    }

    public VerifyEditText(Context context2) {
        this(context2, null);
    }

    public VerifyEditText(Context context2, @Nullable AttributeSet attributeSet) {
        this(context2, attributeSet, 0);
    }

    public VerifyEditText(Context context2, @Nullable AttributeSet attributeSet, int i) {
        super(context2, attributeSet, i);
        this.DEFAULT_INPUT_COUNT = 4;
        this.DEFAULT_LINE_HEIGHT = 1;
        this.DEFAULT_INPUT_SPACE = 15;
        this.DEFAULT_LINE_SPACE = 7;
        this.DEFAULT_TEXT_SIZE = 32;
        this.currentPosition = 0;
        this.lineFocusColor = ContextCompat.getColor(getContext(), 17170450);
        this.lineDefaultColor = ContextCompat.getColor(getContext(), R.color.colorDefault);
        this.isAllLineLight = false;
        this.inputCount = 4;
        this.textSize = 32.0f;
        this.mCursorDrawable = R.drawable.edit_cursor_shape;
        this.context = context2;
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R.styleable.VerifyEditText);
        if (obtainStyledAttributes != null) {
            this.inputCount = obtainStyledAttributes.getInteger(R.styleable.VerifyEditText_inputCount, 4);
            this.lineHeight = (int) obtainStyledAttributes.getDimension(R.styleable.VerifyEditText_underlineHeight, (float) dp2px(1));
            this.inputSpace = (int) obtainStyledAttributes.getDimension(R.styleable.VerifyEditText_inputSpace, (float) dp2px(15));
            this.lineSpace = (int) obtainStyledAttributes.getDimension(R.styleable.VerifyEditText_underlineSpace, (float) dp2px(7));
            this.textSize = obtainStyledAttributes.getDimension(R.styleable.VerifyEditText_mTextSize, 32.0f);
            this.lineFocusColor = obtainStyledAttributes.getColor(R.styleable.VerifyEditText_focusColor, ContextCompat.getColor(getContext(), 17170450));
            this.lineDefaultColor = obtainStyledAttributes.getColor(R.styleable.VerifyEditText_defaultColor, ContextCompat.getColor(getContext(), R.color.colorDefault));
            this.mCursorDrawable = obtainStyledAttributes.getResourceId(R.styleable.VerifyEditText_cursorDrawable, R.drawable.edit_cursor_shape);
            obtainStyledAttributes.recycle();
        }
        initView();
    }

    private void initView() {
        int i;
        if (this.inputCount > 0) {
            this.editTextList = new ArrayList();
            this.underlineList = new ArrayList();
            setOrientation(0);
            setGravity(17);
            for (int i2 = 0; i2 < this.inputCount; i2++) {
                LayoutParams layoutParams = new LayoutParams(0, -2, 1.0f);
                if (i2 == 0) {
                    i = 0;
                } else {
                    i = this.inputSpace;
                }
                layoutParams.setMargins(i, 0, 0, 0);
                FrameLayout frameLayout = new FrameLayout(this.context);
                frameLayout.setLayoutParams(layoutParams);
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                HelperEditText helperEditText = new HelperEditText(this.context);
                helperEditText.setBackground(null);
                helperEditText.setPadding(0, 0, 0, this.lineSpace);
                helperEditText.setMaxLines(1);
                helperEditText.setTextSize(this.textSize);
                helperEditText.setFilters(new InputFilter[]{new LengthFilter(1)});
                helperEditText.setInputType(2);
                helperEditText.setGravity(17);
                try {
                    Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
                    declaredField.setAccessible(true);
                    declaredField.set(helperEditText, Integer.valueOf(this.mCursorDrawable));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                helperEditText.setLayoutParams(layoutParams2);
                frameLayout.addView(helperEditText);
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, this.lineHeight);
                layoutParams3.gravity = 80;
                View view = new View(this.context);
                view.setBackgroundColor(ContextCompat.getColor(this.context, R.color.colorDefault));
                view.setLayoutParams(layoutParams3);
                frameLayout.addView(view);
                addView(frameLayout);
                this.editTextList.add(helperEditText);
                this.underlineList.add(view);
            }
            AnonymousClass1 r1 = new TextWatcher() {
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public void afterTextChanged(Editable editable) {
                    if (!editable.toString().isEmpty() && VerifyEditText.this.currentPosition < VerifyEditText.this.editTextList.size() - 1) {
                        VerifyEditText.this.currentPosition = VerifyEditText.this.currentPosition + 1;
                        ((HelperEditText) VerifyEditText.this.editTextList.get(VerifyEditText.this.currentPosition)).requestFocus();
                    }
                    if (VerifyEditText.this.isInputComplete() && VerifyEditText.this.inputCompleteListener != null) {
                        inputCompleteListener access$100 = VerifyEditText.this.inputCompleteListener;
                        VerifyEditText verifyEditText = VerifyEditText.this;
                        access$100.inputComplete(verifyEditText, verifyEditText.getContent());
                    }
                }
            };
            AnonymousClass2 r2 = new OnFocusChangeListener() {
                public void onFocusChange(View view, boolean z) {
                    for (int i = 0; i < VerifyEditText.this.editTextList.size(); i++) {
                        if (((HelperEditText) VerifyEditText.this.editTextList.get(i)).isFocused()) {
                            VerifyEditText.this.currentPosition = i;
                        }
                        if (!VerifyEditText.this.isAllLineLight) {
                            ((View) VerifyEditText.this.underlineList.get(i)).setBackgroundColor(VerifyEditText.this.lineDefaultColor);
                        }
                    }
                    if (!VerifyEditText.this.isAllLineLight) {
                        ((View) VerifyEditText.this.underlineList.get(VerifyEditText.this.currentPosition)).setBackgroundColor(VerifyEditText.this.lineFocusColor);
                    }
                }
            };
            AnonymousClass3 r3 = new OnKeyListener() {
                public boolean onKey(View view, int i, KeyEvent keyEvent) {
                    if (i != 67) {
                        return false;
                    }
                    if (keyEvent.getAction() != 0) {
                        return true;
                    }
                    if (((HelperEditText) VerifyEditText.this.editTextList.get(VerifyEditText.this.currentPosition)).getText().toString().isEmpty()) {
                        if (VerifyEditText.this.currentPosition <= 0) {
                            return true;
                        }
                        for (int access$000 = VerifyEditText.this.currentPosition; access$000 >= 0; access$000--) {
                            VerifyEditText.this.currentPosition = access$000;
                            if (!((HelperEditText) VerifyEditText.this.editTextList.get(access$000)).getText().toString().isEmpty()) {
                                break;
                            }
                        }
                    }
                    ((HelperEditText) VerifyEditText.this.editTextList.get(VerifyEditText.this.currentPosition)).requestFocus();
                    ((HelperEditText) VerifyEditText.this.editTextList.get(VerifyEditText.this.currentPosition)).getText().clear();
                    return true;
                }
            };
            for (HelperEditText helperEditText2 : this.editTextList) {
                helperEditText2.addTextChangedListener(r1);
                helperEditText2.setOnFocusChangeListener(r2);
                helperEditText2.setOnKeyListener(r3);
            }
            ((HelperEditText) this.editTextList.get(0)).requestFocus();
        }
    }

    public String getContent() {
        if (this.editTextList == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (HelperEditText text : this.editTextList) {
            sb.append(text.getText().toString());
        }
        return sb.toString();
    }

    public boolean isInputComplete() {
        List<HelperEditText> list = this.editTextList;
        if (list == null) {
            return false;
        }
        for (EditText text : list) {
            if (text.getText().toString().isEmpty()) {
                return false;
            }
        }
        return true;
    }

    public void setAllLineLight(boolean z) {
        this.isAllLineLight = z;
        if (this.isAllLineLight) {
            for (View backgroundColor : this.underlineList) {
                backgroundColor.setBackgroundColor(this.lineFocusColor);
            }
        }
    }

    public void setInputCompleteListener(inputCompleteListener inputcompletelistener) {
        this.inputCompleteListener = inputcompletelistener;
    }

    public int dp2px(int i) {
        return (int) ((((float) i) * this.context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public int getLineFocusColor() {
        return this.lineFocusColor;
    }

    public void setLineFocusColor(int i) {
        this.lineFocusColor = i;
    }

    public int getLineDefaultColor() {
        return this.lineDefaultColor;
    }

    public void setLineDefaultColor(int i) {
        this.lineDefaultColor = i;
    }

    public int getInputCount() {
        return this.inputCount;
    }

    public void setInputCount(int i) {
        this.inputCount = i;
    }

    public int getLineHeight() {
        return this.lineHeight;
    }

    public void setLineHeight(int i) {
        this.lineHeight = i;
    }

    public int getInputSpace() {
        return this.inputSpace;
    }

    public void setInputSpace(int i) {
        this.inputSpace = i;
    }

    public int getLineSpace() {
        return this.lineSpace;
    }

    public void setLineSpace(int i) {
        this.lineSpace = i;
    }

    public float getTextSize() {
        return this.textSize;
    }

    public void setTextSize(float f) {
        this.textSize = f;
    }

    public int getmCursorDrawable() {
        return this.mCursorDrawable;
    }

    public void setmCursorDrawable(int i) {
        this.mCursorDrawable = i;
    }

    public boolean isAllLineLight() {
        return this.isAllLineLight;
    }
}
