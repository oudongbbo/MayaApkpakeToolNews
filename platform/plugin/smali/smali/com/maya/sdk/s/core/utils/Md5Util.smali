.class public Lcom/maya/sdk/s/core/utils/Md5Util;
.super Ljava/lang/Object;
.source "Md5Util.java"


# static fields
.field private static hexDigits:[C

.field private static messagedigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/maya/sdk/s/core/utils/Md5Util;->hexDigits:[C

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/maya/sdk/s/core/utils/Md5Util;->messagedigest:Ljava/security/MessageDigest;

    .line 23
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/maya/sdk/s/core/utils/Md5Util;->messagedigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 27
    :goto_0
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

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHexPair(BLjava/lang/StringBuffer;)V
    .locals 3
    .param p0, "bt"    # B
    .param p1, "stringbuffer"    # Ljava/lang/StringBuffer;

    .line 96
    sget-object v0, Lcom/maya/sdk/s/core/utils/Md5Util;->hexDigits:[C

    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    .line 97
    .local v0, "c0":C
    sget-object v1, Lcom/maya/sdk/s/core/utils/Md5Util;->hexDigits:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    .line 98
    .local v1, "c1":C
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    return-void
.end method

.method private static bufferToHex([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .line 83
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/maya/sdk/s/core/utils/Md5Util;->bufferToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bufferToHex([BII)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "m"    # I
    .param p2, "n"    # I

    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 88
    .local v0, "stringbuffer":Ljava/lang/StringBuffer;
    add-int v1, p1, p2

    .line 89
    .local v1, "k":I
    move v2, p1

    .local v2, "l":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 90
    aget-byte v3, p0, v2

    invoke-static {v3, v0}, Lcom/maya/sdk/s/core/utils/Md5Util;->appendHexPair(BLjava/lang/StringBuffer;)V

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v2    # "l":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFileMD5String(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/maya/sdk/s/core/utils/Md5Util;->getFileMD5String(Ljava/io/File;JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileMD5String(Ljava/io/File;JJ)Ljava/lang/String;
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "start"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 52
    .local v0, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 54
    .local v7, "ch":Ljava/nio/channels/FileChannel;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    sub-long v8, v1, p1

    .line 56
    .local v8, "remain":J
    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-ltz v3, :cond_0

    cmp-long v1, p3, v8

    if-lez v1, :cond_1

    .line 57
    :cond_0
    move-wide p3, v8

    .line 60
    :cond_1
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object v1, v7

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    .line 63
    .local v1, "byteBuffer":Ljava/nio/MappedByteBuffer;
    sget-object v2, Lcom/maya/sdk/s/core/utils/Md5Util;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 64
    sget-object v2, Lcom/maya/sdk/s/core/utils/Md5Util;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/maya/sdk/s/core/utils/Md5Util;->bufferToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMD5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/s/core/utils/Md5Util;->getMD5String([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5String([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .line 78
    sget-object v0, Lcom/maya/sdk/s/core/utils/Md5Util;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 79
    sget-object v0, Lcom/maya/sdk/s/core/utils/Md5Util;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/s/core/utils/Md5Util;->bufferToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
