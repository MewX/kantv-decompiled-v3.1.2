.class public Lcom/transitionseverywhere/Slide;
.super Lcom/transitionseverywhere/Visibility;
.source "Slide.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/Slide$CalculateSlideVertical;,
        Lcom/transitionseverywhere/Slide$CalculateSlideHorizontal;,
        Lcom/transitionseverywhere/Slide$CalculateSlide;,
        Lcom/transitionseverywhere/Slide$GravityFlag;
    }
.end annotation


# static fields
.field protected static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sCalculateBottom:Lcom/transitionseverywhere/Slide$CalculateSlide;

.field private static final sCalculateEnd:Lcom/transitionseverywhere/Slide$CalculateSlide;

.field private static final sCalculateLeft:Lcom/transitionseverywhere/Slide$CalculateSlide;

.field private static final sCalculateRight:Lcom/transitionseverywhere/Slide$CalculateSlide;

.field private static final sCalculateStart:Lcom/transitionseverywhere/Slide$CalculateSlide;

.field private static final sCalculateTop:Lcom/transitionseverywhere/Slide$CalculateSlide;

.field protected static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field protected mSlideCalculator:Lcom/transitionseverywhere/Slide$CalculateSlide;

.field private mSlideEdge:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 51
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 84
    new-instance v0, Lcom/transitionseverywhere/Slide$1;

    invoke-direct {v0}, Lcom/transitionseverywhere/Slide$1;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/Slide;->sCalculateLeft:Lcom/transitionseverywhere/Slide$CalculateSlide;

    .line 91
    new-instance v0, Lcom/transitionseverywhere/Slide$2;

    invoke-direct {v0}, Lcom/transitionseverywhere/Slide$2;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/Slide;->sCalculateStart:Lcom/transitionseverywhere/Slide$CalculateSlide;

    .line 105
    new-instance v0, Lcom/transitionseverywhere/Slide$3;

    invoke-direct {v0}, Lcom/transitionseverywhere/Slide$3;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/Slide;->sCalculateTop:Lcom/transitionseverywhere/Slide$CalculateSlide;

    .line 112
    new-instance v0, Lcom/transitionseverywhere/Slide$4;

    invoke-direct {v0}, Lcom/transitionseverywhere/Slide$4;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/Slide;->sCalculateRight:Lcom/transitionseverywhere/Slide$CalculateSlide;

    .line 119
    new-instance v0, Lcom/transitionseverywhere/Slide$5;

    invoke-direct {v0}, Lcom/transitionseverywhere/Slide$5;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/Slide;->sCalculateEnd:Lcom/transitionseverywhere/Slide$CalculateSlide;

    .line 133
    new-instance v0, Lcom/transitionseverywhere/Slide$6;

    invoke-direct {v0}, Lcom/transitionseverywhere/Slide$6;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/Slide;->sCalculateBottom:Lcom/transitionseverywhere/Slide$CalculateSlide;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Lcom/transitionseverywhere/Visibility;-><init>()V

    .line 52
    sget-object v0, Lcom/transitionseverywhere/Slide;->sCalculateBottom:Lcom/transitionseverywhere/Slide$CalculateSlide;

    iput-object v0, p0, Lcom/transitionseverywhere/Slide;->mSlideCalculator:Lcom/transitionseverywhere/Slide$CalculateSlide;

    const/16 v0, 0x50

    .line 53
    iput v0, p0, Lcom/transitionseverywhere/Slide;->mSlideEdge:I

    .line 145
    invoke-virtual {p0, v0}, Lcom/transitionseverywhere/Slide;->setSlideEdge(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 151
    invoke-direct {p0}, Lcom/transitionseverywhere/Visibility;-><init>()V

    .line 52
    sget-object v0, Lcom/transitionseverywhere/Slide;->sCalculateBottom:Lcom/transitionseverywhere/Slide$CalculateSlide;

    iput-object v0, p0, Lcom/transitionseverywhere/Slide;->mSlideCalculator:Lcom/transitionseverywhere/Slide$CalculateSlide;

    const/16 v0, 0x50

    .line 53
    iput v0, p0, Lcom/transitionseverywhere/Slide;->mSlideEdge:I

    .line 152
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/Slide;->setSlideEdge(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/transitionseverywhere/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    sget-object v0, Lcom/transitionseverywhere/Slide;->sCalculateBottom:Lcom/transitionseverywhere/Slide$CalculateSlide;

    iput-object v0, p0, Lcom/transitionseverywhere/Slide;->mSlideCalculator:Lcom/transitionseverywhere/Slide$CalculateSlide;

    const/16 v0, 0x50

    .line 53
    iput v0, p0, Lcom/transitionseverywhere/Slide;->mSlideEdge:I

    .line 157
    sget-object v1, Lcom/transitionseverywhere/R$styleable;->Slide:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 158
    sget p2, Lcom/transitionseverywhere/R$styleable;->Slide_slideEdge:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 159
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    invoke-virtual {p0, p2}, Lcom/transitionseverywhere/Slide;->setSlideEdge(I)V

    return-void
.end method


# virtual methods
.method public getSlideEdge()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/transitionseverywhere/Slide;->mSlideEdge:I

    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 221
    :cond_0
    iget-object p3, p4, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:visibility:screenLocation"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    check-cast p3, [I

    .line 222
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 223
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 224
    iget-object v0, p0, Lcom/transitionseverywhere/Slide;->mSlideCalculator:Lcom/transitionseverywhere/Slide$CalculateSlide;

    invoke-interface {v0, p1, p2}, Lcom/transitionseverywhere/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v4

    .line 225
    iget-object v0, p0, Lcom/transitionseverywhere/Slide;->mSlideCalculator:Lcom/transitionseverywhere/Slide$CalculateSlide;

    invoke-interface {v0, p1, p2}, Lcom/transitionseverywhere/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v5

    const/4 p1, 0x0

    .line 226
    aget v2, p3, p1

    const/4 p1, 0x1

    aget v3, p3, p1

    sget-object v8, Lcom/transitionseverywhere/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p4

    move-object v9, p0

    .line 227
    invoke-static/range {v0 .. v9}, Lcom/transitionseverywhere/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Lcom/transitionseverywhere/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Lcom/transitionseverywhere/Transition;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 237
    :cond_0
    iget-object p4, p3, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:visibility:screenLocation"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [I

    check-cast p4, [I

    .line 238
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    .line 239
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .line 240
    iget-object v0, p0, Lcom/transitionseverywhere/Slide;->mSlideCalculator:Lcom/transitionseverywhere/Slide$CalculateSlide;

    invoke-interface {v0, p1, p2}, Lcom/transitionseverywhere/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v6

    .line 241
    iget-object v0, p0, Lcom/transitionseverywhere/Slide;->mSlideCalculator:Lcom/transitionseverywhere/Slide$CalculateSlide;

    invoke-interface {v0, p1, p2}, Lcom/transitionseverywhere/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v7

    const/4 p1, 0x0

    .line 242
    aget v2, p4, p1

    const/4 p1, 0x1

    aget v3, p4, p1

    sget-object v8, Lcom/transitionseverywhere/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p3

    move-object v9, p0

    .line 243
    invoke-static/range {v0 .. v9}, Lcom/transitionseverywhere/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Lcom/transitionseverywhere/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Lcom/transitionseverywhere/Transition;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public setSlideEdge(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/16 v0, 0x30

    if-eq p1, v0, :cond_3

    const/16 v0, 0x50

    if-eq p1, v0, :cond_2

    const v0, 0x800003

    if-eq p1, v0, :cond_1

    const v0, 0x800005

    if-ne p1, v0, :cond_0

    .line 190
    sget-object v0, Lcom/transitionseverywhere/Slide;->sCalculateEnd:Lcom/transitionseverywhere/Slide$CalculateSlide;

    iput-object v0, p0, Lcom/transitionseverywhere/Slide;->mSlideCalculator:Lcom/transitionseverywhere/Slide$CalculateSlide;

    goto :goto_0

    .line 193
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid slide direction"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_1
    sget-object v0, Lcom/transitionseverywhere/Slide;->sCalculateStart:Lcom/transitionseverywhere/Slide$CalculateSlide;

    iput-object v0, p0, Lcom/transitionseverywhere/Slide;->mSlideCalculator:Lcom/transitionseverywhere/Slide$CalculateSlide;

    goto :goto_0

    .line 184
    :cond_2
    sget-object v0, Lcom/transitionseverywhere/Slide;->sCalculateBottom:Lcom/transitionseverywhere/Slide$CalculateSlide;

    iput-object v0, p0, Lcom/transitionseverywhere/Slide;->mSlideCalculator:Lcom/transitionseverywhere/Slide$CalculateSlide;

    goto :goto_0

    .line 178
    :cond_3
    sget-object v0, Lcom/transitionseverywhere/Slide;->sCalculateTop:Lcom/transitionseverywhere/Slide$CalculateSlide;

    iput-object v0, p0, Lcom/transitionseverywhere/Slide;->mSlideCalculator:Lcom/transitionseverywhere/Slide$CalculateSlide;

    goto :goto_0

    .line 181
    :cond_4
    sget-object v0, Lcom/transitionseverywhere/Slide;->sCalculateRight:Lcom/transitionseverywhere/Slide$CalculateSlide;

    iput-object v0, p0, Lcom/transitionseverywhere/Slide;->mSlideCalculator:Lcom/transitionseverywhere/Slide$CalculateSlide;

    goto :goto_0

    .line 175
    :cond_5
    sget-object v0, Lcom/transitionseverywhere/Slide;->sCalculateLeft:Lcom/transitionseverywhere/Slide$CalculateSlide;

    iput-object v0, p0, Lcom/transitionseverywhere/Slide;->mSlideCalculator:Lcom/transitionseverywhere/Slide$CalculateSlide;

    .line 195
    :goto_0
    iput p1, p0, Lcom/transitionseverywhere/Slide;->mSlideEdge:I

    .line 196
    new-instance v0, Lcom/transitionseverywhere/SidePropagation;

    invoke-direct {v0}, Lcom/transitionseverywhere/SidePropagation;-><init>()V

    .line 197
    invoke-virtual {v0, p1}, Lcom/transitionseverywhere/SidePropagation;->setSide(I)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/transitionseverywhere/Slide;->setPropagation(Lcom/transitionseverywhere/TransitionPropagation;)Lcom/transitionseverywhere/Transition;

    return-void
.end method
