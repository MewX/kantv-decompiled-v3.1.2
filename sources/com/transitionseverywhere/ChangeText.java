package com.transitionseverywhere;

import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;

public class ChangeText extends Transition {
    public static final int CHANGE_BEHAVIOR_IN = 2;
    public static final int CHANGE_BEHAVIOR_KEEP = 0;
    public static final int CHANGE_BEHAVIOR_OUT = 1;
    public static final int CHANGE_BEHAVIOR_OUT_IN = 3;
    private static final String PROPNAME_TEXT = "android:textchange:text";
    private static final String PROPNAME_TEXT_COLOR = "android:textchange:textColor";
    private static final String PROPNAME_TEXT_SELECTION_END = "android:textchange:textSelectionEnd";
    private static final String PROPNAME_TEXT_SELECTION_START = "android:textchange:textSelectionStart";
    private static final String[] sTransitionProperties = {PROPNAME_TEXT, PROPNAME_TEXT_SELECTION_START, PROPNAME_TEXT_SELECTION_END};
    /* access modifiers changed from: private */
    public int mChangeBehavior = 0;

    @NonNull
    public ChangeText setChangeBehavior(int i) {
        if (i >= 0 && i <= 3) {
            this.mChangeBehavior = i;
        }
        return this;
    }

    @Nullable
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public int getChangeBehavior() {
        return this.mChangeBehavior;
    }

