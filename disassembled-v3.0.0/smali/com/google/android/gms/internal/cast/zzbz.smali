.class public final Lcom/google/android/gms/internal/cast/zzbz;
.super Ljava/lang/Object;


# static fields
.field private static final zzbe:Lcom/google/android/gms/internal/cast/zzdg;


# instance fields
.field protected final zzus:I

.field protected final zzut:I

.field protected final zzuu:Ljava/lang/String;

.field protected final zzuv:Lorg/json/JSONObject;

.field protected final zzuw:I

.field protected final zzux:I

.field protected final zzuy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/cast/zzcc;",
            ">;"
        }
    .end annotation
.end field

.field protected final zzuz:Lorg/json/JSONObject;

.field protected final zzva:Ljava/lang/String;

.field protected final zzvb:Ljava/lang/String;

.field protected final zzvc:J

.field protected final zzvd:Ljava/lang/String;

.field protected final zzve:Lcom/google/android/gms/internal/cast/zzby;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdg;

    const-string v1, "GameManagerMessage"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzbz;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/cast/zzby;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "II",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/cast/zzcc;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/cast/zzby;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzus:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzut:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzuu:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzuv:Lorg/json/JSONObject;

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzuw:I

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzux:I

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzuy:Ljava/util/List;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzuz:Lorg/json/JSONObject;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzva:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzvb:Ljava/lang/String;

    .line 12
    iput-wide p11, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzvc:J

    .line 13
    iput-object p13, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzvd:Ljava/lang/String;

    .line 14
    iput-object p14, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzve:Lcom/google/android/gms/internal/cast/zzby;

    return-void
.end method

.method private static zza(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/cast/zzcc;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 54
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 55
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    .line 58
    :try_start_0
    new-instance v5, Lcom/google/android/gms/internal/cast/zzcc;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/cast/zzcc;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-exception v3

    .line 61
    sget-object v5, Lcom/google/android/gms/internal/cast/zzbz;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "Exception when attempting to parse PlayerInfoMessageComponent at index %d"

    .line 63
    invoke-virtual {v5, v3, v7, v6}, Lcom/google/android/gms/internal/cast/zzdg;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    if-eqz v4, :cond_1

    .line 65
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected static zzh(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/cast/zzbz;
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "type"

    const/4 v2, -0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v1, "playerId"

    const-string v2, "gameStatusText"

    const-string v3, "gameData"

    const-string v5, "players"

    const-string v6, "lobbyState"

    const-string v7, "gameplayState"

    const-string v8, "extraMessageData"

    const-string v9, "errorDescription"

    const/4 v14, 0x0

    const-string v10, "statusCode"

    const/16 v18, 0x0

    const/4 v11, 0x1

    if-eq v4, v11, :cond_1

    const/4 v12, 0x2

    if-eq v4, v12, :cond_0

    .line 46
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/cast/zzbz;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    const-string v1, "Unrecognized Game Message type %d"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_1

    .line 18
    :cond_0
    new-instance v19, Lcom/google/android/gms/internal/cast/zzbz;

    .line 19
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 20
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 22
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 23
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 24
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzbz;->zza(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v13

    .line 25
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 26
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v16, -0x1

    const/4 v1, 0x0

    const/16 v20, 0x0

    move-object/from16 v3, v19

    move v5, v10

    move-object v6, v9

    move-object v7, v8

    move v8, v11

    move v9, v12

    move-object v10, v13

    move-object v11, v15

    move-object v12, v2

    move-object v13, v0

    const/4 v2, 0x0

    move-wide/from16 v14, v16

    move-object/from16 v16, v1

    move-object/from16 v17, v20

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/cast/zzbz;-><init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/cast/zzby;)V

    return-object v19

    :cond_1
    const-string v11, "gameManagerConfig"

    .line 30
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 32
    new-instance v12, Lcom/google/android/gms/internal/cast/zzby;

    invoke-direct {v12, v11}, Lcom/google/android/gms/internal/cast/zzby;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v17, v12

    goto :goto_0

    :cond_2
    move-object/from16 v17, v18

    .line 33
    :goto_0
    new-instance v19, Lcom/google/android/gms/internal/cast/zzbz;

    .line 34
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 35
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 36
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 37
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 38
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 39
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzbz;->zza(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v13

    .line 40
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 41
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "requestId"

    .line 43
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v20

    const-string v3, "playerToken"

    .line 44
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v3, v19

    move v5, v10

    move-object v6, v9

    move-object v7, v8

    move v8, v11

    move v9, v12

    move-object v10, v13

    move-object v11, v15

    move-object v12, v2

    move-object v13, v1

    const/4 v1, 0x0

    move-wide/from16 v14, v20

    :try_start_1
    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/cast/zzbz;-><init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/cast/zzby;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v19

    :catch_1
    move-exception v0

    .line 49
    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/cast/zzbz;->zzbe:Lcom/google/android/gms/internal/cast/zzdg;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Exception while parsing GameManagerMessage from json"

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/internal/cast/zzdg;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-object v18
.end method
