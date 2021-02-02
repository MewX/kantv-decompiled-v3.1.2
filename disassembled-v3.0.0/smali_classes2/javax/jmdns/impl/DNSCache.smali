.class public Ljavax/jmdns/impl/DNSCache;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "DNSCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Ljavax/jmdns/impl/DNSEntry;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x29fa0881c54e5a5bL


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x400

    .line 52
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/DNSCache;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSCache;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    :goto_0
    invoke-direct {p0, v0}, Ljavax/jmdns/impl/DNSCache;-><init>(I)V

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private _getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method


# virtual methods
.method public addDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/DNSCache;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 212
    :cond_0
    monitor-enter v0

    .line 213
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    monitor-exit v0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public allValues()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 96
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljavax/jmdns/impl/DNSCache;

    invoke-direct {v0, p0}, Ljavax/jmdns/impl/DNSCache;-><init>(Ljavax/jmdns/impl/DNSCache;)V

    return-object v0
.end method

.method public getDNSEntry(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljavax/jmdns/impl/DNSEntry;
    .locals 4

    .line 158
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 160
    monitor-enter p1

    .line 161
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSEntry;

    .line 162
    invoke-virtual {v2, p2}, Ljavax/jmdns/impl/DNSEntry;->matchRecordType(Ljavax/jmdns/impl/constants/DNSRecordType;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p3}, Ljavax/jmdns/impl/DNSEntry;->matchRecordClass(Ljavax/jmdns/impl/constants/DNSRecordClass;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 167
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Ljavax/jmdns/impl/DNSEntry;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 133
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 135
    monitor-enter v1

    .line 136
    :try_start_0
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSEntry;

    .line 137
    invoke-virtual {v3, p1}, Ljavax/jmdns/impl/DNSEntry;->isSameEntry(Ljavax/jmdns/impl/DNSEntry;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 142
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    monitor-enter p1

    .line 112
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 115
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/constants/DNSRecordType;",
            "Ljavax/jmdns/impl/constants/DNSRecordClass;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljavax/jmdns/impl/DNSEntry;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/DNSCache;->_getDNSEntryList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 183
    monitor-enter p1

    .line 184
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 185
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSEntry;

    .line 187
    invoke-virtual {v2, p2}, Ljavax/jmdns/impl/DNSEntry;->matchRecordType(Ljavax/jmdns/impl/constants/DNSRecordType;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p3}, Ljavax/jmdns/impl/DNSEntry;->matchRecordClass(Ljavax/jmdns/impl/constants/DNSRecordClass;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 191
    :cond_2
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 193
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public removeDNSEntry(Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 232
    monitor-enter v0

    .line 233
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 234
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public replaceDNSEntry(Ljavax/jmdns/impl/DNSEntry;Ljavax/jmdns/impl/DNSEntry;)Z
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 250
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljavax/jmdns/impl/DNSCache;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 256
    :cond_0
    monitor-enter v0

    .line 257
    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 258
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    monitor-exit v0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 271
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "\t---- cache ----"

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSCache;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n\t\t"

    .line 274
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n\t\tname \'"

    .line 275
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\' "

    .line 277
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 279
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 280
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 281
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSEntry;

    const-string v5, "\n\t\t\t"

    .line 282
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    invoke-virtual {v4}, Ljavax/jmdns/impl/DNSEntry;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 285
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_1
    const-string v2, " no entries"

    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
