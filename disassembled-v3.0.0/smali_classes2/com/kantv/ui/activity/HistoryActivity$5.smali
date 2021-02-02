.class Lcom/kantv/ui/activity/HistoryActivity$5;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/HistoryActivity;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/HistoryActivity;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$5;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 178
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$5;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/HistoryActivity;->finish()V

    return-void
.end method
