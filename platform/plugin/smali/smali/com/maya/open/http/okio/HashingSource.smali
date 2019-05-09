.class public final Lcom/maya/open/http/okio/HashingSource;
.super Lcom/maya/open/http/okio/ForwardingSource;
.source "HashingSource.java"


# instance fields
.field private final mac:Ljavax/crypto/Mac;

.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Lcom/maya/open/http/okio/Source;Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V
    .locals 3
    .param p1, "source"    # Lcom/maya/open/http/okio/Source;
    .param p2, "key"    # Lcom/maya/open/http/okio/ByteString;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Lcom/maya/open/http/okio/ForwardingSource;-><init>(Lcom/maya/open/http/okio/Source;)V

    .line 91
    :try_start_0
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okio/HashingSource;->mac:Ljavax/crypto/Mac;

    .line 92
    iget-object v0, p0, Lcom/maya/open/http/okio/HashingSource;->mac:Ljavax/crypto/Mac;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lcom/maya/open/http/okio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/open/http/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    nop

    .line 99
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 94
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private constructor <init>(Lcom/maya/open/http/okio/Source;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Lcom/maya/open/http/okio/Source;
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Lcom/maya/open/http/okio/ForwardingSource;-><init>(Lcom/maya/open/http/okio/Source;)V

    .line 81
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/open/http/okio/HashingSource;->mac:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    nop

    .line 86
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static hmacSha1(Lcom/maya/open/http/okio/Source;Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/HashingSource;
    .locals 2
    .param p0, "source"    # Lcom/maya/open/http/okio/Source;
    .param p1, "key"    # Lcom/maya/open/http/okio/ByteString;

    .line 70
    new-instance v0, Lcom/maya/open/http/okio/HashingSource;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p0, p1, v1}, Lcom/maya/open/http/okio/HashingSource;-><init>(Lcom/maya/open/http/okio/Source;Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha256(Lcom/maya/open/http/okio/Source;Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/HashingSource;
    .locals 2
    .param p0, "source"    # Lcom/maya/open/http/okio/Source;
    .param p1, "key"    # Lcom/maya/open/http/okio/ByteString;

    .line 75
    new-instance v0, Lcom/maya/open/http/okio/HashingSource;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, p1, v1}, Lcom/maya/open/http/okio/HashingSource;-><init>(Lcom/maya/open/http/okio/Source;Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static md5(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/HashingSource;
    .locals 2
    .param p0, "source"    # Lcom/maya/open/http/okio/Source;

    .line 55
    new-instance v0, Lcom/maya/open/http/okio/HashingSource;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okio/HashingSource;-><init>(Lcom/maya/open/http/okio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha1(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/HashingSource;
    .locals 2
    .param p0, "source"    # Lcom/maya/open/http/okio/Source;

    .line 60
    new-instance v0, Lcom/maya/open/http/okio/HashingSource;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okio/HashingSource;-><init>(Lcom/maya/open/http/okio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha256(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/HashingSource;
    .locals 2
    .param p0, "source"    # Lcom/maya/open/http/okio/Source;

    .line 65
    new-instance v0, Lcom/maya/open/http/okio/HashingSource;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okio/HashingSource;-><init>(Lcom/maya/open/http/okio/Source;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public hash()Lcom/maya/open/http/okio/ByteString;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/maya/open/http/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okio/HashingSource;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 140
    .local v0, "result":[B
    :goto_0
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->of([B)Lcom/maya/open/http/okio/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public read(Lcom/maya/open/http/okio/Buffer;J)J
    .locals 11
    .param p1, "sink"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/maya/open/http/okio/ForwardingSource;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v0

    .line 104
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 105
    iget-wide v2, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    sub-long/2addr v2, v0

    .line 108
    .local v2, "start":J
    iget-wide v4, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    .line 109
    .local v4, "offset":J
    iget-object v6, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    .line 110
    .local v6, "s":Lcom/maya/open/http/okio/Segment;
    :goto_0
    cmp-long v7, v4, v2

    if-lez v7, :cond_0

    .line 111
    iget-object v6, v6, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    .line 112
    iget v7, v6, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v8, v6, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v4, v7

    goto :goto_0

    .line 116
    :cond_0
    :goto_1
    iget-wide v7, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    cmp-long v9, v4, v7

    if-gez v9, :cond_2

    .line 117
    iget v7, v6, Lcom/maya/open/http/okio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, v2

    sub-long/2addr v7, v4

    long-to-int v7, v7

    .line 118
    .local v7, "pos":I
    iget-object v8, p0, Lcom/maya/open/http/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v8, :cond_1

    .line 119
    iget-object v8, p0, Lcom/maya/open/http/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    iget-object v9, v6, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v10, v6, Lcom/maya/open/http/okio/Segment;->limit:I

    sub-int/2addr v10, v7

    invoke-virtual {v8, v9, v7, v10}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_2

    .line 121
    :cond_1
    iget-object v8, p0, Lcom/maya/open/http/okio/HashingSource;->mac:Ljavax/crypto/Mac;

    iget-object v9, v6, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v10, v6, Lcom/maya/open/http/okio/Segment;->limit:I

    sub-int/2addr v10, v7

    invoke-virtual {v8, v9, v7, v10}, Ljavax/crypto/Mac;->update([BII)V

    .line 123
    :goto_2
    iget v8, v6, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v9, v6, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v4, v8

    .line 124
    move-wide v2, v4

    .line 125
    iget-object v6, v6, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    .line 126
    .end local v7    # "pos":I
    goto :goto_1

    .line 129
    .end local v2    # "start":J
    .end local v4    # "offset":J
    .end local v6    # "s":Lcom/maya/open/http/okio/Segment;
    :cond_2
    return-wide v0
.end method
