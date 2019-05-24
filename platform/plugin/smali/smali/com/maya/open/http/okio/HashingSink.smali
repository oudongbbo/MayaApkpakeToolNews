.class public final Lcom/maya/open/http/okio/HashingSink;
.super Lcom/maya/open/http/okio/ForwardingSink;
.source "SourceFile"


# instance fields
.field private final mac:Ljavax/crypto/Mac;

.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Lcom/maya/open/http/okio/Sink;Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V
    .locals 1

    .line 101
    invoke-direct {p0, p1}, Lcom/maya/open/http/okio/ForwardingSink;-><init>(Lcom/maya/open/http/okio/Sink;)V

    .line 103
    :try_start_0
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okio/HashingSink;->mac:Ljavax/crypto/Mac;

    .line 104
    iget-object p1, p0, Lcom/maya/open/http/okio/HashingSink;->mac:Ljavax/crypto/Mac;

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lcom/maya/open/http/okio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/maya/open/http/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 109
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 107
    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private constructor <init>(Lcom/maya/open/http/okio/Sink;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/maya/open/http/okio/ForwardingSink;-><init>(Lcom/maya/open/http/okio/Sink;)V

    .line 93
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/maya/open/http/okio/HashingSink;->mac:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 96
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public static hmacSha1(Lcom/maya/open/http/okio/Sink;Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/HashingSink;
    .locals 2

    .line 77
    new-instance v0, Lcom/maya/open/http/okio/HashingSink;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p0, p1, v1}, Lcom/maya/open/http/okio/HashingSink;-><init>(Lcom/maya/open/http/okio/Sink;Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha256(Lcom/maya/open/http/okio/Sink;Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/HashingSink;
    .locals 2

    .line 82
    new-instance v0, Lcom/maya/open/http/okio/HashingSink;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, p1, v1}, Lcom/maya/open/http/okio/HashingSink;-><init>(Lcom/maya/open/http/okio/Sink;Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha512(Lcom/maya/open/http/okio/Sink;Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/HashingSink;
    .locals 2

    .line 87
    new-instance v0, Lcom/maya/open/http/okio/HashingSink;

    const-string v1, "HmacSHA512"

    invoke-direct {v0, p0, p1, v1}, Lcom/maya/open/http/okio/HashingSink;-><init>(Lcom/maya/open/http/okio/Sink;Lcom/maya/open/http/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static md5(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/HashingSink;
    .locals 2

    .line 57
    new-instance v0, Lcom/maya/open/http/okio/HashingSink;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okio/HashingSink;-><init>(Lcom/maya/open/http/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha1(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/HashingSink;
    .locals 2

    .line 62
    new-instance v0, Lcom/maya/open/http/okio/HashingSink;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okio/HashingSink;-><init>(Lcom/maya/open/http/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha256(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/HashingSink;
    .locals 2

    .line 67
    new-instance v0, Lcom/maya/open/http/okio/HashingSink;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okio/HashingSink;-><init>(Lcom/maya/open/http/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha512(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/HashingSink;
    .locals 2

    .line 72
    new-instance v0, Lcom/maya/open/http/okio/HashingSink;

    const-string v1, "SHA-512"

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okio/HashingSink;-><init>(Lcom/maya/open/http/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public hash()Lcom/maya/open/http/okio/ByteString;
    .locals 1

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
    :goto_0
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->of([B)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/maya/open/http/okio/Buffer;J)V
    .locals 7

    .line 114
    iget-wide v0, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/maya/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 118
    iget-object v0, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    const-wide/16 v1, 0x0

    :goto_0
    cmp-long v3, v1, p2

    if-gez v3, :cond_1

    sub-long v3, p2, v1

    .line 119
    iget v5, v0, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v6, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 120
    iget-object v4, p0, Lcom/maya/open/http/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/maya/open/http/okio/HashingSink;->messageDigest:Ljava/security/MessageDigest;

    iget-object v5, v0, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v6, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    invoke-virtual {v4, v5, v6, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    .line 123
    :cond_0
    iget-object v4, p0, Lcom/maya/open/http/okio/HashingSink;->mac:Ljavax/crypto/Mac;

    iget-object v5, v0, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v6, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    invoke-virtual {v4, v5, v6, v3}, Ljavax/crypto/Mac;->update([BII)V

    :goto_1
    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 118
    iget-object v0, v0, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    goto :goto_0

    .line 129
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/maya/open/http/okio/ForwardingSink;->write(Lcom/maya/open/http/okio/Buffer;J)V

    return-void
.end method
