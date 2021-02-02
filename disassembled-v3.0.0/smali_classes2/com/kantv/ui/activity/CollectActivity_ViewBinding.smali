.class public Lcom/kantv/ui/activity/CollectActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CollectActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/kantv/ui/activity/CollectActivity;

.field private view2131296328:Landroid/view/View;

.field private view2131296431:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/activity/CollectActivity;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 28
    invoke-virtual {p1}, Lcom/kantv/ui/activity/CollectActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kantv/ui/activity/CollectActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/CollectActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/ui/activity/CollectActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/kantv/ui/activity/CollectActivity_ViewBinding;->target:Lcom/kantv/ui/activity/CollectActivity;

    .line 36
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900be

    const-string v2, "field \'titleRelateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/CollectActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    .line 37
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090374

    const-string v2, "field \'titleLeftLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/CollectActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 38
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090375

    const-string v2, "field \'titleLeftImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/CollectActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 39
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090377

    const-string v2, "field \'titleRightImg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/kantv/ui/activity/CollectActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090395

    const-string v2, "field \'titleRightTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/CollectActivity;->titleRightTv:Landroid/widget/TextView;

    .line 41
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900bf

    const-string v2, "field \'titleTV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/CollectActivity;->titleTV:Landroid/widget/TextView;

    .line 42
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900b0

    const-string v2, "field \'collectEditLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/kantv/ui/activity/CollectActivity;->collectEditLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090048

    const-string v1, "field \'allCollectChoice\' and method \'onClick\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 44
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'allCollectChoice\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/kantv/ui/activity/CollectActivity;->allCollectChoice:Landroid/widget/TextView;

    .line 45
    iput-object v1, p0, Lcom/kantv/ui/activity/CollectActivity_ViewBinding;->view2131296328:Landroid/view/View;

    .line 46
    new-instance v0, Lcom/kantv/ui/activity/CollectActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/CollectActivity_ViewBinding$1;-><init>(Lcom/kantv/ui/activity/CollectActivity_ViewBinding;Lcom/kantv/ui/activity/CollectActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const-class v0, Lcom/kantv/lib/recyclerview/XRecyclerView;

    const v1, 0x7f0900b1

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/lib/recyclerview/XRecyclerView;

    iput-object v0, p1, Lcom/kantv/ui/activity/CollectActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    const v0, 0x7f0900af

    const-string v1, "method \'onClick\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 54
    iput-object p2, p0, Lcom/kantv/ui/activity/CollectActivity_ViewBinding;->view2131296431:Landroid/view/View;

    .line 55
    new-instance v0, Lcom/kantv/ui/activity/CollectActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/kantv/ui/activity/CollectActivity_ViewBinding$2;-><init>(Lcom/kantv/ui/activity/CollectActivity_ViewBinding;Lcom/kantv/ui/activity/CollectActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity_ViewBinding;->target:Lcom/kantv/ui/activity/CollectActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/kantv/ui/activity/CollectActivity_ViewBinding;->target:Lcom/kantv/ui/activity/CollectActivity;

    .line 70
    iput-object v1, v0, Lcom/kantv/ui/activity/CollectActivity;->titleRelateLayout:Landroid/widget/RelativeLayout;

    .line 71
    iput-object v1, v0, Lcom/kantv/ui/activity/CollectActivity;->titleLeftLayout:Landroid/widget/LinearLayout;

    .line 72
    iput-object v1, v0, Lcom/kantv/ui/activity/CollectActivity;->titleLeftImg:Landroid/widget/ImageView;

    .line 73
    iput-object v1, v0, Lcom/kantv/ui/activity/CollectActivity;->titleRightImg:Landroid/widget/ImageView;

    .line 74
    iput-object v1, v0, Lcom/kantv/ui/activity/CollectActivity;->titleRightTv:Landroid/widget/TextView;

    .line 75
    iput-object v1, v0, Lcom/kantv/ui/activity/CollectActivity;->titleTV:Landroid/widget/TextView;

    .line 76
    iput-object v1, v0, Lcom/kantv/ui/activity/CollectActivity;->collectEditLayout:Landroid/widget/LinearLayout;

    .line 77
    iput-object v1, v0, Lcom/kantv/ui/activity/CollectActivity;->allCollectChoice:Landroid/widget/TextView;

    .line 78
    iput-object v1, v0, Lcom/kantv/ui/activity/CollectActivity;->mRecyclerView:Lcom/kantv/lib/recyclerview/XRecyclerView;

    .line 80
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity_ViewBinding;->view2131296328:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iput-object v1, p0, Lcom/kantv/ui/activity/CollectActivity_ViewBinding;->view2131296328:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/kantv/ui/activity/CollectActivity_ViewBinding;->view2131296431:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iput-object v1, p0, Lcom/kantv/ui/activity/CollectActivity_ViewBinding;->view2131296431:Landroid/view/View;

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
