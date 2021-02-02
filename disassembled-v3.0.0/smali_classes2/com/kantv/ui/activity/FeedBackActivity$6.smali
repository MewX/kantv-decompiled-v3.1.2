.class Lcom/kantv/ui/activity/FeedBackActivity$6;
.super Ljava/lang/Object;
.source "FeedBackActivity.java"

# interfaces
.implements Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/FeedBackActivity;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/FeedBackActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/FeedBackActivity;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/kantv/ui/activity/FeedBackActivity$6;->this$0:Lcom/kantv/ui/activity/FeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1

    .line 207
    iget-object p1, p0, Lcom/kantv/ui/activity/FeedBackActivity$6;->this$0:Lcom/kantv/ui/activity/FeedBackActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/FeedBackActivity;->mType:Landroid/widget/TextView;

    const-string v0, "\u610f\u89c1\u53cd\u9988"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
