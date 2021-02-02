.class Lcom/kantv/ui/activity/SearchResultActivity$2;
.super Ljava/lang/Object;
.source "SearchResultActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SearchResultActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SearchResultActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$2;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$2;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/SearchResultActivity;->closekeyboard()V

    .line 109
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$2;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    iget-object p2, p1, Lcom/kantv/ui/activity/SearchResultActivity;->searchEdit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/kantv/ui/activity/SearchResultActivity;->name:Ljava/lang/String;

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "*** name **** : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/kantv/ui/activity/SearchResultActivity$2;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/SearchResultActivity;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/Object;)V

    .line 111
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$2;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    iget-object p2, p1, Lcom/kantv/ui/activity/SearchResultActivity;->name:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/activity/SearchResultActivity;->access$000(Lcom/kantv/ui/activity/SearchResultActivity;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchResultActivity$2;->this$0:Lcom/kantv/ui/activity/SearchResultActivity;

    iget-object p2, p1, Lcom/kantv/ui/activity/SearchResultActivity;->name:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/kantv/ui/activity/SearchResultActivity;->access$100(Lcom/kantv/ui/activity/SearchResultActivity;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
