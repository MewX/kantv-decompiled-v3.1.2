.class public final synthetic Lcom/kantv/ui/utils/-$$Lambda$LocationUtils$sKJCJpvrKuF1iRgm3L8vK4gmZ5s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/kantv/ui/utils/LocationUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/kantv/ui/utils/LocationUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kantv/ui/utils/-$$Lambda$LocationUtils$sKJCJpvrKuF1iRgm3L8vK4gmZ5s;->f$0:Lcom/kantv/ui/utils/LocationUtils;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/kantv/ui/utils/-$$Lambda$LocationUtils$sKJCJpvrKuF1iRgm3L8vK4gmZ5s;->f$0:Lcom/kantv/ui/utils/LocationUtils;

    invoke-virtual {v0}, Lcom/kantv/ui/utils/LocationUtils;->lambda$getLocation$0$LocationUtils()V

    return-void
.end method
