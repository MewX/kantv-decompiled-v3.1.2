.class public Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;
.super Lcom/avos/avoscloud/im/v2/AVIMMessage;
.source "AVIMBinaryMessage.java"


# static fields
.field public static final CREATOR:Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/im/v2/AVIMMessageCreator<",
            "Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 98
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    const-class v1, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->CREATOR:Lcom/avos/avoscloud/im/v2/AVIMMessageCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>()V

    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->bytes:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 112
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->bytes:[B

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->bytes:[B

    goto :goto_0

    .line 117
    :cond_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->bytes:[B

    .line 118
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->bytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 14
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->bytes:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p6}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    const/4 p1, 0x0

    .line 14
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->bytes:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p8}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    const/4 p1, 0x0

    .line 14
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->bytes:[B

    return-void
.end method

.method public static createInstanceFromMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;

    invoke-direct {v0}, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->conversationId:Ljava/lang/String;

    iput-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->conversationId:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->currentClient:Ljava/lang/String;

    iput-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->currentClient:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->from:Ljava/lang/String;

    iput-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->from:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    iput-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->ioType:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    .line 69
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionList:Ljava/util/List;

    iput-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->mentionList:Ljava/util/List;

    .line 70
    iget-boolean v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionAll:Z

    iput-boolean v1, v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->mentionAll:Z

    .line 71
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->messageId:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->uniqueToken:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    iput-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->status:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    .line 75
    iget-wide v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->deliveredAt:J

    iput-wide v1, v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->deliveredAt:J

    .line 76
    iget-wide v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->readAt:J

    iput-wide v1, v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->readAt:J

    .line 77
    iget-wide v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    iput-wide v1, v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->timestamp:J

    .line 78
    iget-wide v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->updateAt:J

    iput-wide v1, v0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->updateAt:J

    return-object v0
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->bytes:[B

    return-object v0
.end method

.method public setBytes([B)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->bytes:[B

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 102
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 103
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->bytes:[B

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 104
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    :cond_0
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMBinaryMessage;->bytes:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    return-void
.end method
