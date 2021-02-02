.class Lcom/kantv/ui/activity/VideoPlayActivity$16;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->lineSwitchDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;I)V
    .locals 0

    .line 951
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$16;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iput p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$16;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1

    .line 954
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$16;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$16;->val$finalI:I

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$2200(Lcom/kantv/ui/activity/VideoPlayActivity;I)V

    return-void
.end method
