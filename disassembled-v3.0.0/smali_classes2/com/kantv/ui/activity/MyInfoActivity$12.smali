.class Lcom/kantv/ui/activity/MyInfoActivity$12;
.super Ljava/lang/Object;
.source "MyInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/MyInfoActivity;->initAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/MyInfoActivity;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/MyInfoActivity;Ljava/lang/String;)V
    .locals 0

    .line 916
    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$12;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iput-object p2, p0, Lcom/kantv/ui/activity/MyInfoActivity$12;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 919
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$12;->val$type:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$12;->val$type:Ljava/lang/String;

    const-string v0, "sex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 920
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$12;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/MyInfoActivity;->access$1100(Lcom/kantv/ui/activity/MyInfoActivity;)V

    goto :goto_0

    .line 921
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$12;->val$type:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$12;->val$type:Ljava/lang/String;

    const-string v0, "birth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 922
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$12;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/MyInfoActivity;->access$1200(Lcom/kantv/ui/activity/MyInfoActivity;)V

    goto :goto_0

    .line 923
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$12;->val$type:Ljava/lang/String;

    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$12;->val$type:Ljava/lang/String;

    const-string v0, "home"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 924
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$12;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/MyInfoActivity;->access$1300(Lcom/kantv/ui/activity/MyInfoActivity;)V

    :cond_2
    :goto_0
    return-void
.end method
