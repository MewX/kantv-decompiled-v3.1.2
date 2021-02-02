.class public Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "ChunkedInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mChunkLength:I

.field private mChunkLengthRemaining:I

.field private mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field pending:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    .line 10
    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLengthRemaining:I

    .line 11
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_LEN:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 46
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method

.method private checkByte(CC)Z
    .locals 2

    if-eq p1, p2, :cond_0

    .line 25
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " was expected, got "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->report(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private checkCR(C)Z
    .locals 1

    const/16 v0, 0xd

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->checkByte(CC)Z

    move-result p1

    return p1
.end method

.method private checkLF(C)Z
    .locals 1

    const/16 v0, 0xa

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->checkByte(CC)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2

    .line 50
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result p1

    if-lez p1, :cond_a

    .line 51
    sget-object p1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$1;->$SwitchMap$com$koushikdutta$async$http$filter$ChunkedInputFilter$State:[I

    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    .line 95
    :pswitch_1
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getByteChar()C

    move-result p1

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->checkLF(C)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 97
    :cond_0
    iget p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    if-lez p1, :cond_1

    .line 98
    sget-object p1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_LEN:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    goto :goto_1

    .line 102
    :cond_1
    sget-object p1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->COMPLETE:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const/4 p1, 0x0

    .line 103
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->report(Ljava/lang/Exception;)V

    :goto_1
    const/4 p1, 0x0

    .line 105
    iput p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    goto :goto_0

    .line 90
    :pswitch_2
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getByteChar()C

    move-result p1

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->checkCR(C)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 92
    :cond_2
    sget-object p1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_CRLF:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    goto :goto_0

    .line 78
    :pswitch_3
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result p1

    .line 79
    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLengthRemaining:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 80
    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLengthRemaining:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLengthRemaining:I

    .line 81
    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLengthRemaining:I

    if-nez v0, :cond_3

    .line 82
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_CR:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    :cond_3
    if-nez p1, :cond_4

    goto :goto_0

    .line 86
    :cond_4
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v0, p1}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 87
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, p1}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_0

    .line 73
    :pswitch_4
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getByteChar()C

    move-result p1

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->checkLF(C)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 75
    :cond_5
    sget-object p1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    goto :goto_0

    .line 53
    :pswitch_5
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getByteChar()C

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_6

    .line 55
    sget-object p1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->CHUNK_LEN_CR:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    goto :goto_2

    .line 58
    :cond_6
    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    mul-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    const/16 v0, 0x61

    if-lt p1, v0, :cond_7

    const/16 v0, 0x66

    if-gt p1, v0, :cond_7

    .line 60
    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    add-int/lit8 p1, p1, -0x61

    add-int/lit8 p1, p1, 0xa

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    goto :goto_2

    :cond_7
    const/16 v0, 0x30

    if-lt p1, v0, :cond_8

    const/16 v0, 0x39

    if-gt p1, v0, :cond_8

    .line 62
    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    add-int/lit8 p1, p1, -0x30

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    goto :goto_2

    :cond_8
    const/16 v0, 0x41

    if-lt p1, v0, :cond_9

    const/16 v0, 0x46

    if-gt p1, v0, :cond_9

    .line 64
    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    add-int/lit8 p1, p1, -0x41

    add-int/lit8 p1, p1, 0xa

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    .line 70
    :goto_2
    iget p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    iput p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLengthRemaining:I

    goto/16 :goto_0

    .line 66
    :cond_9
    new-instance p2, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid chunk length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->report(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->report(Ljava/lang/Exception;)V

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 2

    if-nez p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    sget-object v1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->COMPLETE:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    if-eq v0, v1, :cond_0

    .line 42
    new-instance p1, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    const-string v0, "chunked input ended before final chunk"

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    .line 43
    :cond_0
    invoke-super {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->report(Ljava/lang/Exception;)V

    return-void
.end method
