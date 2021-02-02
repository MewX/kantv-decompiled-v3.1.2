.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4$1;
.super Ljava/lang/Object;
.source "TpActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$400(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$400(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u8fde\u63a5chromecast"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$400(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    const-string v1, "\u70b9\u51fb\u53f3\u4fa7\u6309\u94ae\u8fde\u63a5chromecast"

    const-string v2, "\u5df2\u8fde\u63a5chromecast"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$400(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4$1;->this$1:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;

    iget-object v0, v0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2$4;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;

    invoke-static {v0}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;->access$500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
