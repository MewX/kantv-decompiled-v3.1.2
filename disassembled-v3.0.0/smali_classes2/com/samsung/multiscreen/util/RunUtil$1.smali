.class final Lcom/samsung/multiscreen/util/RunUtil$1;
.super Ljava/lang/Object;
.source "RunUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/util/RunUtil;->runOnUiDelayed(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/samsung/multiscreen/util/RunUtil$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/multiscreen/util/RunUtil$1;->val$runnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method
