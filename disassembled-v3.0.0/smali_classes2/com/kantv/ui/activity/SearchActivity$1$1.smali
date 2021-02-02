.class Lcom/kantv/ui/activity/SearchActivity$1$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SearchActivity$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/SearchActivity$1;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SearchActivity$1;Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$1$1;->this$1:Lcom/kantv/ui/activity/SearchActivity$1;

    iput-object p2, p0, Lcom/kantv/ui/activity/SearchActivity$1$1;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 119
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$1$1;->this$1:Lcom/kantv/ui/activity/SearchActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/SearchActivity$1;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/SearchActivity;->closekeyboard()V

    .line 120
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 121
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity$1$1;->val$s:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/kantv/ui/activity/SearchActivity$1$1;->this$1:Lcom/kantv/ui/activity/SearchActivity$1;

    iget-object v0, v0, Lcom/kantv/ui/activity/SearchActivity$1;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    const-class v1, Lcom/kantv/ui/activity/SearchResultActivity;

    invoke-virtual {v0, p1, v1}, Lcom/kantv/ui/activity/SearchActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 123
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$1$1;->this$1:Lcom/kantv/ui/activity/SearchActivity$1;

    iget-object p1, p1, Lcom/kantv/ui/activity/SearchActivity$1;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/SearchActivity;->finish()V

    return-void
.end method
