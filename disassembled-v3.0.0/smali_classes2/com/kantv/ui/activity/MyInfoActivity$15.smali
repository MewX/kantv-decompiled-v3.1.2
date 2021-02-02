.class Lcom/kantv/ui/activity/MyInfoActivity$15;
.super Ljava/lang/Object;
.source "MyInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/MyInfoActivity;->showSaveDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/MyInfoActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/MyInfoActivity;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$15;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 955
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$15;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/MyInfoActivity;->finish()V

    return-void
.end method
