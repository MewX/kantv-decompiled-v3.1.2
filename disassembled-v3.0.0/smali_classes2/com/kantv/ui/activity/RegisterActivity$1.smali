.class Lcom/kantv/ui/activity/RegisterActivity$1;
.super Ljava/util/TimerTask;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/RegisterActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/RegisterActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/kantv/ui/activity/RegisterActivity$1;->this$0:Lcom/kantv/ui/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity$1;->this$0:Lcom/kantv/ui/activity/RegisterActivity;

    iget-object v1, v0, Lcom/kantv/ui/activity/RegisterActivity;->regPwd:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/RegisterActivity;->access$000(Lcom/kantv/ui/activity/RegisterActivity;Landroid/widget/TextView;)V

    return-void
.end method
