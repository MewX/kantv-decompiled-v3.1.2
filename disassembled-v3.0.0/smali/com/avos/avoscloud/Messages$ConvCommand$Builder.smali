.class public final Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$ConvCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$ConvCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$ConvCommand$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$ConvCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private allowedPids_:Lcom/google/protobuf/LazyStringList;

.field private attrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

.field private bitField0_:I

.field private bitField1_:I

.field private cdate_:Ljava/lang/Object;

.field private cid_:Ljava/lang/Object;

.field private cids_:Lcom/google/protobuf/LazyStringList;

.field private count_:I

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

.field private flag_:I

.field private infoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$ConvMemberInfo;",
            "Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;",
            "Lcom/avos/avoscloud/Messages$ConvMemberInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

.field private initBy_:Ljava/lang/Object;

.field private limit_:I

.field private m_:Lcom/google/protobuf/LazyStringList;

.field private maxAckTimestamp_:J

.field private maxReadTimestamp_:J

.field private maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$MaxReadTuple;",
            "Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;",
            "Lcom/avos/avoscloud/Messages$MaxReadTupleOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private maxReadTuples_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$MaxReadTuple;",
            ">;"
        }
    .end annotation
.end field

.field private n_:Ljava/lang/Object;

.field private next_:Ljava/lang/Object;

.field private queryAllMembers_:Z

.field private resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

.field private s_:Ljava/lang/Object;

.field private skip_:I

.field private sort_:Ljava/lang/Object;

.field private statusPub_:Z

.field private statusSub_:Z

.field private statusTTL_:I

.field private t_:J

.field private targetClientId_:Ljava/lang/Object;

.field private tempConvIds_:Lcom/google/protobuf/LazyStringList;

.field private tempConvTTL_:I

.field private tempConv_:Z

.field private transient_:Z

.field private udate_:Ljava/lang/Object;

.field private uniqueId_:Ljava/lang/Object;

.field private unique_:Z

