.class public Lorg/msgpack/core/buffer/MessageBuffer;
.super Ljava/lang/Object;
.source "MessageBuffer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ARRAY_BYTE_BASE_OFFSET:I

.field private static final BIGENDIAN_MESSAGE_BUFFER:Ljava/lang/String; = "org.msgpack.core.buffer.MessageBufferBE"

.field private static final DEFAULT_MESSAGE_BUFFER:Ljava/lang/String; = "org.msgpack.core.buffer.MessageBuffer"

.field private static final UNIVERSAL_MESSAGE_BUFFER:Ljava/lang/String; = "org.msgpack.core.buffer.MessageBufferU"

.field static final isUniversalBuffer:Z

.field private static final mbArrConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final mbBBConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field protected final address:J

.field protected final base:Ljava/lang/Object;

.field protected final reference:Ljava/nio/ByteBuffer;

.field protected final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, ""

    const-string v1, "org.msgpack.core.buffer.MessageBuffer"

    const-string v2, "org.msgpack.core.buffer.MessageBufferBE"

    const-string v3, "org.msgpack.core.buffer.MessageBufferU"

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_0
    const-string v10, "java.specification.version"

    .line 73
    invoke-static {v10, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2e

    .line 74
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 78
    :try_start_1
    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v11, v9

    .line 79
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-gt v12, v9, :cond_1

    if-ne v12, v9, :cond_0

    const/4 v11, 0x7

    if-lt v10, v11, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v10, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v10, 0x1

    goto :goto_2

    :catch_0
    move-exception v10

    .line 83
    :try_start_2
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v10, v11}, Ljava/lang/NumberFormatException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :goto_2
    :try_start_3
    const-string v11, "sun.misc.Unsafe"

    .line 89
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_3

    :catch_1
    :cond_2
    const/4 v11, 0x0

    :goto_3
    :try_start_4
    const-string v12, "java.runtime.name"

    .line 95
    invoke-static {v12, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v12, "android"

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v12, "com.google.appengine.runtime.version"

    .line 98
    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    goto :goto_4

    :cond_3
    const/4 v12, 0x0

    :goto_4
    const-string v13, "msgpack.universal-buffer"

    const-string v14, "false"

    .line 102
    invoke-static {v13, v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v13, :cond_5

    if-nez v0, :cond_5

    if-nez v12, :cond_5

    if-eqz v10, :cond_5

    if-nez v11, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    goto :goto_6

    :cond_5
    :goto_5
    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_8

    .line 110
    :try_start_5
    const-class v10, Lsun/misc/Unsafe;

    const-string v11, "theUnsafe"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 111
    invoke-virtual {v10, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 112
    invoke-virtual {v10, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/misc/Unsafe;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v10, :cond_7

    .line 116
    :try_start_6
    const-class v5, [B

    invoke-virtual {v10, v5}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v4

    .line 117
    const-class v5, [B

    invoke-virtual {v10, v5}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v5

    if-ne v5, v9, :cond_6

    move-object v5, v10

    goto :goto_7

    .line 121
    :cond_6
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Byte array index scale must be 1, but is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    :catchall_0
    move-exception v5

    move-object v15, v10

    move v10, v0

    move-object v0, v5

    move-object v5, v15

    goto/16 :goto_e

    :catch_2
    move-exception v5

    move-object v15, v10

    move v10, v0

    move-object v0, v5

    move-object v5, v15

    goto/16 :goto_a

    .line 114
    :cond_7
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v11, "Unsafe is unavailable"

    invoke-direct {v5, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_1
    move-exception v10

    move-object v15, v10

    move v10, v0

    move-object v0, v15

    goto/16 :goto_e

    :catch_3
    move-exception v10

    move-object v15, v10

    move v10, v0

    move-object v0, v15

    goto :goto_a

    .line 132
    :cond_8
    :goto_7
    sput-object v5, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    .line 133
    sput v4, Lorg/msgpack/core/buffer/MessageBuffer;->ARRAY_BYTE_BASE_OFFSET:I

    .line 136
    sput-boolean v0, Lorg/msgpack/core/buffer/MessageBuffer;->isUniversalBuffer:Z

    .line 138
    sget-boolean v0, Lorg/msgpack/core/buffer/MessageBuffer;->isUniversalBuffer:Z

    if-eqz v0, :cond_9

    goto :goto_9

    .line 143
    :cond_9
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_b

    move-object v3, v1

    goto :goto_9

    :cond_b
    move-object v3, v2

    .line 152
    :goto_9
    :try_start_7
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 155
    new-array v1, v7, [Ljava/lang/Class;

    const-class v2, [B

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v9

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 157
    sput-object v1, Lorg/msgpack/core/buffer/MessageBuffer;->mbArrConstructor:Ljava/lang/reflect/Constructor;

    .line 160
    new-array v1, v9, [Ljava/lang/Class;

    const-class v2, Ljava/nio/ByteBuffer;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 162
    sput-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->mbBBConstructor:Ljava/lang/reflect/Constructor;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    .line 165
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 166
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_2
    move-exception v0

    const/4 v10, 0x0

    goto :goto_e

    :catch_5
    move-exception v0

    const/4 v10, 0x0

    .line 126
    :goto_a
    :try_start_8
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v11}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 132
    sput-object v5, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    .line 133
    sput v4, Lorg/msgpack/core/buffer/MessageBuffer;->ARRAY_BYTE_BASE_OFFSET:I

    .line 136
    sput-boolean v9, Lorg/msgpack/core/buffer/MessageBuffer;->isUniversalBuffer:Z

    .line 138
    sget-boolean v0, Lorg/msgpack/core/buffer/MessageBuffer;->isUniversalBuffer:Z

    if-eqz v0, :cond_c

    goto :goto_c

    .line 143
    :cond_c
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v3, :cond_d

    const/4 v0, 0x1

    goto :goto_b

    :cond_d
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_e

    move-object v3, v1

    goto :goto_c

    :cond_e
    move-object v3, v2

    .line 152
    :goto_c
    :try_start_9
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 155
    new-array v1, v7, [Ljava/lang/Class;

    const-class v2, [B

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v9

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 157
    sput-object v1, Lorg/msgpack/core/buffer/MessageBuffer;->mbArrConstructor:Ljava/lang/reflect/Constructor;

    .line 160
    new-array v1, v9, [Ljava/lang/Class;

    const-class v2, Ljava/nio/ByteBuffer;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 162
    sput-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->mbBBConstructor:Ljava/lang/reflect/Constructor;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :goto_d
    return-void

    :catch_6
    move-exception v0

    .line 165
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 166
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_3
    move-exception v0

    .line 132
    :goto_e
    sput-object v5, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    .line 133
    sput v4, Lorg/msgpack/core/buffer/MessageBuffer;->ARRAY_BYTE_BASE_OFFSET:I

    .line 136
    sput-boolean v10, Lorg/msgpack/core/buffer/MessageBuffer;->isUniversalBuffer:Z

    .line 138
    sget-boolean v4, Lorg/msgpack/core/buffer/MessageBuffer;->isUniversalBuffer:Z

    if-nez v4, :cond_11

    .line 143
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v4, :cond_f

    const/4 v3, 0x1

    goto :goto_f

    :cond_f
    const/4 v3, 0x0

    :goto_f
    if-eqz v3, :cond_10

    move-object v3, v1

    goto :goto_10

    :cond_10
    move-object v3, v2

    .line 152
    :cond_11
    :goto_10
    :try_start_a
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 155
    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, [B

    aput-object v3, v2, v8

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v9

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 156
    invoke-virtual {v2, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 157
    sput-object v2, Lorg/msgpack/core/buffer/MessageBuffer;->mbArrConstructor:Ljava/lang/reflect/Constructor;

    .line 160
    new-array v2, v9, [Ljava/lang/Class;

    const-class v3, Ljava/nio/ByteBuffer;

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 161
    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 162
    sput-object v1, Lorg/msgpack/core/buffer/MessageBuffer;->mbBBConstructor:Ljava/lang/reflect/Constructor;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 168
    throw v0

    :catch_7
    move-exception v0

    .line 165
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 166
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_12

    :goto_11
    throw v1

    :goto_12
    goto :goto_11
.end method

.method protected constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    .line 378
    iput-wide p2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    .line 379
    iput p4, p0, Lorg/msgpack/core/buffer/MessageBuffer;->size:I

    const/4 p1, 0x0

    .line 380
    iput-object p1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->reference:Ljava/nio/ByteBuffer;

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 355
    sget-boolean v0, Lorg/msgpack/core/buffer/MessageBuffer;->isUniversalBuffer:Z

    if-nez v0, :cond_0

    .line 359
    iput-object v1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    .line 360
    invoke-static {p1}, Lorg/msgpack/core/buffer/DirectBufferAccess;->getAddress(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    .line 361
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lorg/msgpack/core/buffer/MessageBuffer;->size:I

    .line 362
    iput-object p1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->reference:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 356
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot create MessageBuffer from a DirectBuffer on this platform"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    .line 366
    sget v0, Lorg/msgpack/core/buffer/MessageBuffer;->ARRAY_BYTE_BASE_OFFSET:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v0, v2

    int-to-long v2, v0

    iput-wide v2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    .line 367
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    iput p1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->size:I

    .line 368
    iput-object v1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->reference:Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    .line 371
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only the array-backed ByteBuffer or DirectBuffer is supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>([BII)V
    .locals 0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    .line 342
    sget p1, Lorg/msgpack/core/buffer/MessageBuffer;->ARRAY_BYTE_BASE_OFFSET:I

    add-int/2addr p1, p2

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    .line 343
    iput p3, p0, Lorg/msgpack/core/buffer/MessageBuffer;->size:I

    const/4 p1, 0x0

    .line 344
    iput-object p1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->reference:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static allocate(I)Lorg/msgpack/core/buffer/MessageBuffer;
    .locals 1

    if-ltz p0, :cond_0

    .line 205
    new-array p0, p0, [B

    invoke-static {p0}, Lorg/msgpack/core/buffer/MessageBuffer;->wrap([B)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object p0

    return-object p0

    .line 203
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "size must not be negative"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static varargs newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lorg/msgpack/core/buffer/MessageBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/msgpack/core/buffer/MessageBuffer;"
        }
    .end annotation

    .line 295
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/msgpack/core/buffer/MessageBuffer;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 306
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 310
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 314
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 308
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 303
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 299
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static newMessageBuffer(Ljava/nio/ByteBuffer;)Lorg/msgpack/core/buffer/MessageBuffer;
    .locals 3

    .line 280
    invoke-static {p0}, Lorg/msgpack/core/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->mbBBConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lorg/msgpack/core/buffer/MessageBuffer;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static newMessageBuffer([BII)Lorg/msgpack/core/buffer/MessageBuffer;
    .locals 3

    .line 268
    invoke-static {p0}, Lorg/msgpack/core/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->mbArrConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    invoke-static {v0, v1}, Lorg/msgpack/core/buffer/MessageBuffer;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static releaseBuffer(Lorg/msgpack/core/buffer/MessageBuffer;)V
    .locals 3

    .line 320
    sget-boolean v0, Lorg/msgpack/core/buffer/MessageBuffer;->isUniversalBuffer:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/msgpack/core/buffer/MessageBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/msgpack/core/buffer/MessageBuffer;->reference:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/msgpack/core/buffer/DirectBufferAccess;->isDirectByteBufferInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-object p0, p0, Lorg/msgpack/core/buffer/MessageBuffer;->reference:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lorg/msgpack/core/buffer/DirectBufferAccess;->clean(Ljava/lang/Object;)V

    goto :goto_0

    .line 328
    :cond_1
    sget-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->freeMemory(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static wrap(Ljava/nio/ByteBuffer;)Lorg/msgpack/core/buffer/MessageBuffer;
    .locals 0

    .line 257
    invoke-static {p0}, Lorg/msgpack/core/buffer/MessageBuffer;->newMessageBuffer(Ljava/nio/ByteBuffer;)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static wrap([B)Lorg/msgpack/core/buffer/MessageBuffer;
    .locals 2

    .line 221
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/msgpack/core/buffer/MessageBuffer;->newMessageBuffer([BII)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static wrap([BII)Lorg/msgpack/core/buffer/MessageBuffer;
    .locals 0

    .line 239
    invoke-static {p0, p1, p2}, Lorg/msgpack/core/buffer/MessageBuffer;->newMessageBuffer([BII)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 597
    iget-object v0, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public arrayOffset()I
    .locals 2

    .line 602
    iget-wide v0, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    long-to-int v1, v0

    sget v0, Lorg/msgpack/core/buffer/MessageBuffer;->ARRAY_BYTE_BASE_OFFSET:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public copyTo(ILorg/msgpack/core/buffer/MessageBuffer;II)V
    .locals 9

    .line 615
    sget-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget-object v4, p2, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide p1, p2, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v5, p3

    add-long/2addr v5, p1

    int-to-long v7, p4

    invoke-virtual/range {v0 .. v8}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public getBoolean(I)Z
    .locals 6

    .line 415
    sget-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public getByte(I)B
    .locals 6

    .line 410
    sget-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public getBytes(IILjava/nio/ByteBuffer;)V
    .locals 1

    .line 461
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 464
    invoke-virtual {p0, p1, p2}, Lorg/msgpack/core/buffer/MessageBuffer;->sliceAsByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 465
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    .line 462
    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method

.method public getBytes(I[BII)V
    .locals 9

    .line 456
    sget-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    sget p1, Lorg/msgpack/core/buffer/MessageBuffer;->ARRAY_BYTE_BASE_OFFSET:I

    add-int/2addr p1, p3

    int-to-long v5, p1

    int-to-long v7, p4

    move-object v4, p2

    invoke-virtual/range {v0 .. v8}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public getDouble(I)D
    .locals 2

    .line 451
    invoke-virtual {p0, p1}, Lorg/msgpack/core/buffer/MessageBuffer;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 0

    .line 440
    invoke-virtual {p0, p1}, Lorg/msgpack/core/buffer/MessageBuffer;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 6

    .line 433
    sget-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    .line 435
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 6

    .line 445
    sget-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 446
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 6

    .line 420
    sget-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result p1

    .line 421
    invoke-static {p1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p1

    return p1
.end method

.method public hasArray()Z
    .locals 1

    .line 580
    iget-object v0, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putBoolean(IZ)V
    .locals 6

    .line 475
    sget-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public putByte(IB)V
    .locals 6

    .line 470
    sget-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public putByteBuffer(ILjava/nio/ByteBuffer;I)V
    .locals 10

    .line 524
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    sget-object v1, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    invoke-static {p2}, Lorg/msgpack/core/buffer/DirectBufferAccess;->getAddress(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v5, v0

    add-long/2addr v3, v5

    iget-object v5, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v6, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v8, p1

    add-long/2addr v6, v8

    int-to-long v8, p3

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 526
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    add-int/2addr p1, p3

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 528
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 530
    sget-object v1, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    sget v0, Lorg/msgpack/core/buffer/MessageBuffer;->ARRAY_BYTE_BASE_OFFSET:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v0, v3

    int-to-long v3, v0

    iget-object v5, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v6, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v8, p1

    add-long/2addr v6, v8

    int-to-long v8, p3

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 531
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    add-int/2addr p1, p3

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 534
    :cond_1
    invoke-virtual {p0}, Lorg/msgpack/core/buffer/MessageBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p2, v0, p1, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    .line 539
    sget-object v1, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v3, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v5, p1

    add-long/2addr v3, v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public putBytes(I[BII)V
    .locals 9

    .line 516
    sget-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    sget v1, Lorg/msgpack/core/buffer/MessageBuffer;->ARRAY_BYTE_BASE_OFFSET:I

    add-int/2addr v1, p3

    int-to-long v2, v1

    iget-object v4, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v5, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v7, p1

    add-long/2addr v5, v7

    int-to-long v7, p4

    move-object v1, p2

    invoke-virtual/range {v0 .. v8}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public putDouble(ID)V
    .locals 0

    .line 511
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/msgpack/core/buffer/MessageBuffer;->putLong(IJ)V

    return-void
.end method

.method public putFloat(IF)V
    .locals 0

    .line 499
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/msgpack/core/buffer/MessageBuffer;->putInt(II)V

    return-void
.end method

.method public putInt(II)V
    .locals 6

    .line 493
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    .line 494
    sget-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public putLong(IJ)V
    .locals 6

    .line 505
    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    .line 506
    sget-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide p2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v2, p1

    add-long/2addr v2, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public putMessageBuffer(ILorg/msgpack/core/buffer/MessageBuffer;II)V
    .locals 9

    .line 547
    sget-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p2, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v2, p2, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long p2, p3

    add-long/2addr v2, p2

    iget-object v4, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide p2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v5, p1

    add-long/2addr v5, p2

    int-to-long v7, p4

    invoke-virtual/range {v0 .. v8}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public putShort(IS)V
    .locals 6

    .line 480
    invoke-static {p2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p2

    .line 481
    sget-object v0, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 393
    iget v0, p0, Lorg/msgpack/core/buffer/MessageBuffer;->size:I

    return v0
.end method

.method public slice(II)Lorg/msgpack/core/buffer/MessageBuffer;
    .locals 6

    if-nez p1, :cond_0

    .line 399
    invoke-virtual {p0}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    add-int v0, p1, p2

    .line 403
    invoke-virtual {p0}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/msgpack/core/Preconditions;->checkArgument(Z)V

    .line 404
    new-instance v0, Lorg/msgpack/core/buffer/MessageBuffer;

    iget-object v1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/msgpack/core/buffer/MessageBuffer;-><init>(Ljava/lang/Object;JI)V

    return-object v0
.end method

.method public sliceAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 575
    invoke-virtual {p0}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/msgpack/core/buffer/MessageBuffer;->sliceAsByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public sliceAsByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 5

    .line 559
    invoke-virtual {p0}, Lorg/msgpack/core/buffer/MessageBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget-wide v1, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    sget v3, Lorg/msgpack/core/buffer/MessageBuffer;->ARRAY_BYTE_BASE_OFFSET:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    int-to-long v3, p1

    add-long/2addr v1, v3

    long-to-int p1, v1

    invoke-static {v0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 564
    :cond_0
    iget-wide v0, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    iget-object v2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->reference:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, p1, p2, v2}, Lorg/msgpack/core/buffer/DirectBufferAccess;->newByteBuffer(JIILjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public toByteArray()[B
    .locals 10

    .line 590
    invoke-virtual {p0}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 591
    sget-object v1, Lorg/msgpack/core/buffer/MessageBuffer;->unsafe:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/msgpack/core/buffer/MessageBuffer;->base:Ljava/lang/Object;

    iget-wide v3, p0, Lorg/msgpack/core/buffer/MessageBuffer;->address:J

    sget v5, Lorg/msgpack/core/buffer/MessageBuffer;->ARRAY_BYTE_BASE_OFFSET:I

    int-to-long v6, v5

    invoke-virtual {p0}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v5

    int-to-long v8, v5

    move-object v5, v0

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-object v0
.end method

.method public toHexString(II)Ljava/lang/String;
    .locals 5

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_1

    if-eq v1, p1, :cond_0

    const-string v2, " "

    .line 623
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x1

    .line 625
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, v1}, Lorg/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
