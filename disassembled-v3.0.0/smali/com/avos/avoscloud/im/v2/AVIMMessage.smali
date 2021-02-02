.class public Lcom/avos/avoscloud/im/v2/AVIMMessage;
.super Ljava/lang/Object;
.source "AVIMMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;,
        Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/im/v2/AVIMMessageCreator<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field content:Ljava/lang/String;

.field conversationId:Ljava/lang/String;

.field currentClient:Ljava/lang/String;

.field deliveredAt:J

.field from:Ljava/lang/String;

.field ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

.field mentionAll:Z

.field mentionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field messageId:Ljava/lang/String;

.field readAt:J

.field status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

.field timestamp:J

.field uniqueToken:Ljava/lang/String;

.field updateAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 389
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    const-class v1, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->CREATOR:Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionList:Ljava/util/List;

    const/4 v1, 0x0

    .line 316
    iput-boolean v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionAll:Z

    .line 317
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->currentClient:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setFrom(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setTimestamp(J)V

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setDeliveredAt(J)V

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setReadAt(J)V

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setUpdateAt(J)V

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->getMessageStatus(I)Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->getMessageIOType(I)Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 357
    :cond_0
    iput-boolean v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionAll:Z

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMentionListString(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->initMessage(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 9

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 26
    invoke-direct/range {v0 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionList:Ljava/util/List;

    const/4 v1, 0x0

    .line 316
    iput-boolean v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionAll:Z

    .line 317
    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->currentClient:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->AVIMMessageIOTypeOut:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    .line 31
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusNone:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    .line 32
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->from:Ljava/lang/String;

    .line 34
    iput-wide p3, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    .line 35
    iput-wide p5, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->deliveredAt:J

    .line 36
    iput-wide p7, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->readAt:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized generateUniqueToken()V
    .locals 1

    monitor-enter p0

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveredAt()J
    .locals 2

    .line 142
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->deliveredAt:J

    return-wide v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getMentionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionList:Ljava/util/List;

    return-object v0
.end method

.method public getMentionListString()Ljava/lang/String;
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionList:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 264
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v2, ","

    .line 267
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageIOType()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageStatus()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    return-object v0
.end method

.method getReadAt()J
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->readAt:J

    return-wide v0
.end method

.method public getReceiptTimestamp()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->deliveredAt:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    return-wide v0
.end method

.method protected getUniqueToken()Ljava/lang/String;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateAt()J
    .locals 2

    .line 166
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->updateAt:J

    return-wide v0
.end method

.method protected initMessage(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method public isMentionAll()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionAll:Z

    return v0
.end method

.method public mentioned()Z
    .locals 2

    .line 236
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->isMentionAll()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->currentClient:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->content:Ljava/lang/String;

    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    return-void
.end method

.method setCurrentClient(Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->currentClient:Ljava/lang/String;

    return-void
.end method

.method setDeliveredAt(J)V
    .locals 0

    .line 134
    iput-wide p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->deliveredAt:J

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->from:Ljava/lang/String;

    return-void
.end method

.method public setMentionAll(Z)V
    .locals 0

    .line 300
    iput-boolean p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionAll:Z

    return-void
.end method

.method public setMentionList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionList:Ljava/util/List;

    return-void
.end method

.method public setMentionListString(Ljava/lang/String;)V
    .locals 2

    .line 278
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 279
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionList:Ljava/util/List;

    goto :goto_0

    :cond_0
    const-string v0, ","

    .line 281
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionList:Ljava/util/List;

    .line 283
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public setMessageIOType(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    return-void
.end method

.method public setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    return-void
.end method

.method setReadAt(J)V
    .locals 0

    .line 146
    iput-wide p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->readAt:J

    return-void
.end method

.method public setReceiptTimestamp(J)V
    .locals 0

    .line 130
    iput-wide p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->deliveredAt:J

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 109
    iput-wide p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    return-void
.end method

.method setUniqueToken(Ljava/lang/String;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    return-void
.end method

.method public setUpdateAt(J)V
    .locals 0

    .line 158
    iput-wide p1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->updateAt:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 327
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->from:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 331
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->deliveredAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 332
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->readAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 333
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->updateAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 334
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->getStatusCode()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->getIOType()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    iget-boolean p2, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionAll:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMentionListString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