.field private whereBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 19091
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 19692
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    const-string v0, ""

    .line 19849
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cid_:Ljava/lang/Object;

    .line 19925
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cdate_:Ljava/lang/Object;

    .line 20001
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->initBy_:Ljava/lang/Object;

    .line 20077
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->sort_:Ljava/lang/Object;

    .line 20281
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->udate_:Ljava/lang/Object;

    .line 20389
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->n_:Ljava/lang/Object;

    .line 20465
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->s_:Ljava/lang/Object;

    .line 20637
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->uniqueId_:Ljava/lang/Object;

    .line 20713
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->targetClientId_:Ljava/lang/Object;

    .line 20886
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    .line 21125
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    const/4 v1, 0x0

    .line 21218
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    .line 21400
    sget-object v2, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    .line 21493
    sget-object v2, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    .line 21587
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    .line 21826
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->next_:Ljava/lang/Object;

    .line 21926
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22044
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22162
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 19092
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 19074
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 2

    .line 19097
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 19692
    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    const-string p1, ""

    .line 19849
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cid_:Ljava/lang/Object;

    .line 19925
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cdate_:Ljava/lang/Object;

    .line 20001
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->initBy_:Ljava/lang/Object;

    .line 20077
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->sort_:Ljava/lang/Object;

    .line 20281
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->udate_:Ljava/lang/Object;

    .line 20389
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->n_:Ljava/lang/Object;

    .line 20465
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->s_:Ljava/lang/Object;

    .line 20637
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->uniqueId_:Ljava/lang/Object;

    .line 20713
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->targetClientId_:Ljava/lang/Object;

    .line 20886
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    .line 21125
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    const/4 v0, 0x0

    .line 21218
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    .line 21400
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    .line 21493
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    .line 21587
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    .line 21826
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->next_:Ljava/lang/Object;

    .line 21926
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22044
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22162
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 19098
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 19074
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureAllowedPidsIsMutable()V
    .locals 3

    .line 21495
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 21496
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    .line 21497
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureCidsIsMutable()V
    .locals 3

    .line 21127
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 21128
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 21129
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureFailedPidsIsMutable()V
    .locals 3

    .line 21589
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 21590
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    .line 21591
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMIsMutable()V
    .locals 3

    .line 19694
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 19695
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    .line 19696
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMaxReadTuplesIsMutable()V
    .locals 3

    .line 20888
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 20889
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    .line 20890
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTempConvIdsIsMutable()V
    .locals 3

    .line 21402
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 21403
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    .line 21404
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getAttrFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;",
            ">;"
        }
    .end annotation

    .line 22269
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22270
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 22272
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getAttr()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    .line 22273
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 22274
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 22275
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22277
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 19080
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$17700()Lcom/google/protobuf/Descriptors$Descriptor;

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

    .line 21814
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 21815
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 21819
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 21820
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 21821
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    .line 21823
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$ConvMemberInfo;",
            "Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;",
            "Lcom/avos/avoscloud/Messages$ConvMemberInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 21325
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21326
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 21328
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getInfo()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v1

    .line 21329
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 21330
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 21331
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    .line 21333
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getMaxReadTuplesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$MaxReadTuple;",
            "Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;",
            "Lcom/avos/avoscloud/Messages$MaxReadTupleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 21113
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 21114
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 21118
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 21119
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 21120
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    .line 21122
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getResultsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;",
            ">;"
        }
    .end annotation

    .line 22033
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22034
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 22036
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    .line 22037
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 22038
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 22039
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22041
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getWhereFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;",
            "Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;",
            ">;"
        }
    .end annotation

    .line 22151
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->whereBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22152
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 22154
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getWhere()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    .line 22155
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 22156
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->whereBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 22157
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22159
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->whereBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 19102
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$18100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19103
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getMaxReadTuplesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 19104
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 19105
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getFailedPidsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 19106
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getResultsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 19107
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getWhereFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 19108
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getAttrFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllAllowedPids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$ConvCommand$Builder;"
        }
    .end annotation

    .line 21557
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureAllowedPidsIsMutable()V

    .line 21558
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 21560
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllCids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$ConvCommand$Builder;"
        }
    .end annotation

    .line 21189
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureCidsIsMutable()V

    .line 21190
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 21192
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllFailedPids(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/avos/avoscloud/Messages$ErrorCommand;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$ConvCommand$Builder;"
        }
    .end annotation

    .line 21725
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21726
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 21727
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 21729
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21731
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllM(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$ConvCommand$Builder;"
        }
    .end annotation

    .line 19756
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureMIsMutable()V

    .line 19757
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 19759
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllMaxReadTuples(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/avos/avoscloud/Messages$MaxReadTuple;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$ConvCommand$Builder;"
        }
    .end annotation

    .line 21024
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21025
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureMaxReadTuplesIsMutable()V

    .line 21026
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 21028
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21030
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllTempConvIds(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$ConvCommand$Builder;"
        }
    .end annotation

    .line 21464
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureTempConvIdsIsMutable()V

    .line 21465
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 21467
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllowedPids(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 21547
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureAllowedPidsIsMutable()V

    .line 21548
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 21549
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 21545
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addAllowedPidsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 21580
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureAllowedPidsIsMutable()V

    .line 21581
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 21582
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 21578
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addCids(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 21179
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureCidsIsMutable()V

    .line 21180
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 21181
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 21177
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addCidsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 21212
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureCidsIsMutable()V

    .line 21213
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 21214
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 21210
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addFailedPids(ILcom/avos/avoscloud/Messages$ErrorCommand$Builder;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 21711
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21712
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 21713
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21714
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21716
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFailedPids(ILcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 21680
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 21684
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 21685
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21686
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21682
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 21688
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFailedPids(Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 21697
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21698
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 21699
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21700
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21702
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFailedPids(Lcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 21663
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 21667
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 21668
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21669
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21665
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 21671
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFailedPidsBuilder()Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 2

    .line 21793
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getFailedPidsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 21794
    invoke-static {}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v1

    .line 21793
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    return-object v0
.end method

.method public addFailedPidsBuilder(I)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 2

    .line 21801
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getFailedPidsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 21802
    invoke-static {}, Lcom/avos/avoscloud/Messages$ErrorCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v1

    .line 21801
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;

    return-object p1
.end method

.method public addM(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 19746
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureMIsMutable()V

    .line 19747
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 19748
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 19744
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addMBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 19779
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureMIsMutable()V

    .line 19780
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 19781
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 19777
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addMaxReadTuples(ILcom/avos/avoscloud/Messages$MaxReadTuple$Builder;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 21010
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21011
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureMaxReadTuplesIsMutable()V

    .line 21012
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21013
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21015
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMaxReadTuples(ILcom/avos/avoscloud/Messages$MaxReadTuple;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20979
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 20983
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureMaxReadTuplesIsMutable()V

    .line 20984
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20985
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 20981
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 20987
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMaxReadTuples(Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20996
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20997
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureMaxReadTuplesIsMutable()V

    .line 20998
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20999
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21001
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMaxReadTuples(Lcom/avos/avoscloud/Messages$MaxReadTuple;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20962
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 20966
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureMaxReadTuplesIsMutable()V

    .line 20967
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20968
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 20964
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 20970
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMaxReadTuplesBuilder()Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 2

    .line 21092
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getMaxReadTuplesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 21093
    invoke-static {}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object v1

    .line 21092
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    return-object v0
.end method

.method public addMaxReadTuplesBuilder(I)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 2

    .line 21100
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getMaxReadTuplesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 21101
    invoke-static {}, Lcom/avos/avoscloud/Messages$MaxReadTuple;->getDefaultInstance()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object v1

    .line 21100
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 0

    .line 19431
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addTempConvIds(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 21454
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureTempConvIdsIsMutable()V

    .line 21455
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 21456
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 21452
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addTempConvIdsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 21487
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureTempConvIdsIsMutable()V

    .line 21488
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 21489
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 21485
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 2

    .line 19220
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    .line 19221
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 19222
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 10

    .line 19228
    new-instance v0, Lcom/avos/avoscloud/Messages$ConvCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 19229
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19230
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 19233
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v3

    iput-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    .line 19234
    iget v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19236
    :cond_0
    iget-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$18302(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    and-int/lit8 v3, v1, 0x2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 19240
    :goto_0
    iget-boolean v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->transient_:Z

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$18402(Lcom/avos/avoscloud/Messages$ConvCommand;Z)Z

    and-int/lit8 v6, v1, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    or-int/lit8 v3, v3, 0x2

    .line 19244
    :cond_2
    iget-boolean v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->unique_:Z

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$18502(Lcom/avos/avoscloud/Messages$ConvCommand;Z)Z

    and-int/lit8 v6, v1, 0x8

    const/16 v8, 0x8

    if-ne v6, v8, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 19248
    :cond_3
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cid_:Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$18602(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v6, v1, 0x10

    const/16 v8, 0x10

    if-ne v6, v8, :cond_4

    or-int/lit8 v3, v3, 0x8

    .line 19252
    :cond_4
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cdate_:Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$18702(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v6, v1, 0x20

    const/16 v8, 0x20

    if-ne v6, v8, :cond_5

    or-int/lit8 v3, v3, 0x10

    .line 19256
    :cond_5
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->initBy_:Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$18802(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v6, v1, 0x40

    const/16 v8, 0x40

    if-ne v6, v8, :cond_6

    or-int/lit8 v3, v3, 0x20

    .line 19260
    :cond_6
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->sort_:Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$18902(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v6, v1, 0x80

    const/16 v8, 0x80

    if-ne v6, v8, :cond_7

    or-int/lit8 v3, v3, 0x40

    .line 19264
    :cond_7
    iget v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->limit_:I

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$19002(Lcom/avos/avoscloud/Messages$ConvCommand;I)I

    and-int/lit16 v6, v1, 0x100

    const/16 v8, 0x100

    if-ne v6, v8, :cond_8

    or-int/lit16 v3, v3, 0x80

    .line 19268
    :cond_8
    iget v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->skip_:I

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$19102(Lcom/avos/avoscloud/Messages$ConvCommand;I)I

    and-int/lit16 v6, v1, 0x200

    const/16 v8, 0x200

    if-ne v6, v8, :cond_9

    or-int/lit16 v3, v3, 0x100

    .line 19272
    :cond_9
    iget v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->flag_:I

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$19202(Lcom/avos/avoscloud/Messages$ConvCommand;I)I

    and-int/lit16 v6, v1, 0x400

    const/16 v8, 0x400

    if-ne v6, v8, :cond_a

    or-int/lit16 v3, v3, 0x200

    .line 19276
    :cond_a
    iget v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->count_:I

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$19302(Lcom/avos/avoscloud/Messages$ConvCommand;I)I

    and-int/lit16 v6, v1, 0x800

    const/16 v8, 0x800

    if-ne v6, v8, :cond_b

    or-int/lit16 v3, v3, 0x400

    .line 19280
    :cond_b
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->udate_:Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$19402(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v6, v1, 0x1000

    const/16 v8, 0x1000

    if-ne v6, v8, :cond_c

    or-int/lit16 v3, v3, 0x800

    .line 19284
    :cond_c
    iget-wide v8, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->t_:J

    invoke-static {v0, v8, v9}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$19502(Lcom/avos/avoscloud/Messages$ConvCommand;J)J

    and-int/lit16 v6, v1, 0x2000

    const/16 v8, 0x2000

    if-ne v6, v8, :cond_d

    or-int/lit16 v3, v3, 0x1000

    .line 19288
    :cond_d
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->n_:Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$19602(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v6, v1, 0x4000

    const/16 v8, 0x4000

    if-ne v6, v8, :cond_e

    or-int/lit16 v3, v3, 0x2000

    .line 19292
    :cond_e
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->s_:Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$19702(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;

    const v6, 0x8000

    and-int/2addr v6, v1

    const v8, 0x8000

    if-ne v6, v8, :cond_f

    or-int/lit16 v3, v3, 0x4000

    .line 19296
    :cond_f
    iget-boolean v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->statusSub_:Z

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$19802(Lcom/avos/avoscloud/Messages$ConvCommand;Z)Z

    const/high16 v6, 0x10000

    and-int/2addr v6, v1

    const/high16 v8, 0x10000

    if-ne v6, v8, :cond_10

    const v6, 0x8000

    or-int/2addr v3, v6

    .line 19300
    :cond_10
    iget-boolean v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->statusPub_:Z

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$19902(Lcom/avos/avoscloud/Messages$ConvCommand;Z)Z

    const/high16 v6, 0x20000

    and-int/2addr v6, v1

    const/high16 v8, 0x20000

    if-ne v6, v8, :cond_11

    const/high16 v6, 0x10000

    or-int/2addr v3, v6

    .line 19304
    :cond_11
    iget v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->statusTTL_:I

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20002(Lcom/avos/avoscloud/Messages$ConvCommand;I)I

    const/high16 v6, 0x40000

    and-int/2addr v6, v1

    const/high16 v8, 0x40000

    if-ne v6, v8, :cond_12

    const/high16 v6, 0x20000

    or-int/2addr v3, v6

    .line 19308
    :cond_12
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->uniqueId_:Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20102(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v6, 0x80000

    and-int/2addr v6, v1

    const/high16 v8, 0x80000

    if-ne v6, v8, :cond_13

    const/high16 v6, 0x40000

    or-int/2addr v3, v6

    .line 19312
    :cond_13
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->targetClientId_:Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20202(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v6, 0x100000

    and-int/2addr v6, v1

    const/high16 v8, 0x100000

    if-ne v6, v8, :cond_14

    const/high16 v6, 0x80000

    or-int/2addr v3, v6

    .line 19316
    :cond_14
    iget-wide v8, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTimestamp_:J

    invoke-static {v0, v8, v9}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20302(Lcom/avos/avoscloud/Messages$ConvCommand;J)J

    const/high16 v6, 0x200000

    and-int/2addr v6, v1

    const/high16 v8, 0x200000

    if-ne v6, v8, :cond_15

    const/high16 v6, 0x100000

    or-int/2addr v3, v6

    .line 19320
    :cond_15
    iget-wide v8, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxAckTimestamp_:J

    invoke-static {v0, v8, v9}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20402(Lcom/avos/avoscloud/Messages$ConvCommand;J)J

    const/high16 v6, 0x400000

    and-int/2addr v6, v1

    const/high16 v8, 0x400000

    if-ne v6, v8, :cond_16

    const/high16 v6, 0x200000

    or-int/2addr v3, v6

    .line 19324
    :cond_16
    iget-boolean v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->queryAllMembers_:Z

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20502(Lcom/avos/avoscloud/Messages$ConvCommand;Z)Z

    .line 19325
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v6, :cond_18

    .line 19326
    iget v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v8, 0x800000

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_17

    .line 19327
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    .line 19328
    iget v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v8, -0x800001

    and-int/2addr v6, v8

    iput v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19330
    :cond_17
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20602(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 19332
    :cond_18
    invoke-virtual {v6}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20602(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/util/List;)Ljava/util/List;

    .line 19334
    :goto_1
    iget v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v8, 0x1000000

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_19

    .line 19335
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v6}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v6

    iput-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 19336
    iget v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v8, -0x1000001

    and-int/2addr v6, v8

    iput v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19338
    :cond_19
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20702(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    const/high16 v6, 0x2000000

    and-int/2addr v6, v1

    const/high16 v8, 0x2000000

    if-ne v6, v8, :cond_1a

    const/high16 v6, 0x400000

    or-int/2addr v3, v6

    .line 19342
    :cond_1a
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v6, :cond_1b

    .line 19343
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20802(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    goto :goto_2

    .line 19345
    :cond_1b
    invoke-virtual {v6}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v6

    check-cast v6, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20802(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    :goto_2
    const/high16 v6, 0x4000000

    and-int/2addr v6, v1

    const/high16 v8, 0x4000000

    if-ne v6, v8, :cond_1c

    const/high16 v6, 0x800000

    or-int/2addr v3, v6

    .line 19350
    :cond_1c
    iget-boolean v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConv_:Z

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20902(Lcom/avos/avoscloud/Messages$ConvCommand;Z)Z

    const/high16 v6, 0x8000000

    and-int/2addr v6, v1

    const/high16 v8, 0x8000000

    if-ne v6, v8, :cond_1d

    const/high16 v6, 0x1000000

    or-int/2addr v3, v6

    .line 19354
    :cond_1d
    iget v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvTTL_:I

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21002(Lcom/avos/avoscloud/Messages$ConvCommand;I)I

    .line 19355
    iget v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v8, 0x10000000

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_1e

    .line 19356
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v6}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v6

    iput-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    .line 19357
    iget v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v8, -0x10000001

    and-int/2addr v6, v8

    iput v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19359
    :cond_1e
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21102(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 19360
    iget v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v8, 0x20000000

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_1f

    .line 19361
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v6}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v6

    iput-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    .line 19362
    iget v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v8, -0x20000001

    and-int/2addr v6, v8

    iput v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19364
    :cond_1f
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21202(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 19365
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v6, :cond_21

    .line 19366
    iget v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_20

    .line 19367
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    .line 19368
    iget v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v8, -0x40000001    # -1.9999999f

    and-int/2addr v6, v8

    iput v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19370
    :cond_20
    iget-object v6, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21302(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/util/List;)Ljava/util/List;

    goto :goto_3

    .line 19372
    :cond_21
    invoke-virtual {v6}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21302(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/util/List;)Ljava/util/List;

    :goto_3
    const/high16 v6, -0x80000000

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_22

    const/high16 v1, 0x2000000

    or-int/2addr v3, v1

    .line 19377
    :cond_22
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->next_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21402(Lcom/avos/avoscloud/Messages$ConvCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v2, 0x1

    if-ne v1, v4, :cond_23

    const/high16 v1, 0x4000000

    or-int/2addr v3, v1

    .line 19381
    :cond_23
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_24

    .line 19382
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21502(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    goto :goto_4

    .line 19384
    :cond_24
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21502(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    :goto_4
    and-int/lit8 v1, v2, 0x2

    if-ne v1, v5, :cond_25

    const/high16 v1, 0x8000000

    or-int/2addr v3, v1

    .line 19389
    :cond_25
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->whereBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_26

    .line 19390
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21602(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    goto :goto_5

    .line 19392
    :cond_26
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21602(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    :goto_5
    and-int/lit8 v1, v2, 0x4

    if-ne v1, v7, :cond_27

    const/high16 v1, 0x10000000

    or-int/2addr v3, v1

    .line 19397
    :cond_27
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_28

    .line 19398
    iget-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21702(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    goto :goto_6

    .line 19400
    :cond_28
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21702(Lcom/avos/avoscloud/Messages$ConvCommand;Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 19402
    :goto_6
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21802(Lcom/avos/avoscloud/Messages$ConvCommand;I)I

    .line 19403
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 6

    .line 19112
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 19113
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    .line 19114
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 19115
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->transient_:Z

    .line 19116
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19117
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->unique_:Z

    .line 19118
    iget v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const-string v1, ""

    .line 19119
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cid_:Ljava/lang/Object;

    .line 19120
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19121
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cdate_:Ljava/lang/Object;

    .line 19122
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19123
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->initBy_:Ljava/lang/Object;

    .line 19124
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19125
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->sort_:Ljava/lang/Object;

    .line 19126
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19127
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->limit_:I

    .line 19128
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19129
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->skip_:I

    .line 19130
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19131
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->flag_:I

    .line 19132
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19133
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->count_:I

    .line 19134
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19135
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->udate_:Ljava/lang/Object;

    .line 19136
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x801

    iput v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const-wide/16 v2, 0x0

    .line 19137
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->t_:J

    .line 19138
    iget v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit16 v4, v4, -0x1001

    iput v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19139
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->n_:Ljava/lang/Object;

    .line 19140
    iget v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit16 v4, v4, -0x2001

    iput v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19141
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->s_:Ljava/lang/Object;

    .line 19142
    iget v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit16 v4, v4, -0x4001

    iput v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19143
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->statusSub_:Z

    .line 19144
    iget v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v5, -0x8001

    and-int/2addr v4, v5

    iput v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19145
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->statusPub_:Z

    .line 19146
    iget v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v5, -0x10001

    and-int/2addr v4, v5

    iput v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19147
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->statusTTL_:I

    .line 19148
    iget v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v5, -0x20001

    and-int/2addr v4, v5

    iput v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19149
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->uniqueId_:Ljava/lang/Object;

    .line 19150
    iget v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v5, -0x40001

    and-int/2addr v4, v5

    iput v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19151
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->targetClientId_:Ljava/lang/Object;

    .line 19152
    iget v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v5, -0x80001

    and-int/2addr v4, v5

    iput v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19153
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTimestamp_:J

    .line 19154
    iget v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v5, -0x100001

    and-int/2addr v4, v5

    iput v4, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19155
    iput-wide v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxAckTimestamp_:J

    .line 19156
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v3, -0x200001

    and-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19157
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->queryAllMembers_:Z

    .line 19158
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v3, -0x400001

    and-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19159
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_0

    .line 19160
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    .line 19161
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v3, -0x800001

    and-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 19163
    :cond_0
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 19165
    :goto_0
    sget-object v2, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 19166
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v3, -0x1000001

    and-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19167
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 19168
    iput-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    goto :goto_1

    .line 19170
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 19172
    :goto_1
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v4, -0x2000001

    and-int/2addr v2, v4

    iput v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19173
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConv_:Z

    .line 19174
    iget v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v4, -0x4000001

    and-int/2addr v2, v4

    iput v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19175
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvTTL_:I

    .line 19176
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v2, -0x8000001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19177
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    .line 19178
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v2, -0x10000001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19179
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    .line 19180
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v2, -0x20000001

    and-int/2addr v0, v2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19181
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 19182
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    .line 19183
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v2, -0x40000001    # -1.9999999f

    and-int/2addr v0, v2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    goto :goto_2

    .line 19185
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 19187
    :goto_2
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->next_:Ljava/lang/Object;

    .line 19188
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19189
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    .line 19190
    iput-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    goto :goto_3

    .line 19192
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 19194
    :goto_3
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    .line 19195
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->whereBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_4

    .line 19196
    iput-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    goto :goto_4

    .line 19198
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 19200
    :goto_4
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    .line 19201
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_5

    .line 19202
    iput-object v3, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    goto :goto_5

    .line 19204
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 19206
    :goto_5
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAllowedPids()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 21567
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    .line 21568
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 21569
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAttr()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 22235
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 22236
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22237
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 22239
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 22241
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    return-object p0
.end method

.method public clearCdate()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 19982
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19983
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCdate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cdate_:Ljava/lang/Object;

    .line 19984
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCid()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 19906
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19907
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cid_:Ljava/lang/Object;

    .line 19908
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCids()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 21199
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 21200
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 21201
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCount()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20275
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 20276
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->count_:I

    .line 20277
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFailedPids()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 21739
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21740
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    .line 21741
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 21742
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21744
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 0

    .line 19417
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearFlag()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20243
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 20244
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->flag_:I

    .line 20245
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearInfo()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 21291
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 21292
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    .line 21293
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21295
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 21297
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearInitBy()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20058
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20059
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInitBy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->initBy_:Ljava/lang/Object;

    .line 20060
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLimit()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20179
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 20180
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->limit_:I

    .line 20181
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearM()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 19766
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    .line 19767
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19768
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMaxAckTimestamp()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 20847
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 20848
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxAckTimestamp_:J

    .line 20849
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMaxReadTimestamp()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 20815
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 20816
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTimestamp_:J

    .line 20817
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMaxReadTuples()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 21038
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21039
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    .line 21040
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 21041
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21043
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearN()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20446
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20447
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->n_:Ljava/lang/Object;

    .line 20448
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNext()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 21903
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 21904
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getNext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->next_:Ljava/lang/Object;

    .line 21905
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 0

    .line 19421
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearQueryAllMembers()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 20879
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 20880
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->queryAllMembers_:Z

    .line 20881
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearResults()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 21999
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 22000
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22001
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 22003
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 22005
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    return-object p0
.end method

.method public clearS()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20522
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20523
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->s_:Ljava/lang/Object;

    .line 20524
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSkip()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20211
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 20212
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->skip_:I

    .line 20213
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSort()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20134
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20135
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getSort()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->sort_:Ljava/lang/Object;

    .line 20136
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStatusPub()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 20599
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 20600
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->statusPub_:Z

    .line 20601
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStatusSub()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 20567
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 20568
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->statusSub_:Z

    .line 20569
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStatusTTL()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 20631
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 20632
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->statusTTL_:I

    .line 20633
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearT()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 20383
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 20384
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->t_:J

    .line 20385
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTargetClientId()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 20770
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20771
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTargetClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->targetClientId_:Ljava/lang/Object;

    .line 20772
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTempConv()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 21362
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 21363
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConv_:Z

    .line 21364
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTempConvIds()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 21474
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    .line 21475
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 21476
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTempConvTTL()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 21394
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 21395
    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvTTL_:I

    .line 21396
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTransient()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 19811
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 19812
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->transient_:Z

    .line 19813
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUdate()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20338
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20339
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getUdate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->udate_:Ljava/lang/Object;

    .line 20340
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUnique()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 19843
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 19844
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->unique_:Z

    .line 19845
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUniqueId()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 20694
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20695
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvCommand;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->uniqueId_:Ljava/lang/Object;

    .line 20696
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearWhere()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 22117
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->whereBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 22118
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22119
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 22121
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 22123
    :goto_0
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 19408
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

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

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedPids(I)Ljava/lang/String;
    .locals 1

    .line 21517
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAllowedPidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 21524
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAllowedPidsCount()I
    .locals 1

    .line 21511
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 21505
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAllowedPidsList()Ljava/util/List;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getAllowedPidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getAttr()Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1

    .line 22175
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 22176
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    :cond_0
    return-object v0

    .line 22178
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object v0
.end method

.method public getAttrBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 1

    .line 22248
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    .line 22249
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 22250
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getAttrFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    return-object v0
.end method

.method public getAttrOrBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;
    .locals 1

    .line 22256
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 22257
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;

    return-object v0

    .line 22259
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-nez v0, :cond_1

    .line 22260
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getCdate()Ljava/lang/String;
    .locals 2

    .line 19936
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cdate_:Ljava/lang/Object;

    .line 19937
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 19938
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 19940
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19941
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19942
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cdate_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 19946
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCdateBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 19954
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cdate_:Ljava/lang/Object;

    .line 19955
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19956
    check-cast v0, Ljava/lang/String;

    .line 19957
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19959
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cdate_:Ljava/lang/Object;

    return-object v0

    .line 19962
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 2

    .line 19860
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cid_:Ljava/lang/Object;

    .line 19861
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 19862
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 19864
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 19865
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19866
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cid_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 19870
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 19878
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cid_:Ljava/lang/Object;

    .line 19879
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19880
    check-cast v0, Ljava/lang/String;

    .line 19881
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19883
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cid_:Ljava/lang/Object;

    return-object v0

    .line 19886
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCids(I)Ljava/lang/String;
    .locals 1

    .line 21149
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCidsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 21156
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCidsCount()I
    .locals 1

    .line 21143
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCidsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 21137
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCidsList()Ljava/util/List;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getCidsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 20260
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->count_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 1

    .line 19216
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 19212
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$17700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFailedPids(I)Lcom/avos/avoscloud/Messages$ErrorCommand;
    .locals 1

    .line 21622
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21623
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p1

    .line 21625
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommand;

    return-object p1
.end method

.method public getFailedPidsBuilder(I)Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;
    .locals 1

    .line 21766
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getFailedPidsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

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

    .line 21809
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getFailedPidsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFailedPidsCount()I
    .locals 1

    .line 21612
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21613
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 21615
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

    .line 21602
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21603
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 21605
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFailedPidsOrBuilder(I)Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;
    .locals 1

    .line 21773
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21774
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ErrorCommandOrBuilder;

    return-object p1

    .line 21775
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

    .line 21783
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 21784
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 21786
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 20228
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->flag_:I

    return v0
.end method

.method public getInfo()Lcom/avos/avoscloud/Messages$ConvMemberInfo;
    .locals 1

    .line 21231
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 21232
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    :cond_0
    return-object v0

    .line 21234
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    return-object v0
.end method

.method public getInfoBuilder()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;
    .locals 2

    .line 21304
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 21305
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 21306
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    return-object v0
.end method

.method public getInfoOrBuilder()Lcom/avos/avoscloud/Messages$ConvMemberInfoOrBuilder;
    .locals 1

    .line 21312
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 21313
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$ConvMemberInfoOrBuilder;

    return-object v0

    .line 21315
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    if-nez v0, :cond_1

    .line 21316
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getInitBy()Ljava/lang/String;
    .locals 2

    .line 20012
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->initBy_:Ljava/lang/Object;

    .line 20013
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 20014
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 20016
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 20017
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20018
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->initBy_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 20022
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInitByBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 20030
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->initBy_:Ljava/lang/Object;

    .line 20031
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20032
    check-cast v0, Ljava/lang/String;

    .line 20033
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20035
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->initBy_:Ljava/lang/Object;

    return-object v0

    .line 20038
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 20164
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->limit_:I

    return v0
.end method

.method public getM(I)Ljava/lang/String;
    .locals 1

    .line 19716
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 19723
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getMCount()I
    .locals 1

    .line 19710
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getMList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 19704
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMList()Ljava/util/List;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getMList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getMaxAckTimestamp()J
    .locals 2

    .line 20832
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxAckTimestamp_:J

    return-wide v0
.end method

.method public getMaxReadTimestamp()J
    .locals 2

    .line 20800
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTimestamp_:J

    return-wide v0
.end method

.method public getMaxReadTuples(I)Lcom/avos/avoscloud/Messages$MaxReadTuple;
    .locals 1

    .line 20921
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20922
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    return-object p1

    .line 20924
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTuple;

    return-object p1
.end method

.method public getMaxReadTuplesBuilder(I)Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;
    .locals 1

    .line 21065
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getMaxReadTuplesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;

    return-object p1
.end method

.method public getMaxReadTuplesBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;",
            ">;"
        }
    .end annotation

    .line 21108
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getMaxReadTuplesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxReadTuplesCount()I
    .locals 1

    .line 20911
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20912
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 20914
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getMaxReadTuplesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/Messages$MaxReadTuple;",
            ">;"
        }
    .end annotation

    .line 20901
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20902
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 20904
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxReadTuplesOrBuilder(I)Lcom/avos/avoscloud/Messages$MaxReadTupleOrBuilder;
    .locals 1

    .line 21072
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21073
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTupleOrBuilder;

    return-object p1

    .line 21074
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$MaxReadTupleOrBuilder;

    return-object p1
.end method

.method public getMaxReadTuplesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/avos/avoscloud/Messages$MaxReadTupleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 21082
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 21083
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 21085
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getN()Ljava/lang/String;
    .locals 2

    .line 20400
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->n_:Ljava/lang/Object;

    .line 20401
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 20402
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 20404
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 20405
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20406
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->n_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 20410
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 20418
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->n_:Ljava/lang/Object;

    .line 20419
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20420
    check-cast v0, Ljava/lang/String;

    .line 20421
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20423
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->n_:Ljava/lang/Object;

    return-object v0

    .line 20426
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 2

    .line 21845
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->next_:Ljava/lang/Object;

    .line 21846
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 21847
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 21849
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 21850
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21851
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->next_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 21855
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 21867
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->next_:Ljava/lang/Object;

    .line 21868
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21869
    check-cast v0, Ljava/lang/String;

    .line 21870
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 21872
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->next_:Ljava/lang/Object;

    return-object v0

    .line 21875
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getQueryAllMembers()Z
    .locals 1

    .line 20864
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->queryAllMembers_:Z

    return v0
.end method

.method public getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1

    .line 21939
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 21940
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    :cond_0
    return-object v0

    .line 21942
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object v0
.end method

.method public getResultsBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 1

    .line 22012
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    .line 22013
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 22014
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getResultsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    return-object v0
.end method

.method public getResultsOrBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;
    .locals 1

    .line 22020
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 22021
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;

    return-object v0

    .line 22023
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-nez v0, :cond_1

    .line 22024
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 2

    .line 20476
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->s_:Ljava/lang/Object;

    .line 20477
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 20478
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 20480
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 20481
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20482
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->s_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 20486
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 20494
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->s_:Ljava/lang/Object;

    .line 20495
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20496
    check-cast v0, Ljava/lang/String;

    .line 20497
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20499
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->s_:Ljava/lang/Object;

    return-object v0

    .line 20502
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSkip()I
    .locals 1

    .line 20196
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->skip_:I

    return v0
.end method

.method public getSort()Ljava/lang/String;
    .locals 2

    .line 20088
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->sort_:Ljava/lang/Object;

    .line 20089
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 20090
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 20092
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 20093
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20094
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->sort_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 20098
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSortBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 20106
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->sort_:Ljava/lang/Object;

    .line 20107
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20108
    check-cast v0, Ljava/lang/String;

    .line 20109
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20111
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->sort_:Ljava/lang/Object;

    return-object v0

    .line 20114
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStatusPub()Z
    .locals 1

    .line 20584
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->statusPub_:Z

    return v0
.end method

.method public getStatusSub()Z
    .locals 1

    .line 20552
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->statusSub_:Z

    return v0
.end method

.method public getStatusTTL()I
    .locals 1

    .line 20616
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->statusTTL_:I

    return v0
.end method

.method public getT()J
    .locals 2

    .line 20368
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->t_:J

    return-wide v0
.end method

.method public getTargetClientId()Ljava/lang/String;
    .locals 2

    .line 20724
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->targetClientId_:Ljava/lang/Object;

    .line 20725
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 20726
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 20728
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 20729
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20730
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->targetClientId_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 20734
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTargetClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 20742
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->targetClientId_:Ljava/lang/Object;

    .line 20743
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20744
    check-cast v0, Ljava/lang/String;

    .line 20745
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20747
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->targetClientId_:Ljava/lang/Object;

    return-object v0

    .line 20750
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTempConv()Z
    .locals 1

    .line 21347
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConv_:Z

    return v0
.end method

.method public getTempConvIds(I)Ljava/lang/String;
    .locals 1

    .line 21424
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getTempConvIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 21431
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getTempConvIdsCount()I
    .locals 1

    .line 21418
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getTempConvIdsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 21412
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTempConvIdsList()Ljava/util/List;
    .locals 1

    .line 19074
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getTempConvIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getTempConvTTL()I
    .locals 1

    .line 21379
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvTTL_:I

    return v0
.end method

.method public getTransient()Z
    .locals 1

    .line 19796
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->transient_:Z

    return v0
.end method

.method public getUdate()Ljava/lang/String;
    .locals 2

    .line 20292
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->udate_:Ljava/lang/Object;

    .line 20293
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 20294
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 20296
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 20297
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20298
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->udate_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 20302
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUdateBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 20310
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->udate_:Ljava/lang/Object;

    .line 20311
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20312
    check-cast v0, Ljava/lang/String;

    .line 20313
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20315
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->udate_:Ljava/lang/Object;

    return-object v0

    .line 20318
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getUnique()Z
    .locals 1

    .line 19828
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->unique_:Z

    return v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 2

    .line 20648
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->uniqueId_:Ljava/lang/Object;

    .line 20649
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 20650
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 20652
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 20653
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20654
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->uniqueId_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 20658
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 20666
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->uniqueId_:Ljava/lang/Object;

    .line 20667
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20668
    check-cast v0, Ljava/lang/String;

    .line 20669
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20671
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->uniqueId_:Ljava/lang/Object;

    return-object v0

    .line 20674
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getWhere()Lcom/avos/avoscloud/Messages$JsonObjectMessage;
    .locals 1

    .line 22057
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->whereBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 22058
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    :cond_0
    return-object v0

    .line 22060
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    return-object v0
.end method

.method public getWhereBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;
    .locals 1

    .line 22130
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    .line 22131
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 22132
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getWhereFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    return-object v0
.end method

.method public getWhereOrBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;
    .locals 1

    .line 22138
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->whereBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 22139
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$JsonObjectMessageOrBuilder;

    return-object v0

    .line 22141
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-nez v0, :cond_1

    .line 22142
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasAttr()Z
    .locals 2

    .line 22169
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

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

.method public hasCdate()Z
    .locals 2

    .line 19930
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

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

.method public hasCid()Z
    .locals 2

    .line 19854
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCount()Z
    .locals 2

    .line 20254
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

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

.method public hasFlag()Z
    .locals 2

    .line 20222
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInfo()Z
    .locals 2

    .line 21225
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInitBy()Z
    .locals 2

    .line 20006
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

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

.method public hasLimit()Z
    .locals 2

    .line 20158
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxAckTimestamp()Z
    .locals 2

    .line 20826
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxReadTimestamp()Z
    .locals 2

    .line 20794
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x100000

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

    .line 20394
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/16 v1, 0x2000

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

    .line 21835
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasQueryAllMembers()Z
    .locals 2

    .line 20858
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResults()Z
    .locals 2

    .line 21933
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasS()Z
    .locals 2

    .line 20470
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSkip()Z
    .locals 2

    .line 20190
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSort()Z
    .locals 2

    .line 20082
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatusPub()Z
    .locals 2

    .line 20578
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatusSub()Z
    .locals 2

    .line 20546
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatusTTL()Z
    .locals 2

    .line 20610
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x20000

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

    .line 20362
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

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

.method public hasTargetClientId()Z
    .locals 2

    .line 20718
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTempConv()Z
    .locals 2

    .line 21341
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTempConvTTL()Z
    .locals 2

    .line 21373
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransient()Z
    .locals 2

    .line 19790
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUdate()Z
    .locals 2

    .line 20286
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

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

.method public hasUnique()Z
    .locals 2

    .line 19822
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

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

.method public hasUniqueId()Z
    .locals 2

    .line 20642
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWhere()Z
    .locals 2

    .line 22051
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    const/4 v1, 0x2

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

    .line 19085
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$17800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$ConvCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19086
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 19649
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getFailedPidsCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 19650
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getFailedPids(I)Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/Messages$ErrorCommand;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 19654
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->hasResults()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19655
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 19659
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->hasWhere()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19660
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getWhere()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 19664
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->hasAttr()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19665
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getAttr()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public mergeAttr(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 3

    .line 22215
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 22216
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-eqz v0, :cond_0

    .line 22218
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 22219
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22220
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->newBuilder(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    goto :goto_0

    .line 22222
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22224
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_1

    .line 22226
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 22228
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    return-object p0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 3

    .line 19443
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 19444
    :cond_0
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$18300(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 19445
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19446
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$18300(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    .line 19447
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 19449
    :cond_1
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureMIsMutable()V

    .line 19450
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$18300(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 19452
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 19454
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTransient()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19455
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTransient()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setTransient(Z)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19457
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasUnique()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19458
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getUnique()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setUnique(Z)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19460
    :cond_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19461
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19462
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$18600(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cid_:Ljava/lang/Object;

    .line 19463
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 19465
    :cond_5
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasCdate()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19466
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19467
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$18700(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cdate_:Ljava/lang/Object;

    .line 19468
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 19470
    :cond_6
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasInitBy()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19471
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19472
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$18800(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->initBy_:Ljava/lang/Object;

    .line 19473
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 19475
    :cond_7
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasSort()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19476
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19477
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$18900(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->sort_:Ljava/lang/Object;

    .line 19478
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 19480
    :cond_8
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 19481
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getLimit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setLimit(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19483
    :cond_9
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasSkip()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 19484
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getSkip()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setSkip(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19486
    :cond_a
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasFlag()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 19487
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getFlag()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setFlag(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19489
    :cond_b
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 19490
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setCount(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19492
    :cond_c
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasUdate()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 19493
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19494
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$19400(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->udate_:Ljava/lang/Object;

    .line 19495
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 19497
    :cond_d
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasT()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 19498
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getT()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setT(J)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19500
    :cond_e
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasN()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 19501
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19502
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$19600(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->n_:Ljava/lang/Object;

    .line 19503
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 19505
    :cond_f
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasS()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 19506
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19507
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$19700(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->s_:Ljava/lang/Object;

    .line 19508
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 19510
    :cond_10
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasStatusSub()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 19511
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getStatusSub()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setStatusSub(Z)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19513
    :cond_11
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasStatusPub()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 19514
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getStatusPub()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setStatusPub(Z)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19516
    :cond_12
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasStatusTTL()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 19517
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getStatusTTL()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setStatusTTL(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19519
    :cond_13
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasUniqueId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 19520
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19521
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20100(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->uniqueId_:Ljava/lang/Object;

    .line 19522
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 19524
    :cond_14
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTargetClientId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 19525
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19526
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20200(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->targetClientId_:Ljava/lang/Object;

    .line 19527
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 19529
    :cond_15
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasMaxReadTimestamp()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 19530
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMaxReadTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setMaxReadTimestamp(J)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19532
    :cond_16
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasMaxAckTimestamp()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 19533
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getMaxAckTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setMaxAckTimestamp(J)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19535
    :cond_17
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasQueryAllMembers()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19536
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getQueryAllMembers()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setQueryAllMembers(Z)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19538
    :cond_18
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const v1, -0x800001

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    .line 19539
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20600(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 19540
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 19541
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20600(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    .line 19542
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    goto :goto_1

    .line 19544
    :cond_19
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureMaxReadTuplesIsMutable()V

    .line 19545
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20600(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19547
    :goto_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_3

    .line 19550
    :cond_1a
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20600(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 19551
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 19552
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 19553
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 19554
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20600(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    .line 19555
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19557
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21900()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 19558
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getMaxReadTuplesFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_2

    :cond_1b
    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_3

    .line 19560
    :cond_1c
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20600(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 19564
    :cond_1d
    :goto_3
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20700(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 19565
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 19566
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20700(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    .line 19567
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    goto :goto_4

    .line 19569
    :cond_1e
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureCidsIsMutable()V

    .line 19570
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$20700(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 19572
    :goto_4
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 19574
    :cond_1f
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasInfo()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 19575
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getInfo()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeInfo(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19577
    :cond_20
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTempConv()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 19578
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConv()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setTempConv(Z)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19580
    :cond_21
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasTempConvTTL()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 19581
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getTempConvTTL()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setTempConvTTL(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19583
    :cond_22
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21100(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 19584
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 19585
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21100(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    .line 19586
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    goto :goto_5

    .line 19588
    :cond_23
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureTempConvIdsIsMutable()V

    .line 19589
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21100(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 19591
    :goto_5
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 19593
    :cond_24
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21200(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 19594
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 19595
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21200(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    .line 19596
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    goto :goto_6

    .line 19598
    :cond_25
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureAllowedPidsIsMutable()V

    .line 19599
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21200(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 19601
    :goto_6
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 19603
    :cond_26
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const v1, -0x40000001    # -1.9999999f

    if-nez v0, :cond_28

    .line 19604
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21300(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 19605
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 19606
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21300(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    .line 19607
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    goto :goto_7

    .line 19609
    :cond_27
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 19610
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21300(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19612
    :goto_7
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_8

    .line 19615
    :cond_28
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21300(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 19616
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 19617
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 19618
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 19619
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21300(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    .line 19620
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19622
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$22000()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 19623
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->getFailedPidsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v2

    :cond_29
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_8

    .line 19625
    :cond_2a
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21300(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 19629
    :cond_2b
    :goto_8
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 19630
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19631
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$21400(Lcom/avos/avoscloud/Messages$ConvCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->next_:Ljava/lang/Object;

    .line 19632
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    .line 19634
    :cond_2c
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasResults()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 19635
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getResults()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeResults(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19637
    :cond_2d
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasWhere()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 19638
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getWhere()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeWhere(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19640
    :cond_2e
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->hasAttr()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 19641
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->getAttr()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeAttr(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19643
    :cond_2f
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$ConvCommand;->access$22100(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 19644
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 19678
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$ConvCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ConvCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 19684
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19680
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$ConvCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19681
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

    .line 19684
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 19434
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$ConvCommand;

    if-eqz v0, :cond_0

    .line 19435
    check-cast p1, Lcom/avos/avoscloud/Messages$ConvCommand;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1

    .line 19437
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

    .line 19074
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

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

    .line 19074
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

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

    .line 19074
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

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

    .line 19074
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeInfo(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 3

    .line 21271
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/high16 v1, 0x2000000

    if-nez v0, :cond_1

    .line 21272
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    if-eqz v0, :cond_0

    .line 21274
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->getDefaultInstance()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 21275
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    .line 21276
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->newBuilder(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    goto :goto_0

    .line 21278
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    .line 21280
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_1

    .line 21282
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 21284
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeResults(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 3

    .line 21979
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 21980
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-eqz v0, :cond_0

    .line 21982
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 21983
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 21984
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->newBuilder(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    goto :goto_0

    .line 21986
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 21988
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_1

    .line 21990
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 21992
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 0

    .line 22286
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeWhere(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 3

    .line 22097
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->whereBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 22098
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    if-eqz v0, :cond_0

    .line 22100
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->getDefaultInstance()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 22101
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22102
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->newBuilder(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    goto :goto_0

    .line 22104
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22106
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_1

    .line 22108
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 22110
    :goto_1
    iget p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    return-object p0
.end method

.method public removeFailedPids(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 21752
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21753
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 21754
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 21755
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21757
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeMaxReadTuples(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 21051
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21052
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureMaxReadTuplesIsMutable()V

    .line 21053
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 21054
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21056
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setAllowedPids(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 21534
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureAllowedPidsIsMutable()V

    .line 21535
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->allowedPids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21536
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 21532
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setAttr(Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 22202
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22203
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->build()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22204
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 22206
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->build()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 22208
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    return-object p0
.end method

.method public setAttr(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 22185
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attrBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 22189
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->attr_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22190
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 22187
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 22192
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 22194
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    return-object p0
.end method

.method public setCdate(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 19973
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19974
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cdate_:Ljava/lang/Object;

    .line 19975
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 19971
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCdateBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 19995
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19996
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cdate_:Ljava/lang/Object;

    .line 19997
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 19993
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 19897
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19898
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cid_:Ljava/lang/Object;

    .line 19899
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 19895
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCidBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 19919
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19920
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cid_:Ljava/lang/Object;

    .line 19921
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 19917
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCids(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 21166
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureCidsIsMutable()V

    .line 21167
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->cids_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21168
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 21164
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCount(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20266
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20267
    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->count_:I

    .line 20268
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setFailedPids(ILcom/avos/avoscloud/Messages$ErrorCommand$Builder;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 21650
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21651
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 21652
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21653
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21655
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$ErrorCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ErrorCommand;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFailedPids(ILcom/avos/avoscloud/Messages$ErrorCommand;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 21633
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPidsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 21637
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureFailedPidsIsMutable()V

    .line 21638
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->failedPids_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21639
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21635
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 21641
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 0

    .line 19413
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFlag(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20234
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20235
    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->flag_:I

    .line 20236
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setInfo(Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 21258
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21259
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->build()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    .line 21260
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21262
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->build()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 21264
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v0, 0x2000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setInfo(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 21241
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->infoBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 21245
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->info_:Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    .line 21246
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21243
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 21248
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 21250
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v0, 0x2000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public setInitBy(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 20049
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20050
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->initBy_:Ljava/lang/Object;

    .line 20051
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 20047
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setInitByBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 20071
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20072
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->initBy_:Ljava/lang/Object;

    .line 20073
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 20069
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setLimit(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20170
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20171
    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->limit_:I

    .line 20172
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setM(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 19733
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureMIsMutable()V

    .line 19734
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->m_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19735
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 19731
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setMaxAckTimestamp(J)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 20838
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20839
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxAckTimestamp_:J

    .line 20840
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setMaxReadTimestamp(J)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 20806
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20807
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTimestamp_:J

    .line 20808
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setMaxReadTuples(ILcom/avos/avoscloud/Messages$MaxReadTuple$Builder;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20949
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20950
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureMaxReadTuplesIsMutable()V

    .line 20951
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20952
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 20954
    :cond_0
    invoke-virtual {p2}, Lcom/avos/avoscloud/Messages$MaxReadTuple$Builder;->build()Lcom/avos/avoscloud/Messages$MaxReadTuple;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setMaxReadTuples(ILcom/avos/avoscloud/Messages$MaxReadTuple;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20932
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuplesBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 20936
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureMaxReadTuplesIsMutable()V

    .line 20937
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->maxReadTuples_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20938
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 20934
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 20940
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setN(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 20437
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20438
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->n_:Ljava/lang/Object;

    .line 20439
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 20435
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setNBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 20459
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20460
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->n_:Ljava/lang/Object;

    .line 20461
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 20457
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setNext(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 21890
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 21891
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->next_:Ljava/lang/Object;

    .line 21892
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 21888
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setNextBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 21920
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 21921
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->next_:Ljava/lang/Object;

    .line 21922
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 21918
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setQueryAllMembers(Z)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 20870
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20871
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->queryAllMembers_:Z

    .line 20872
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 0

    .line 19426
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setResults(Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 21966
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 21967
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->build()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 21968
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21970
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->build()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 21972
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    return-object p0
.end method

.method public setResults(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 21949
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->resultsBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 21953
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->results_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 21954
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 21951
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 21956
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 21958
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    return-object p0
.end method

.method public setS(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 20513
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20514
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->s_:Ljava/lang/Object;

    .line 20515
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 20511
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 20535
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20536
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->s_:Ljava/lang/Object;

    .line 20537
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 20533
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSkip(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20202
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20203
    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->skip_:I

    .line 20204
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setSort(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 20125
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20126
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->sort_:Ljava/lang/Object;

    .line 20127
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 20123
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSortBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 20147
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20148
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->sort_:Ljava/lang/Object;

    .line 20149
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 20145
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setStatusPub(Z)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 20590
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20591
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->statusPub_:Z

    .line 20592
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setStatusSub(Z)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 20558
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20559
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->statusSub_:Z

    .line 20560
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setStatusTTL(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 20622
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20623
    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->statusTTL_:I

    .line 20624
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setT(J)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 20374
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20375
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->t_:J

    .line 20376
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setTargetClientId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 20761
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20762
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->targetClientId_:Ljava/lang/Object;

    .line 20763
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 20759
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setTargetClientIdBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 20783
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20784
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->targetClientId_:Ljava/lang/Object;

    .line 20785
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 20781
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setTempConv(Z)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 21353
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 21354
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConv_:Z

    .line 21355
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setTempConvIds(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 21441
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->ensureTempConvIdsIsMutable()V

    .line 21442
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21443
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 21439
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setTempConvTTL(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    .line 21385
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 21386
    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->tempConvTTL_:I

    .line 21387
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setTransient(Z)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 19802
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19803
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->transient_:Z

    .line 19804
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setUdate(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 20329
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20330
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->udate_:Ljava/lang/Object;

    .line 20331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 20327
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setUdateBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 20351
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20352
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->udate_:Ljava/lang/Object;

    .line 20353
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 20349
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setUnique(Z)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 19834
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 19835
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->unique_:Z

    .line 19836
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setUniqueId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 20685
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20686
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->uniqueId_:Ljava/lang/Object;

    .line 20687
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 20683
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setUniqueIdBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 20707
    iget v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField0_:I

    .line 20708
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->uniqueId_:Ljava/lang/Object;

    .line 20709
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    return-object p0

    .line 20705
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 0

    .line 22281
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 19074
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWhere(Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 22084
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->whereBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 22085
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->build()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22086
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 22088
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->build()Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 22090
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    return-object p0
.end method

.method public setWhere(Lcom/avos/avoscloud/Messages$JsonObjectMessage;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;
    .locals 1

    .line 22067
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->whereBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 22071
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->where_:Lcom/avos/avoscloud/Messages$JsonObjectMessage;

    .line 22072
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->onChanged()V

    goto :goto_0

    .line 22069
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 22074
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 22076
    :goto_0
    iget p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->bitField1_:I

    return-object p0
.end method
