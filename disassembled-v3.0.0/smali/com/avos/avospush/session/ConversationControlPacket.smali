.class public Lcom/avos/avospush/session/ConversationControlPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "ConversationControlPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avospush/session/ConversationControlPacket$ConversationControlOp;
    }
.end annotation


# static fields
.field public static final CONVERSATION_CMD:Ljava/lang/String; = "conv"


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private conversationId:Ljava/lang/String;

.field private isTemporary:Z

.field private isTransient:Z

.field private isUnique:Z

.field private memberInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nonce:Ljava/lang/String;

.field private op:Ljava/lang/String;

.field private queryLimit:I

.field private queryOffset:I

.field private signature:Ljava/lang/String;

.field private tempTTL:I

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isTemporary:Z

    .line 89
    iput v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->tempTTL:I

    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->memberInfo:Ljava/util/Map;

    .line 93
    iput v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->queryOffset:I

    .line 94
    iput v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->queryLimit:I

    const-string v0, "conv"

    .line 97
    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/ConversationControlPacket;->setCmd(Ljava/lang/String;)V

    return-void
.end method

.method public static genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/Signature;",
            "I)",
            "Lcom/avos/avospush/session/ConversationControlPacket;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    .line 317
    invoke-static/range {v0 .. v7}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;ZI)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object p0

    return-object p0
.end method

.method public static genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;ZI)Lcom/avos/avospush/session/ConversationControlPacket;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/Signature;",
            "ZI)",
            "Lcom/avos/avospush/session/ConversationControlPacket;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v11, p7

    .line 310
    invoke-static/range {v0 .. v11}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;ZZZIZI)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object v0

    return-object v0
.end method

.method public static genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;ZZZIZI)Lcom/avos/avospush/session/ConversationControlPacket;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/Signature;",
            "ZZZIZI)",
            "Lcom/avos/avospush/session/ConversationControlPacket;"
        }
    .end annotation

    .line 274
    new-instance p10, Lcom/avos/avospush/session/ConversationControlPacket;

    invoke-direct {p10}, Lcom/avos/avospush/session/ConversationControlPacket;-><init>()V

    .line 275
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientsCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 277
    invoke-virtual {p10, p0}, Lcom/avos/avospush/session/ConversationControlPacket;->setPeerId(Ljava/lang/String;)V

    .line 279
    :cond_0
    invoke-virtual {p10, p1}, Lcom/avos/avospush/session/ConversationControlPacket;->setConversationId(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p10, p11}, Lcom/avos/avospush/session/ConversationControlPacket;->setRequestId(I)V

    .line 281
    invoke-virtual {p10, p6}, Lcom/avos/avospush/session/ConversationControlPacket;->setTransient(Z)V

    .line 282
    invoke-virtual {p10, p7}, Lcom/avos/avospush/session/ConversationControlPacket;->setUnique(Z)V

    .line 283
    invoke-virtual {p10, p8}, Lcom/avos/avospush/session/ConversationControlPacket;->setTemporary(Z)V

    if-eqz p8, :cond_1

    .line 285
    invoke-virtual {p10, p9}, Lcom/avos/avospush/session/ConversationControlPacket;->setTempTTL(I)V

    .line 288
    :cond_1
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 289
    invoke-virtual {p10, p2}, Lcom/avos/avospush/session/ConversationControlPacket;->setMembers(Ljava/util/List;)V

    .line 291
    :cond_2
    invoke-virtual {p10, p3}, Lcom/avos/avospush/session/ConversationControlPacket;->setOp(Ljava/lang/String;)V

    if-eqz p5, :cond_4

    const-string p0, "add"

    .line 294
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "remove"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "start"

    .line 295
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 296
    :cond_3
    invoke-virtual {p5}, Lcom/avos/avoscloud/Signature;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p10, p0}, Lcom/avos/avospush/session/ConversationControlPacket;->setSignature(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p5}, Lcom/avos/avoscloud/Signature;->getNonce()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p10, p0}, Lcom/avos/avospush/session/ConversationControlPacket;->setNonce(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p5}, Lcom/avos/avoscloud/Signature;->getTimestamp()J

    move-result-wide p0

    invoke-virtual {p10, p0, p1}, Lcom/avos/avospush/session/ConversationControlPacket;->setTimestamp(J)V

    .line 301
    :cond_4
    invoke-virtual {p10, p11}, Lcom/avos/avospush/session/ConversationControlPacket;->setRequestId(I)V

    .line 302
    invoke-virtual {p10, p4}, Lcom/avos/avospush/session/ConversationControlPacket;->setAttributes(Ljava/util/Map;)V

    return-object p10
.end method

.method public static genConversationMemberCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/Signature;",
            "I)",
            "Lcom/avos/avospush/session/ConversationControlPacket;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v5, p4

    move/from16 v11, p5

    .line 324
    invoke-static/range {v0 .. v11}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;ZZZIZI)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object v0

    move-object v1, p3

    .line 326
    invoke-virtual {v0, p3}, Lcom/avos/avospush/session/ConversationControlPacket;->setMemberInfo(Ljava/util/Map;)V

    return-object v0
