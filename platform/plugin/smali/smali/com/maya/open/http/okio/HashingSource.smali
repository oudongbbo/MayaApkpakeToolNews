.class public final Lcom/maya/open/http/okio/HashingSource;
.super Lcom/maya/open/http/okio/ForwardingSource;
.source "SourceFile"


# instance fields
.field private final mac:Ljavax/crypto/Mac;

.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Lcom/maya/open/http/okio/Source;Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1}, Lcom/maya/open/http/okio/ForwardingSource;-><init>(Lcom/maya/open/http/okio/Source;)V

    .line 91
    :try_start_0
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okio/HashingSource;->mac:Ljavax/crypto/Mac;

    .line 92
    iget-object p1, p0, Lcom/maya/open/http/okio/HashingSource;->mac:Ljavax/crypto/Mac;

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lcom/maya/open/http/okio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/maya/open/http/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 97
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 95
    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private constructor <init>(Lcom/maya/open/http/okio/Source;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/maya/open/http/okio/ForwardingSource;-><init>(Lcom/maya/open/http/okio/Source;)V

    .line 81
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/maya/open/http/okio/HashingSource;->mac:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 84
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public static hmacSha1(Lcom/maya/open/http/okio/Source;Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/HashingSource;
    .locals 2

    .line 70
    new-instance v0, Lcom/maya/open/http/okio/HashingSource;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p0, p1, v1}, Lcom/maya/open/http/okio/HashingSource;-><init>(Lcom/maya/open/http/okio/Source;Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha256(Lcom/maya/open/http/okio/Source;Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/HashingSource;
    .locals 2

    .line 75
    new-instance v0, Lcom/maya/open/http/okio/HashingSource;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, p1, v1}, Lcom/maya/open/http/okio/HashingSource;-><init>(Lcom/maya/open/http/okio/Source;Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static md5(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/HashingSource;
    .locals 2

    .line 55
    new-instance v0, Lcom/maya/open/http/okio/HashingSource;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okio/HashingSource;-><init>(Lcom/maya/open/http/okio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha1(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/HashingSource;
    .locals 2

    .line 60
    new-instance v0, Lcom/maya/open/http/okio/HashingSource;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okio/HashingSource;-><init>(Lcom/maya/open/http/okio/Source;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha256(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/HashingSource;
    .locals 2

    .line 65
    new-instance v0, Lcom/maya/open/http/okio/HashingSource;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okio/HashingSource;-><init>(Lcom/maya/open/http/okio/Source;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public hash()Lcom/maya/open/http/okio/ByteString;
    .locals 1

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
    :goto_0
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->of([B)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/maya/open/http/okio/Buffer;J)J
    .locals 8

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/maya/open/http/okio/ForwardingSource;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    .line 105
    iget-wide v0, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    sub-long/2addr v0, p2

    .line 108
    iget-wide v2, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    .line 109
    iget-object v4, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    :goto_0
    cmp-long v5, v2, v0

    if-lez v5, :cond_0

    .line 111
    iget-object v4, v4, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    .line 112
    iget v5, v4, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v6, v4, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v2, v5

    goto :goto_0

    .line 116
    :cond_0
    :goto_1
    iget-wide v5, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    cmp-long v7, v2, v5

    if-gez v7, :cond_2

    .line 117
    iget v5, v4, Lcom/maya/open/http/okio/Segment;->pos:I

    int-to-long v5, v5

    add-long/2addr v5, v0

    sub-long/2addr v5, v2

    long-to-int v0, v5

    .line 118
    iget-object v1, p0, Lcom/maya/open/http/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/maya/open/http/okio/HashingSource;->messageDigest:Ljava/security/MessageDigest;

    iget-object v5, v4, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v6, v4, Lcom/maya/open/http/okio/Segment;->limit:I

    sub-int/2addr v6, v0

    invoke-virtual {v1, v5, v0, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_2

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/maya/open/http/okio/HashingSource;->mac:Ljavax/crypto/Mac;

    iget-object v5, v4, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v6, v4, Lcom/maya/open/http/okio/Segment;->limit:I

    sub-int/2addr v6, v0

    invoke-virtual {v1, v5, v0, v6}, Ljavax/crypto/Mac;->update([BII)V

    .line 123
    :goto_2
    iget v0, v4, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v1, v4, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 125
    iget-object v4, v4, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    move-wide v2, v0

    goto :goto_1

    :cond_2
    return-wide p2
.end method
