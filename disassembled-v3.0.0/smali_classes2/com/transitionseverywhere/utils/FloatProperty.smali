.class public abstract Lcom/transitionseverywhere/utils/FloatProperty;
.super Landroid/util/FloatProperty;
.source "FloatProperty.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi, Override"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/FloatProperty<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/utils/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
