.class Lcom/kantv/ui/activity/SendMsgActivity$2;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SendMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SendMsgActivity;->initTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SendMsgActivity;

.field private final titles:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SendMsgActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .line 97
    iput-object p1, p0, Lcom/kantv/ui/activity/SendMsgActivity$2;->this$0:Lcom/kantv/ui/activity/SendMsgActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    const/4 p1, 0x2

    .line 99
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "\u5f71\u89c6"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    const-string v0, "\u8d44\u8baf"

    aput-object v0, p1, p2

    iput-object p1, p0, Lcom/kantv/ui/activity/SendMsgActivity$2;->titles:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/kantv/ui/activity/SendMsgActivity$2;->this$0:Lcom/kantv/ui/activity/SendMsgActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/SendMsgActivity;->access$000(Lcom/kantv/ui/activity/SendMsgActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/SendMsgActivity$2;->this$0:Lcom/kantv/ui/activity/SendMsgActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/SendMsgActivity;->access$000(Lcom/kantv/ui/activity/SendMsgActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/kantv/ui/activity/SendMsgActivity$2;->this$0:Lcom/kantv/ui/activity/SendMsgActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/SendMsgActivity;->access$000(Lcom/kantv/ui/activity/SendMsgActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/SendMsgActivity$2;->this$0:Lcom/kantv/ui/activity/SendMsgActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/SendMsgActivity;->access$000(Lcom/kantv/ui/activity/SendMsgActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/kantv/ui/activity/SendMsgActivity$2;->titles:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
