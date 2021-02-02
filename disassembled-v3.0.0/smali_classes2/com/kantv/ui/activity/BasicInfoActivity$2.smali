.class Lcom/kantv/ui/activity/BasicInfoActivity$2;
.super Ljava/lang/Object;
.source "BasicInfoActivity.java"

# interfaces
.implements Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/BasicInfoActivity;->initAvatarDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/BasicInfoActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/BasicInfoActivity;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/kantv/ui/activity/BasicInfoActivity$2;->this$0:Lcom/kantv/ui/activity/BasicInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/kantv/ui/activity/BasicInfoActivity$2;->this$0:Lcom/kantv/ui/activity/BasicInfoActivity;

    invoke-static {p1}, Lcom/kantv/ui/photo/PermissionUtil;->hasCameraPermission(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/kantv/ui/activity/BasicInfoActivity$2;->this$0:Lcom/kantv/ui/activity/BasicInfoActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/BasicInfoActivity;->access$100(Lcom/kantv/ui/activity/BasicInfoActivity;)V

    :cond_0
    return-void
.end method
