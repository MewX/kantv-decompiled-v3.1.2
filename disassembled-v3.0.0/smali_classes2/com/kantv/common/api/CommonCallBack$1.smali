.class Lcom/kantv/common/api/CommonCallBack$1;
.super Ljava/lang/Object;
.source "CommonCallBack.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/common/api/CommonCallBack;->initDialogShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/common/api/CommonCallBack;


# direct methods
.method constructor <init>(Lcom/kantv/common/api/CommonCallBack;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/kantv/common/api/CommonCallBack$1;->this$0:Lcom/kantv/common/api/CommonCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 78
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 79
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
