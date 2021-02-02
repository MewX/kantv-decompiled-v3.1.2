.class public Lcom/transitionseverywhere/TransitionManager;
.super Ljava/lang/Object;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/TransitionManager$MultiListener;
    }
.end annotation


# static fields
.field private static final EMPTY_STRINGS:[Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String; = "TransitionManager"

.field private static sDefaultTransition:Lcom/transitionseverywhere/Transition;

.field private static sPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mScenePairTransitions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Lcom/transitionseverywhere/Scene;",
            "Landroid/support/v4/util/ArrayMap<",
            "Lcom/transitionseverywhere/Scene;",
            "Lcom/transitionseverywhere/Transition;",
            ">;>;"
        }
    .end annotation
.end field

.field mSceneTransitions:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Lcom/transitionseverywhere/Scene;",
            "Lcom/transitionseverywhere/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/transitionseverywhere/AutoTransition;

    invoke-direct {v0}, Lcom/transitionseverywhere/AutoTransition;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/TransitionManager;->sDefaultTransition:Lcom/transitionseverywhere/Transition;

    const/4 v0, 0x0

    .line 74
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/transitionseverywhere/TransitionManager;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/TransitionManager;->mSceneTransitions:Landroid/support/v4/util/ArrayMap;

    .line 77
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/TransitionManager;->mScenePairTransitions:Landroid/support/v4/util/ArrayMap;

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .line 68
    sget-object v0, Lcom/transitionseverywhere/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/transitionseverywhere/TransitionManager;->getRunningTransitions(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/view/View;)Z
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/transitionseverywhere/TransitionManager;->cancelAllSystemLayoutTransitions(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    .line 396
    invoke-static {p0, v0}, Lcom/transitionseverywhere/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Lcom/transitionseverywhere/Transition;)V

    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Lcom/transitionseverywhere/Transition;)V
    .locals 1

    .line 423
    sget-object v0, Lcom/transitionseverywhere/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transitionseverywhere/utils/ViewUtils;->isLaidOut(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    sget-object v0, Lcom/transitionseverywhere/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 430
    sget-object p1, Lcom/transitionseverywhere/TransitionManager;->sDefaultTransition:Lcom/transitionseverywhere/Transition;

    .line 432
    :cond_0
    invoke-virtual {p1}, Lcom/transitionseverywhere/Transition;->clone()Lcom/transitionseverywhere/Transition;

    move-result-object p1

    .line 433
    invoke-static {p0, p1}, Lcom/transitionseverywhere/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Lcom/transitionseverywhere/Transition;)V

    const/4 v0, 0x0

    .line 434
    invoke-static {p0, v0}, Lcom/transitionseverywhere/Scene;->setCurrentScene(Landroid/view/View;Lcom/transitionseverywhere/Scene;)V

    .line 435
    invoke-static {p0, p1}, Lcom/transitionseverywhere/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Lcom/transitionseverywhere/Transition;)V

    :cond_1
    return-void
.end method

