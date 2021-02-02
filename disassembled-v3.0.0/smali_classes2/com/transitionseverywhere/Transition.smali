.class public abstract Lcom/transitionseverywhere/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/Transition$EpicenterCallback;,
        Lcom/transitionseverywhere/Transition$ArrayListManager;,
        Lcom/transitionseverywhere/Transition$AnimationInfo;,
        Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;,
        Lcom/transitionseverywhere/Transition$TransitionListener;
    }
.end annotation


# static fields
.field protected static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final MATCH_VIEW_NAME_STR:Ljava/lang/String; = "viewName"

.field private static final sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Lcom/transitionseverywhere/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field private mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Lcom/transitionseverywhere/TransitionValuesMaps;

.field mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field mEpicenterCallback:Lcom/transitionseverywhere/Transition$EpicenterCallback;

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field mNameOverrides:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNumInstances:I

.field mParent:Lcom/transitionseverywhere/TransitionSet;

.field mPathMotion:Lcom/transitionseverywhere/PathMotion;

.field mPaused:Z

.field mPropagation:Lcom/transitionseverywhere/TransitionPropagation;

.field mSceneRoot:Landroid/view/ViewGroup;

.field mStartDelay:J

.field private mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

.field mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 158
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/transitionseverywhere/Transition;->DEFAULT_MATCH_ORDER:[I

    .line 189
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 167
    iput-wide v0, p0, Lcom/transitionseverywhere/Transition;->mStartDelay:J

    .line 168
    iput-wide v0, p0, Lcom/transitionseverywhere/Transition;->mDuration:J

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transitionseverywhere/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transitionseverywhere/Transition;->mTargets:Ljava/util/ArrayList;

    .line 172
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 173
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 174
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 175
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 176
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 177
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 178
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 179
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 180
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 181
    new-instance v1, Lcom/transitionseverywhere/TransitionValuesMaps;

    invoke-direct {v1}, Lcom/transitionseverywhere/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Lcom/transitionseverywhere/Transition;->mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    .line 182
    new-instance v1, Lcom/transitionseverywhere/TransitionValuesMaps;

    invoke-direct {v1}, Lcom/transitionseverywhere/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Lcom/transitionseverywhere/Transition;->mEndValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    .line 183
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mParent:Lcom/transitionseverywhere/TransitionSet;

    .line 184
    sget-object v1, Lcom/transitionseverywhere/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Lcom/transitionseverywhere/Transition;->mMatchOrder:[I

    .line 193
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 201
    iput-boolean v1, p0, Lcom/transitionseverywhere/Transition;->mCanRemoveViews:Z

    .line 205
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transitionseverywhere/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 209
    iput v1, p0, Lcom/transitionseverywhere/Transition;->mNumInstances:I

    .line 212
    iput-boolean v1, p0, Lcom/transitionseverywhere/Transition;->mPaused:Z

    .line 216
    iput-boolean v1, p0, Lcom/transitionseverywhere/Transition;->mEnded:Z

    .line 219
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 238
    sget-object v0, Lcom/transitionseverywhere/PathMotion;->STRAIGHT_PATH_MOTION:Lcom/transitionseverywhere/PathMotion;

    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mPathMotion:Lcom/transitionseverywhere/PathMotion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 167
    iput-wide v0, p0, Lcom/transitionseverywhere/Transition;->mStartDelay:J

    .line 168
    iput-wide v0, p0, Lcom/transitionseverywhere/Transition;->mDuration:J

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transitionseverywhere/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transitionseverywhere/Transition;->mTargets:Ljava/util/ArrayList;

    .line 172
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 173
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 174
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 175
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 176
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 177
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 178
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 179
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 180
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 181
    new-instance v1, Lcom/transitionseverywhere/TransitionValuesMaps;

    invoke-direct {v1}, Lcom/transitionseverywhere/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Lcom/transitionseverywhere/Transition;->mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    .line 182
    new-instance v1, Lcom/transitionseverywhere/TransitionValuesMaps;

    invoke-direct {v1}, Lcom/transitionseverywhere/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Lcom/transitionseverywhere/Transition;->mEndValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    .line 183
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mParent:Lcom/transitionseverywhere/TransitionSet;

    .line 184
    sget-object v1, Lcom/transitionseverywhere/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Lcom/transitionseverywhere/Transition;->mMatchOrder:[I

    .line 193
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 201
    iput-boolean v1, p0, Lcom/transitionseverywhere/Transition;->mCanRemoveViews:Z

    .line 205
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transitionseverywhere/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 209
    iput v1, p0, Lcom/transitionseverywhere/Transition;->mNumInstances:I

    .line 212
    iput-boolean v1, p0, Lcom/transitionseverywhere/Transition;->mPaused:Z

    .line 216
    iput-boolean v1, p0, Lcom/transitionseverywhere/Transition;->mEnded:Z

    .line 219
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 238
    sget-object v0, Lcom/transitionseverywhere/PathMotion;->STRAIGHT_PATH_MOTION:Lcom/transitionseverywhere/PathMotion;

    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mPathMotion:Lcom/transitionseverywhere/PathMotion;

    .line 260
    sget-object v0, Lcom/transitionseverywhere/R$styleable;->Transition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 261
    sget v0, Lcom/transitionseverywhere/R$styleable;->Transition_duration:I

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    .line 263
    invoke-virtual {p0, v3, v4}, Lcom/transitionseverywhere/Transition;->setDuration(J)Lcom/transitionseverywhere/Transition;

    goto :goto_0

    .line 265
    :cond_0
    sget v0, Lcom/transitionseverywhere/R$styleable;->Transition_android_duration:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v3, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    .line 267
    invoke-virtual {p0, v3, v4}, Lcom/transitionseverywhere/Transition;->setDuration(J)Lcom/transitionseverywhere/Transition;

    .line 270
    :cond_1
    :goto_0
    sget v0, Lcom/transitionseverywhere/R$styleable;->Transition_startDelay:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, v5

    if-lez v0, :cond_2

    .line 272
    invoke-virtual {p0, v2, v3}, Lcom/transitionseverywhere/Transition;->setStartDelay(J)Lcom/transitionseverywhere/Transition;

    .line 274
    :cond_2
    sget v0, Lcom/transitionseverywhere/R$styleable;->Transition_interpolator:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_3

    .line 276
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/transitionseverywhere/Transition;

    goto :goto_1

    .line 278
    :cond_3
    sget v0, Lcom/transitionseverywhere/R$styleable;->Transition_android_interpolator:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_4

    .line 280
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/transitionseverywhere/Transition;

    .line 283
    :cond_4
    :goto_1
    sget p1, Lcom/transitionseverywhere/R$styleable;->Transition_matchOrder:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 285
    invoke-static {p1}, Lcom/transitionseverywhere/Transition;->parseMatchOrder(Ljava/lang/String;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/Transition;->setMatchOrder([I)Lcom/transitionseverywhere/Transition;

    .line 287
    :cond_5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/transitionseverywhere/Transition;)Ljava/util/ArrayList;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/transitionseverywhere/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    return-object p0
.end method

.method private addUnmatched(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/TransitionValues;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 631
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 632
    iget-object v2, p0, Lcom/transitionseverywhere/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v2, p0, Lcom/transitionseverywhere/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    :cond_0
    :goto_1
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 638
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static addViewValues(Lcom/transitionseverywhere/TransitionValuesMaps;Landroid/view/View;Lcom/transitionseverywhere/TransitionValues;)V
    .locals 3

    .line 1476
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 1479
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1481
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1483
    :cond_0
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1486
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/transitionseverywhere/utils/ViewUtils;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1488
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionValuesMaps;->nameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1490
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionValuesMaps;->nameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1492
    :cond_2
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionValuesMaps;->nameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_5

    .line 1496
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 1497
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1498
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1499
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 1500
    iget-object p2, p0, Lcom/transitionseverywhere/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p2, v1, v2}, Landroid/support/v4/util/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_4

    .line 1502
    iget-object p1, p0, Lcom/transitionseverywhere/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    .line 1504
    invoke-static {p1, p2}, Lcom/transitionseverywhere/utils/ViewUtils;->setHasTransientState(Landroid/view/View;Z)V

    .line 1505
    iget-object p0, p0, Lcom/transitionseverywhere/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/4 p2, 0x1

    .line 1508
    invoke-static {p1, p2}, Lcom/transitionseverywhere/utils/ViewUtils;->setHasTransientState(Landroid/view/View;Z)V

    .line 1509
    iget-object p0, p0, Lcom/transitionseverywhere/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p0, v1, v2, p1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private static alreadyContains([II)Z
    .locals 4

    .line 515
    aget v0, p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 517
    aget v3, p0, v2

    if-ne v3, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1550
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1551
    iget-object v1, p0, Lcom/transitionseverywhere/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1554
    :cond_1
    iget-object v1, p0, Lcom/transitionseverywhere/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1557
    :cond_2
    iget-object v1, p0, Lcom/transitionseverywhere/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1558
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 1560
    iget-object v4, p0, Lcom/transitionseverywhere/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1565
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 1566
    new-instance v1, Lcom/transitionseverywhere/TransitionValues;

    invoke-direct {v1}, Lcom/transitionseverywhere/TransitionValues;-><init>()V

    .line 1567
    iput-object p1, v1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 1569
    invoke-virtual {p0, v1}, Lcom/transitionseverywhere/Transition;->captureStartValues(Lcom/transitionseverywhere/TransitionValues;)V

    goto :goto_1

    .line 1571
    :cond_5
    invoke-virtual {p0, v1}, Lcom/transitionseverywhere/Transition;->captureEndValues(Lcom/transitionseverywhere/TransitionValues;)V

    .line 1573
    :goto_1
    iget-object v3, v1, Lcom/transitionseverywhere/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1574
    invoke-virtual {p0, v1}, Lcom/transitionseverywhere/Transition;->capturePropagationValues(Lcom/transitionseverywhere/TransitionValues;)V

    if-eqz p2, :cond_6

    .line 1576
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    invoke-static {v3, p1, v1}, Lcom/transitionseverywhere/Transition;->addViewValues(Lcom/transitionseverywhere/TransitionValuesMaps;Landroid/view/View;Lcom/transitionseverywhere/TransitionValues;)V

    goto :goto_2

    .line 1578
    :cond_6
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mEndValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    invoke-static {v3, p1, v1}, Lcom/transitionseverywhere/Transition;->addViewValues(Lcom/transitionseverywhere/TransitionValuesMaps;Landroid/view/View;Lcom/transitionseverywhere/TransitionValues;)V

    .line 1581
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 1583
    iget-object v1, p0, Lcom/transitionseverywhere/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 1586
    :cond_8
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1589
    :cond_9
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1590
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1592
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1597
    :cond_b
    check-cast p1, Landroid/view/ViewGroup;

    .line 1598
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 1599
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/transitionseverywhere/Transition;->captureHierarchy(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method

.method private static excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1217
    invoke-static {p0, p1}, Lcom/transitionseverywhere/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    .line 1219
    :cond_0
    invoke-static {p0, p1}, Lcom/transitionseverywhere/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static getRunningAnimators()Landroid/support/v4/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Lcom/transitionseverywhere/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    .line 848
    sget-object v0, Lcom/transitionseverywhere/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_0

    .line 850
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 851
    sget-object v1, Lcom/transitionseverywhere/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private static isValidMatch(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x4

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValueChanged(Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;Ljava/lang/String;)Z
    .locals 3

    .line 1817
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 1821
    :cond_0
    iget-object p0, p0, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1822
    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    .line 1832
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 v2, p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private matchIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/TransitionValues;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 578
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 580
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 581
    invoke-virtual {p0, v2}, Lcom/transitionseverywhere/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 582
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 583
    invoke-virtual {p0, v3}, Lcom/transitionseverywhere/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 584
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transitionseverywhere/TransitionValues;

    .line 585
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transitionseverywhere/TransitionValues;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 587
    iget-object v6, p0, Lcom/transitionseverywhere/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    iget-object v4, p0, Lcom/transitionseverywhere/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private matchInstances(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 530
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 531
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 532
    invoke-virtual {p0, v1}, Lcom/transitionseverywhere/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/TransitionValues;

    if-eqz v1, :cond_0

    .line 534
    iget-object v2, v1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/transitionseverywhere/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/TransitionValues;

    .line 536
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v2, p0, Lcom/transitionseverywhere/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private matchItemIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 551
    invoke-virtual {p3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 553
    invoke-virtual {p3, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 554
    invoke-virtual {p0, v2}, Lcom/transitionseverywhere/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 555
    invoke-virtual {p3, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 556
    invoke-virtual {p0, v3}, Lcom/transitionseverywhere/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transitionseverywhere/TransitionValues;

    .line 558
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transitionseverywhere/TransitionValues;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 560
    iget-object v6, p0, Lcom/transitionseverywhere/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v4, p0, Lcom/transitionseverywhere/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private matchNames(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/transitionseverywhere/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 605
    invoke-virtual {p3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 607
    invoke-virtual {p3, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 608
    invoke-virtual {p0, v2}, Lcom/transitionseverywhere/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 609
    invoke-virtual {p3, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 610
    invoke-virtual {p0, v3}, Lcom/transitionseverywhere/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 611
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transitionseverywhere/TransitionValues;

    .line 612
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transitionseverywhere/TransitionValues;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 614
    iget-object v6, p0, Lcom/transitionseverywhere/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v4, p0, Lcom/transitionseverywhere/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private matchStartAndEnd(Lcom/transitionseverywhere/TransitionValuesMaps;Lcom/transitionseverywhere/TransitionValuesMaps;)V
    .locals 5

    .line 645
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    iget-object v1, p1, Lcom/transitionseverywhere/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 647
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    iget-object v2, p2, Lcom/transitionseverywhere/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    const/4 v2, 0x0

    .line 650
    :goto_0
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mMatchOrder:[I

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 651
    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 664
    :cond_0
    iget-object v3, p1, Lcom/transitionseverywhere/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    iget-object v4, p2, Lcom/transitionseverywhere/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/transitionseverywhere/Transition;->matchItemIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)V

    goto :goto_1

    .line 660
    :cond_1
    iget-object v3, p1, Lcom/transitionseverywhere/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    iget-object v4, p2, Lcom/transitionseverywhere/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/transitionseverywhere/Transition;->matchIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_1

    .line 656
    :cond_2
    iget-object v3, p1, Lcom/transitionseverywhere/TransitionValuesMaps;->nameValues:Landroid/support/v4/util/ArrayMap;

    iget-object v4, p2, Lcom/transitionseverywhere/TransitionValuesMaps;->nameValues:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/transitionseverywhere/Transition;->matchNames(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_1

    .line 653
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/transitionseverywhere/Transition;->matchInstances(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/transitionseverywhere/Transition;->addUnmatched(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    return-void
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .locals 7

    .line 291
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p0, p0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 294
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 295
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    .line 296
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    .line 297
    aput v3, p0, v2

    goto :goto_1

    :cond_0
    const-string v4, "instance"

    .line 298
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 299
    aput v5, p0, v2

    goto :goto_1

    :cond_1
    const-string v4, "name"

    .line 300
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x2

    if-eqz v4, :cond_2

    .line 301
    aput v6, p0, v2

    goto :goto_1

    :cond_2
    const-string v4, "viewName"

    .line 302
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 303
    aput v6, p0, v2

    goto :goto_1

    :cond_3
    const-string v4, "itemId"

    .line 304
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x4

    .line 305
    aput v3, p0, v2

    goto :goto_1

    .line 306
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 307
    array-length v3, p0

    sub-int/2addr v3, v5

    new-array v3, v3, [I

    .line 308
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, -0x1

    move-object p0, v3

    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    .line 312
    :cond_5
    new-instance p0, Landroid/view/InflateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown match type in matchOrder: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-object p0
.end method

.method private runAnimator(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Lcom/transitionseverywhere/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 886
    new-instance v0, Lcom/transitionseverywhere/Transition$1;

    invoke-direct {v0, p0, p2}, Lcom/transitionseverywhere/Transition$1;-><init>(Lcom/transitionseverywhere/Transition;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 898
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/Transition;->animate(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/Transition;
    .locals 1

    .line 1966
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1967
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1969
    :cond_0
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(I)Lcom/transitionseverywhere/Transition;
    .locals 1

    if-lez p1, :cond_0

    .line 978
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Lcom/transitionseverywhere/Transition;
    .locals 1

    .line 1303
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Lcom/transitionseverywhere/Transition;
    .locals 1

    if-eqz p1, :cond_1

    .line 1034
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Lcom/transitionseverywhere/Transition;
    .locals 1

    if-eqz p1, :cond_1

    .line 1002
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1003
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1854
    invoke-virtual {p0}, Lcom/transitionseverywhere/Transition;->end()V

    goto :goto_0

    .line 1856
    :cond_0
    invoke-virtual {p0}, Lcom/transitionseverywhere/Transition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 1857
    invoke-virtual {p0}, Lcom/transitionseverywhere/Transition;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1859
    :cond_1
    invoke-virtual {p0}, Lcom/transitionseverywhere/Transition;->getStartDelay()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 1860
    invoke-virtual {p0}, Lcom/transitionseverywhere/Transition;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1862
    :cond_2
    invoke-virtual {p0}, Lcom/transitionseverywhere/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1863
    invoke-virtual {p0}, Lcom/transitionseverywhere/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1865
    :cond_3
    new-instance v0, Lcom/transitionseverywhere/Transition$2;

    invoke-direct {v0, p0}, Lcom/transitionseverywhere/Transition$2;-><init>(Lcom/transitionseverywhere/Transition;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1872
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public canRemoveViews()Z
    .locals 1

    .line 2178
    iget-boolean v0, p0, Lcom/transitionseverywhere/Transition;->mCanRemoveViews:Z

    return v0
.end method

.method protected cancel()V
    .locals 4

    .line 1942
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1944
    iget-object v1, p0, Lcom/transitionseverywhere/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 1945
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1947
    :cond_0
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1948
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1949
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1950
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 1952
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transitionseverywhere/Transition$TransitionListener;

    invoke-interface {v3, p0}, Lcom/transitionseverywhere/Transition$TransitionListener;->onTransitionCancel(Lcom/transitionseverywhere/Transition;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public abstract captureEndValues(Lcom/transitionseverywhere/TransitionValues;)V
.end method

.method capturePropagationValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 5

    .line 2150
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mPropagation:Lcom/transitionseverywhere/TransitionPropagation;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2151
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mPropagation:Lcom/transitionseverywhere/TransitionPropagation;

    invoke-virtual {v0}, Lcom/transitionseverywhere/TransitionPropagation;->getPropagationProperties()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2156
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 2157
    iget-object v3, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 2163
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mPropagation:Lcom/transitionseverywhere/TransitionPropagation;

    invoke-virtual {v0, p1}, Lcom/transitionseverywhere/TransitionPropagation;->captureValues(Lcom/transitionseverywhere/TransitionValues;)V

    :cond_3
    return-void
.end method

.method public abstract captureStartValues(Lcom/transitionseverywhere/TransitionValues;)V
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 1413
    invoke-virtual {p0, p2}, Lcom/transitionseverywhere/Transition;->clearValues(Z)V

    .line 1414
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1415
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1416
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1455
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/transitionseverywhere/Transition;->captureHierarchy(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 1417
    :goto_1
    iget-object v2, p0, Lcom/transitionseverywhere/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1418
    iget-object v2, p0, Lcom/transitionseverywhere/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1419
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1421
    new-instance v3, Lcom/transitionseverywhere/TransitionValues;

    invoke-direct {v3}, Lcom/transitionseverywhere/TransitionValues;-><init>()V

    .line 1422
    iput-object v2, v3, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 1424
    invoke-virtual {p0, v3}, Lcom/transitionseverywhere/Transition;->captureStartValues(Lcom/transitionseverywhere/TransitionValues;)V

    goto :goto_2

    .line 1426
    :cond_4
    invoke-virtual {p0, v3}, Lcom/transitionseverywhere/Transition;->captureEndValues(Lcom/transitionseverywhere/TransitionValues;)V

    .line 1428
    :goto_2
    iget-object v4, v3, Lcom/transitionseverywhere/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1429
    invoke-virtual {p0, v3}, Lcom/transitionseverywhere/Transition;->capturePropagationValues(Lcom/transitionseverywhere/TransitionValues;)V

    if-eqz p2, :cond_5

    .line 1431
    iget-object v4, p0, Lcom/transitionseverywhere/Transition;->mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Lcom/transitionseverywhere/Transition;->addViewValues(Lcom/transitionseverywhere/TransitionValuesMaps;Landroid/view/View;Lcom/transitionseverywhere/TransitionValues;)V

    goto :goto_3

    .line 1433
    :cond_5
    iget-object v4, p0, Lcom/transitionseverywhere/Transition;->mEndValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Lcom/transitionseverywhere/Transition;->addViewValues(Lcom/transitionseverywhere/TransitionValuesMaps;Landroid/view/View;Lcom/transitionseverywhere/TransitionValues;)V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    .line 1437
    :goto_4
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 1438
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1439
    new-instance v2, Lcom/transitionseverywhere/TransitionValues;

    invoke-direct {v2}, Lcom/transitionseverywhere/TransitionValues;-><init>()V

    .line 1440
    iput-object v0, v2, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 1442
    invoke-virtual {p0, v2}, Lcom/transitionseverywhere/Transition;->captureStartValues(Lcom/transitionseverywhere/TransitionValues;)V

    goto :goto_5

    .line 1444
    :cond_8
    invoke-virtual {p0, v2}, Lcom/transitionseverywhere/Transition;->captureEndValues(Lcom/transitionseverywhere/TransitionValues;)V

    .line 1446
    :goto_5
    iget-object v3, v2, Lcom/transitionseverywhere/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1447
    invoke-virtual {p0, v2}, Lcom/transitionseverywhere/Transition;->capturePropagationValues(Lcom/transitionseverywhere/TransitionValues;)V

    if-eqz p2, :cond_9

    .line 1449
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    invoke-static {v3, v0, v2}, Lcom/transitionseverywhere/Transition;->addViewValues(Lcom/transitionseverywhere/TransitionValuesMaps;Landroid/view/View;Lcom/transitionseverywhere/TransitionValues;)V

    goto :goto_6

    .line 1451
    :cond_9
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mEndValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    invoke-static {v3, v0, v2}, Lcom/transitionseverywhere/Transition;->addViewValues(Lcom/transitionseverywhere/TransitionValuesMaps;Landroid/view/View;Lcom/transitionseverywhere/TransitionValues;)V

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    :goto_7
    if-nez p2, :cond_d

    .line 1457
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    if-eqz p1, :cond_d

    .line 1458
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result p1

    .line 1459
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_b

    .line 1461
    iget-object v2, p0, Lcom/transitionseverywhere/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1462
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object v3, v3, Lcom/transitionseverywhere/TransitionValuesMaps;->nameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    if-ge v1, p1, :cond_d

    .line 1465
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1467
    iget-object v2, p0, Lcom/transitionseverywhere/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1468
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object v3, v3, Lcom/transitionseverywhere/TransitionValuesMaps;->nameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_d
    return-void
.end method

.method clearValues(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1522
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1523
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1524
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 1525
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValuesMaps;->nameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1526
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_0

    .line 1528
    :cond_0
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mEndValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1529
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mEndValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1530
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mEndValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 1531
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mEndValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValuesMaps;->nameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1532
    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mEndValuesList:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method

.method public clone()Lcom/transitionseverywhere/Transition;
    .locals 3

    const/4 v0, 0x0

    .line 2207
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2208
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/transitionseverywhere/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 2209
    new-instance v2, Lcom/transitionseverywhere/TransitionValuesMaps;

    invoke-direct {v2}, Lcom/transitionseverywhere/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Lcom/transitionseverywhere/Transition;->mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    .line 2210
    new-instance v2, Lcom/transitionseverywhere/TransitionValuesMaps;

    invoke-direct {v2}, Lcom/transitionseverywhere/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Lcom/transitionseverywhere/Transition;->mEndValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    .line 2211
    iput-object v0, v1, Lcom/transitionseverywhere/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 2212
    iput-object v0, v1, Lcom/transitionseverywhere/Transition;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    :goto_0
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/transitionseverywhere/Transition;->clone()Lcom/transitionseverywhere/Transition;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValuesMaps;Lcom/transitionseverywhere/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/transitionseverywhere/TransitionValuesMaps;",
            "Lcom/transitionseverywhere/TransitionValuesMaps;",
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/TransitionValues;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 689
    invoke-static {}, Lcom/transitionseverywhere/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v8

    .line 691
    iget-object v1, v7, Lcom/transitionseverywhere/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 692
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 693
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-wide v1, 0x7fffffffffffffffL

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_f

    move-object/from16 v13, p4

    .line 695
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transitionseverywhere/TransitionValues;

    move-object/from16 v14, p5

    .line 696
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transitionseverywhere/TransitionValues;

    if-eqz v3, :cond_0

    .line 697
    iget-object v6, v3, Lcom/transitionseverywhere/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v3, 0x0

    :cond_0
    if-eqz v4, :cond_1

    .line 700
    iget-object v6, v4, Lcom/transitionseverywhere/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v4, 0x0

    :cond_1
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    :cond_2
    move/from16 v16, v10

    move/from16 v18, v12

    goto/16 :goto_8

    :cond_3
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 707
    invoke-virtual {v7, v3, v4}, Lcom/transitionseverywhere/Transition;->isTransitionRequired(Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-eqz v6, :cond_2

    .line 727
    invoke-virtual {v7, v0, v3, v4}, Lcom/transitionseverywhere/Transition;->createAnimator(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;

    move-result-object v6

    if-eqz v6, :cond_2

    if-eqz v4, :cond_c

    .line 733
    iget-object v15, v4, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/transitionseverywhere/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v5

    if-eqz v15, :cond_b

    if-eqz v5, :cond_b

    .line 735
    array-length v11, v5

    if-lez v11, :cond_b

    .line 736
    new-instance v11, Lcom/transitionseverywhere/TransitionValues;

    invoke-direct {v11}, Lcom/transitionseverywhere/TransitionValues;-><init>()V

    .line 737
    iput-object v15, v11, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v17, v6

    move/from16 v16, v10

    move-object/from16 v10, p3

    .line 738
    iget-object v6, v10, Lcom/transitionseverywhere/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v6, v15}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transitionseverywhere/TransitionValues;

    if-eqz v6, :cond_6

    const/4 v10, 0x0

    .line 740
    :goto_3
    array-length v13, v5

    if-ge v10, v13, :cond_6

    .line 741
    iget-object v13, v11, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    aget-object v14, v5, v10

    move/from16 v18, v12

    iget-object v12, v6, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v19, v6

    aget-object v6, v5, v10

    .line 742
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 741
    invoke-interface {v13, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v14, p5

    move/from16 v12, v18

    move-object/from16 v6, v19

    goto :goto_3

    :cond_6
    move/from16 v18, v12

    .line 745
    sget-object v5, Lcom/transitionseverywhere/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    monitor-enter v5

    .line 746
    :try_start_0
    invoke-virtual {v8}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v6

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v6, :cond_a

    .line 748
    invoke-virtual {v8, v10}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/Animator;

    .line 749
    invoke-virtual {v8, v12}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/transitionseverywhere/Transition$AnimationInfo;

    .line 750
    iget-object v13, v12, Lcom/transitionseverywhere/Transition$AnimationInfo;->values:Lcom/transitionseverywhere/TransitionValues;

    if-eqz v13, :cond_9

    iget-object v13, v12, Lcom/transitionseverywhere/Transition$AnimationInfo;->view:Landroid/view/View;

    if-ne v13, v15, :cond_9

    iget-object v13, v12, Lcom/transitionseverywhere/Transition$AnimationInfo;->name:Ljava/lang/String;

    if-nez v13, :cond_7

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/transitionseverywhere/Transition;->getName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_8

    :cond_7
    iget-object v13, v12, Lcom/transitionseverywhere/Transition$AnimationInfo;->name:Ljava/lang/String;

    if-eqz v13, :cond_9

    iget-object v13, v12, Lcom/transitionseverywhere/Transition$AnimationInfo;->name:Ljava/lang/String;

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/transitionseverywhere/Transition;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 753
    :cond_8
    iget-object v12, v12, Lcom/transitionseverywhere/Transition$AnimationInfo;->values:Lcom/transitionseverywhere/TransitionValues;

    invoke-virtual {v12, v11}, Lcom/transitionseverywhere/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v17, 0x0

    goto :goto_5

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 760
    :cond_a
    :goto_5
    monitor-exit v5

    move-object/from16 v6, v17

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_b
    move-object/from16 v17, v6

    move/from16 v16, v10

    move/from16 v18, v12

    move-object/from16 v6, v17

    const/4 v11, 0x0

    :goto_6
    move-object v10, v6

    move-object v6, v11

    goto :goto_7

    :cond_c
    move-object/from16 v17, v6

    move/from16 v16, v10

    move/from16 v18, v12

    .line 763
    iget-object v5, v3, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    move-object v15, v5

    move-object/from16 v10, v17

    const/4 v6, 0x0

    :goto_7
    if-eqz v10, :cond_e

    .line 766
    iget-object v5, v7, Lcom/transitionseverywhere/Transition;->mPropagation:Lcom/transitionseverywhere/TransitionPropagation;

    if-eqz v5, :cond_d

    .line 768
    invoke-virtual {v5, v0, v7, v3, v4}, Lcom/transitionseverywhere/TransitionPropagation;->getStartDelay(Landroid/view/ViewGroup;Lcom/transitionseverywhere/Transition;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)J

    move-result-wide v3

    .line 769
    iget-object v5, v7, Lcom/transitionseverywhere/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v5, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 770
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_d
    move-wide v11, v1

    .line 772
    new-instance v13, Lcom/transitionseverywhere/Transition$AnimationInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/transitionseverywhere/Transition;->getName()Ljava/lang/String;

    move-result-object v3

    .line 773
    invoke-static/range {p1 .. p1}, Lcom/transitionseverywhere/utils/ViewUtils;->getWindowId(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v13

    move-object v2, v15

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/transitionseverywhere/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/transitionseverywhere/Transition;Ljava/lang/Object;Lcom/transitionseverywhere/TransitionValues;)V

    .line 774
    invoke-virtual {v8, v10, v13}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v1, v7, Lcom/transitionseverywhere/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v1, v11

    :cond_e
    :goto_8
    add-int/lit8 v12, v18, 0x1

    move/from16 v10, v16

    goto/16 :goto_0

    .line 780
    :cond_f
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 781
    :goto_9
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_10

    .line 782
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 783
    iget-object v4, v7, Lcom/transitionseverywhere/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 784
    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v10

    add-long/2addr v4, v10

    .line 785
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_10
    return-void
.end method

.method protected end()V
    .locals 6

    .line 1910
    iget v0, p0, Lcom/transitionseverywhere/Transition;->mNumInstances:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transitionseverywhere/Transition;->mNumInstances:I

    .line 1911
    iget v0, p0, Lcom/transitionseverywhere/Transition;->mNumInstances:I

    if-nez v0, :cond_5

    .line 1912
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1914
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1915
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 1917
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transitionseverywhere/Transition$TransitionListener;

    invoke-interface {v5, p0}, Lcom/transitionseverywhere/Transition$TransitionListener;->onTransitionEnd(Lcom/transitionseverywhere/Transition;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1920
    :goto_1
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object v3, v3, Lcom/transitionseverywhere/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1921
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object v3, v3, Lcom/transitionseverywhere/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1922
    invoke-static {v3}, Lcom/transitionseverywhere/utils/ViewUtils;->hasTransientState(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1923
    invoke-static {v3, v2}, Lcom/transitionseverywhere/utils/ViewUtils;->setHasTransientState(Landroid/view/View;Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1926
    :goto_2
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mEndValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object v3, v3, Lcom/transitionseverywhere/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1927
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mEndValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object v3, v3, Lcom/transitionseverywhere/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1928
    invoke-static {v3}, Lcom/transitionseverywhere/utils/ViewUtils;->hasTransientState(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1929
    invoke-static {v3, v2}, Lcom/transitionseverywhere/utils/ViewUtils;->setHasTransientState(Landroid/view/View;Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1932
    :cond_4
    iput-boolean v1, p0, Lcom/transitionseverywhere/Transition;->mEnded:Z

    :cond_5
    return-void
.end method

.method public excludeChildren(IZ)Lcom/transitionseverywhere/Transition;
    .locals 1

    if-ltz p1, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/transitionseverywhere/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transitionseverywhere/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    :cond_0
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Lcom/transitionseverywhere/Transition;
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lcom/transitionseverywhere/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transitionseverywhere/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Lcom/transitionseverywhere/Transition;
    .locals 1

    .line 1272
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lcom/transitionseverywhere/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transitionseverywhere/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(IZ)Lcom/transitionseverywhere/Transition;
    .locals 1

    if-ltz p1, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/transitionseverywhere/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transitionseverywhere/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    :cond_0
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Lcom/transitionseverywhere/Transition;
    .locals 1

    .line 1181
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lcom/transitionseverywhere/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transitionseverywhere/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Lcom/transitionseverywhere/Transition;
    .locals 1

    .line 1246
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lcom/transitionseverywhere/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transitionseverywhere/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Lcom/transitionseverywhere/Transition;
    .locals 1

    .line 1125
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lcom/transitionseverywhere/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transitionseverywhere/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public forceVisibility(IZ)V
    .locals 0

    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 343
    iget-wide v0, p0, Lcom/transitionseverywhere/Transition;->mDuration:J

    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .locals 1

    .line 2028
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mEpicenterCallback:Lcom/transitionseverywhere/Transition$EpicenterCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2031
    :cond_0
    invoke-virtual {v0, p0}, Lcom/transitionseverywhere/Transition$EpicenterCallback;->onGetEpicenter(Lcom/transitionseverywhere/Transition;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getEpicenterCallback()Lcom/transitionseverywhere/Transition$EpicenterCallback;
    .locals 1

    .line 2017
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mEpicenterCallback:Lcom/transitionseverywhere/Transition$EpicenterCallback;

    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getMatchedTransitionValues(Landroid/view/View;Z)Lcom/transitionseverywhere/TransitionValues;
    .locals 6

    .line 1630
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mParent:Lcom/transitionseverywhere/TransitionSet;

    if-eqz v0, :cond_0

    .line 1631
    invoke-virtual {v0, p1, p2}, Lcom/transitionseverywhere/TransitionSet;->getMatchedTransitionValues(Landroid/view/View;Z)Lcom/transitionseverywhere/TransitionValues;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1633
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mEndValuesList:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 1637
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    .line 1640
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transitionseverywhere/TransitionValues;

    if-nez v5, :cond_3

    return-object v1

    .line 1645
    :cond_3
    iget-object v5, v5, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    if-ne v5, p1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    .line 1652
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1653
    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/transitionseverywhere/TransitionValues;

    :cond_7
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2232
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameOverrides()Landroid/support/v4/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2192
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    return-object v0
.end method

.method public getPathMotion()Lcom/transitionseverywhere/PathMotion;
    .locals 1

    .line 2112
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mPathMotion:Lcom/transitionseverywhere/PathMotion;

    return-object v0
.end method

.method public getPropagation()Lcom/transitionseverywhere/TransitionPropagation;
    .locals 1

    .line 2142
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mPropagation:Lcom/transitionseverywhere/TransitionPropagation;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 370
    iget-wide v0, p0, Lcom/transitionseverywhere/Transition;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1352
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1380
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1402
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetViewNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1388
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1366
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Lcom/transitionseverywhere/TransitionValues;
    .locals 1

    .line 1611
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mParent:Lcom/transitionseverywhere/TransitionSet;

    if-eqz v0, :cond_0

    .line 1612
    invoke-virtual {v0, p1, p2}, Lcom/transitionseverywhere/TransitionSet;->getTransitionValues(Landroid/view/View;Z)Lcom/transitionseverywhere/TransitionValues;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1614
    iget-object p2, p0, Lcom/transitionseverywhere/Transition;->mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transitionseverywhere/Transition;->mEndValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    .line 1615
    :goto_0
    iget-object p2, p2, Lcom/transitionseverywhere/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/TransitionValues;

    return-object p1
.end method

.method public isTransitionRequired(Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1794
    invoke-virtual {p0}, Lcom/transitionseverywhere/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1796
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 1798
    aget-object v5, v2, v4

    invoke-static {p1, p2, v5}, Lcom/transitionseverywhere/Transition;->isValueChanged(Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1804
    :cond_1
    iget-object v2, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1805
    invoke-static {p1, p2, v3}, Lcom/transitionseverywhere/Transition;->isValueChanged(Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method isValidTarget(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 804
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 805
    iget-object v2, p0, Lcom/transitionseverywhere/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 808
    :cond_1
    iget-object v2, p0, Lcom/transitionseverywhere/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 811
    :cond_2
    iget-object v2, p0, Lcom/transitionseverywhere/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 812
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 814
    iget-object v4, p0, Lcom/transitionseverywhere/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 815
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 820
    :cond_4
    invoke-static {p1}, Lcom/transitionseverywhere/utils/ViewUtils;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 821
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 822
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v0

    .line 826
    :cond_5
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    .line 827
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 828
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    return v4

    .line 831
    :cond_8
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/transitionseverywhere/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    .line 834
    :cond_9
    iget-object v1, p0, Lcom/transitionseverywhere/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v4

    .line 837
    :cond_a
    iget-object v1, p0, Lcom/transitionseverywhere/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    .line 838
    :goto_1
    iget-object v2, p0, Lcom/transitionseverywhere/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 839
    iget-object v2, p0, Lcom/transitionseverywhere/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    return v4

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    return v0

    :cond_d
    :goto_2
    return v4
.end method

.method public pause(Landroid/view/View;)V
    .locals 6

    .line 1666
    iget-boolean v0, p0, Lcom/transitionseverywhere/Transition;->mEnded:Z

    if-nez v0, :cond_3

    .line 1667
    sget-object v0, Lcom/transitionseverywhere/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    monitor-enter v0

    .line 1668
    :try_start_0
    invoke-static {}, Lcom/transitionseverywhere/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    .line 1669
    invoke-virtual {v1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 1671
    invoke-static {p1}, Lcom/transitionseverywhere/utils/ViewUtils;->getWindowId(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    .line 1673
    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transitionseverywhere/Transition$AnimationInfo;

    .line 1674
    iget-object v5, v4, Lcom/transitionseverywhere/Transition$AnimationInfo;->view:Landroid/view/View;

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    iget-object v4, v4, Lcom/transitionseverywhere/Transition$AnimationInfo;->windowId:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1675
    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 1676
    invoke-static {v4}, Lcom/transitionseverywhere/utils/AnimatorUtils;->pause(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1680
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1681
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1682
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1683
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1684
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 1686
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/Transition$TransitionListener;

    invoke-interface {v2, p0}, Lcom/transitionseverywhere/Transition$TransitionListener;->onTransitionPause(Lcom/transitionseverywhere/Transition;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1689
    :cond_2
    iput-boolean v3, p0, Lcom/transitionseverywhere/Transition;->mPaused:Z

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1680
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .locals 11

    .line 1732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1734
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object v1, p0, Lcom/transitionseverywhere/Transition;->mEndValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    invoke-direct {p0, v0, v1}, Lcom/transitionseverywhere/Transition;->matchStartAndEnd(Lcom/transitionseverywhere/TransitionValuesMaps;Lcom/transitionseverywhere/TransitionValuesMaps;)V

    .line 1736
    invoke-static {}, Lcom/transitionseverywhere/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1737
    sget-object v1, Lcom/transitionseverywhere/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    monitor-enter v1

    .line 1738
    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    .line 1739
    invoke-static {p1}, Lcom/transitionseverywhere/utils/ViewUtils;->getWindowId(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_0
    if-ltz v2, :cond_6

    .line 1741
    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    if-eqz v5, :cond_5

    .line 1743
    invoke-virtual {v0, v5}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transitionseverywhere/Transition$AnimationInfo;

    if-eqz v6, :cond_5

    .line 1744
    iget-object v7, v6, Lcom/transitionseverywhere/Transition$AnimationInfo;->view:Landroid/view/View;

    if-eqz v7, :cond_5

    iget-object v7, v6, Lcom/transitionseverywhere/Transition$AnimationInfo;->windowId:Ljava/lang/Object;

    if-ne v7, v3, :cond_5

    .line 1745
    iget-object v7, v6, Lcom/transitionseverywhere/Transition$AnimationInfo;->values:Lcom/transitionseverywhere/TransitionValues;

    .line 1746
    iget-object v8, v6, Lcom/transitionseverywhere/Transition$AnimationInfo;->view:Landroid/view/View;

    .line 1747
    invoke-virtual {p0, v8, v4}, Lcom/transitionseverywhere/Transition;->getTransitionValues(Landroid/view/View;Z)Lcom/transitionseverywhere/TransitionValues;

    move-result-object v9

    .line 1748
    invoke-virtual {p0, v8, v4}, Lcom/transitionseverywhere/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Lcom/transitionseverywhere/TransitionValues;

    move-result-object v10

    if-nez v9, :cond_0

    if-nez v10, :cond_0

    .line 1750
    iget-object v10, p0, Lcom/transitionseverywhere/Transition;->mEndValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object v10, v10, Lcom/transitionseverywhere/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/transitionseverywhere/TransitionValues;

    :cond_0
    if-nez v9, :cond_1

    if-eqz v10, :cond_2

    .line 1752
    :cond_1
    iget-object v6, v6, Lcom/transitionseverywhere/Transition$AnimationInfo;->transition:Lcom/transitionseverywhere/Transition;

    .line 1753
    invoke-virtual {v6, v7, v10}, Lcom/transitionseverywhere/Transition;->isTransitionRequired(Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_5

    .line 1755
    invoke-virtual {v5}, Landroid/animation/Animator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Lcom/transitionseverywhere/utils/AnimatorUtils;->isAnimatorStarted(Landroid/animation/Animator;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 1764
    :cond_3
    invoke-virtual {v0, v5}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1759
    :cond_4
    :goto_2
    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1770
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1772
    iget-object v4, p0, Lcom/transitionseverywhere/Transition;->mStartValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object v5, p0, Lcom/transitionseverywhere/Transition;->mEndValues:Lcom/transitionseverywhere/TransitionValuesMaps;

    iget-object v6, p0, Lcom/transitionseverywhere/Transition;->mStartValuesList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/transitionseverywhere/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/transitionseverywhere/Transition;->createAnimators(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValuesMaps;Lcom/transitionseverywhere/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1773
    invoke-virtual {p0}, Lcom/transitionseverywhere/Transition;->runAnimators()V

    return-void

    :catchall_0
    move-exception p1

    .line 1770
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public removeListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/Transition;
    .locals 1

    .line 1981
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    .line 1984
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1985
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1986
    iput-object p1, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    :cond_1
    return-object p0
.end method

.method public removeTarget(I)Lcom/transitionseverywhere/Transition;
    .locals 1

    if-lez p1, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Lcom/transitionseverywhere/Transition;
    .locals 1

    if-eqz p1, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Lcom/transitionseverywhere/Transition;
    .locals 1

    if-eqz p1, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Lcom/transitionseverywhere/Transition;
    .locals 1

    if-eqz p1, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 5

    .line 1701
    iget-boolean v0, p0, Lcom/transitionseverywhere/Transition;->mPaused:Z

    if-eqz v0, :cond_3

    .line 1702
    iget-boolean v0, p0, Lcom/transitionseverywhere/Transition;->mEnded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1703
    invoke-static {}, Lcom/transitionseverywhere/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1704
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    .line 1705
    invoke-static {p1}, Lcom/transitionseverywhere/utils/ViewUtils;->getWindowId(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 1707
    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transitionseverywhere/Transition$AnimationInfo;

    .line 1708
    iget-object v4, v3, Lcom/transitionseverywhere/Transition$AnimationInfo;->view:Landroid/view/View;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, v3, Lcom/transitionseverywhere/Transition$AnimationInfo;->windowId:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1709
    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 1710
    invoke-static {v3}, Lcom/transitionseverywhere/utils/AnimatorUtils;->resume(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1713
    :cond_1
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1714
    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1715
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1716
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 1718
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transitionseverywhere/Transition$TransitionListener;

    invoke-interface {v3, p0}, Lcom/transitionseverywhere/Transition$TransitionListener;->onTransitionResume(Lcom/transitionseverywhere/Transition;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1722
    :cond_2
    iput-boolean v1, p0, Lcom/transitionseverywhere/Transition;->mPaused:Z

    :cond_3
    return-void
.end method

.method protected runAnimators()V
    .locals 4

    .line 866
    invoke-virtual {p0}, Lcom/transitionseverywhere/Transition;->start()V

    .line 867
    invoke-static {}, Lcom/transitionseverywhere/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 869
    iget-object v1, p0, Lcom/transitionseverywhere/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 873
    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/transitionseverywhere/Transition;->start()V

    .line 875
    invoke-direct {p0, v2, v0}, Lcom/transitionseverywhere/Transition;->runAnimator(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_0

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 879
    invoke-virtual {p0}, Lcom/transitionseverywhere/Transition;->end()V

    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 0

    .line 2174
    iput-boolean p1, p0, Lcom/transitionseverywhere/Transition;->mCanRemoveViews:Z

    return-void
.end method

.method public setDuration(J)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 330
    iput-wide p1, p0, Lcom/transitionseverywhere/Transition;->mDuration:J

    return-object p0
.end method

.method public setEpicenterCallback(Lcom/transitionseverywhere/Transition$EpicenterCallback;)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 2003
    iput-object p1, p0, Lcom/transitionseverywhere/Transition;->mEpicenterCallback:Lcom/transitionseverywhere/Transition$EpicenterCallback;

    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/transitionseverywhere/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public varargs setMatchOrder([I)Lcom/transitionseverywhere/Transition;
    .locals 2

    if-eqz p1, :cond_4

    .line 493
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 496
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 497
    aget v1, p1, v0

    .line 498
    invoke-static {v1}, Lcom/transitionseverywhere/Transition;->isValidMatch(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 501
    invoke-static {p1, v0}, Lcom/transitionseverywhere/Transition;->alreadyContains([II)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "matches contains a duplicate value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 499
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "matches contains invalid value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 505
    :cond_3
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/transitionseverywhere/Transition;->mMatchOrder:[I

    goto :goto_2

    .line 494
    :cond_4
    :goto_1
    sget-object p1, Lcom/transitionseverywhere/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object p1, p0, Lcom/transitionseverywhere/Transition;->mMatchOrder:[I

    :goto_2
    return-object p0
.end method

.method public setNameOverrides(Landroid/support/v4/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2187
    iput-object p1, p0, Lcom/transitionseverywhere/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    return-void
.end method

.method public setPathMotion(Lcom/transitionseverywhere/PathMotion;)Lcom/transitionseverywhere/Transition;
    .locals 0

    if-nez p1, :cond_0

    .line 2074
    sget-object p1, Lcom/transitionseverywhere/PathMotion;->STRAIGHT_PATH_MOTION:Lcom/transitionseverywhere/PathMotion;

    iput-object p1, p0, Lcom/transitionseverywhere/Transition;->mPathMotion:Lcom/transitionseverywhere/PathMotion;

    goto :goto_0

    .line 2076
    :cond_0
    iput-object p1, p0, Lcom/transitionseverywhere/Transition;->mPathMotion:Lcom/transitionseverywhere/PathMotion;

    :goto_0
    return-object p0
.end method

.method public setPropagation(Lcom/transitionseverywhere/TransitionPropagation;)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 2127
    iput-object p1, p0, Lcom/transitionseverywhere/Transition;->mPropagation:Lcom/transitionseverywhere/TransitionPropagation;

    return-object p0
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 2169
    iput-object p1, p0, Lcom/transitionseverywhere/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public setStartDelay(J)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 357
    iput-wide p1, p0, Lcom/transitionseverywhere/Transition;->mStartDelay:J

    return-object p0
.end method

.method protected start()V
    .locals 5

    .line 1884
    iget v0, p0, Lcom/transitionseverywhere/Transition;->mNumInstances:I

    if-nez v0, :cond_1

    .line 1885
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1887
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1888
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1890
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transitionseverywhere/Transition$TransitionListener;

    invoke-interface {v4, p0}, Lcom/transitionseverywhere/Transition$TransitionListener;->onTransitionStart(Lcom/transitionseverywhere/Transition;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1893
    :cond_0
    iput-boolean v1, p0, Lcom/transitionseverywhere/Transition;->mEnded:Z

    .line 1895
    :cond_1
    iget v0, p0, Lcom/transitionseverywhere/Transition;->mNumInstances:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transitionseverywhere/Transition;->mNumInstances:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 2200
    invoke-virtual {p0, v0}, Lcom/transitionseverywhere/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2237
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2238
    iget-wide v0, p0, Lcom/transitionseverywhere/Transition;->mDuration:J

    const-wide/16 v2, -0x1

    const-string v4, ") "

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 2239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/transitionseverywhere/Transition;->mDuration:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2241
    :cond_0
    iget-wide v0, p0, Lcom/transitionseverywhere/Transition;->mStartDelay:J

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 2242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transitionseverywhere/Transition;->mStartDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2244
    :cond_1
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2247
    :cond_2
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 2248
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "tgts("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2249
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_6

    move-object v0, p1

    const/4 p1, 0x0

    .line 2250
    :goto_0
    iget-object v3, p0, Lcom/transitionseverywhere/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_5

    if-lez p1, :cond_4

    .line 2252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2254
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    move-object p1, v0

    .line 2257
    :cond_6
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2258
    :goto_1
    iget-object v0, p0, Lcom/transitionseverywhere/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    if-lez v2, :cond_7

    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2262
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transitionseverywhere/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2265
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_9
    return-object p1
.end method
