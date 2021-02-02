.class public Lcom/kantv/ui/androidupnpdemo/service/SystemService$LocalBinder;
.super Landroid/os/Binder;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/androidupnpdemo/service/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/androidupnpdemo/service/SystemService;


# direct methods
.method public constructor <init>(Lcom/kantv/ui/androidupnpdemo/service/SystemService;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/kantv/ui/androidupnpdemo/service/SystemService$LocalBinder;->this$0:Lcom/kantv/ui/androidupnpdemo/service/SystemService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/kantv/ui/androidupnpdemo/service/SystemService;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/kantv/ui/androidupnpdemo/service/SystemService$LocalBinder;->this$0:Lcom/kantv/ui/androidupnpdemo/service/SystemService;

    return-object v0
.end method
