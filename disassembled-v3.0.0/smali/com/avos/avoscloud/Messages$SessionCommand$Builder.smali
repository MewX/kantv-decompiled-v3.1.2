.class public final Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Messages.java"

# interfaces
.implements Lcom/avos/avoscloud/Messages$SessionCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/Messages$SessionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/avos/avoscloud/Messages$SessionCommand$Builder;",
        ">;",
        "Lcom/avos/avoscloud/Messages$SessionCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private code_:I

.field private configBitmap_:J

.field private detail_:Ljava/lang/Object;

.field private deviceId_:Ljava/lang/Object;

.field private deviceToken_:Ljava/lang/Object;

.field private lastPatchTime_:J

.field private lastUnreadNotifTime_:J

.field private n_:Ljava/lang/Object;

.field private onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

.field private r_:Z

.field private reason_:Ljava/lang/Object;

.field private s_:Ljava/lang/Object;

.field private sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

.field private sp_:Z

.field private stTtl_:I

.field private st_:Ljava/lang/Object;

.field private t_:J

.field private tag_:Ljava/lang/Object;

.field private ua_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 8348
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 8695
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->n_:Ljava/lang/Object;

    .line 8771
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->s_:Ljava/lang/Object;

    .line 8847
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ua_:Ljava/lang/Object;

    .line 8955
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->tag_:Ljava/lang/Object;

    .line 9031
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceId_:Ljava/lang/Object;

    .line 9107
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 9200
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 9293
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->st_:Ljava/lang/Object;

    .line 9433
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->reason_:Ljava/lang/Object;

    .line 9509
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceToken_:Ljava/lang/Object;

    .line 9617
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->detail_:Ljava/lang/Object;

    .line 8349
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 8331
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 8354
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 8695
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->n_:Ljava/lang/Object;

    .line 8771
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->s_:Ljava/lang/Object;

    .line 8847
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ua_:Ljava/lang/Object;

    .line 8955
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->tag_:Ljava/lang/Object;

    .line 9031
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceId_:Ljava/lang/Object;

    .line 9107
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 9200
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 9293
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->st_:Ljava/lang/Object;

    .line 9433
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->reason_:Ljava/lang/Object;

    .line 9509
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceToken_:Ljava/lang/Object;

    .line 9617
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->detail_:Ljava/lang/Object;

    .line 8355
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/avos/avoscloud/Messages$1;)V
    .locals 0

    .line 8331
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureOnlineSessionPeerIdsIsMutable()V
    .locals 3

    .line 9202
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 9203
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 9204
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureSessionPeerIdsIsMutable()V
    .locals 3

    .line 9109
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 9110
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 9111
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8337
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$7400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 8359
    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$7800()Z

    return-void
.end method


