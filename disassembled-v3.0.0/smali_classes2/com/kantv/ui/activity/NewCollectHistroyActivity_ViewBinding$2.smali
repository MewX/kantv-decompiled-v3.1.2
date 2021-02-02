.class Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "NewCollectHistroyActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/NewCollectHistroyActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/NewCollectHistroyActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding;Lcom/kantv/ui/activity/NewCollectHistroyActivity;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding$2;->this$0:Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding$2;->val$target:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/kantv/ui/activity/NewCollectHistroyActivity_ViewBinding$2;->val$target:Lcom/kantv/ui/activity/NewCollectHistroyActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/NewCollectHistroyActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
