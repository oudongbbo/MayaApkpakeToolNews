.class public Lcom/maya/open/http/okio/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/maya/open/http/okio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/maya/open/http/okio/ByteString;

.field static final HEX_DIGITS:[C

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[B

.field transient hashCode:I

.field transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/maya/open/http/okio/ByteString;->HEX_DIGITS:[C

    .line 62
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->of([B)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okio/ByteString;->EMPTY:Lcom/maya/open/http/okio/ByteString;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    .line 70
    return-void
.end method

.method static codePointIndexToCharIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "codePointCount"    # I

    .line 517
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 518
    if-ne v1, p1, :cond_0

    .line 519
    return v0

    .line 521
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 522
    .local v3, "c":I
    invoke-static {v3}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    :cond_1
    const v4, 0xfffd

    if-ne v3, v4, :cond_3

    .line 524
    :cond_2
    const/4 v4, -0x1

    return v4

    .line 526
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 517
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 528
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "length":I
    .end local v3    # "c":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public static decodeBase64(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;
    .locals 2
    .param p0, "base64"    # Ljava/lang/String;

    .line 206
    if-eqz p0, :cond_1

    .line 207
    invoke-static {p0}, Lcom/maya/open/http/okio/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 208
    .local v0, "decoded":[B
    if-eqz v0, :cond_0

    new-instance v1, Lcom/maya/open/http/okio/ByteString;

    invoke-direct {v1, v0}, Lcom/maya/open/http/okio/ByteString;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 206
    .end local v0    # "decoded":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "base64 == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeHex(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;
    .locals 5
    .param p0, "hex"    # Ljava/lang/String;

    .line 224
    if-eqz p0, :cond_2

    .line 225
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 227
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 228
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 229
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/maya/open/http/okio/ByteString;->decodeHexDigit(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    .line 230
    .local v2, "d1":I
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/maya/open/http/okio/ByteString;->decodeHexDigit(C)I

    move-result v3

    .line 231
    .local v3, "d2":I
    add-int v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 228
    .end local v2    # "d1":I
    .end local v3    # "d2":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->of([B)Lcom/maya/open/http/okio/ByteString;

    move-result-object v1

    return-object v1

    .line 225
    .end local v0    # "result":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hex == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeHexDigit(C)I
    .locals 3
    .param p0, "c"    # C

    .line 237
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 238
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 239
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 240
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private digest(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 160
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/open/http/okio/ByteString;->of([B)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/maya/open/http/okio/ByteString;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 111
    if-eqz p0, :cond_1

    .line 112
    if-eqz p1, :cond_0

    .line 113
    new-instance v0, Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/maya/open/http/okio/ByteString;-><init>([B)V

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "s == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 103
    if-eqz p0, :cond_0

    .line 104
    new-instance v0, Lcom/maya/open/http/okio/ByteString;

    sget-object v1, Lcom/maya/open/http/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/maya/open/http/okio/ByteString;-><init>([B)V

    .line 105
    .local v0, "byteString":Lcom/maya/open/http/okio/ByteString;
    iput-object p0, v0, Lcom/maya/open/http/okio/ByteString;->utf8:Ljava/lang/String;

    .line 106
    return-object v0

    .line 103
    .end local v0    # "byteString":Lcom/maya/open/http/okio/ByteString;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "s == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hmac(Ljava/lang/String;Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/ByteString;
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lcom/maya/open/http/okio/ByteString;

    .line 183
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 184
    .local v0, "mac":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lcom/maya/open/http/okio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 185
    iget-object v1, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/maya/open/http/okio/ByteString;->of([B)Lcom/maya/open/http/okio/ByteString;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 188
    .end local v0    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 186
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static of(Ljava/nio/ByteBuffer;)Lcom/maya/open/http/okio/ByteString;
    .locals 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .line 94
    if-eqz p0, :cond_0

    .line 96
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 97
    .local v0, "copy":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 98
    new-instance v1, Lcom/maya/open/http/okio/ByteString;

    invoke-direct {v1, v0}, Lcom/maya/open/http/okio/ByteString;-><init>([B)V

    return-object v1

    .line 94
    .end local v0    # "copy":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs of([B)Lcom/maya/open/http/okio/ByteString;
    .locals 2
    .param p0, "data"    # [B

    .line 76
    if-eqz p0, :cond_0

    .line 77
    new-instance v0, Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v0, v1}, Lcom/maya/open/http/okio/ByteString;-><init>([B)V

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of([BII)Lcom/maya/open/http/okio/ByteString;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "byteCount"    # I

    .line 85
    if-eqz p0, :cond_0

    .line 86
    array-length v0, p0

    int-to-long v1, v0

    int-to-long v3, p1

    int-to-long v5, p2

    invoke-static/range {v1 .. v6}, Lcom/maya/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 88
    new-array v0, p2, [B

    .line 89
    .local v0, "copy":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    new-instance v1, Lcom/maya/open/http/okio/ByteString;

    invoke-direct {v1, v0}, Lcom/maya/open/http/okio/ByteString;-><init>([B)V

    return-object v1

    .line 85
    .end local v0    # "copy":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static read(Ljava/io/InputStream;I)Lcom/maya/open/http/okio/ByteString;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    if-eqz p0, :cond_3

    .line 251
    if-ltz p1, :cond_2

    .line 253
    new-array v0, p1, [B

    .line 254
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "offset":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 255
    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 256
    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 254
    add-int/2addr v1, v2

    goto :goto_0

    .line 256
    :cond_0
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 258
    .end local v1    # "offset":I
    .end local v2    # "read":I
    :cond_1
    new-instance v1, Lcom/maya/open/http/okio/ByteString;

    invoke-direct {v1, v0}, Lcom/maya/open/http/okio/ByteString;-><init>([B)V

    return-object v1

    .line 251
    .end local v0    # "result":[B
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 533
    .local v0, "dataLength":I
    invoke-static {p1, v0}, Lcom/maya/open/http/okio/ByteString;->read(Ljava/io/InputStream;I)Lcom/maya/open/http/okio/ByteString;

    move-result-object v1

    .line 535
    .local v1, "byteString":Lcom/maya/open/http/okio/ByteString;
    :try_start_0
    const-class v2, Lcom/maya/open/http/okio/ByteString;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 536
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 537
    iget-object v3, v1, Lcom/maya/open/http/okio/ByteString;->data:[B

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    .end local v2    # "field":Ljava/lang/reflect/Field;
    nop

    .line 543
    return-void

    .line 540
    :catch_0
    move-exception v2

    .line 541
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 538
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 539
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 547
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 548
    return-void
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    invoke-static {v0}, Lcom/maya/open/http/okio/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    invoke-static {v0}, Lcom/maya/open/http/okio/Base64;->encodeUrl([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/maya/open/http/okio/ByteString;)I
    .locals 8
    .param p1, "byteString"    # Lcom/maya/open/http/okio/ByteString;

    .line 477
    invoke-virtual {p0}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v0

    .line 478
    .local v0, "sizeA":I
    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v1

    .line 479
    .local v1, "sizeB":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "size":I
    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    .line 480
    invoke-virtual {p0, v2}, Lcom/maya/open/http/okio/ByteString;->getByte(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    .line 481
    .local v6, "byteA":I
    invoke-virtual {p1, v2}, Lcom/maya/open/http/okio/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 482
    .local v7, "byteB":I
    if-ne v6, v7, :cond_0

    .line 479
    .end local v6    # "byteA":I
    .end local v7    # "byteB":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    .restart local v6    # "byteA":I
    .restart local v7    # "byteB":I
    :cond_0
    if-ge v6, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 485
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v6    # "byteA":I
    .end local v7    # "byteB":I
    :cond_2
    if-ne v0, v1, :cond_3

    const/4 v2, 0x0

    return v2

    .line 486
    :cond_3
    if-ge v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    :goto_2
    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 56
    check-cast p1, Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {p0, p1}, Lcom/maya/open/http/okio/ByteString;->compareTo(Lcom/maya/open/http/okio/ByteString;)I

    move-result p1

    return p1
.end method

.method public final endsWith(Lcom/maya/open/http/okio/ByteString;)Z
    .locals 3
    .param p1, "suffix"    # Lcom/maya/open/http/okio/ByteString;

    .line 413
    invoke-virtual {p0}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/maya/open/http/okio/ByteString;->rangeEquals(ILcom/maya/open/http/okio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public final endsWith([B)Z
    .locals 3
    .param p1, "suffix"    # [B

    .line 417
    invoke-virtual {p0}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/maya/open/http/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 465
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 466
    :cond_0
    instance-of v1, p1, Lcom/maya/open/http/okio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/maya/open/http/okio/ByteString;

    .line 467
    invoke-virtual {v1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v1

    iget-object v3, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v3, v3

    if-ne v1, v3, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/maya/open/http/okio/ByteString;

    iget-object v3, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    iget-object v4, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v4, v4

    .line 468
    invoke-virtual {v1, v2, v3, v2, v4}, Lcom/maya/open/http/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 466
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "pos"    # I

    .line 344
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 472
    iget v0, p0, Lcom/maya/open/http/okio/ByteString;->hashCode:I

    .line 473
    .local v0, "result":I
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    iput v1, p0, Lcom/maya/open/http/okio/ByteString;->hashCode:I

    :goto_0
    return v1
.end method

.method public hex()Ljava/lang/String;
    .locals 9

    .line 213
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 214
    .local v0, "result":[C
    const/4 v1, 0x0

    .line 215
    .local v1, "c":I
    iget-object v2, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v2, v4

    .line 216
    .local v5, "b":B
    add-int/lit8 v6, v1, 0x1

    .local v6, "c":I
    sget-object v7, Lcom/maya/open/http/okio/ByteString;->HEX_DIGITS:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v1

    .line 217
    .end local v1    # "c":I
    add-int/lit8 v1, v6, 0x1

    .restart local v1    # "c":I
    sget-object v7, Lcom/maya/open/http/okio/ByteString;->HEX_DIGITS:[C

    and-int/lit8 v8, v5, 0xf

    aget-char v7, v7, v8

    aput-char v7, v0, v6

    .line 215
    .end local v5    # "b":B
    .end local v6    # "c":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public hmacSha1(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/ByteString;
    .locals 1
    .param p1, "key"    # Lcom/maya/open/http/okio/ByteString;

    .line 168
    const-string v0, "HmacSHA1"

    invoke-direct {p0, v0, p1}, Lcom/maya/open/http/okio/ByteString;->hmac(Ljava/lang/String;Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hmacSha256(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/ByteString;
    .locals 1
    .param p1, "key"    # Lcom/maya/open/http/okio/ByteString;

    .line 173
    const-string v0, "HmacSHA256"

    invoke-direct {p0, v0, p1}, Lcom/maya/open/http/okio/ByteString;->hmac(Ljava/lang/String;Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hmacSha512(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/ByteString;
    .locals 1
    .param p1, "key"    # Lcom/maya/open/http/okio/ByteString;

    .line 178
    const-string v0, "HmacSHA512"

    invoke-direct {p0, v0, p1}, Lcom/maya/open/http/okio/ByteString;->hmac(Ljava/lang/String;Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final indexOf(Lcom/maya/open/http/okio/ByteString;)I
    .locals 2
    .param p1, "other"    # Lcom/maya/open/http/okio/ByteString;

    .line 421
    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->internalArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public final indexOf(Lcom/maya/open/http/okio/ByteString;I)I
    .locals 1
    .param p1, "other"    # Lcom/maya/open/http/okio/ByteString;
    .param p2, "fromIndex"    # I

    .line 425
    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->internalArray()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/maya/open/http/okio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public final indexOf([B)I
    .locals 1
    .param p1, "other"    # [B

    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/maya/open/http/okio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public indexOf([BI)I
    .locals 5
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    .line 433
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 434
    move v1, p2

    .local v1, "i":I
    iget-object v2, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v2, v2

    array-length v3, p1

    sub-int/2addr v2, v3

    .local v2, "limit":I
    :goto_0
    if-gt v1, v2, :cond_1

    .line 435
    iget-object v3, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v4, p1

    invoke-static {v3, v1, p1, v0, v4}, Lcom/maya/open/http/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    return v1

    .line 434
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    .end local v1    # "i":I
    .end local v2    # "limit":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method internalArray()[B
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    return-object v0
.end method

.method public final lastIndexOf(Lcom/maya/open/http/okio/ByteString;)I
    .locals 2
    .param p1, "other"    # Lcom/maya/open/http/okio/ByteString;

    .line 443
    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->internalArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public final lastIndexOf(Lcom/maya/open/http/okio/ByteString;I)I
    .locals 1
    .param p1, "other"    # Lcom/maya/open/http/okio/ByteString;
    .param p2, "fromIndex"    # I

    .line 447
    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->internalArray()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/maya/open/http/okio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public final lastIndexOf([B)I
    .locals 1
    .param p1, "other"    # [B

    .line 451
    invoke-virtual {p0}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/maya/open/http/okio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public lastIndexOf([BI)I
    .locals 4
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    .line 455
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 456
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 457
    iget-object v1, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v1, v0, p1, v2, v3}, Lcom/maya/open/http/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    return v0

    .line 456
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 461
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public md5()Lcom/maya/open/http/okio/ByteString;
    .locals 1

    .line 140
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lcom/maya/open/http/okio/ByteString;->digest(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILcom/maya/open/http/okio/ByteString;II)Z
    .locals 1
    .param p1, "offset"    # I
    .param p2, "other"    # Lcom/maya/open/http/okio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .line 390
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lcom/maya/open/http/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(I[BII)Z
    .locals 1
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .line 399
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    .line 401
    invoke-static {v0, p1, p2, p3, p4}, Lcom/maya/open/http/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0
.end method

.method public sha1()Lcom/maya/open/http/okio/ByteString;
    .locals 1

    .line 145
    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lcom/maya/open/http/okio/ByteString;->digest(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lcom/maya/open/http/okio/ByteString;
    .locals 1

    .line 150
    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lcom/maya/open/http/okio/ByteString;->digest(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha512()Lcom/maya/open/http/okio/ByteString;
    .locals 1

    .line 155
    const-string v0, "SHA-512"

    invoke-direct {p0, v0}, Lcom/maya/open/http/okio/ByteString;->digest(Ljava/lang/String;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v0, v0

    return v0
.end method

.method public final startsWith(Lcom/maya/open/http/okio/ByteString;)Z
    .locals 2
    .param p1, "prefix"    # Lcom/maya/open/http/okio/ByteString;

    .line 405
    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/maya/open/http/okio/ByteString;->rangeEquals(ILcom/maya/open/http/okio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public final startsWith([B)Z
    .locals 2
    .param p1, "prefix"    # [B

    .line 409
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/maya/open/http/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 125
    if-eqz p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public substring(I)Lcom/maya/open/http/okio/ByteString;
    .locals 1
    .param p1, "beginIndex"    # I

    .line 316
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/maya/open/http/okio/ByteString;->substring(II)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lcom/maya/open/http/okio/ByteString;
    .locals 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 325
    if-ltz p1, :cond_3

    .line 326
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v0, v0

    if-gt p2, v0, :cond_2

    .line 330
    sub-int v0, p2, p1

    .line 331
    .local v0, "subLen":I
    if-ltz v0, :cond_1

    .line 333
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v1, v1

    if-ne p2, v1, :cond_0

    .line 334
    return-object p0

    .line 337
    :cond_0
    new-array v1, v0, [B

    .line 338
    .local v1, "copy":[B
    iget-object v2, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    new-instance v2, Lcom/maya/open/http/okio/ByteString;

    invoke-direct {v2, v1}, Lcom/maya/open/http/okio/ByteString;-><init>([B)V

    return-object v2

    .line 331
    .end local v1    # "copy":[B
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "endIndex < beginIndex"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    .end local v0    # "subLen":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "beginIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toAsciiLowercase()Lcom/maya/open/http/okio/ByteString;
    .locals 7

    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 269
    iget-object v1, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    aget-byte v1, v1, v0

    .line 270
    .local v1, "c":B
    const/16 v2, 0x41

    if-lt v1, v2, :cond_4

    const/16 v3, 0x5a

    if-le v1, v3, :cond_0

    .end local v1    # "c":B
    goto :goto_3

    .line 274
    .restart local v1    # "c":B
    :cond_0
    iget-object v4, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 275
    .local v4, "lowercase":[B
    add-int/lit8 v5, v0, 0x1

    .local v5, "i":I
    add-int/lit8 v6, v1, 0x20

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    .line 276
    .end local v0    # "i":I
    :goto_1
    array-length v0, v4

    if-ge v5, v0, :cond_3

    .line 277
    aget-byte v1, v4, v5

    .line 278
    if-lt v1, v2, :cond_2

    if-le v1, v3, :cond_1

    goto :goto_2

    .line 279
    :cond_1
    add-int/lit8 v0, v1, 0x20

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    .line 276
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 281
    :cond_3
    new-instance v0, Lcom/maya/open/http/okio/ByteString;

    invoke-direct {v0, v4}, Lcom/maya/open/http/okio/ByteString;-><init>([B)V

    return-object v0

    .line 268
    .end local v1    # "c":B
    .end local v4    # "lowercase":[B
    .end local v5    # "i":I
    .restart local v0    # "i":I
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "i":I
    :cond_5
    return-object p0
.end method

.method public toAsciiUppercase()Lcom/maya/open/http/okio/ByteString;
    .locals 7

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 294
    iget-object v1, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    aget-byte v1, v1, v0

    .line 295
    .local v1, "c":B
    const/16 v2, 0x61

    if-lt v1, v2, :cond_4

    const/16 v3, 0x7a

    if-le v1, v3, :cond_0

    .end local v1    # "c":B
    goto :goto_3

    .line 299
    .restart local v1    # "c":B
    :cond_0
    iget-object v4, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 300
    .local v4, "lowercase":[B
    add-int/lit8 v5, v0, 0x1

    .local v5, "i":I
    add-int/lit8 v6, v1, -0x20

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    .line 301
    .end local v0    # "i":I
    :goto_1
    array-length v0, v4

    if-ge v5, v0, :cond_3

    .line 302
    aget-byte v1, v4, v5

    .line 303
    if-lt v1, v2, :cond_2

    if-le v1, v3, :cond_1

    goto :goto_2

    .line 304
    :cond_1
    add-int/lit8 v0, v1, -0x20

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    .line 301
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 306
    :cond_3
    new-instance v0, Lcom/maya/open/http/okio/ByteString;

    invoke-direct {v0, v4}, Lcom/maya/open/http/okio/ByteString;-><init>([B)V

    return-object v0

    .line 293
    .end local v1    # "c":B
    .end local v4    # "lowercase":[B
    .end local v5    # "i":I
    .restart local v0    # "i":I
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    .end local v0    # "i":I
    :cond_5
    return-object p0
.end method

.method public toByteArray()[B
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 494
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v0, v0

    if-nez v0, :cond_0

    .line 495
    const-string v0, "[size=0]"

    return-object v0

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/maya/open/http/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "text":Ljava/lang/String;
    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/maya/open/http/okio/ByteString;->codePointIndexToCharIndex(Ljava/lang/String;I)I

    move-result v2

    .line 501
    .local v2, "i":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 502
    iget-object v3, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v3, v3

    if-gt v3, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[hex="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {p0}, Lcom/maya/open/http/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " hex="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {p0, v4, v1}, Lcom/maya/open/http/okio/ByteString;->substring(II)Lcom/maya/open/http/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u2026]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    :goto_0
    return-object v1

    .line 507
    :cond_2
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\"

    const-string v4, "\\\\"

    .line 508
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n"

    const-string v4, "\\n"

    .line 509
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\r"

    const-string v4, "\\r"

    .line 510
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "safeText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u2026]"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    goto :goto_1

    :goto_2
    return-object v3
.end method

.method public utf8()Ljava/lang/String;
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->utf8:Ljava/lang/String;

    .line 120
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    sget-object v3, Lcom/maya/open/http/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v1, p0, Lcom/maya/open/http/okio/ByteString;->utf8:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method write(Lcom/maya/open/http/okio/Buffer;)V
    .locals 3
    .param p1, "buffer"    # Lcom/maya/open/http/okio/Buffer;

    .line 381
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    iget-object v1, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/maya/open/http/okio/Buffer;->write([BII)Lcom/maya/open/http/okio/Buffer;

    .line 382
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    if-eqz p1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/maya/open/http/okio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 377
    return-void

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
