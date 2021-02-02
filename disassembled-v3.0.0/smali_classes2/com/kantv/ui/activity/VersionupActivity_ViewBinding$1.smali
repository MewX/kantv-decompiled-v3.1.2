.class Lcom/kantv/ui/activity/VersionupActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "VersionupActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VersionupActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/VersionupActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VersionupActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/VersionupActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VersionupActivity_ViewBinding;Lcom/kantv/ui/activity/VersionupActivity;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity_ViewBinding$1;->this$0:Lcom/kantv/ui/activity/VersionupActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/VersionupActivity_ViewBinding$1;->val$target:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity_ViewBinding$1;->val$target:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/VersionupActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
