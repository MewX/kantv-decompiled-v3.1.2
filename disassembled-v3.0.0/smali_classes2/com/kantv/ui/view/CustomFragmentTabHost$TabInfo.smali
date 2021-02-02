.class final Lcom/kantv/ui/view/CustomFragmentTabHost$TabInfo;
.super Ljava/lang/Object;
.source "CustomFragmentTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/view/CustomFragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field final args:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final clss:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field fragment:Landroid/support/v4/app/Fragment;

.field final tag:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/kantv/ui/view/CustomFragmentTabHost$TabInfo;->tag:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/kantv/ui/view/CustomFragmentTabHost$TabInfo;->clss:Ljava/lang/Class;

    .line 51
    iput-object p3, p0, Lcom/kantv/ui/view/CustomFragmentTabHost$TabInfo;->args:Landroid/os/Bundle;

    return-void
.end method