# virtual methods
.method public addAllOnlineSessionPeerIds(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$SessionCommand$Builder;"
        }
    .end annotation

    .line 9264
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ensureOnlineSessionPeerIdsIsMutable()V

    .line 9265
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 9267
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllSessionPeerIds(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/Messages$SessionCommand$Builder;"
        }
    .end annotation

    .line 9171
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ensureSessionPeerIdsIsMutable()V

    .line 9172
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 9174
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public addOnlineSessionPeerIds(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9254
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ensureOnlineSessionPeerIdsIsMutable()V

    .line 9255
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 9256
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9252
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addOnlineSessionPeerIdsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9287
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ensureOnlineSessionPeerIdsIsMutable()V

    .line 9288
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 9289
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9285
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 0

    .line 8533
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addSessionPeerIds(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9161
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ensureSessionPeerIdsIsMutable()V

    .line 9162
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 9163
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9159
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addSessionPeerIdsBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9194
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ensureSessionPeerIdsIsMutable()V

    .line 9195
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 9196
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9192
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public build()Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 2

    .line 8415
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    .line 8416
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$SessionCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 8417
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->build()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->build()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 6

    .line 8423
    new-instance v0, Lcom/avos/avoscloud/Messages$SessionCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/Messages$SessionCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/avos/avoscloud/Messages$1;)V

    .line 8424
    iget v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 8429
    :goto_0
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->t_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8002(Lcom/avos/avoscloud/Messages$SessionCommand;J)J

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 8433
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->n_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8102(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 8437
    :cond_2
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->s_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8202(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 8441
    :cond_3
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ua_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8302(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 8445
    :cond_4
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->r_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8402(Lcom/avos/avoscloud/Messages$SessionCommand;Z)Z

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 8449
    :cond_5
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->tag_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8502(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 8453
    :cond_6
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8602(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8454
    iget v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const/16 v4, 0x80

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    .line 8455
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 8456
    iget v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8458
    :cond_7
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8702(Lcom/avos/avoscloud/Messages$SessionCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 8459
    iget v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    .line 8460
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 8461
    iget v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8463
    :cond_8
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8802(Lcom/avos/avoscloud/Messages$SessionCommand;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x80

    .line 8467
    :cond_9
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->st_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8902(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x100

    .line 8471
    :cond_a
    iget v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->stTtl_:I

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$9002(Lcom/avos/avoscloud/Messages$SessionCommand;I)I

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x200

    .line 8475
    :cond_b
    iget v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->code_:I

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$9102(Lcom/avos/avoscloud/Messages$SessionCommand;I)I

    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_c

    or-int/lit16 v3, v3, 0x400

    .line 8479
    :cond_c
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->reason_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$9202(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v2, v4, :cond_d

    or-int/lit16 v3, v3, 0x800

    .line 8483
    :cond_d
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceToken_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$9302(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_e

    or-int/lit16 v3, v3, 0x1000

    .line 8487
    :cond_e
    iget-boolean v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sp_:Z

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$9402(Lcom/avos/avoscloud/Messages$SessionCommand;Z)Z

    const v2, 0x8000

    and-int/2addr v2, v1

    const v4, 0x8000

    if-ne v2, v4, :cond_f

    or-int/lit16 v3, v3, 0x2000

    .line 8491
    :cond_f
    iget-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->detail_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$9502(Lcom/avos/avoscloud/Messages$SessionCommand;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    const/high16 v4, 0x10000

    if-ne v2, v4, :cond_10

    or-int/lit16 v3, v3, 0x4000

    .line 8495
    :cond_10
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->lastUnreadNotifTime_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$9602(Lcom/avos/avoscloud/Messages$SessionCommand;J)J

    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    const/high16 v4, 0x20000

    if-ne v2, v4, :cond_11

    const v2, 0x8000

    or-int/2addr v3, v2

    .line 8499
    :cond_11
    iget-wide v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->lastPatchTime_:J

    invoke-static {v0, v4, v5}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$9702(Lcom/avos/avoscloud/Messages$SessionCommand;J)J

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12

    const/high16 v1, 0x10000

    or-int/2addr v3, v1

    .line 8503
    :cond_12
    iget-wide v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->configBitmap_:J

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$9802(Lcom/avos/avoscloud/Messages$SessionCommand;J)J

    .line 8504
    invoke-static {v0, v3}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$9902(Lcom/avos/avoscloud/Messages$SessionCommand;I)I

    .line 8505
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->buildPartial()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 5

    .line 8363
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const-wide/16 v0, 0x0

    .line 8364
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->t_:J

    .line 8365
    iget v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const-string v2, ""

    .line 8366
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->n_:Ljava/lang/Object;

    .line 8367
    iget v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8368
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->s_:Ljava/lang/Object;

    .line 8369
    iget v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8370
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ua_:Ljava/lang/Object;

    .line 8371
    iget v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const/4 v3, 0x0

    .line 8372
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->r_:Z

    .line 8373
    iget v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x11

    iput v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8374
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->tag_:Ljava/lang/Object;

    .line 8375
    iget v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x21

    iput v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8376
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceId_:Ljava/lang/Object;

    .line 8377
    iget v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit8 v4, v4, -0x41

    iput v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8378
    sget-object v4, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 8379
    iget v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v4, v4, -0x81

    iput v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8380
    sget-object v4, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 8381
    iget v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v4, v4, -0x101

    iput v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8382
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->st_:Ljava/lang/Object;

    .line 8383
    iget v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v4, v4, -0x201

    iput v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8384
    iput v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->stTtl_:I

    .line 8385
    iget v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v4, v4, -0x401

    iput v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8386
    iput v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->code_:I

    .line 8387
    iget v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v4, v4, -0x801

    iput v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8388
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->reason_:Ljava/lang/Object;

    .line 8389
    iget v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v4, v4, -0x1001

    iput v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8390
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceToken_:Ljava/lang/Object;

    .line 8391
    iget v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v4, v4, -0x2001

    iput v4, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8392
    iput-boolean v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sp_:Z

    .line 8393
    iget v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x4001

    iput v3, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8394
    iput-object v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->detail_:Ljava/lang/Object;

    .line 8395
    iget v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8396
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->lastUnreadNotifTime_:J

    .line 8397
    iget v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const v3, -0x10001

    and-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8398
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->lastPatchTime_:J

    .line 8399
    iget v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8400
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->configBitmap_:J

    .line 8401
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->clear()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCode()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 9427
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 9428
    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->code_:I

    .line 9429
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearConfigBitmap()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 2

    .line 9783
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 9784
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->configBitmap_:J

    .line 9785
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDetail()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 2

    .line 9674
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9675
    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDetail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->detail_:Ljava/lang/Object;

    .line 9676
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceId()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 9088
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9089
    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceId_:Ljava/lang/Object;

    .line 9090
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceToken()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 9566
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9567
    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceToken_:Ljava/lang/Object;

    .line 9568
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 0

    .line 8519
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearLastPatchTime()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 2

    .line 9751
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 9752
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->lastPatchTime_:J

    .line 9753
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLastUnreadNotifTime()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 2

    .line 9719
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 9720
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->lastUnreadNotifTime_:J

    .line 9721
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearN()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 8752
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8753
    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->n_:Ljava/lang/Object;

    .line 8754
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 0

    .line 8523
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOnlineSessionPeerIds()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 9274
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 9275
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9276
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearR()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 8949
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 8950
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->r_:Z

    .line 8951
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearReason()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 9490
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9491
    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->reason_:Ljava/lang/Object;

    .line 9492
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearS()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 8828
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8829
    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->s_:Ljava/lang/Object;

    .line 8830
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSessionPeerIds()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 9181
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 9182
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9183
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSp()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 9611
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 9612
    iput-boolean v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sp_:Z

    .line 9613
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSt()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 9350
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9351
    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getSt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->st_:Ljava/lang/Object;

    .line 9352
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStTtl()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 9395
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 9396
    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->stTtl_:I

    .line 9397
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearT()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 2

    .line 8689
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 8690
    iput-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->t_:J

    .line 8691
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTag()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 9012
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9013
    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->tag_:Ljava/lang/Object;

    .line 9014
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUa()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 8904
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8905
    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$SessionCommand;->getUa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ua_:Ljava/lang/Object;

    .line 8906
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 8510
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

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

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->clone()Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 9412
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->code_:I

    return v0
.end method

.method public getConfigBitmap()J
    .locals 2

    .line 9768
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->configBitmap_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$SessionCommand;
    .locals 1

    .line 8411
    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->getDefaultInstanceForType()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8407
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$7400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 2

    .line 9628
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->detail_:Ljava/lang/Object;

    .line 9629
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 9630
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9632
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9633
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9634
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->detail_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 9638
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDetailBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 9646
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->detail_:Ljava/lang/Object;

    .line 9647
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9648
    check-cast v0, Ljava/lang/String;

    .line 9649
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9651
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->detail_:Ljava/lang/Object;

    return-object v0

    .line 9654
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 9042
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceId_:Ljava/lang/Object;

    .line 9043
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 9044
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9046
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9047
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9048
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceId_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 9052
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 9060
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceId_:Ljava/lang/Object;

    .line 9061
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9062
    check-cast v0, Ljava/lang/String;

    .line 9063
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9065
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceId_:Ljava/lang/Object;

    return-object v0

    .line 9068
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 2

    .line 9520
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceToken_:Ljava/lang/Object;

    .line 9521
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 9522
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9524
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9525
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9526
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceToken_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 9530
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 9538
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceToken_:Ljava/lang/Object;

    .line 9539
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9540
    check-cast v0, Ljava/lang/String;

    .line 9541
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9543
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceToken_:Ljava/lang/Object;

    return-object v0

    .line 9546
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLastPatchTime()J
    .locals 2

    .line 9736
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->lastPatchTime_:J

    return-wide v0
.end method

.method public getLastUnreadNotifTime()J
    .locals 2

    .line 9704
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->lastUnreadNotifTime_:J

    return-wide v0
.end method

.method public getN()Ljava/lang/String;
    .locals 2

    .line 8706
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->n_:Ljava/lang/Object;

    .line 8707
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 8708
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8710
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8711
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8712
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->n_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 8716
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 8724
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->n_:Ljava/lang/Object;

    .line 8725
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8726
    check-cast v0, Ljava/lang/String;

    .line 8727
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8729
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->n_:Ljava/lang/Object;

    return-object v0

    .line 8732
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOnlineSessionPeerIds(I)Ljava/lang/String;
    .locals 1

    .line 9224
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getOnlineSessionPeerIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9231
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOnlineSessionPeerIdsCount()I
    .locals 1

    .line 9218
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getOnlineSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 9212
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOnlineSessionPeerIdsList()Ljava/util/List;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->getOnlineSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getR()Z
    .locals 1

    .line 8934
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->r_:Z

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 2

    .line 9444
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->reason_:Ljava/lang/Object;

    .line 9445
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 9446
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9448
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9449
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9450
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->reason_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 9454
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 9462
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->reason_:Ljava/lang/Object;

    .line 9463
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9464
    check-cast v0, Ljava/lang/String;

    .line 9465
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9467
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->reason_:Ljava/lang/Object;

    return-object v0

    .line 9470
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 2

    .line 8782
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->s_:Ljava/lang/Object;

    .line 8783
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 8784
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8786
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8787
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8788
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->s_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 8792
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 8800
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->s_:Ljava/lang/Object;

    .line 8801
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8802
    check-cast v0, Ljava/lang/String;

    .line 8803
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8805
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->s_:Ljava/lang/Object;

    return-object v0

    .line 8808
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSessionPeerIds(I)Ljava/lang/String;
    .locals 1

    .line 9131
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSessionPeerIdsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9138
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getSessionPeerIdsCount()I
    .locals 1

    .line 9125
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 9119
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSessionPeerIdsList()Ljava/util/List;
    .locals 1

    .line 8331
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->getSessionPeerIdsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getSp()Z
    .locals 1

    .line 9596
    iget-boolean v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sp_:Z

    return v0
.end method

.method public getSt()Ljava/lang/String;
    .locals 2

    .line 9304
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->st_:Ljava/lang/Object;

    .line 9305
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 9306
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9308
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9309
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9310
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->st_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 9314
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 9322
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->st_:Ljava/lang/Object;

    .line 9323
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9324
    check-cast v0, Ljava/lang/String;

    .line 9325
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9327
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->st_:Ljava/lang/Object;

    return-object v0

    .line 9330
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStTtl()I
    .locals 1

    .line 9380
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->stTtl_:I

    return v0
.end method

.method public getT()J
    .locals 2

    .line 8674
    iget-wide v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->t_:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 8966
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->tag_:Ljava/lang/Object;

    .line 8967
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 8968
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8970
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8971
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8972
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->tag_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 8976
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTagBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 8984
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->tag_:Ljava/lang/Object;

    .line 8985
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8986
    check-cast v0, Ljava/lang/String;

    .line 8987
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8989
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->tag_:Ljava/lang/Object;

    return-object v0

    .line 8992
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getUa()Ljava/lang/String;
    .locals 2

    .line 8858
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ua_:Ljava/lang/Object;

    .line 8859
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 8860
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8862
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8863
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8864
    iput-object v1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ua_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 8868
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUaBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 8876
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ua_:Ljava/lang/Object;

    .line 8877
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8878
    check-cast v0, Ljava/lang/String;

    .line 8879
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8881
    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ua_:Ljava/lang/Object;

    return-object v0

    .line 8884
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasCode()Z
    .locals 2

    .line 9406
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

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

.method public hasConfigBitmap()Z
    .locals 2

    .line 9762
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

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

.method public hasDetail()Z
    .locals 2

    .line 9622
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    .line 9036
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

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

.method public hasDeviceToken()Z
    .locals 2

    .line 9514
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

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

.method public hasLastPatchTime()Z
    .locals 2

    .line 9730
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

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

.method public hasLastUnreadNotifTime()Z
    .locals 2

    .line 9698
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

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

.method public hasN()Z
    .locals 2

    .line 8700
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

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

.method public hasR()Z
    .locals 2

    .line 8928
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

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

.method public hasReason()Z
    .locals 2

    .line 9438
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

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

.method public hasS()Z
    .locals 2

    .line 8776
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

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

.method public hasSp()Z
    .locals 2

    .line 9590
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

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

.method public hasSt()Z
    .locals 2

    .line 9298
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

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

.method public hasStTtl()Z
    .locals 2

    .line 9374
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

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

.method public hasT()Z
    .locals 2

    .line 8668
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTag()Z
    .locals 2

    .line 8960
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

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

.method public hasUa()Z
    .locals 2

    .line 8852
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 8342
    invoke-static {}, Lcom/avos/avoscloud/Messages;->access$7500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/Messages$SessionCommand;

    const-class v2, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 8343
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 2

    .line 8545
    invoke-static {}, Lcom/avos/avoscloud/Messages$SessionCommand;->getDefaultInstance()Lcom/avos/avoscloud/Messages$SessionCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 8546
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8547
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getT()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setT(J)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 8549
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8550
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8551
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8100(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->n_:Ljava/lang/Object;

    .line 8552
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    .line 8554
    :cond_2
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasS()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8555
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8556
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8200(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->s_:Ljava/lang/Object;

    .line 8557
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    .line 8559
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasUa()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8560
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8561
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8300(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ua_:Ljava/lang/Object;

    .line 8562
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    .line 8564
    :cond_4
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasR()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8565
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getR()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setR(Z)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 8567
    :cond_5
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8568
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8569
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8500(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->tag_:Ljava/lang/Object;

    .line 8570
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    .line 8572
    :cond_6
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasDeviceId()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8573
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8574
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8600(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceId_:Ljava/lang/Object;

    .line 8575
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    .line 8577
    :cond_7
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8700(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 8578
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8579
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8700(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 8580
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    goto :goto_0

    .line 8582
    :cond_8
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ensureSessionPeerIdsIsMutable()V

    .line 8583
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8700(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 8585
    :goto_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    .line 8587
    :cond_9
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8800(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 8588
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8589
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8800(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    .line 8590
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    goto :goto_1

    .line 8592
    :cond_a
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ensureOnlineSessionPeerIdsIsMutable()V

    .line 8593
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8800(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 8595
    :goto_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    .line 8597
    :cond_b
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasSt()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 8598
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8599
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$8900(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->st_:Ljava/lang/Object;

    .line 8600
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    .line 8602
    :cond_c
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasStTtl()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 8603
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getStTtl()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setStTtl(I)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 8605
    :cond_d
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8606
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setCode(I)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 8608
    :cond_e
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 8609
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8610
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$9200(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->reason_:Ljava/lang/Object;

    .line 8611
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    .line 8613
    :cond_f
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasDeviceToken()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 8614
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8615
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$9300(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceToken_:Ljava/lang/Object;

    .line 8616
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    .line 8618
    :cond_10
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasSp()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 8619
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getSp()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setSp(Z)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 8621
    :cond_11
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasDetail()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 8622
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8623
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$9500(Lcom/avos/avoscloud/Messages$SessionCommand;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->detail_:Ljava/lang/Object;

    .line 8624
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    .line 8626
    :cond_12
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasLastUnreadNotifTime()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 8627
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getLastUnreadNotifTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setLastUnreadNotifTime(J)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 8629
    :cond_13
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasLastPatchTime()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 8630
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getLastPatchTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setLastPatchTime(J)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 8632
    :cond_14
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->hasConfigBitmap()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8633
    invoke-virtual {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->getConfigBitmap()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setConfigBitmap(J)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 8635
    :cond_15
    invoke-static {p1}, Lcom/avos/avoscloud/Messages$SessionCommand;->access$10000(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    .line 8636
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8650
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/Messages$SessionCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$SessionCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8656
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8652
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/avos/avoscloud/Messages$SessionCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8653
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

    .line 8656
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 8536
    instance-of v0, p1, Lcom/avos/avoscloud/Messages$SessionCommand;

    if-eqz v0, :cond_0

    .line 8537
    check-cast p1, Lcom/avos/avoscloud/Messages$SessionCommand;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->mergeFrom(Lcom/avos/avoscloud/Messages$SessionCommand;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1

    .line 8539
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

    .line 8331
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

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

    .line 8331
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

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

    .line 8331
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

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

    .line 8331
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 0

    .line 9795
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCode(I)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 9418
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9419
    iput p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->code_:I

    .line 9420
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setConfigBitmap(J)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 2

    .line 9774
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9775
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->configBitmap_:J

    .line 9776
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setDetail(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 9665
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9666
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->detail_:Ljava/lang/Object;

    .line 9667
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9663
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setDetailBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 9687
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9688
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->detail_:Ljava/lang/Object;

    .line 9689
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9685
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9079
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9080
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceId_:Ljava/lang/Object;

    .line 9081
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9077
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setDeviceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9101
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9102
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceId_:Ljava/lang/Object;

    .line 9103
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9099
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setDeviceToken(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9557
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9558
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceToken_:Ljava/lang/Object;

    .line 9559
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9555
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setDeviceTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9579
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9580
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->deviceToken_:Ljava/lang/Object;

    .line 9581
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9577
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 0

    .line 8515
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLastPatchTime(J)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 2

    .line 9742
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9743
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->lastPatchTime_:J

    .line 9744
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setLastUnreadNotifTime(J)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 2

    .line 9710
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9711
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->lastUnreadNotifTime_:J

    .line 9712
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setN(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 8743
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8744
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->n_:Ljava/lang/Object;

    .line 8745
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 8741
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setNBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 8765
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8766
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->n_:Ljava/lang/Object;

    .line 8767
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 8763
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setOnlineSessionPeerIds(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 9241
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ensureOnlineSessionPeerIdsIsMutable()V

    .line 9242
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onlineSessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9243
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9239
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setR(Z)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 8940
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8941
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->r_:Z

    .line 8942
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9481
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9482
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->reason_:Ljava/lang/Object;

    .line 9483
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9479
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setReasonBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9503
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9504
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->reason_:Ljava/lang/Object;

    .line 9505
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9501
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 0

    .line 8528
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setS(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 8819
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8820
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->s_:Ljava/lang/Object;

    .line 8821
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 8817
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 8841
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8842
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->s_:Ljava/lang/Object;

    .line 8843
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 8839
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSessionPeerIds(ILjava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 9148
    invoke-direct {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ensureSessionPeerIdsIsMutable()V

    .line 9149
    iget-object v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sessionPeerIds_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9150
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9146
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setSp(Z)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 9602
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9603
    iput-boolean p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->sp_:Z

    .line 9604
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setSt(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9341
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9342
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->st_:Ljava/lang/Object;

    .line 9343
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9339
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setStBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9363
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9364
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->st_:Ljava/lang/Object;

    .line 9365
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9361
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setStTtl(I)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 9386
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9387
    iput p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->stTtl_:I

    .line 9388
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setT(J)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    .line 8680
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8681
    iput-wide p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->t_:J

    .line 8682
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9003
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9004
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->tag_:Ljava/lang/Object;

    .line 9005
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9001
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setTagBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9025
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 9026
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->tag_:Ljava/lang/Object;

    .line 9027
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 9023
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setUa(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 8895
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8896
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ua_:Ljava/lang/Object;

    .line 8897
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 8893
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setUaBytes(Lcom/google/protobuf/ByteString;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 8917
    iget v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->bitField0_:I

    .line 8918
    iput-object p1, p0, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->ua_:Ljava/lang/Object;

    .line 8919
    invoke-virtual {p0}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->onChanged()V

    return-object p0

    .line 8915
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;
    .locals 0

    .line 9790
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8331
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/Messages$SessionCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/avos/avoscloud/Messages$SessionCommand$Builder;

    move-result-object p1

    return-object p1
.end method
