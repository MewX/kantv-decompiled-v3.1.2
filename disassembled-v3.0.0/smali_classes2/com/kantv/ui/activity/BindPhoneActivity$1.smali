.class Lcom/kantv/ui/activity/BindPhoneActivity$1;
.super Ljava/util/TimerTask;
.source "BindPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/BindPhoneActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/BindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/BindPhoneActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/kantv/ui/activity/BindPhoneActivity$1;->this$0:Lcom/kantv/ui/activity/BindPhoneActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/kantv/ui/activity/BindPhoneActivity$1;->this$0:Lcom/kantv/ui/activity/BindPhoneActivity;

    iget-object v1, v0, Lcom/kantv/ui/activity/BindPhoneActivity;->bindPhone:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/BindPhoneActivity;->access$000(Lcom/kantv/ui/activity/BindPhoneActivity;Landroid/widget/TextView;)V

    return-void
.end method
