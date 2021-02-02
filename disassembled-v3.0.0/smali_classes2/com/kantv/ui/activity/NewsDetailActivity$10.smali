.class Lcom/kantv/ui/activity/NewsDetailActivity$10;
.super Ljava/lang/Object;
.source "NewsDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity;->showTodayAuDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsDetailActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity;)V
    .locals 0

    .line 929
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$10;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 932
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$10;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/NewsDetailActivity;->finish()V

    return-void
.end method
