.class public Lcom/transitionseverywhere/ChangeText;
.super Lcom/transitionseverywhere/Transition;
.source "ChangeText.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static final CHANGE_BEHAVIOR_IN:I = 0x2

.field public static final CHANGE_BEHAVIOR_KEEP:I = 0x0

.field public static final CHANGE_BEHAVIOR_OUT:I = 0x1

.field public static final CHANGE_BEHAVIOR_OUT_IN:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "TextChange"

.field private static final PROPNAME_TEXT:Ljava/lang/String; = "android:textchange:text"

.field private static final PROPNAME_TEXT_COLOR:Ljava/lang/String; = "android:textchange:textColor"

.field private static final PROPNAME_TEXT_SELECTION_END:Ljava/lang/String; = "android:textchange:textSelectionEnd"

.field private static final PROPNAME_TEXT_SELECTION_START:Ljava/lang/String; = "android:textchange:textSelectionStart"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mChangeBehavior:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 92
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:textchange:text"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:textchange:textSelectionStart"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:textchange:textSelectionEnd"

    aput-object v2, v0, v1

    sput-object v0, Lcom/transitionseverywhere/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/transitionseverywhere/Transition;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    return-void
.end method

.method static synthetic access$000(Lcom/transitionseverywhere/ChangeText;Landroid/widget/EditText;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/transitionseverywhere/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/transitionseverywhere/ChangeText;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    return p0
.end method

.method private captureValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 4

    .line 130
    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 132
    iget-object v1, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "android:textchange:text"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    .line 135
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:textchange:textSelectionStart"

    .line 134
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    .line 137
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:textchange:textSelectionEnd"

    .line 136
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    iget v1, p0, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    if-lez v1, :cond_1

    .line 140
    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "android:textchange:textColor"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private setSelection(Landroid/widget/EditText;II)V
    .locals 0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 309
    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public captureEndValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/ChangeText;->captureValues(Lcom/transitionseverywhere/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/ChangeText;->captureValues(Lcom/transitionseverywhere/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
    .locals 20

    move-object/from16 v10, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_11

    if-eqz v1, :cond_11

    .line 158
    iget-object v2, v0, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_11

    iget-object v2, v1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-nez v2, :cond_0

    goto/16 :goto_c

    .line 162
    :cond_0
    iget-object v2, v1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    .line 163
    iget-object v0, v0, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    .line 164
    iget-object v1, v1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:textchange:text"

    .line 165
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_1

    .line 166
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    move-object v11, v3

    goto :goto_0

    :cond_1
    move-object v11, v4

    .line 167
    :goto_0
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 168
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    move-object v12, v2

    goto :goto_1

    :cond_2
    move-object v12, v4

    .line 170
    :goto_1
    instance-of v2, v9, Landroid/widget/EditText;

    const/4 v3, -0x1

    if-eqz v2, :cond_7

    const-string v4, "android:textchange:textSelectionStart"

    .line 171
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 172
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_3
    const/4 v5, -0x1

    :goto_2
    const-string v6, "android:textchange:textSelectionEnd"

    .line 173
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 174
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_3

    :cond_4
    move v7, v5

    .line 175
    :goto_3
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 176
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 177
    :cond_5
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 178
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_4

    :cond_6
    move v4, v3

    :goto_4
    move v15, v3

    move/from16 v16, v4

    move v13, v5

    move v14, v7

    goto :goto_5

    :cond_7
    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    .line 182
    :goto_5
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 185
    iget v3, v10, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    const/4 v7, 0x2

    if-eq v3, v7, :cond_8

    .line 186
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_8

    .line 188
    move-object v2, v9

    check-cast v2, Landroid/widget/EditText;

    invoke-direct {v10, v2, v13, v14}, Lcom/transitionseverywhere/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    .line 192
    :cond_8
    iget v2, v10, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    const/16 v17, 0x0

    if-nez v2, :cond_9

    .line 194
    new-array v0, v7, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 195
    new-instance v8, Lcom/transitionseverywhere/ChangeText$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v9

    move-object v4, v12

    move v5, v15

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/transitionseverywhere/ChangeText$1;-><init>(Lcom/transitionseverywhere/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;II)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move/from16 p3, v13

    move/from16 p2, v14

    const/4 v6, 0x0

    :goto_6
    move-object v13, v7

    goto/16 :goto_b

    :cond_9
    const-string v2, "android:textchange:textColor"

    .line 208
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 209
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 212
    iget v1, v10, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    const/4 v5, 0x1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_b

    if-ne v1, v5, :cond_a

    goto :goto_7

    :cond_a
    move/from16 v19, v6

    move/from16 p3, v13

    move/from16 p2, v14

    const/4 v7, 0x0

    const/4 v13, 0x3

    const/16 v18, 0x1

    goto :goto_8

    .line 214
    :cond_b
    :goto_7
    new-array v1, v7, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 215
    new-instance v1, Lcom/transitionseverywhere/ChangeText$2;

    invoke-direct {v1, v10, v9, v0}, Lcom/transitionseverywhere/ChangeText$2;-><init>(Lcom/transitionseverywhere/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 223
    new-instance v2, Lcom/transitionseverywhere/ChangeText$3;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v8, v2

    move-object v2, v11

    move/from16 p2, v14

    move-object v14, v3

    move-object v3, v9

    move/from16 p3, v13

    const/4 v13, 0x3

    move-object v4, v12

    const/16 v18, 0x1

    move v5, v15

    move/from16 v19, v6

    move/from16 v6, v16

    move/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/transitionseverywhere/ChangeText$3;-><init>(Lcom/transitionseverywhere/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    invoke-virtual {v14, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v7, v14

    .line 239
    :goto_8
    iget v0, v10, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    if-eq v0, v13, :cond_d

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    goto :goto_9

    :cond_c
    move/from16 v2, v19

    const/4 v8, 0x0

    goto :goto_a

    :cond_d
    const/4 v1, 0x2

    .line 241
    :goto_9
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 242
    new-instance v0, Lcom/transitionseverywhere/ChangeText$4;

    move/from16 v2, v19

    invoke-direct {v0, v10, v9, v2}, Lcom/transitionseverywhere/ChangeText$4;-><init>(Lcom/transitionseverywhere/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 250
    new-instance v0, Lcom/transitionseverywhere/ChangeText$5;

    invoke-direct {v0, v10, v9, v2}, Lcom/transitionseverywhere/ChangeText$5;-><init>(Lcom/transitionseverywhere/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_a
    if-eqz v7, :cond_e

    if-eqz v8, :cond_e

    .line 259
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 260
    move-object v3, v0

    check-cast v3, Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v7, v1, v17

    aput-object v8, v1, v18

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    move-object v13, v0

    move v6, v2

    goto :goto_b

    :cond_e
    if-eqz v7, :cond_f

    move v6, v2

    goto/16 :goto_6

    :cond_f
    move v6, v2

    move-object v13, v8

    .line 268
    :goto_b
    new-instance v14, Lcom/transitionseverywhere/ChangeText$6;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v12

    move v4, v15

    move/from16 v5, v16

    move-object v7, v11

    move/from16 v8, p3

    move/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/transitionseverywhere/ChangeText$6;-><init>(Lcom/transitionseverywhere/ChangeText;Landroid/widget/TextView;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;II)V

    .line 298
    invoke-virtual {v10, v14}, Lcom/transitionseverywhere/ChangeText;->addListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/Transition;

    return-object v13

    :cond_10
    const/4 v0, 0x0

    return-object v0

    :cond_11
    :goto_c
    const/4 v0, 0x0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public getChangeBehavior()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 116
    sget-object v0, Lcom/transitionseverywhere/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setChangeBehavior(I)Lcom/transitionseverywhere/ChangeText;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 109
    iput p1, p0, Lcom/transitionseverywhere/ChangeText;->mChangeBehavior:I

    :cond_0
    return-object p0
.end method
