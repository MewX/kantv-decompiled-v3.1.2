.class Lcom/kantv/ui/activity/CollectActivity$4;
.super Ljava/lang/Object;
.source "CollectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/CollectActivity;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/CollectActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/CollectActivity;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$4;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 205
    iget-object p1, p0, Lcom/kantv/ui/activity/CollectActivity$4;->this$0:Lcom/kantv/ui/activity/CollectActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/CollectActivity;->finish()V

    return-void
.end method
