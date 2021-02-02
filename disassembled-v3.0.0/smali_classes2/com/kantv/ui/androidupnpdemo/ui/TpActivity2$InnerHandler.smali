.class final Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$InnerHandler;
.super Landroid/os/Handler;
.source "TpActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;


# direct methods
.method private constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$InnerHandler;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$1;)V
    .locals 0

    .line 735
    invoke-direct {p0, p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$InnerHandler;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 738
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 739
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 761
    :pswitch_0
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Execute ERROR_ACTION"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$InnerHandler;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1400(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "\u6295\u653e\u5931\u8d25"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 757
    :pswitch_1
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Execute TRANSITIONING_ACTION"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$InnerHandler;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1400(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "\u6b63\u5728\u8fde\u63a5"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 752
    :pswitch_2
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Execute STOP_ACTION"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$InnerHandler;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1300(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->setCurrentState(I)V

    goto :goto_0

    .line 747
    :pswitch_3
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Execute PAUSE_ACTION"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$InnerHandler;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1300(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->setCurrentState(I)V

    goto :goto_0

    .line 741
    :pswitch_4
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Execute PLAY_ACTION"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$InnerHandler;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1400(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "\u6b63\u5728\u6295\u653e"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 743
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$InnerHandler;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$1300(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->setCurrentState(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
