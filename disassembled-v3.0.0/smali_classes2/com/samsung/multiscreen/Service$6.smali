.class final Lcom/samsung/multiscreen/Service$6;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Service;->WakeOnWirelessAndConnect(Ljava/lang/String;Landroid/net/Uri;ILcom/samsung/multiscreen/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 471
    invoke-static {v0}, Lcom/samsung/multiscreen/Service;->access$202(Z)Z

    return-void
.end method