.method private static cancelAllSystemLayoutTransitions(Landroid/view/View;)Z
    .locals 4

    .line 311
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 312
    check-cast p0, Landroid/view/ViewGroup;

    .line 313
    invoke-static {p0}, Lcom/transitionseverywhere/utils/ViewGroupUtils;->cancelLayoutTransition(Landroid/view/ViewGroup;)Z

    move-result v0

    move v2, v0

    const/4 v0, 0x0

    .line 314
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 315
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/transitionseverywhere/TransitionManager;->cancelAllSystemLayoutTransitions(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private static changeScene(Lcom/transitionseverywhere/Scene;Lcom/transitionseverywhere/Transition;)V
    .locals 3

    .line 182
    invoke-virtual {p0}, Lcom/transitionseverywhere/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 183
    sget-object v1, Lcom/transitionseverywhere/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 185
    invoke-static {}, Lcom/transitionseverywhere/TransitionManager;->isTransitionsAllowed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    sget-object v2, Lcom/transitionseverywhere/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/transitionseverywhere/Transition;->clone()Lcom/transitionseverywhere/Transition;

    move-result-object v1

    .line 190
    invoke-virtual {v1, v0}, Lcom/transitionseverywhere/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Lcom/transitionseverywhere/Transition;

    .line 193
    :cond_0
    invoke-static {v0}, Lcom/transitionseverywhere/Scene;->getCurrentScene(Landroid/view/View;)Lcom/transitionseverywhere/Scene;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 195
    invoke-virtual {p1}, Lcom/transitionseverywhere/Scene;->isCreatedFromLayoutResource()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 196
    invoke-virtual {v1, p1}, Lcom/transitionseverywhere/Transition;->setCanRemoveViews(Z)V

    .line 200
    :cond_1
    invoke-static {v0, v1}, Lcom/transitionseverywhere/TransitionManager;->sceneChangeSetup(Landroid/view/ViewGroup;Lcom/transitionseverywhere/Transition;)V

    .line 202
    invoke-virtual {p0}, Lcom/transitionseverywhere/Scene;->enter()V

    .line 204
    invoke-static {v0, v1}, Lcom/transitionseverywhere/TransitionManager;->sceneChangeRunTransition(Landroid/view/ViewGroup;Lcom/transitionseverywhere/Transition;)V

    :cond_2
    return-void
.end method

.method public static endTransitions(Landroid/view/ViewGroup;)V
    .locals 2

    .line 445
    sget-object v0, Lcom/transitionseverywhere/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 447
    invoke-static {p0}, Lcom/transitionseverywhere/TransitionManager;->getRunningTransitions(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 448
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 451
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_0

    .line 452
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    .line 453
    invoke-virtual {v1}, Lcom/transitionseverywhere/Transition;->end()V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getDefaultTransition()Lcom/transitionseverywhere/Transition;
    .locals 1

    .line 103
    sget-object v0, Lcom/transitionseverywhere/TransitionManager;->sDefaultTransition:Lcom/transitionseverywhere/Transition;

    return-object v0
.end method

.method private static getRunningTransitions(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/Transition;",
            ">;"
        }
    .end annotation

    .line 209
    sget v0, Lcom/transitionseverywhere/R$id;->runningTransitions:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    sget v1, Lcom/transitionseverywhere/R$id;->runningTransitions:I

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getTransition(Lcom/transitionseverywhere/Scene;)Lcom/transitionseverywhere/Transition;
    .locals 2

    .line 152
    invoke-virtual {p1}, Lcom/transitionseverywhere/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {v0}, Lcom/transitionseverywhere/Scene;->getCurrentScene(Landroid/view/View;)Lcom/transitionseverywhere/Scene;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionManager;->mScenePairTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/util/ArrayMap;

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transitionseverywhere/Transition;

    if-eqz v0, :cond_0

    return-object v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionManager;->mSceneTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/Transition;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    sget-object p1, Lcom/transitionseverywhere/TransitionManager;->sDefaultTransition:Lcom/transitionseverywhere/Transition;

    :goto_0
    return-object p1
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    .line 486
    invoke-static {p0}, Lcom/transitionseverywhere/utils/ViewUtils;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static go(Lcom/transitionseverywhere/Scene;)V
    .locals 1

    .line 365
    sget-object v0, Lcom/transitionseverywhere/TransitionManager;->sDefaultTransition:Lcom/transitionseverywhere/Transition;

    invoke-static {p0, v0}, Lcom/transitionseverywhere/TransitionManager;->changeScene(Lcom/transitionseverywhere/Scene;Lcom/transitionseverywhere/Transition;)V

    return-void
.end method

.method public static go(Lcom/transitionseverywhere/Scene;Lcom/transitionseverywhere/Transition;)V
    .locals 0

    .line 383
    invoke-static {p0, p1}, Lcom/transitionseverywhere/TransitionManager;->changeScene(Lcom/transitionseverywhere/Scene;Lcom/transitionseverywhere/Transition;)V

    return-void
.end method

.method public static isTransitionsAllowed()Z
    .locals 2

    .line 463
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static sceneChangeRunTransition(Landroid/view/ViewGroup;Lcom/transitionseverywhere/Transition;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 220
    invoke-static {}, Lcom/transitionseverywhere/TransitionManager;->isTransitionsAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {p0}, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils;->initializeOverlay(Landroid/view/ViewGroup;)V

    .line 222
    new-instance v0, Lcom/transitionseverywhere/TransitionManager$MultiListener;

    invoke-direct {v0, p1, p0}, Lcom/transitionseverywhere/TransitionManager$MultiListener;-><init>(Lcom/transitionseverywhere/Transition;Landroid/view/ViewGroup;)V

    .line 223
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 224
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 226
    :cond_0
    sget-object p1, Lcom/transitionseverywhere/TransitionManager;->sPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private static sceneChangeSetup(Landroid/view/ViewGroup;Lcom/transitionseverywhere/Transition;)V
    .locals 2

    .line 322
    invoke-static {}, Lcom/transitionseverywhere/TransitionManager;->isTransitionsAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    invoke-static {p0}, Lcom/transitionseverywhere/TransitionManager;->getRunningTransitions(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 327
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    .line 328
    invoke-virtual {v1, p0}, Lcom/transitionseverywhere/Transition;->pause(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 333
    invoke-virtual {p1, p0, v0}, Lcom/transitionseverywhere/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 338
    :cond_1
    invoke-static {p0}, Lcom/transitionseverywhere/Scene;->getCurrentScene(Landroid/view/View;)Lcom/transitionseverywhere/Scene;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 340
    invoke-virtual {p0}, Lcom/transitionseverywhere/Scene;->exit()V

    :cond_2
    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 473
    invoke-static {p0, p1}, Lcom/transitionseverywhere/utils/ViewUtils;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setDefaultTransition(Lcom/transitionseverywhere/Transition;)V
    .locals 0

    .line 91
    sput-object p1, Lcom/transitionseverywhere/TransitionManager;->sDefaultTransition:Lcom/transitionseverywhere/Transition;

    return-void
.end method

.method public setTransition(Lcom/transitionseverywhere/Scene;Lcom/transitionseverywhere/Scene;Lcom/transitionseverywhere/Transition;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionManager;->mScenePairTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionManager;->mScenePairTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    invoke-virtual {v0, p1, p3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTransition(Lcom/transitionseverywhere/Scene;Lcom/transitionseverywhere/Transition;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionManager;->mSceneTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public transitionTo(Lcom/transitionseverywhere/Scene;)V
    .locals 1

    .line 355
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/TransitionManager;->getTransition(Lcom/transitionseverywhere/Scene;)Lcom/transitionseverywhere/Transition;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transitionseverywhere/TransitionManager;->changeScene(Lcom/transitionseverywhere/Scene;Lcom/transitionseverywhere/Transition;)V

    return-void
.end method
