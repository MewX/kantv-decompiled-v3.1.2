.class public Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory$Support;
.super Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;
.source "ErrorDialogFragmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Support"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory<",
        "Landroid/support/v4/app/Fragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/greenrobot/eventbus/util/ErrorDialogConfig;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory;-><init>(Lorg/greenrobot/eventbus/util/ErrorDialogConfig;)V

    return-void
.end method


# virtual methods
.method protected createErrorFragment(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 93
    new-instance p1, Lorg/greenrobot/eventbus/util/ErrorDialogFragments$Support;

    invoke-direct {p1}, Lorg/greenrobot/eventbus/util/ErrorDialogFragments$Support;-><init>()V

    .line 94
    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/util/ErrorDialogFragments$Support;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method protected bridge synthetic createErrorFragment(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/eventbus/util/ErrorDialogFragmentFactory$Support;->createErrorFragment(Lorg/greenrobot/eventbus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method
