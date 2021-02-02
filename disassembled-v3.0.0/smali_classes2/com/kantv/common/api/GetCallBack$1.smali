.class Lcom/kantv/common/api/GetCallBack$1;
.super Ljava/lang/Object;
.source "GetCallBack.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/common/api/GetCallBack;->initDialogShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/common/api/GetCallBack;


# direct methods
.method constructor <init>(Lcom/kantv/common/api/GetCallBack;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/kantv/common/api/GetCallBack$1;->this$0:Lcom/kantv/common/api/GetCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 61
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 62
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