.end method

.method private getConvCommand()Lcom/avos/avoscloud/Messages$ConvCommand;
    .locals 4

    .line 215
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvCommand;->newBuilder()Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->attributes:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    invoke-static {}, Lcom/avos/avoscloud/Messages$JsonObjectMessage;->newBuilder()Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->attributes:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;->setData(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;

    .line 220
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setAttr(Lcom/avos/avoscloud/Messages$JsonObjectMessage$Builder;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->members:Ljava/util/List;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->members:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->addAllM(Ljava/lang/Iterable;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avospush/session/ConversationControlPacket;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/avos/avospush/session/ConversationControlPacket;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setS(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 229
    invoke-virtual {p0}, Lcom/avos/avospush/session/ConversationControlPacket;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setT(J)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 230
    invoke-virtual {p0}, Lcom/avos/avospush/session/ConversationControlPacket;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setN(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->conversationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 234
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setCid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 236
    :cond_3
    iget-boolean v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isTransient:Z

    if-eqz v1, :cond_4

    .line 237
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setTransient(Z)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 239
    :cond_4
    iget-boolean v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isUnique:Z

    if-eqz v1, :cond_5

    .line 240
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setUnique(Z)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 242
    :cond_5
    iget-boolean v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isTemporary:Z

    if-eqz v1, :cond_6

    .line 243
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setTempConv(Z)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 244
    iget v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->tempTTL:I

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setTempConvTTL(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 247
    :cond_6
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->memberInfo:Ljava/util/Map;

    if-eqz v1, :cond_a

    .line 248
    invoke-static {}, Lcom/avos/avoscloud/Messages$ConvMemberInfo;->newBuilder()Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->memberInfo:Ljava/util/Map;

    const-string v3, "peerId"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 250
    iget-object v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->memberInfo:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->setPid(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    .line 251
    iget-object v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->memberInfo:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setTargetClientId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 253
    :cond_7
    iget-object v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->memberInfo:Ljava/util/Map;

    const-string v3, "role"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 254
    iget-object v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->memberInfo:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->setRole(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    .line 256
    :cond_8
    iget-object v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->memberInfo:Ljava/util/Map;

    const-string v3, "infoId"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 257
    iget-object v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->memberInfo:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->setInfoId(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;

    .line 259
    :cond_9
    invoke-virtual {v1}, Lcom/avos/avoscloud/Messages$ConvMemberInfo$Builder;->build()Lcom/avos/avoscloud/Messages$ConvMemberInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setInfo(Lcom/avos/avoscloud/Messages$ConvMemberInfo;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 261
    :cond_a
    iget v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->queryOffset:I

    if-lez v1, :cond_b

    .line 262
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setNext(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 264
    :cond_b
    iget v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->queryLimit:I

    if-lez v1, :cond_c

    .line 265
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->setLimit(I)Lcom/avos/avoscloud/Messages$ConvCommand$Builder;

    .line 267
    :cond_c
    invoke-virtual {v0}, Lcom/avos/avoscloud/Messages$ConvCommand$Builder;->build()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method protected getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;
    .locals 2

    .line 208
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->getGenericCommandBuilder()Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->op:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/Messages$OpType;->valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/Messages$OpType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setOp(Lcom/avos/avoscloud/Messages$OpType;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    .line 210
    invoke-direct {p0}, Lcom/avos/avospush/session/ConversationControlPacket;->getConvCommand()Lcom/avos/avoscloud/Messages$ConvCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/Messages$GenericCommand$Builder;->setConvMessage(Lcom/avos/avoscloud/Messages$ConvCommand;)Lcom/avos/avoscloud/Messages$GenericCommand$Builder;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->members:Ljava/util/List;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryLimit()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->queryLimit:I

    return v0
.end method

.method public getQueryOffset()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->queryOffset:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTempTTL()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->tempTTL:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->timestamp:J

    return-wide v0
.end method

.method public isTemporary()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isTemporary:Z

    return v0
.end method

.method public isTransient()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isTransient:Z

    return v0
.end method

.method public isUnique()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isUnique:Z

    return v0
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->attributes:Ljava/util/Map;

    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->conversationId:Ljava/lang/String;

    return-void
.end method

.method public setMemberInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->memberInfo:Ljava/util/Map;

    return-void
.end method

.method public setMembers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->members:Ljava/util/List;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->op:Ljava/lang/String;

    return-void
.end method

.method public setQueryLimit(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->queryLimit:I

    return-void
.end method

.method public setQueryOffset(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->queryOffset:I

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->signature:Ljava/lang/String;

    return-void
.end method

.method public setTempTTL(I)V
    .locals 0

    .line 183
    iput p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->tempTTL:I

    return-void
.end method

.method public setTemporary(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isTemporary:Z

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 137
    iput-wide p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->timestamp:J

    return-void
.end method

.method public setTransient(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isTransient:Z

    return-void
.end method

.method public setUnique(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isUnique:Z

    return-void
.end method
