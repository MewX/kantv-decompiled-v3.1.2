.class public final Lcom/transitionseverywhere/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mEnterAction:Ljava/lang/Runnable;

.field mExitAction:Ljava/lang/Runnable;

.field private mLayout:Landroid/view/View;

.field private mLayoutId:I

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/transitionseverywhere/Scene;->mLayoutId:I

    .line 81
    iput-object p1, p0, Lcom/transitionseverywhere/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/transitionseverywhere/Scene;->mLayoutId:I

    .line 100
    iput-object p3, p0, Lcom/transitionseverywhere/Scene;->mContext:Landroid/content/Context;

    .line 101
    iput-object p1, p0, Lcom/transitionseverywhere/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 102
    iput p2, p0, Lcom/transitionseverywhere/Scene;->mLayoutId:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/transitionseverywhere/Scene;->mLayoutId:I

    .line 116
    iput-object p1, p0, Lcom/transitionseverywhere/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 117
    iput-object p2, p0, Lcom/transitionseverywhere/Scene;->mLayout:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/transitionseverywhere/Scene;->mLayoutId:I

    .line 124
    iput-object p1, p0, Lcom/transitionseverywhere/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 125
    iput-object p2, p0, Lcom/transitionseverywhere/Scene;->mLayout:Landroid/view/View;

    return-void
.end method

.method public static getCurrentScene(Landroid/view/View;)Lcom/transitionseverywhere/Scene;
    .locals 1

    .line 206
    sget v0, Lcom/transitionseverywhere/R$id;->current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transitionseverywhere/Scene;

    return-object p0
.end method

.method public static getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Lcom/transitionseverywhere/Scene;
    .locals 2

    .line 55
    sget v0, Lcom/transitionseverywhere/R$id;->scene_layoutid_cache:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 58
    sget v1, Lcom/transitionseverywhere/R$id;->scene_layoutid_cache:I

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 60
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Scene;

    if-eqz v1, :cond_1

    return-object v1

    .line 64
    :cond_1
    new-instance v1, Lcom/transitionseverywhere/Scene;

    invoke-direct {v1, p0, p1, p2}, Lcom/transitionseverywhere/Scene;-><init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V

    .line 65
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method static setCurrentScene(Landroid/view/View;Lcom/transitionseverywhere/Scene;)V
    .locals 1

    .line 195
    sget v0, Lcom/transitionseverywhere/R$id;->current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 167
    iget v0, p0, Lcom/transitionseverywhere/Scene;->mLayoutId:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/transitionseverywhere/Scene;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/transitionseverywhere/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 171
    iget v0, p0, Lcom/transitionseverywhere/Scene;->mLayoutId:I

    if-lez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/transitionseverywhere/Scene;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/transitionseverywhere/Scene;->mLayoutId:I

    iget-object v2, p0, Lcom/transitionseverywhere/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/transitionseverywhere/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transitionseverywhere/Scene;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 179
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transitionseverywhere/Scene;->mEnterAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 180
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/transitionseverywhere/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lcom/transitionseverywhere/Scene;->setCurrentScene(Landroid/view/View;Lcom/transitionseverywhere/Scene;)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/transitionseverywhere/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/transitionseverywhere/Scene;->getCurrentScene(Landroid/view/View;)Lcom/transitionseverywhere/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/transitionseverywhere/Scene;->mExitAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/transitionseverywhere/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method isCreatedFromLayoutResource()Z
    .locals 1

    .line 265
    iget v0, p0, Lcom/transitionseverywhere/Scene;->mLayoutId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/transitionseverywhere/Scene;->mEnterAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/transitionseverywhere/Scene;->mExitAction:Ljava/lang/Runnable;

    return-void
.end method
