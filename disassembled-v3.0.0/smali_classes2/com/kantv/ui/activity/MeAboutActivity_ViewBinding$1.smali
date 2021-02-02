.class Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MeAboutActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding;-><init>(Lcom/kantv/ui/activity/MeAboutActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding;

.field final synthetic val$target:Lcom/kantv/ui/activity/MeAboutActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding;Lcom/kantv/ui/activity/MeAboutActivity;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding$1;->this$0:Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding;

    iput-object p2, p0, Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding$1;->val$target:Lcom/kantv/ui/activity/MeAboutActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/kantv/ui/activity/MeAboutActivity_ViewBinding$1;->val$target:Lcom/kantv/ui/activity/MeAboutActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/MeAboutActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
