.class Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BasicInfoActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/BasicInfoActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/BasicInfoActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;Lcom/kantv/ui/activity/BasicInfoActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding$5;->this$0:Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding$5;->val$target:Lcom/kantv/ui/activity/BasicInfoActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/kantv/ui/activity/BasicInfoActivity_ViewBinding$5;->val$target:Lcom/kantv/ui/activity/BasicInfoActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/BasicInfoActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
