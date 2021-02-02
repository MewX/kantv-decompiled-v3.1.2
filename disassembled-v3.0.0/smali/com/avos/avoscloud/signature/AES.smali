.class public Lcom/avos/avoscloud/signature/AES;
.super Ljava/lang/Object;
.source "AES.java"


# static fields
.field private static final CIPHERMODEPADDING:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final HASH_ITERATIONS:I = 0x2710

.field private static final KEY_GENERATION_ALG:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field private static final KEY_LENGTH:I = 0x100


# instance fields
.field private IV:Ljavax/crypto/spec/IvParameterSpec;

.field private humanPassphrase:[C

.field private iv:[B

.field private keyfactory:Ljavax/crypto/SecretKeyFactory;

.field private myKeyspec:Ljavax/crypto/spec/PBEKeySpec;

.field private salt:[B

.field private sk:Ljavax/crypto/SecretKey;

.field private skforAES:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>()V
    .locals 7

    const-string v0, "AESdemo"

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "QxciDjdHjuAIf8VCsqhmGK3OZV7pBQTZ"

    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/signature/AES;->humanPassphrase:[C

    const/16 v1, 0x10

    .line 93
    new-array v2, v1, [B

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/avos/avoscloud/signature/AES;->salt:[B

    .line 99
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v3, p0, Lcom/avos/avoscloud/signature/AES;->humanPassphrase:[C

    iget-object v4, p0, Lcom/avos/avoscloud/signature/AES;->salt:[B

    const/16 v5, 0x2710

    const/16 v6, 0x100

    invoke-direct {v2, v3, v4, v5, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    iput-object v2, p0, Lcom/avos/avoscloud/signature/AES;->myKeyspec:Ljavax/crypto/spec/PBEKeySpec;

    const/4 v2, 0x0

    .line 102
    iput-object v2, p0, Lcom/avos/avoscloud/signature/AES;->keyfactory:Ljavax/crypto/SecretKeyFactory;

    .line 103
    iput-object v2, p0, Lcom/avos/avoscloud/signature/AES;->sk:Ljavax/crypto/SecretKey;

    .line 104
    iput-object v2, p0, Lcom/avos/avoscloud/signature/AES;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    .line 105
    new-array v1, v1, [B

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/avos/avoscloud/signature/AES;->iv:[B

    :try_start_0
    const-string v1, "PBKDF2WithHmacSHA1"

    .line 112
    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/signature/AES;->keyfactory:Ljavax/crypto/SecretKeyFactory;

    .line 113
    iget-object v1, p0, Lcom/avos/avoscloud/signature/AES;->keyfactory:Ljavax/crypto/SecretKeyFactory;

    iget-object v2, p0, Lcom/avos/avoscloud/signature/AES;->myKeyspec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/signature/AES;->sk:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "invalid key spec for PBEWITHSHAANDTWOFISH-CBC"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string v1, "no key factory support for PBEWITHSHAANDTWOFISH-CBC"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/signature/AES;->sk:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 130
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/avos/avoscloud/signature/AES;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    .line 134
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lcom/avos/avoscloud/signature/AES;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v0, p0, Lcom/avos/avoscloud/signature/AES;->IV:Ljavax/crypto/spec/IvParameterSpec;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_1
    .array-data 1
        0xat
        0x1t
        0xbt
        0x5t
        0x4t
        0xft
        0x7t
        0x9t
        0x17t
        0x3t
        0x1t
        0x6t
        0x8t
        0xct
        0xdt
        0x5bt
    .end array-data
.end method

.method private addPadding([B)[B
    .locals 4

    .line 159
    array-length v0, p1

    const/16 v1, 0x10

    rem-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    const/16 v0, 0x10

    .line 165
    :cond_0
    array-length v1, p1

    add-int/2addr v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 166
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 167
    aget-byte v3, p1, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_1
    array-length v2, p1

    :goto_1
    array-length v3, p1

    add-int/2addr v3, v0

    if-ge v2, v3, :cond_2

    int-to-byte v3, v0

    .line 170
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B
    .locals 3

    const-string v0, "AESdemo"

    .line 214
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 215
    invoke-virtual {v1, v2, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 216
    invoke-virtual {v1, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "bad padding exception"

    .line 228
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    const-string p1, "illegal block size exception"

    .line 226
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p1, "invalid algorithm parameter exception"

    .line 224
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    const-string p1, "invalid key exception"

    .line 222
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :catch_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no cipher getinstance support for padding "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :catch_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no cipher getinstance support for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private dropPadding([B)[B
    .locals 4

    .line 179
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    .line 183
    array-length v1, p1

    sub-int/2addr v1, v0

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 184
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 185
    aget-byte v3, p1, v2

    aput-byte v3, v0, v2

    .line 186
    aput-byte v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B
    .locals 3

    const-string v0, "AESdemo"

    .line 193
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 194
    invoke-virtual {v1, v2, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 195
    invoke-virtual {v1, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "bad padding exception"

    .line 207
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p1, "illegal block size exception"

    .line 205
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p1, "invalid algorithm parameter exception"

    .line 203
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    const-string p1, "invalid key exception"

    .line 201
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :catch_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no cipher getinstance support for padding "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :catch_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no cipher getinstance support for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 146
    invoke-static {p1}, Lcom/avos/avoscloud/signature/Base64Decoder;->decodeToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 147
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/avoscloud/signature/AES;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/avos/avoscloud/signature/AES;->IV:Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "AES/CBC/PKCS7Padding"

    invoke-direct {p0, v3, v1, v2, p1}, Lcom/avos/avoscloud/signature/AES;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public encrypt([B)Ljava/lang/String;
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/avos/avoscloud/signature/AES;->skforAES:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/avos/avoscloud/signature/AES;->IV:Ljavax/crypto/spec/IvParameterSpec;

    const-string v2, "AES/CBC/PKCS7Padding"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/avos/avoscloud/signature/AES;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;[B)[B

    move-result-object p1

    .line 141
    invoke-static {p1}, Lcom/avos/avoscloud/signature/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
