.class public abstract Lcom/transitionseverywhere/PathMotion;
.super Ljava/lang/Object;
.source "PathMotion.java"


# static fields
.field public static final STRAIGHT_PATH_MOTION:Lcom/transitionseverywhere/PathMotion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/transitionseverywhere/PathMotion$1;

    invoke-direct {v0}, Lcom/transitionseverywhere/PathMotion$1;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/PathMotion;->STRAIGHT_PATH_MOTION:Lcom/transitionseverywhere/PathMotion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPath(FFFF)Landroid/graphics/Path;
.end method
