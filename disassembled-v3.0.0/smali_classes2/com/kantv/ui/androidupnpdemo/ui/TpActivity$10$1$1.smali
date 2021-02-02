.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1$1;
.super Ljava/lang/Object;
.source "TpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1$1;->this$2:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 425
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u70b9\u51fb\u4e86\u8c37\u6b4c\u6295\u5c4f\u8bbe\u5907333333333"

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
