.class public final Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$BlacklistCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$BlacklistCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$BlacklistCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private allowedPids_:Lcom/google/protobuf/LazyStringList;

.field private bitField0_:I

.field private blockedCids_:Lcom/google/protobuf/LazyStringList;

.field private blockedPids_:Lcom/google/protobuf/LazyStringList;

.field private failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$ErrorCommand;",
            "Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private failedPids_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$ErrorCommand;",
            ">;"
        }
    .end annotation
.end field

.field private limit_:I

.field private n_:Ljava/lang/Object;

.field private next_:Ljava/lang/Object;

.field private s_:Ljava/lang/Object;

.field private srcCid_:Ljava/lang/Object;

.field private srcPid_:Ljava/lang/Object;

.field private t_:J

.field private toCids_:Lcom/google/protobuf/LazyStringList;

.field private toPids_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 36803
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 37118
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcCid_:Ljava/lang/Object;

    .line 37194
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    .line 37287
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcPid_:Ljava/lang/Object;

    .line 37363
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    .line 37488
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->next_:Ljava/lang/Object;

    .line 37564
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    .line 37657
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    .line 37750
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    .line 37844
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    .line 38115
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->n_:Ljava/lang/Object;

    .line 38191
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->s_:Ljava/lang/Object;

    .line 36804
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 36786
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 36809
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 37118
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcCid_:Ljava/lang/Object;

    .line 37194
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    .line 37287
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcPid_:Ljava/lang/Object;

    .line 37363
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    .line 37488
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->next_:Ljava/lang/Object;

    .line 37564
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    .line 37657
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    .line 37750
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    .line 37844
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    .line 38115
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->n_:Ljava/lang/Object;

    .line 38191
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->s_:Ljava/lang/Object;

    .line 36810
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 36786
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureAllowedPidsIsMutable()V
    .locals 3

    .line 37752
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 37753
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    .line 37754
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureBlockedCidsIsMutable()V
    .locals 3

    .line 37659
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 37660
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    .line 37661
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureBlockedPidsIsMutable()V
    .locals 3

    .line 37566
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 37567
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    .line 37568
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureFailedPidsIsMutable()V
    .locals 3

    .line 37846
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 37847
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    .line 37848
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureToCidsIsMutable()V
    .locals 3

    .line 37365
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 37366
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    .line 37367
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureToPidsIsMutable()V
    .locals 3

    .line 37196
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 37197
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    .line 37198
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 36792
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$38500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getFailedPidsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$ErrorCommand;",
            "Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;",
            "Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 38071
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 38072
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    iget v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/16 v3, 0x200

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 38076
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 38077
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 38078
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    .line 38080
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 36814
    invoke-static {}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$38900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36815
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->getFailedPidsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllAllowedPids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;"
        }
    .end annotation

    .line 37814
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureAllowedPidsIsMutable()V

    .line 37815
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 37817
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllBlockedCids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;"
        }
    .end annotation

    .line 37721
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureBlockedCidsIsMutable()V

    .line 37722
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 37724
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllBlockedPids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;"
        }
    .end annotation

    .line 37628
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureBlockedPidsIsMutable()V

    .line 37629
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 37631
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllFailedPids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/avos/avoscloud/Messages$ErrorCommand;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;"
        }
    .end annotation

    .line 37982
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 37983
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 37984
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 37986
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    goto :goto_0

    .line 37988
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllToCids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;"
        }
    .end annotation

    .line 37427
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureToCidsIsMutable()V

    .line 37428
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 37430
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllToPids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;"
        }
    .end annotation

    .line 37258
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureToPidsIsMutable()V

    .line 37259
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 37261
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllowedPids(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37804
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureAllowedPidsIsMutable()V

    .line 37805
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 37806
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37802
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addAllowedPidsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37837
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureAllowedPidsIsMutable()V

    .line 37838
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 37839
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37835
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addBlockedCids(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37711
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureBlockedCidsIsMutable()V

    .line 37712
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 37713
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37709
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addBlockedCidsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37744
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureBlockedCidsIsMutable()V

    .line 37745
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 37746
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37742
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addBlockedPids(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37618
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureBlockedPidsIsMutable()V

    .line 37619
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 37620
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37616
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addBlockedPidsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37651
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureBlockedPidsIsMutable()V

    .line 37652
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 37653
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37649
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addFailedPids(ILcom/avos/avoscloud/Messages$ErrorCommand$Builder;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 37968
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 37969
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 37970
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37971
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    goto :goto_0

    .line 37973
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFailedPids(ILcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 37937
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 37941
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 37942
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37943
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    goto :goto_0

    .line 37939
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 37945
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFailedPids(Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 37954
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 37955
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 37956
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37957
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    goto :goto_0

    .line 37959
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFailedPids(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 37920
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 37924
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 37925
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37926
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    goto :goto_0

    .line 37922
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 37928
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFailedPidsBuilder()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 2

    .line 38050
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->getFailedPidsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 38051
    invoke-static {}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v1

    .line 38050
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    return-object v0
.end method

.method public addFailedPidsBuilder(I)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 2

    .line 38058
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->getFailedPidsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 38059
    invoke-static {}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v1

    .line 38058
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 0

    .line 36965
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addToCids(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37417
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureToCidsIsMutable()V

    .line 37418
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 37419
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37415
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addToCidsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37450
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureToCidsIsMutable()V

    .line 37451
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 37452
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37448
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addToPids(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37248
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureToPidsIsMutable()V

    .line 37249
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 37250
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37246
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addToPidsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37281
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureToPidsIsMutable()V

    .line 37282
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 37283
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37279
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 2

    .line 36863
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    .line 36864
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 36865
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->build()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->build()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 6

    .line 36871
    new-instance v0, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 36872
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 36877
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcCid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39102(Lcom/avos/avoscloud/Messages$BlacklistCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36878
    iget v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    .line 36879
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    .line 36880
    iget v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36882
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39202(Lcom/avos/avoscloud/Messages$BlacklistCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    .line 36886
    :cond_2
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcPid_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39302(Lcom/avos/avoscloud/Messages$BlacklistCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36887
    iget v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_3

    .line 36888
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    .line 36889
    iget v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36891
    :cond_3
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39402(Lcom/avos/avoscloud/Messages$BlacklistCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x4

    .line 36895
    :cond_4
    iget v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->limit_:I

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39502(Lcom/avos/avoscloud/Messages$BlacklistCommand;I)I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x8

    .line 36899
    :cond_5
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->next_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39602(Lcom/avos/avoscloud/Messages$BlacklistCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36900
    iget v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    .line 36901
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    .line 36902
    iget v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36904
    :cond_6
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39702(Lcom/avos/avoscloud/Messages$BlacklistCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 36905
    iget v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/16 v4, 0x80

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    .line 36906
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    .line 36907
    iget v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36909
    :cond_7
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39802(Lcom/avos/avoscloud/Messages$BlacklistCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 36910
    iget v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    .line 36911
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    .line 36912
    iget v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36914
    :cond_8
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39902(Lcom/avos/avoscloud/Messages$BlacklistCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 36915
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_a

    .line 36916
    iget v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/16 v4, 0x200

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    .line 36917
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    .line 36918
    iget v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36920
    :cond_9
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$40002(Lcom/avos/avoscloud/Messages$BlacklistCommand;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 36922
    :cond_a
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$40002(Lcom/avos/avoscloud/Messages$BlacklistCommand;Ljava/util/List;)Ljava/util/List;

    :goto_1
    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_b

    or-int/lit8 v3, v3, 0x10

    .line 36927
    :cond_b
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->t_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$40102(Lcom/avos/avoscloud/Messages$BlacklistCommand;J)J

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_c

    or-int/lit8 v3, v3, 0x20

    .line 36931
    :cond_c
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->n_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$40202(Lcom/avos/avoscloud/Messages$BlacklistCommand;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    or-int/lit8 v3, v3, 0x40

    .line 36935
    :cond_d
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->s_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$40302(Lcom/avos/avoscloud/Messages$BlacklistCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36936
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$40402(Lcom/avos/avoscloud/Messages$BlacklistCommand;I)I

    .line 36937
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 3

    .line 36819
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 36820
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcCid_:Ljava/lang/Object;

    .line 36821
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36822
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    .line 36823
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36824
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcPid_:Ljava/lang/Object;

    .line 36825
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36826
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    .line 36827
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 36828
    iput v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->limit_:I

    .line 36829
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36830
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->next_:Ljava/lang/Object;

    .line 36831
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36832
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    .line 36833
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36834
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    .line 36835
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36836
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    .line 36837
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36838
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_0

    .line 36839
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    .line 36840
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 36842
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    const-wide/16 v1, 0x0

    .line 36844
    iput-wide v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->t_:J

    .line 36845
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36846
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->n_:Ljava/lang/Object;

    .line 36847
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x801

    iput v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36848
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->s_:Ljava/lang/Object;

    .line 36849
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAllowedPids()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 37824
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    .line 37825
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37826
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBlockedCids()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 37731
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    .line 37732
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37733
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBlockedPids()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 37638
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    .line 37639
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37640
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFailedPids()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 37996
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 37997
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    .line 37998
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37999
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    goto :goto_0

    .line 38001
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 0

    .line 36951
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearLimit()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 37482
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 37483
    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->limit_:I

    .line 37484
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearN()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 38172
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 38173
    invoke-static {}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->n_:Ljava/lang/Object;

    .line 38174
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNext()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 37545
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37546
    invoke-static {}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getNext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->next_:Ljava/lang/Object;

    .line 37547
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 0

    .line 36955
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearS()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 38248
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 38249
    invoke-static {}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->s_:Ljava/lang/Object;

    .line 38250
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSrcCid()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 37175
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37176
    invoke-static {}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getSrcCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcCid_:Ljava/lang/Object;

    .line 37177
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSrcPid()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 37344
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37345
    invoke-static {}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getSrcPid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcPid_:Ljava/lang/Object;

    .line 37346
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearT()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 2

    .line 38109
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 38110
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->t_:J

    .line 38111
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearToCids()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 37437
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    .line 37438
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37439
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearToPids()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 37268
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    .line 37269
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37270
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 36942
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedPids(I)Ljava/lang/String;
    .locals 1

    .line 37774
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAllowedPidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 37781
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAllowedPidsCount()I
    .locals 1

    .line 37768
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 37762
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAllowedPidsList()Ljava/util/List;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getBlockedCids(I)Ljava/lang/String;
    .locals 1

    .line 37681
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getBlockedCidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 37688
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getBlockedCidsCount()I
    .locals 1

    .line 37675
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getBlockedCidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 37669
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBlockedCidsList()Ljava/util/List;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->getBlockedCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getBlockedPids(I)Ljava/lang/String;
    .locals 1

    .line 37588
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getBlockedPidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 37595
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getBlockedPidsCount()I
    .locals 1

    .line 37582
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getBlockedPidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 37576
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBlockedPidsList()Ljava/util/List;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->getBlockedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$BlacklistCommand;
    .locals 1

    .line 36859
    invoke-static {}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 36855
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$38500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFailedPids(I)Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1

    .line 37879
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 37880
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p1

    .line 37882
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p1
.end method

.method public getFailedPidsBuilder(I)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    .line 38023
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->getFailedPidsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    return-object p1
.end method

.method public getFailedPidsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;",
            ">;"
        }
    .end annotation

    .line 38066
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->getFailedPidsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFailedPidsCount()I
    .locals 1

    .line 37869
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 37870
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 37872
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getFailedPidsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$ErrorCommand;",
            ">;"
        }
    .end annotation

    .line 37859
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 37860
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 37862
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFailedPidsOrBuilder(I)Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;
    .locals 1

    .line 38030
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 38031
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;

    return-object p1

    .line 38032
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;

    return-object p1
.end method

.method public getFailedPidsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;",
            ">;"
        }
    .end annotation

    .line 38040
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 38041
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 38043
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 37467
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->limit_:I

    return v0
.end method

.method public getN()Ljava/lang/String;
    .locals 2

    .line 38126
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->n_:Ljava/lang/Object;

    .line 38127
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 38128
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 38130
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 38131
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38132
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->n_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 38136
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 38144
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->n_:Ljava/lang/Object;

    .line 38145
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 38146
    check-cast v0, Ljava/lang/String;

    .line 38147
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 38149
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->n_:Ljava/lang/Object;

    return-object v0

    .line 38152
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 2

    .line 37499
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->next_:Ljava/lang/Object;

    .line 37500
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 37501
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 37503
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37504
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37505
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->next_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 37509
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 37517
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->next_:Ljava/lang/Object;

    .line 37518
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 37519
    check-cast v0, Ljava/lang/String;

    .line 37520
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 37522
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->next_:Ljava/lang/Object;

    return-object v0

    .line 37525
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 2

    .line 38202
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->s_:Ljava/lang/Object;

    .line 38203
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 38204
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 38206
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 38207
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38208
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->s_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 38212
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 38220
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->s_:Ljava/lang/Object;

    .line 38221
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 38222
    check-cast v0, Ljava/lang/String;

    .line 38223
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 38225
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->s_:Ljava/lang/Object;

    return-object v0

    .line 38228
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSrcCid()Ljava/lang/String;
    .locals 2

    .line 37129
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcCid_:Ljava/lang/Object;

    .line 37130
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 37131
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 37133
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37134
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37135
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcCid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 37139
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSrcCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 37147
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcCid_:Ljava/lang/Object;

    .line 37148
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 37149
    check-cast v0, Ljava/lang/String;

    .line 37150
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 37152
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcCid_:Ljava/lang/Object;

    return-object v0

    .line 37155
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSrcPid()Ljava/lang/String;
    .locals 2

    .line 37298
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcPid_:Ljava/lang/Object;

    .line 37299
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 37300
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 37302
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37303
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37304
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcPid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 37308
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSrcPidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 37316
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcPid_:Ljava/lang/Object;

    .line 37317
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 37318
    check-cast v0, Ljava/lang/String;

    .line 37319
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 37321
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcPid_:Ljava/lang/Object;

    return-object v0

    .line 37324
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getT()J
    .locals 2

    .line 38094
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->t_:J

    return-wide v0
.end method

.method public getToCids(I)Ljava/lang/String;
    .locals 1

    .line 37387
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getToCidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 37394
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getToCidsCount()I
    .locals 1

    .line 37381
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getToCidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 37375
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getToCidsList()Ljava/util/List;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->getToCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getToPids(I)Ljava/lang/String;
    .locals 1

    .line 37218
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getToPidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 37225
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getToPidsCount()I
    .locals 1

    .line 37212
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getToPidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 37206
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getToPidsList()Ljava/util/List;
    .locals 1

    .line 36786
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->getToPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public hasLimit()Z
    .locals 2

    .line 37461
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasN()Z
    .locals 2

    .line 38120
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 37493
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasS()Z
    .locals 2

    .line 38196
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSrcCid()Z
    .locals 2

    .line 37123
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSrcPid()Z
    .locals 2

    .line 37292
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasT()Z
    .locals 2

    .line 38088
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 36797
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$38600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    .line 36798
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37091
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->getFailedPidsCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 37092
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->getFailedPids(I)Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$ErrorCommand;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 2

    .line 36977
    invoke-static {}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$BlacklistCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 36978
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasSrcCid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36979
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36980
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39100(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcCid_:Ljava/lang/Object;

    .line 36981
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    .line 36983
    :cond_1
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39200(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 36984
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36985
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39200(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    .line 36986
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 36988
    :cond_2
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureToPidsIsMutable()V

    .line 36989
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39200(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 36991
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    .line 36993
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasSrcPid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36994
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 36995
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39300(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcPid_:Ljava/lang/Object;

    .line 36996
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    .line 36998
    :cond_4
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39400(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 36999
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37000
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39400(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    .line 37001
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    goto :goto_1

    .line 37003
    :cond_5
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureToCidsIsMutable()V

    .line 37004
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39400(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 37006
    :goto_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    .line 37008
    :cond_6
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 37009
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getLimit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->setLimit(I)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    .line 37011
    :cond_7
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 37012
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37013
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39600(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->next_:Ljava/lang/Object;

    .line 37014
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    .line 37016
    :cond_8
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39700(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 37017
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 37018
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39700(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    .line 37019
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    goto :goto_2

    .line 37021
    :cond_9
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureBlockedPidsIsMutable()V

    .line 37022
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39700(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 37024
    :goto_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    .line 37026
    :cond_a
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39800(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 37027
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37028
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39800(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    .line 37029
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    goto :goto_3

    .line 37031
    :cond_b
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureBlockedCidsIsMutable()V

    .line 37032
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39800(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 37034
    :goto_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    .line 37036
    :cond_c
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39900(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 37037
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37038
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39900(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    .line 37039
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    goto :goto_4

    .line 37041
    :cond_d
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureAllowedPidsIsMutable()V

    .line 37042
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$39900(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 37044
    :goto_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    .line 37046
    :cond_e
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_10

    .line 37047
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$40000(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 37048
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 37049
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$40000(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    .line 37050
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    goto :goto_5

    .line 37052
    :cond_f
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 37053
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$40000(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37055
    :goto_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    goto :goto_6

    .line 37058
    :cond_10
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$40000(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 37059
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 37060
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 37061
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 37062
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$40000(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    .line 37063
    iget v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37065
    invoke-static {}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$40500()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 37066
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->getFailedPidsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_11
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_6

    .line 37068
    :cond_12
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$40000(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 37072
    :cond_13
    :goto_6
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasT()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 37073
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->getT()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->setT(J)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    .line 37075
    :cond_14
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasN()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 37076
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37077
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$40200(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->n_:Ljava/lang/Object;

    .line 37078
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    .line 37080
    :cond_15
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->hasS()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 37081
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37082
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$40300(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->s_:Ljava/lang/Object;

    .line 37083
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    .line 37085
    :cond_16
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand;->access$40600(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    .line 37086
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 37105
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$BlacklistCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$BlacklistCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 37111
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37107
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$BlacklistCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37108
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 37111
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 36968
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    if-eqz v0, :cond_0

    .line 36969
    check-cast p1, Lcom/avos/avoscloud/Messages$BlacklistCommand;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$BlacklistCommand;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1

    .line 36971
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36786
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36786
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36786
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36786
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 0

    .line 38273
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeFailedPids(I)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 38009
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 38010
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 38011
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 38012
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    goto :goto_0

    .line 38014
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setAllowedPids(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 37791
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureAllowedPidsIsMutable()V

    .line 37792
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37793
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37789
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setBlockedCids(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 37698
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureBlockedCidsIsMutable()V

    .line 37699
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37696
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setBlockedPids(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 37605
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureBlockedPidsIsMutable()V

    .line 37606
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->blockedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37607
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37603
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setFailedPids(ILcom/avos/avoscloud/Messages$ErrorCommand$Builder;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 37907
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 37908
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 37909
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37910
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    goto :goto_0

    .line 37912
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFailedPids(ILcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 37890
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 37894
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 37895
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37896
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    goto :goto_0

    .line 37892
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 37898
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 0

    .line 36947
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLimit(I)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 37473
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37474
    iput p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->limit_:I

    .line 37475
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setN(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 38163
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 38164
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->n_:Ljava/lang/Object;

    .line 38165
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 38161
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setNBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 38185
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 38186
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->n_:Ljava/lang/Object;

    .line 38187
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 38183
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setNext(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37536
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37537
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->next_:Ljava/lang/Object;

    .line 37538
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37534
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setNextBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37558
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37559
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->next_:Ljava/lang/Object;

    .line 37560
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37556
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 0

    .line 36960
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setS(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 38239
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 38240
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->s_:Ljava/lang/Object;

    .line 38241
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 38237
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 38261
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 38262
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->s_:Ljava/lang/Object;

    .line 38263
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 38259
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSrcCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37166
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37167
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcCid_:Ljava/lang/Object;

    .line 37168
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37164
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSrcCidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37188
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37189
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcCid_:Ljava/lang/Object;

    .line 37190
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37186
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSrcPid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37335
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37336
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcPid_:Ljava/lang/Object;

    .line 37337
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37333
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSrcPidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37357
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 37358
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->srcPid_:Ljava/lang/Object;

    .line 37359
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37355
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setT(J)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    .line 38100
    iget v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->bitField0_:I

    .line 38101
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->t_:J

    .line 38102
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setToCids(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 37404
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureToCidsIsMutable()V

    .line 37405
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toCids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37406
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37402
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setToPids(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 37235
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->ensureToPidsIsMutable()V

    .line 37236
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->toPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37237
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->onChanged()V

    return-object p0

    .line 37233
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;
    .locals 0

    .line 38268
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 36786
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$BlacklistCommand$Builder;

    move-result-object p1

    return-object p1
.end method
