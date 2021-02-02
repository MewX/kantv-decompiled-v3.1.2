.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;
.super Ljava/lang/Object;
.source "TpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$700(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$700(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$800(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u8fde\u63a5Chromecast"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$700(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    const-string v1, "\u70b9\u51fb\u53f3\u4fa7\u6309\u94ae\u8fde\u63a5Chromecast"

    const-string v2, "\u5df2\u8fde\u63a5Chromecast"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$700(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$800(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$800(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$600(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)V

    goto :goto_0

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$800(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$800(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    new-instance v1, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1$1;-><init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method
