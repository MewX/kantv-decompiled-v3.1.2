.class Lcom/kantv/ui/activity/ForumActivity$4;
.super Ljava/lang/Object;
.source "ForumActivity.java"

# interfaces
.implements Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/ForumActivity;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/ForumActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/ForumActivity;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/kantv/ui/activity/ForumActivity$4;->this$0:Lcom/kantv/ui/activity/ForumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/kantv/ui/activity/ForumActivity$4;->this$0:Lcom/kantv/ui/activity/ForumActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/ForumActivity;->mType:Landroid/widget/TextView;

    const-string v0, "\u52a8\u6f2b"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
