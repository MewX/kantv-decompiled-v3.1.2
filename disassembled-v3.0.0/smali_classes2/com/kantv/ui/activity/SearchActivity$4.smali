.class Lcom/kantv/ui/activity/SearchActivity$4;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SearchActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SearchActivity;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$4;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/kantv/ui/activity/SearchActivity$4;->this$0:Lcom/kantv/ui/activity/SearchActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/SearchActivity;->access$200(Lcom/kantv/ui/activity/SearchActivity;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
