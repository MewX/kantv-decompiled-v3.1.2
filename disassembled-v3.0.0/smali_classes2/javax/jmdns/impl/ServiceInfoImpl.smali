.class public Ljavax/jmdns/impl/ServiceInfoImpl;
.super Ljavax/jmdns/ServiceInfo;
.source "ServiceInfoImpl.java"

# interfaces
.implements Ljavax/jmdns/impl/DNSListener;
.implements Ljavax/jmdns/impl/DNSStatefulObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;,
        Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;
    }
.end annotation


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private _application:Ljava/lang/String;

.field private _delegate:Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;

.field private _domain:Ljava/lang/String;

.field private final _ipv4Addresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field private final _ipv6Addresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field

.field private transient _key:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _needTextAnnouncing:Z

.field private _persistent:Z

.field private _port:I

.field private _priority:I

.field private _props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private _protocol:Ljava/lang/String;

.field private _server:Ljava/lang/String;

.field private final _state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

.field private _subtype:Ljava/lang/String;

.field private _text:[B

.field private _weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V
    .locals 7

    .line 128
    invoke-static {p1, p2, p3}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const/4 p1, 0x0

    move-object v6, p1

    check-cast v6, [B

    move-object v0, p0

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 129
    iput-object p8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    .line 133
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 p2, 0x100

    invoke-direct {p1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 134
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    const/16 p3, 0x64

    invoke-direct {p2, p3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 135
    invoke-static {p2, p8}, Ljavax/jmdns/impl/ServiceInfoImpl;->writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 137
    array-length p3, p2

    const/16 p4, 0xff

    if-gt p3, p4, :cond_1

    .line 140
    array-length p3, p2

    int-to-byte p3, p3

    invoke-virtual {p1, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p3, 0x0

    .line 141
    array-length p4, p2

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 142
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 146
    array-length p2, p1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ljavax/jmdns/impl/DNSRecord;->EMPTY_TXT:[B

    :goto_0
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    return-void

    .line 138
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot have individual values larger that 255 chars. Offending value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 144
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 161
    invoke-static {p1, p2, p3}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p8}, Ljavax/jmdns/impl/ServiceInfoImpl;->textFromProperties(Ljava/util/Map;)[B

    move-result-object v6

    move-object v0, p0

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V
    .locals 7

    .line 176
    invoke-static {p1, p2, p3}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    move-object v0, p0

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;IIIZLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 184
    move-object v7, v0

    check-cast v7, [B

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 185
    iput-object p6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    .line 187
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 188
    invoke-static {p1, p6}, Ljavax/jmdns/impl/ServiceInfoImpl;->writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 191
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/util/Map;IIIZLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 180
    invoke-static {p6}, Ljavax/jmdns/impl/ServiceInfoImpl;->textFromProperties(Ljava/util/Map;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;IIIZ[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ[B)V"
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Ljavax/jmdns/ServiceInfo;-><init>()V

    .line 196
    invoke-static {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->checkQualifiedNameMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 198
    sget-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    .line 199
    sget-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    .line 200
    sget-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    .line 201
    sget-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    .line 202
    sget-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    .line 204
    iput p2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    .line 205
    iput p3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    .line 206
    iput p4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    .line 207
    iput-object p6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    const/4 p1, 0x0

    .line 208
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setNeedTextAnnouncing(Z)V

    .line 209
    new-instance p1, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-direct {p1, p0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;-><init>(Ljavax/jmdns/impl/ServiceInfoImpl;)V

    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    .line 210
    iput-boolean p5, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    .line 211
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    .line 212
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljavax/jmdns/ServiceInfo;)V
    .locals 6

    .line 220
    invoke-direct {p0}, Ljavax/jmdns/ServiceInfo;-><init>()V

    .line 221
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    .line 222
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getApplication()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getSubtype()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v0

    iput v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    .line 230
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getWeight()I

    move-result v0

    iput v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    .line 231
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getPriority()I

    move-result v0

    iput v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    .line 232
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    .line 233
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->isPersistent()Z

    move-result v0

    iput-boolean v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    .line 234
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v0

    .line 235
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 236
    iget-object v5, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object p1

    .line 239
    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p1, v2

    .line 240
    iget-object v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 243
    :cond_1
    new-instance p1, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-direct {p1, p0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;-><init>(Ljavax/jmdns/impl/ServiceInfoImpl;)V

    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    return-void
.end method

.method protected static checkQualifiedNameMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 332
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "local"

    if-eqz v1, :cond_0

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 333
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move-object v1, v2

    .line 336
    :cond_2
    invoke-static {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    sget-object v2, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "tcp"

    if-eqz v1, :cond_3

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 340
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    move-object v1, v2

    .line 343
    :cond_5
    invoke-static {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    sget-object v2, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_6

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_7

    .line 347
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    move-object v1, v2

    .line 350
    :cond_8
    invoke-static {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    sget-object v3, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_3

    :cond_9
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_a

    .line 354
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    move-object v1, v2

    .line 358
    :cond_b
    invoke-static {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    sget-object v3, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_4

    :cond_c
    move-object p0, v2

    :goto_4
    if-eqz p0, :cond_d

    .line 362
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    move-object p0, v2

    .line 365
    :cond_e
    invoke-static {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 366
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    invoke-static {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 249
    sget-object v0, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object p1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-static {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->checkQualifiedNameMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "in-addr.arpa"

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "ip6.arpa"

    const/4 v4, 0x0

    const-string v5, ""

    if-nez v2, :cond_a

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v1, "_"

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x2e

    const-string v6, "."

    if-nez v2, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 274
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_6

    .line 279
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v7, "._"

    if-eqz v2, :cond_2

    const-string v2, "_services"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 280
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    .line 283
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v2, v2, 0x1

    .line 284
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 285
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 286
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    move-object v9, v0

    goto :goto_0

    :cond_4
    move-object v9, v0

    move-object v8, v5

    .line 291
    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    add-int/lit8 v2, v2, 0x2

    .line 294
    invoke-virtual {v9, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 295
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v5

    .line 297
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 299
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    .line 300
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v9, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    sub-int/2addr v3, v6

    if-le v3, v1, :cond_6

    .line 302
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v5

    :goto_2
    if-lez v0, :cond_7

    add-int/lit8 v0, v0, -0x1

    .line 305
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object p0, v1

    goto :goto_3

    :cond_7
    move-object p0, v1

    move-object v0, v5

    goto :goto_3

    :cond_8
    move-object p0, v5

    .line 310
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "._sub"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    add-int/lit8 v3, v1, 0x5

    .line 313
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 314
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_9
    move-object v1, v8

    goto :goto_7

    .line 268
    :cond_a
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 269
    :goto_5
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_6
    move-object v0, v5

    move-object v2, v0

    .line 318
    :goto_7
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 319
    sget-object v4, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-static {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object p0, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object p0, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-static {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object p0, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object p0, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v3, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method private final hasInetAddress()Z
    .locals 1

    .line 970
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

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

.method private static removeSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 375
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    .line 376
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 377
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v1, "_"

    .line 379
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 382
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 383
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private static textFromProperties(Ljava/util/Map;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 1270
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1271
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1272
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1273
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1274
    invoke-static {v5, v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v6, 0x0

    if-nez v4, :cond_0

    goto :goto_1

    .line 1277
    :cond_0
    instance-of v7, v4, Ljava/lang/String;

    const/16 v8, 0x3d

    if-eqz v7, :cond_1

    .line 1278
    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1279
    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v7}, Ljavax/jmdns/impl/ServiceInfoImpl;->writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 1280
    :cond_1
    instance-of v7, v4, [B

    if-eqz v7, :cond_5

    .line 1281
    move-object v7, v4

    check-cast v7, [B

    check-cast v7, [B

    .line 1282
    array-length v9, v7

    if-lez v9, :cond_2

    .line 1283
    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1284
    array-length v8, v7

    invoke-virtual {v5, v7, v6, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 1291
    :goto_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 1292
    array-length v7, v5

    const/16 v8, 0xff

    if-le v7, v8, :cond_4

    .line 1293
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot have individual values larger that 255 chars. Offending value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    const-string v1, ""

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1295
    :cond_4
    array-length v3, v5

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1296
    array-length v3, v5

    invoke-virtual {v1, v5, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_0

    .line 1289
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid property value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1298
    :cond_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 1300
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 1303
    array-length p0, v0

    if-lez p0, :cond_8

    goto :goto_4

    :cond_8
    sget-object v0, Ljavax/jmdns/impl/DNSRecord;->EMPTY_TXT:[B

    :goto_4
    return-object v0
.end method

.method static writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 771
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 772
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_0

    .line 774
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_0
    const/16 v3, 0x7ff

    if-le v2, v3, :cond_1

    shr-int/lit8 v3, v2, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    .line 777
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    .line 778
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v2, v2, 0x0

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    .line 779
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_1
    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    .line 781
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v2, v2, 0x0

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    .line 782
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method _setText([B)V
    .locals 0

    .line 1262
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    const/4 p1, 0x0

    .line 1263
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    return-void
.end method

.method addAddress(Ljava/net/Inet4Address;)V
    .locals 1

    .line 501
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addAddress(Ljava/net/Inet6Address;)V
    .locals 1

    .line 509
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    .locals 1

    .line 980
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    move-result p1

    return p1
.end method

.method public answers(Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjavax/jmdns/impl/HostInfo;)Ljava/util/Collection;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/jmdns/impl/constants/DNSRecordClass;",
            "ZI",
            "Ljavax/jmdns/impl/HostInfo;",
            ")",
            "Ljava/util/Collection<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1225
    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-eq v1, v3, :cond_0

    sget-object v3, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-ne v1, v3, :cond_2

    .line 1226
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1227
    new-instance v1, Ljavax/jmdns/impl/DNSRecord$Pointer;

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTypeWithSubtype()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v8

    move-object v3, v1

    move/from16 v7, p3

    invoke-direct/range {v3 .. v8}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    :cond_1
    new-instance v1, Ljavax/jmdns/impl/DNSRecord$Pointer;

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getType()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v14

    move-object v9, v1

    move/from16 v13, p3

    invoke-direct/range {v9 .. v14}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    new-instance v1, Ljavax/jmdns/impl/DNSRecord$Service;

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    iget v3, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    iget v4, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    iget v5, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    invoke-virtual/range {p4 .. p4}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v23

    move-object v15, v1

    move/from16 v18, p2

    move/from16 v19, p3

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    invoke-direct/range {v15 .. v23}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    new-instance v1, Ljavax/jmdns/impl/DNSRecord$Text;

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v11

    move-object v6, v1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-direct/range {v6 .. v11}, Ljavax/jmdns/impl/DNSRecord$Text;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v2
.end method

.method public associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 1

    .line 1028
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    return-void
.end method

.method public cancelState()Z
    .locals 1

    .line 996
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->cancelState()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->clone()Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljavax/jmdns/ServiceInfo;
    .locals 1

    .line 42
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->clone()Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/jmdns/impl/ServiceInfoImpl;
    .locals 8

    .line 1155
    new-instance v7, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    iget v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    iget v4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    iget-boolean v5, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    iget-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 1156
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v0

    .line 1157
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1158
    iget-object v5, v7, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1160
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v0

    .line 1161
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1162
    iget-object v4, v7, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v7
.end method

.method public closeState()Z
    .locals 1

    .line 1004
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->closeState()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1124
    instance-of v0, p1, Ljavax/jmdns/impl/ServiceInfoImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 518
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getApplication()Ljava/lang/String;
    .locals 1

    .line 725
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method getDelegate()Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;
    .locals 1

    .line 1348
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_delegate:Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;

    return-object v0
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .line 1315
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 733
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "local"

    :goto_0
    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 475
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getHostAddresses()[Ljava/lang/String;

    move-result-object v0

    .line 476
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getHostAddresses()[Ljava/lang/String;
    .locals 7

    .line 484
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v0

    .line 485
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v1

    .line 486
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 487
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 488
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 490
    :cond_0
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 491
    array-length v4, v0

    add-int/2addr v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public getInet4Address()Ljava/net/Inet4Address;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 537
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v0

    .line 538
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInet4Addresses()[Ljava/net/Inet4Address;
    .locals 2

    .line 569
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/Inet4Address;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/Inet4Address;

    return-object v0
.end method

.method public getInet6Address()Ljava/net/Inet6Address;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 547
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v0

    .line 548
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInet6Addresses()[Ljava/net/Inet6Address;
    .locals 2

    .line 578
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/Inet6Address;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/Inet6Address;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 527
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v0

    .line 528
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInetAddresses()[Ljava/net/InetAddress;
    .locals 3

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 558
    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 559
    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 560
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_key:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 422
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_key:Ljava/lang/String;

    .line 424
    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 413
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getNiceTextString()Ljava/lang/String;
    .locals 5

    .line 1132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1133
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_0

    const-string v1, "..."

    .line 1135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1138
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v3

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-lt v3, v4, :cond_2

    const/16 v4, 0x7f

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    int-to-char v3, v3

    .line 1143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    :goto_1
    const-string v4, "\\0"

    .line 1140
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x8

    .line 1141
    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1146
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 586
    iget v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 594
    iget v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    return v0
.end method

.method declared-synchronized getProperties()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    monitor-enter p0

    .line 836
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v0

    if-eqz v0, :cond_6

    .line 837
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 840
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 842
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_4

    add-int v3, v4, v2

    .line 843
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v5

    array-length v5, v5

    if-le v3, v5, :cond_0

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    .line 849
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v6

    add-int v7, v4, v5

    aget-byte v6, v6, v7

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 854
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v6

    invoke-virtual {p0, v6, v4, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->readUTF([BII)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 856
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    goto :goto_3

    :cond_2
    if-ne v5, v2, :cond_3

    .line 860
    sget-object v2, Ljavax/jmdns/impl/ServiceInfoImpl;->NO_VALUE:[B

    invoke-virtual {v0, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v2, v5

    .line 862
    new-array v7, v2, [B

    .line 863
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v8

    add-int/2addr v4, v5

    invoke-static {v8, v4, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 864
    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    goto :goto_0

    .line 844
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 870
    :try_start_2
    sget-object v2, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Malformed TXT Field "

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 872
    :cond_5
    :goto_3
    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    .line 874
    :cond_6
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    goto :goto_4

    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public declared-synchronized getPropertyBytes(Ljava/lang/String;)[B
    .locals 1

    monitor-enter p0

    .line 692
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPropertyNames()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 715
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 716
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 717
    :goto_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 700
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 702
    monitor-exit p0

    return-object p1

    .line 704
    :cond_0
    :try_start_1
    sget-object v0, Ljavax/jmdns/impl/ServiceInfoImpl;->NO_VALUE:[B

    if-ne p1, v0, :cond_1

    const-string p1, "true"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 705
    monitor-exit p0

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 707
    :try_start_2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->readUTF([BII)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 741
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "tcp"

    :goto_0
    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 8

    .line 443
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getApplication()Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v3

    .line 450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ""

    const-string v7, "."

    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v6

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v5, "_"

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v6

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualifiedNameMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 757
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 759
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getApplication()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .line 749
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getTextBytes()[B
    .locals 2

    .line 610
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljavax/jmdns/impl/DNSRecord;->EMPTY_TXT:[B

    :goto_0
    return-object v0
.end method

.method public getTextString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 619
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v0

    .line 620
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 621
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    .line 622
    array-length v2, v0

    if-lez v2, :cond_0

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 8

    .line 393
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getApplication()Ljava/lang/String;

    move-result-object v2

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "_"

    const-string v6, ""

    const-string v7, "."

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v6

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeWithSubtype()Ljava/lang/String;
    .locals 4

    .line 404
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v0

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "._sub."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "http"

    .line 637
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 656
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getURLs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 657
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 p1, 0x0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "://null:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getURLs()[Ljava/lang/String;
    .locals 1

    const-string v0, "http"

    .line 646
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getURLs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURLs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .line 666
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v0

    .line 667
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 668
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 669
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 670
    instance-of v4, v4, Ljava/net/Inet6Address;

    if-eqz v4, :cond_0

    .line 671
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 673
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "://"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "path"

    .line 674
    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 676
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    move-object v4, v5

    goto :goto_2

    .line 679
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 682
    :cond_3
    :goto_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 684
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getWeight()I
    .locals 1

    .line 602
    iget v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    return v0
.end method

.method public declared-synchronized hasData()Z
    .locals 1

    monitor-enter p0

    .line 965
    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasInetAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 1116
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnnounced()Z
    .locals 1

    .line 1060
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isAnnounced()Z

    move-result v0

    return v0
.end method

.method public isAnnouncing()Z
    .locals 1

    .line 1052
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isAnnouncing()Z

    move-result v0

    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    .locals 1

    .line 1036
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result p1

    return p1
.end method

.method public isCanceled()Z
    .locals 1

    .line 1076
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isCanceling()Z
    .locals 1

    .line 1068
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isCanceling()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1092
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 1084
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 1323
    iget-boolean v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    return v0
.end method

.method public isProbing()Z
    .locals 1

    .line 1044
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isProbing()Z

    move-result v0

    return v0
.end method

.method public needTextAnnouncing()Z
    .locals 1

    .line 1341
    iget-boolean v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_needTextAnnouncing:Z

    return v0
.end method

.method readUTF([BII)Ljava/lang/String;
    .locals 5

    .line 793
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    add-int v1, p2, p3

    :goto_0
    if-ge p2, v1, :cond_3

    add-int/lit8 v2, p2, 0x1

    .line 795
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v3, p2, 0x4

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    add-int/lit8 v3, v2, 0x1

    if-lt v3, p3, :cond_2

    return-object v4

    :pswitch_1
    add-int/lit8 v3, v2, 0x2

    if-lt v3, p3, :cond_0

    return-object v4

    :cond_0
    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0xc

    add-int/lit8 v3, v2, 0x1

    .line 820
    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr p2, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr p2, v3

    goto :goto_2

    :pswitch_2
    if-lt v2, p3, :cond_1

    return-object v4

    :cond_1
    and-int/lit8 p2, p2, 0x1f

    shl-int/lit8 p2, p2, 0x6

    add-int/lit8 v3, v2, 0x1

    .line 813
    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3f

    goto :goto_1

    :cond_2
    and-int/lit8 p2, p2, 0x3f

    shl-int/lit8 p2, p2, 0x4

    .line 827
    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0xf

    :goto_1
    or-int/2addr p2, v2

    move v2, v3

    :goto_2
    :pswitch_3
    int-to-char p2, p2

    .line 830
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v2

    goto :goto_0

    .line 832
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public recoverState()Z
    .locals 1

    .line 1012
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->recoverState()Z

    move-result v0

    return v0
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .locals 1

    .line 1020
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    return-void
.end method

.method public revertState()Z
    .locals 1

    .line 988
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->revertState()Z

    move-result v0

    return v0
.end method

.method setDelegate(Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;)V
    .locals 0

    .line 1356
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_delegate:Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;

    return-void
.end method

.method public setDns(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 1

    .line 1307
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0

    .line 434
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 435
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_key:Ljava/lang/String;

    return-void
.end method

.method public setNeedTextAnnouncing(Z)V
    .locals 1

    .line 1331
    iput-boolean p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_needTextAnnouncing:Z

    .line 1332
    iget-boolean p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_needTextAnnouncing:Z

    if-eqz p1, :cond_0

    .line 1333
    iget-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    :cond_0
    return-void
.end method

.method setServer(Ljava/lang/String;)V
    .locals 0

    .line 466
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1253
    invoke-static {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->textFromProperties(Ljava/util/Map;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setText([B)V

    return-void
.end method

.method public setText([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1241
    monitor-enter p0

    .line 1242
    :try_start_0
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    const/4 p1, 0x0

    .line 1243
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    const/4 p1, 0x1

    .line 1244
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setNeedTextAnnouncing(Z)V

    .line 1245
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name: \'"

    .line 1174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ""

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTypeWithSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' address: \'"

    .line 1176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v1

    .line 1178
    array-length v2, v1

    if-lez v2, :cond_1

    .line 1179
    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 1180
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    .line 1181
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1182
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    .line 1183
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "(null):"

    .line 1186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "\' status: \'"

    .line 1189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\' is persistent,"

    goto :goto_2

    :cond_3
    const-string v1, "\',"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has "

    .line 1192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const-string v3, "NO "

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "data"

    .line 1194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_6

    .line 1198
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v1

    .line 1199
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "\n"

    .line 1200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    const-string v1, " empty"

    .line 1205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v1, 0x5d

    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V
    .locals 4

    .line 886
    instance-of v0, p4, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v0, :cond_c

    invoke-virtual {p4, p2, p3}, Ljavax/jmdns/impl/DNSEntry;->isExpired(J)Z

    move-result v0

    if-nez v0, :cond_c

    .line 888
    sget-object v0, Ljavax/jmdns/impl/ServiceInfoImpl$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_8

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto/16 :goto_4

    .line 933
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getSubtype()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_a

    .line 934
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getSubtype()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    goto/16 :goto_5

    .line 925
    :cond_1
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 926
    check-cast p4, Ljavax/jmdns/impl/DNSRecord$Text;

    .line 927
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Text;->getText()[B

    move-result-object p1

    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    const/4 p1, 0x0

    .line 928
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    goto/16 :goto_5

    .line 902
    :cond_2
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 903
    check-cast p4, Ljavax/jmdns/impl/DNSRecord$Service;

    .line 904
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 905
    :goto_1
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    .line 906
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Service;->getPort()I

    move-result v3

    iput v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    .line 907
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Service;->getWeight()I

    move-result v3

    iput v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    .line 908
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Service;->getPriority()I

    move-result p4

    iput p4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    if-eqz v0, :cond_6

    .line 910
    iget-object p4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->clear()V

    .line 911
    iget-object p4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->clear()V

    .line 912
    iget-object p4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p1, p4, v0, v2}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSEntry;

    .line 913
    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    goto :goto_2

    .line 915
    :cond_5
    iget-object p4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p1, p4, v0, v2}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSEntry;

    .line 916
    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    goto :goto_3

    :cond_6
    const/4 v1, 0x1

    :cond_7
    move v2, v1

    goto :goto_5

    .line 896
    :cond_8
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 897
    iget-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    check-cast p4, Ljavax/jmdns/impl/DNSRecord$Address;

    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    check-cast p2, Ljava/net/Inet6Address;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 890
    :cond_9
    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 891
    iget-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    check-cast p4, Ljavax/jmdns/impl/DNSRecord$Address;

    invoke-virtual {p4}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    check-cast p2, Ljava/net/Inet4Address;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_b

    .line 941
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 942
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 947
    new-instance p2, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p1, p3, p4, p0}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 948
    invoke-virtual {p1, p2}, Ljavax/jmdns/impl/JmDNSImpl;->handleServiceResolved(Ljavax/jmdns/ServiceEvent;)V

    .line 952
    :cond_b
    monitor-enter p0

    .line 953
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 954
    monitor-exit p0

    goto :goto_6

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_c
    :goto_6
    return-void
.end method

.method public waitForAnnounced(J)Z
    .locals 1

    .line 1100
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->waitForAnnounced(J)Z

    move-result p1

    return p1
.end method

.method public waitForCanceled(J)Z
    .locals 1

    .line 1108
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->waitForCanceled(J)Z

    move-result p1

    return p1
.end method
