.class Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "OfflineVideoActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/OfflineVideoActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/OfflineVideoActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;Lcom/kantv/ui/activity/OfflineVideoActivity;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding$3;->this$0:Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding$3;->val$target:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/kantv/ui/activity/OfflineVideoActivity_ViewBinding$3;->val$target:Lcom/kantv/ui/activity/OfflineVideoActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/OfflineVideoActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
