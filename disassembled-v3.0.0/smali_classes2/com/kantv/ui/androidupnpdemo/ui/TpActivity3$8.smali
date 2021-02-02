.class Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$8;
.super Ljava/lang/Object;
.source "TpActivity3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;


# direct methods
.method constructor <init>(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$8;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 355
    invoke-static {}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u70b9\u51fb\u4e86\u8c37\u6b4c\u6295\u5c4f\u8bbe\u5907333333333"

    invoke-static {p1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object p1, p0, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3$8;->this$0:Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;

    invoke-static {p1}, Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;->access$500(Lcom/kantv/ui/androidupnpdemo/ui/TpActivity3;)V

    return-void
.end method
