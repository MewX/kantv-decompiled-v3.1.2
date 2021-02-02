.class Lcom/kantv/ui/activity/HistoryActivity$2;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Lcom/kantv/ui/adapter/CallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/HistoryActivity;->initView()V
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

    .line 115
    iput-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$2;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 1

    .line 118
    iget-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$2;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/HistoryActivity;->access$000(Lcom/kantv/ui/activity/HistoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String15Bean;->getStr13()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/kantv/ui/activity/HistoryActivity;->access$100(Lcom/kantv/ui/activity/HistoryActivity;Ljava/lang/String;I)V

    return-void
.end method
