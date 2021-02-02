.class Lcom/kantv/ui/activity/MyInfoActivity$5;
.super Ljava/lang/Object;
.source "MyInfoActivity.java"

# interfaces
.implements Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/MyInfoActivity;->initAvatarDialog()V
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

    .line 552
    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$5;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 0

    .line 555
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$5;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-static {p1}, Lcom/kantv/ui/photo/PermissionUtil;->hasCameraPermission(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 556
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$5;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/MyInfoActivity;->access$500(Lcom/kantv/ui/activity/MyInfoActivity;)V

    :cond_0
    return-void
.end method
