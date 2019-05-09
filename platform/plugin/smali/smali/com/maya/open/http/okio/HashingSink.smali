.class public final Lcom/maya/open/http/okio/HashingSink;
.super Lcom/maya/open/http/okio/ForwardingSink;
.source "HashingSink.java"


# instance fields
.field private final mac:Ljavax/crypto/Mac;

.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Lcom/maya/open/http/okio/Sink;Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V
    .locals 3
    .param p1, "sink"    # Lcom/maya/open/http/okio/Sink;
    .param p2, "key"    # Lcom/maya/open/http/okio/ByteString;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1}, Lcom/maya/open/http/okio/ForwardingSink;-><init>(Lcom/maya/open/http/okio/Sink;)V

    .line 103
    :try_start_0
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okio/HashingSink;->mac:Ljavax/crypto/Mac;

    .line 104
    iget-object v0, p0, Lcom/maya/open/http/okio/HashingSink;->mac:Ljavax/crypto/Mac;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lcom/maya/open/http/okio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/open/http/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    nop

    .line 111
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 106
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 107
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private constructor <init>(Lcom/maya/open/http/okio/Sink;Ljava/lang/String;)V
    .locals 2
    .param p1, "sink"    # Lcom/maya/open/http/okio/Sink;
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lcom/maya/open/http/okio/ForwardingSink;-><init>(Lcom/maya/open/http/okio/Sink;)V

    .line 93
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/open/http/okio/HashingSink;->mac:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    nop

    .line 98
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static hmacSha1(Lcom/maya/open/http/okio/Sink;Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/HashingSink;
    .locals 2
    .param p0, "sink"    # Lcom/maya/open/http/okio/Sink;
    .param p1, "key"    # Lcom/maya/open/http/okio/ByteString;

    .line 77
    new-instance v0, Lcom/maya/open/http/okio/HashingSink;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p0, p1, v1}, Lcom/maya/open/http/okio/HashingSink;-><init>(Lcom/maya/open/http/okio/Sink;Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha256(Lcom/maya/open/http/okio/Sink;Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/HashingSink;
    .locals 2
    .param p0, "sink"    # Lcom/maya/open/http/okio/Sink;
    .param p1, "key"    # Lcom/maya/open/http/okio/ByteString;

    .line 82
    new-instance v0, Lcom/maya/open/http/okio/HashingSink;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, p1, v1}, Lcom/maya/open/http/okio/HashingSink;-><init>(Lcom/maya/open/http/okio/Sink;Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha512(Lcom/maya/open/http/okio/Sink;Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/HashingSink;
    .locals 2
    .param p0, "sink"    # Lcom/maya/open/http/okio/Sink;
    .param p1, "key"    # Lcom/maya/open/http/okio/ByteString;

    .line 87
    new-instance v0, Lcom/maya/open/http/okio/HashingSink;

    const-string v1, "HmacSHA512"

    invoke-direct {v0, p0, p1, v1}, Lcom/maya/open/http/okio/HashingSink;-><init>(Lcom/maya/open/http/okio/Sink;Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static md5(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/HashingSink;
    .locals 2
    .param p0, "sink"    # Lcom/maya/open/http/okio/Sink;

    .line 57
    new-instance v0, Lcom/maya/open/http/okio/HashingSink;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okio/HashingSink;-><init>(Lcom/maya/open/http/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha1(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/HashingSink;
    .locals 2
    .param p0, "sink"    # Lcom/maya/open/http/okio/Sink;

    .line 62
    new-instance v0, Lcom/maya/open/http/okio/HashingSink;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okio/HashingSink;-><init>(Lcom/maya/open/http/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha256(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/HashingSink;
    .locals 2
    .param p0, "sink"    # Lcom/maya/open/http/okio/Sink;

    .line 67
    new-instance v0, Lcom/maya/open/http/okio/HashingSink;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okio/HashingSink;-><init>(Lcom/maya/open/http/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha512(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/HashingSink;
    .locals 2
    .param p0, "sink"    # Lcom/maya/open/http/okio/Sink;

    .line 72
    new-instance v0, Lcom/maya/open/http/okio/HashingSink;

    const-string v1, "SHA-512"

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okio/HashingSink;-><init>(Lcom/maya/open/http/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public hash()Lcom/maya/open/http/okio/ByteString;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/maya/open/http/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okio/HashingSink;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 140
    .local v0, "result":[B
    :goto_0
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->of([B)Lcom/maya/open/http/okio/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public write(Lcom/maya/open/http/okio/Buffer;J)V
    .locals 7
    .param p1, "source"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-wide v0, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/maya/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 117
    const-wide/16 v0, 0x0

    .line 118
    .local v0, "hashedCount":J
    iget-object v2, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    .local v2, "s":Lcom/maya/open/http/okio/Segment;
    :goto_0
    cmp-long v3, v0, p2

    if-gez v3, :cond_1

    .line 119
    sub-long v3, p2, v0

    iget v5, v2, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v6, v2, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 120
    .local v3, "toHash":I
    iget-object v4, p0, Lcom/maya/open/http/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/maya/open/http/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    iget-object v5, v2, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v6, v2, Lcom/maya/open/http/okio/Segment;->pos:I

    invoke-virtual {v4, v5, v6, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    .line 123
    :cond_0
    iget-object v4, p0, Lcom/maya/open/http/okio/HashingSink;->mac:Ljavax/crypto/Mac;

    iget-object v5, v2, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v6, v2, Lcom/maya/open/http/okio/Segment;->pos:I

    invoke-virtual {v4, v5, v6, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 125
    :goto_1
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 118
    .end local v3    # "toHash":I
    iget-object v2, v2, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    goto :goto_0

    .line 129
    .end local v2    # "s":Lcom/maya/open/http/okio/Segment;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/maya/open/http/okio/ForwardingSink;->write(Lcom/maya/open/http/okio/Buffer;J)V

    .line 130
    return-void
.end method