    private void captureValues(TransitionValues transitionValues) {
        if (transitionValues.view instanceof TextView) {
            TextView textView = (TextView) transitionValues.view;
            transitionValues.values.put(PROPNAME_TEXT, textView.getText());
            if (textView instanceof EditText) {
                transitionValues.values.put(PROPNAME_TEXT_SELECTION_START, Integer.valueOf(textView.getSelectionStart()));
                transitionValues.values.put(PROPNAME_TEXT_SELECTION_END, Integer.valueOf(textView.getSelectionEnd()));
            }
            if (this.mChangeBehavior > 0) {
                transitionValues.values.put(PROPNAME_TEXT_COLOR, Integer.valueOf(textView.getCurrentTextColor()));
            }
        }
    }

    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    /* JADX WARNING: type inference failed for: r13v1, types: [android.animation.Animator] */
    /* JADX WARNING: type inference failed for: r7v2 */
    /* JADX WARNING: type inference failed for: r8v1 */
    /* JADX WARNING: type inference failed for: r13v3 */
    /* JADX WARNING: type inference failed for: r8v3 */
    /* JADX WARNING: type inference failed for: r14v2, types: [android.animation.ValueAnimator] */
    /* JADX WARNING: type inference failed for: r7v4 */
    /* JADX WARNING: type inference failed for: r7v5 */
    /* JADX WARNING: type inference failed for: r7v6 */
    /* JADX WARNING: type inference failed for: r13v7 */
    /* JADX WARNING: type inference failed for: r7v7, types: [android.animation.Animator, android.animation.ValueAnimator] */
    /* JADX WARNING: type inference failed for: r7v14 */
    /* JADX WARNING: type inference failed for: r8v6 */
    /* JADX WARNING: type inference failed for: r8v7 */
    /* JADX WARNING: type inference failed for: r7v15 */
    /* JADX WARNING: type inference failed for: r7v16 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0181  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x0184  */
    /* JADX WARNING: Unknown variable types count: 7 */
    @androidx.annotation.Nullable
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.animation.Animator createAnimator(@androidx.annotation.NonNull android.view.ViewGroup r21, @androidx.annotation.Nullable androidx.transition.TransitionValues r22, @androidx.annotation.Nullable androidx.transition.TransitionValues r23) {
        /*
            r20 = this;
            r10 = r20
            r0 = r22
            r1 = r23
            if (r0 == 0) goto L_0x019e
            if (r1 == 0) goto L_0x019e
            android.view.View r2 = r0.view
            boolean r2 = r2 instanceof android.widget.TextView
            if (r2 == 0) goto L_0x019e
            android.view.View r2 = r1.view
            boolean r2 = r2 instanceof android.widget.TextView
            if (r2 != 0) goto L_0x0018
            goto L_0x019e
        L_0x0018:
            android.view.View r2 = r1.view
            r9 = r2
            android.widget.TextView r9 = (android.widget.TextView) r9
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.values
            java.util.Map<java.lang.String, java.lang.Object> r1 = r1.values
            java.lang.String r2 = "android:textchange:text"
            java.lang.Object r3 = r0.get(r2)
            java.lang.String r4 = ""
            if (r3 == 0) goto L_0x0033
            java.lang.Object r3 = r0.get(r2)
            java.lang.CharSequence r3 = (java.lang.CharSequence) r3
            r11 = r3
            goto L_0x0034
        L_0x0033:
            r11 = r4
        L_0x0034:
            java.lang.Object r3 = r1.get(r2)
            if (r3 == 0) goto L_0x0042
            java.lang.Object r2 = r1.get(r2)
            java.lang.CharSequence r2 = (java.lang.CharSequence) r2
            r12 = r2
            goto L_0x0043
        L_0x0042:
            r12 = r4
        L_0x0043:
            boolean r2 = r9 instanceof android.widget.EditText
            r3 = -1
            if (r2 == 0) goto L_0x0098
            java.lang.String r4 = "android:textchange:textSelectionStart"
            java.lang.Object r5 = r0.get(r4)
            if (r5 == 0) goto L_0x005b
            java.lang.Object r5 = r0.get(r4)
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            goto L_0x005c
        L_0x005b:
            r5 = -1
        L_0x005c:
            java.lang.String r6 = "android:textchange:textSelectionEnd"
            java.lang.Object r7 = r0.get(r6)
            if (r7 == 0) goto L_0x006f
            java.lang.Object r7 = r0.get(r6)
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
            goto L_0x0070
        L_0x006f:
            r7 = r5
        L_0x0070:
            java.lang.Object r13 = r1.get(r4)
            if (r13 == 0) goto L_0x0080
            java.lang.Object r3 = r1.get(r4)
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
        L_0x0080:
            java.lang.Object r4 = r1.get(r6)
            if (r4 == 0) goto L_0x0091
            java.lang.Object r4 = r1.get(r6)
            java.lang.Integer r4 = (java.lang.Integer) r4
            int r4 = r4.intValue()
            goto L_0x0092
        L_0x0091:
            r4 = r3
        L_0x0092:
            r15 = r3
            r16 = r4
            r13 = r5
            r14 = r7
            goto L_0x009d
        L_0x0098:
            r13 = -1
            r14 = -1
            r15 = -1
            r16 = -1
        L_0x009d:
            boolean r3 = r11.equals(r12)
            if (r3 != 0) goto L_0x019c
            int r3 = r10.mChangeBehavior
            r7 = 2
            if (r3 == r7) goto L_0x00b3
            r9.setText(r11)
            if (r2 == 0) goto L_0x00b3
            r2 = r9
            android.widget.EditText r2 = (android.widget.EditText) r2
            r10.setSelection(r2, r13, r14)
        L_0x00b3:
            int r2 = r10.mChangeBehavior
            r17 = 0
            if (r2 != 0) goto L_0x00db
            float[] r0 = new float[r7]
            r0 = {0, 1065353216} // fill-array
            android.animation.ValueAnimator r7 = android.animation.ValueAnimator.ofFloat(r0)
            com.transitionseverywhere.ChangeText$1 r8 = new com.transitionseverywhere.ChangeText$1
            r0 = r8
            r1 = r20
            r2 = r11
            r3 = r9
            r4 = r12
            r5 = r15
            r6 = r16
            r0.<init>(r2, r3, r4, r5, r6)
            r7.addListener(r8)
            r23 = r13
            r22 = r14
            r6 = 0
        L_0x00d8:
            r13 = r7
            goto L_0x0186
        L_0x00db:
            java.lang.String r2 = "android:textchange:textColor"
            java.lang.Object r0 = r0.get(r2)
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            java.lang.Object r1 = r1.get(r2)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r6 = r1.intValue()
            int r1 = r10.mChangeBehavior
            r5 = 3
            r4 = 1
            if (r1 == r5) goto L_0x0105
            if (r1 != r4) goto L_0x00fa
            goto L_0x0105
        L_0x00fa:
            r19 = r6
            r23 = r13
            r22 = r14
            r7 = 0
            r13 = 3
            r18 = 1
            goto L_0x013a
        L_0x0105:
            int[] r1 = new int[r7]
            int r2 = android.graphics.Color.alpha(r0)
            r1[r17] = r2
            r1[r4] = r17
            android.animation.ValueAnimator r3 = android.animation.ValueAnimator.ofInt(r1)
            com.transitionseverywhere.ChangeText$2 r1 = new com.transitionseverywhere.ChangeText$2
            r1.<init>(r9, r0)
            r3.addUpdateListener(r1)
            com.transitionseverywhere.ChangeText$3 r2 = new com.transitionseverywhere.ChangeText$3
            r0 = r2
            r1 = r20
            r8 = r2
            r2 = r11
            r22 = r14
            r14 = r3
            r3 = r9
            r18 = 1
            r4 = r12
            r23 = r13
            r13 = 3
            r5 = r15
            r19 = r6
            r6 = r16
            r7 = r19
            r0.<init>(r2, r3, r4, r5, r6, r7)
            r14.addListener(r8)
            r7 = r14
        L_0x013a:
            int r0 = r10.mChangeBehavior
            if (r0 == r13) goto L_0x0146
            r1 = 2
            if (r0 != r1) goto L_0x0142
            goto L_0x0147
        L_0x0142:
            r2 = r19
            r8 = 0
            goto L_0x0167
        L_0x0146:
            r1 = 2
        L_0x0147:
            int[] r0 = new int[r1]
            r0[r17] = r17
            int r2 = android.graphics.Color.alpha(r19)
            r0[r18] = r2
            android.animation.ValueAnimator r8 = android.animation.ValueAnimator.ofInt(r0)
            com.transitionseverywhere.ChangeText$4 r0 = new com.transitionseverywhere.ChangeText$4
            r2 = r19
            r0.<init>(r9, r2)
            r8.addUpdateListener(r0)
            com.transitionseverywhere.ChangeText$5 r0 = new com.transitionseverywhere.ChangeText$5
            r0.<init>(r9, r2)
            r8.addListener(r0)
        L_0x0167:
            if (r7 == 0) goto L_0x017f
            if (r8 == 0) goto L_0x017f
            android.animation.AnimatorSet r0 = new android.animation.AnimatorSet
            r0.<init>()
            r3 = r0
            android.animation.AnimatorSet r3 = (android.animation.AnimatorSet) r3
            android.animation.Animator[] r1 = new android.animation.Animator[r1]
            r1[r17] = r7
            r1[r18] = r8
            r3.playSequentially(r1)
            r13 = r0
            r6 = r2
            goto L_0x0186
        L_0x017f:
            if (r7 == 0) goto L_0x0184
            r6 = r2
            goto L_0x00d8
        L_0x0184:
            r6 = r2
            r13 = r8
        L_0x0186:
            com.transitionseverywhere.ChangeText$6 r14 = new com.transitionseverywhere.ChangeText$6
            r0 = r14
            r1 = r20
            r2 = r9
            r3 = r12
            r4 = r15
            r5 = r16
            r7 = r11
            r8 = r23
            r9 = r22
            r0.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            r10.addListener(r14)
            return r13
        L_0x019c:
            r0 = 0
            return r0
        L_0x019e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transitionseverywhere.ChangeText.createAnimator(android.view.ViewGroup, androidx.transition.TransitionValues, androidx.transition.TransitionValues):android.animation.Animator");
    }

    /* access modifiers changed from: private */
    public void setSelection(@NonNull EditText editText, int i, int i2) {
        if (i >= 0 && i2 >= 0) {
            editText.setSelection(i, i2);
        }
    }
}
