.class public Lcom/kantv/lib/verifyedittext/VerifyEditText;
.super Landroid/widget/LinearLayout;
.source "VerifyEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/lib/verifyedittext/VerifyEditText$inputCompleteListener;
    }
.end annotation


# instance fields
.field private final DEFAULT_INPUT_COUNT:I

.field private final DEFAULT_INPUT_SPACE:I

.field private final DEFAULT_LINE_HEIGHT:I

.field private final DEFAULT_LINE_SPACE:I

.field private final DEFAULT_TEXT_SIZE:I

.field private context:Landroid/content/Context;

.field private currentPosition:I

.field public editTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/lib/verifyedittext/HelperEditText;",
            ">;"
        }
    .end annotation
.end field

.field private inputCompleteListener:Lcom/kantv/lib/verifyedittext/VerifyEditText$inputCompleteListener;

.field private inputCount:I

.field private inputSpace:I

.field private isAllLineLight:Z

.field private lineDefaultColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private lineFocusColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private lineHeight:I

.field private lineSpace:I

.field private mCursorDrawable:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private textSize:F

.field private underlineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/kantv/lib/verifyedittext/VerifyEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/kantv/lib/verifyedittext/VerifyEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x4

    .line 36
    iput p3, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->DEFAULT_INPUT_COUNT:I

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->DEFAULT_LINE_HEIGHT:I

    const/16 v1, 0xf

    .line 38
    iput v1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->DEFAULT_INPUT_SPACE:I

    const/4 v2, 0x7

    .line 39
    iput v2, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->DEFAULT_LINE_SPACE:I

    const/16 v3, 0x20

    .line 40
    iput v3, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->DEFAULT_TEXT_SIZE:I

    const/4 v3, 0x0

    .line 45
    iput v3, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->currentPosition:I

    .line 48
    invoke-virtual {p0}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1060012

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineFocusColor:I

    .line 50
    invoke-virtual {p0}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/kantv/lib/R$color;->colorDefault:I

    invoke-static {v4, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineDefaultColor:I

    .line 54
    iput-boolean v3, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->isAllLineLight:Z

    .line 58
    iput p3, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->inputCount:I

    const/high16 v3, 0x42000000    # 32.0f

    .line 74
    iput v3, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->textSize:F

    .line 78
    sget v4, Lcom/kantv/lib/R$drawable;->edit_cursor_shape:I

    iput v4, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->mCursorDrawable:I

    .line 91
    iput-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->context:Landroid/content/Context;

    .line 92
    sget-object v4, Lcom/kantv/lib/R$styleable;->VerifyEditText:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    sget p2, Lcom/kantv/lib/R$styleable;->VerifyEditText_inputCount:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->inputCount:I

    .line 95
    sget p2, Lcom/kantv/lib/R$styleable;->VerifyEditText_underlineHeight:I

    invoke-virtual {p0, v0}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->dp2px(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineHeight:I

    .line 96
    sget p2, Lcom/kantv/lib/R$styleable;->VerifyEditText_inputSpace:I

    invoke-virtual {p0, v1}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->dp2px(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->inputSpace:I

    .line 97
    sget p2, Lcom/kantv/lib/R$styleable;->VerifyEditText_underlineSpace:I

    invoke-virtual {p0, v2}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->dp2px(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineSpace:I

    .line 98
    sget p2, Lcom/kantv/lib/R$styleable;->VerifyEditText_mTextSize:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->textSize:F

    .line 99
    sget p2, Lcom/kantv/lib/R$styleable;->VerifyEditText_focusColor:I

    invoke-virtual {p0}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineFocusColor:I

    .line 100
    sget p2, Lcom/kantv/lib/R$styleable;->VerifyEditText_defaultColor:I

    invoke-virtual {p0}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/kantv/lib/R$color;->colorDefault:I

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineDefaultColor:I

    .line 101
    sget p2, Lcom/kantv/lib/R$styleable;->VerifyEditText_cursorDrawable:I

    sget p3, Lcom/kantv/lib/R$drawable;->edit_cursor_shape:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->mCursorDrawable:I

    .line 102
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/lib/verifyedittext/VerifyEditText;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->currentPosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/kantv/lib/verifyedittext/VerifyEditText;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->currentPosition:I

    return p1
.end method

.method static synthetic access$008(Lcom/kantv/lib/verifyedittext/VerifyEditText;)I
    .locals 2

    .line 34
    iget v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->currentPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->currentPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/kantv/lib/verifyedittext/VerifyEditText;)Lcom/kantv/lib/verifyedittext/VerifyEditText$inputCompleteListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->inputCompleteListener:Lcom/kantv/lib/verifyedittext/VerifyEditText$inputCompleteListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/lib/verifyedittext/VerifyEditText;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->isAllLineLight:Z

    return p0
.end method

.method static synthetic access$300(Lcom/kantv/lib/verifyedittext/VerifyEditText;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineDefaultColor:I

    return p0
.end method

.method static synthetic access$400(Lcom/kantv/lib/verifyedittext/VerifyEditText;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->underlineList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kantv/lib/verifyedittext/VerifyEditText;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineFocusColor:I

    return p0
.end method

.method private initView()V
    .locals 10

    .line 108
    iget v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->inputCount:I

    if-gtz v0, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->editTextList:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->underlineList:Ljava/util/List;

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->setOrientation(I)V

    const/16 v1, 0x11

    .line 116
    invoke-virtual {p0, v1}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->setGravity(I)V

    const/4 v2, 0x0

    .line 118
    :goto_0
    iget v3, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->inputCount:I

    if-ge v2, v3, :cond_2

    .line 120
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x2

    invoke-direct {v3, v0, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    .line 121
    :cond_1
    iget v4, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->inputSpace:I

    :goto_1
    invoke-virtual {v3, v4, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 122
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->context:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v3, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 126
    new-instance v5, Lcom/kantv/lib/verifyedittext/HelperEditText;

    iget-object v7, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->context:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/kantv/lib/verifyedittext/HelperEditText;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    .line 127
    invoke-virtual {v5, v7}, Lcom/kantv/lib/verifyedittext/HelperEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget v7, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineSpace:I

    invoke-virtual {v5, v0, v0, v0, v7}, Lcom/kantv/lib/verifyedittext/HelperEditText;->setPadding(IIII)V

    const/4 v7, 0x1

    .line 129
    invoke-virtual {v5, v7}, Lcom/kantv/lib/verifyedittext/HelperEditText;->setMaxLines(I)V

    .line 130
    iget v8, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->textSize:F

    invoke-virtual {v5, v8}, Lcom/kantv/lib/verifyedittext/HelperEditText;->setTextSize(F)V

    .line 131
    new-array v8, v7, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v9, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v8, v0

    .line 132
    invoke-virtual {v5, v8}, Lcom/kantv/lib/verifyedittext/HelperEditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v8, 0x2

    .line 133
    invoke-virtual {v5, v8}, Lcom/kantv/lib/verifyedittext/HelperEditText;->setInputType(I)V

    .line 134
    invoke-virtual {v5, v1}, Lcom/kantv/lib/verifyedittext/HelperEditText;->setGravity(I)V

    .line 137
    :try_start_0
    const-class v8, Landroid/widget/TextView;

    const-string v9, "mCursorDrawableRes"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 138
    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 139
    iget v7, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->mCursorDrawable:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v5, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    .line 141
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    :goto_2
    invoke-virtual {v5, v3}, Lcom/kantv/lib/verifyedittext/HelperEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 146
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineHeight:I

    invoke-direct {v3, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x50

    .line 147
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 148
    new-instance v6, Landroid/view/View;

    iget-object v7, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 149
    iget-object v7, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->context:Landroid/content/Context;

    sget v8, Lcom/kantv/lib/R$color;->colorDefault:I

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 150
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 153
    invoke-virtual {p0, v4}, Lcom/kantv/lib/verifyedittext/VerifyEditText;->addView(Landroid/view/View;)V

    .line 154
    iget-object v3, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->editTextList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v3, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->underlineList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 158
    :cond_2
    new-instance v1, Lcom/kantv/lib/verifyedittext/VerifyEditText$1;

    invoke-direct {v1, p0}, Lcom/kantv/lib/verifyedittext/VerifyEditText$1;-><init>(Lcom/kantv/lib/verifyedittext/VerifyEditText;)V

    .line 181
    new-instance v2, Lcom/kantv/lib/verifyedittext/VerifyEditText$2;

    invoke-direct {v2, p0}, Lcom/kantv/lib/verifyedittext/VerifyEditText$2;-><init>(Lcom/kantv/lib/verifyedittext/VerifyEditText;)V

    .line 199
    new-instance v3, Lcom/kantv/lib/verifyedittext/VerifyEditText$3;

    invoke-direct {v3, p0}, Lcom/kantv/lib/verifyedittext/VerifyEditText$3;-><init>(Lcom/kantv/lib/verifyedittext/VerifyEditText;)V

    .line 228
    iget-object v4, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->editTextList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kantv/lib/verifyedittext/HelperEditText;

    .line 229
    invoke-virtual {v5, v1}, Lcom/kantv/lib/verifyedittext/HelperEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 230
    invoke-virtual {v5, v2}, Lcom/kantv/lib/verifyedittext/HelperEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 231
    invoke-virtual {v5, v3}, Lcom/kantv/lib/verifyedittext/HelperEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_3

    .line 234
    :cond_3
    iget-object v1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->editTextList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/lib/verifyedittext/HelperEditText;

    invoke-virtual {v0}, Lcom/kantv/lib/verifyedittext/HelperEditText;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public dp2px(I)I
    .locals 1

    int-to-float p1, p1

    .line 298
    iget-object v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getContent()Ljava/lang/String;
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->editTextList:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    iget-object v1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->editTextList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/lib/verifyedittext/HelperEditText;

    .line 250
    invoke-virtual {v2}, Lcom/kantv/lib/verifyedittext/HelperEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputCount()I
    .locals 1

    .line 318
    iget v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->inputCount:I

    return v0
.end method

.method public getInputSpace()I
    .locals 1

    .line 334
    iget v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->inputSpace:I

    return v0
.end method

.method public getLineDefaultColor()I
    .locals 1

    .line 310
    iget v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineDefaultColor:I

    return v0
.end method

.method public getLineFocusColor()I
    .locals 1

    .line 302
    iget v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineFocusColor:I

    return v0
.end method

.method public getLineHeight()I
    .locals 1

    .line 326
    iget v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineHeight:I

    return v0
.end method

.method public getLineSpace()I
    .locals 1

    .line 342
    iget v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineSpace:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 350
    iget v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->textSize:F

    return v0
.end method

.method public getmCursorDrawable()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->mCursorDrawable:I

    return v0
.end method

.method public isAllLineLight()Z
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->isAllLineLight:Z

    return v0
.end method

.method public isInputComplete()Z
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->editTextList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 264
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 265
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setAllLineLight(Z)V
    .locals 2

    .line 278
    iput-boolean p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->isAllLineLight:Z

    .line 279
    iget-boolean p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->isAllLineLight:Z

    if-eqz p1, :cond_0

    .line 280
    iget-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->underlineList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 281
    iget v1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineFocusColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setInputCompleteListener(Lcom/kantv/lib/verifyedittext/VerifyEditText$inputCompleteListener;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->inputCompleteListener:Lcom/kantv/lib/verifyedittext/VerifyEditText$inputCompleteListener;

    return-void
.end method

.method public setInputCount(I)V
    .locals 0

    .line 322
    iput p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->inputCount:I

    return-void
.end method

.method public setInputSpace(I)V
    .locals 0

    .line 338
    iput p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->inputSpace:I

    return-void
.end method

.method public setLineDefaultColor(I)V
    .locals 0

    .line 314
    iput p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineDefaultColor:I

    return-void
.end method

.method public setLineFocusColor(I)V
    .locals 0

    .line 306
    iput p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineFocusColor:I

    return-void
.end method

.method public setLineHeight(I)V
    .locals 0

    .line 330
    iput p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineHeight:I

    return-void
.end method

.method public setLineSpace(I)V
    .locals 0

    .line 346
    iput p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->lineSpace:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 354
    iput p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->textSize:F

    return-void
.end method

.method public setmCursorDrawable(I)V
    .locals 0

    .line 362
    iput p1, p0, Lcom/kantv/lib/verifyedittext/VerifyEditText;->mCursorDrawable:I

    return-void
.end method
