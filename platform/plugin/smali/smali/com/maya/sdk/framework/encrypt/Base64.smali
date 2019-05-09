.class public Lcom/maya/sdk/framework/encrypt/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static base64DecodeChars:[B

.field private static base64EncodeChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/maya/sdk/framework/encrypt/Base64;->base64EncodeChars:[C

    .line 44
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/maya/sdk/framework/encrypt/Base64;->base64DecodeChars:[B

    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
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
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 13
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    .line 87
    .local v0, "remainder":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 89
    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string v3, "US-ASCII"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 95
    .local v3, "data":[B
    array-length v4, v3

    .line 96
    .local v4, "len":I
    const/4 v5, 0x0

    .line 98
    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_10

    .line 101
    :goto_2
    sget-object v6, Lcom/maya/sdk/framework/encrypt/Base64;->base64DecodeChars:[B

    add-int/lit8 v7, v5, 0x1

    .local v7, "i":I
    aget-byte v5, v3, v5

    .end local v5    # "i":I
    aget-byte v5, v6, v5

    .line 102
    .local v5, "b1":I
    const/4 v6, -0x1

    if-ge v7, v4, :cond_3

    if-eq v5, v6, :cond_2

    goto :goto_3

    .line 101
    .end local v5    # "b1":I
    :cond_2
    move v5, v7

    goto :goto_2

    .line 103
    .restart local v5    # "b1":I
    :cond_3
    :goto_3
    if-ne v5, v6, :cond_4

    .line 128
    .end local v5    # "b1":I
    move v5, v7

    goto/16 :goto_a

    .line 106
    .restart local v5    # "b1":I
    :cond_4
    :goto_4
    sget-object v8, Lcom/maya/sdk/framework/encrypt/Base64;->base64DecodeChars:[B

    add-int/lit8 v9, v7, 0x1

    .local v9, "i":I
    aget-byte v7, v3, v7

    .end local v7    # "i":I
    aget-byte v7, v8, v7

    .line 108
    .local v7, "b2":I
    if-ge v9, v4, :cond_6

    if-eq v7, v6, :cond_5

    goto :goto_5

    .line 106
    .end local v7    # "b2":I
    :cond_5
    move v7, v9

    goto :goto_4

    .line 109
    .restart local v7    # "b2":I
    :cond_6
    :goto_5
    if-ne v7, v6, :cond_7

    .line 128
    .end local v5    # "b1":I
    .end local v7    # "b2":I
    move v5, v9

    goto/16 :goto_a

    .line 110
    .restart local v5    # "b1":I
    .restart local v7    # "b2":I
    :cond_7
    shl-int/lit8 v8, v5, 0x2

    and-int/lit8 v10, v7, 0x30

    ushr-int/lit8 v10, v10, 0x4

    or-int/2addr v8, v10

    int-to-char v8, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    :goto_6
    add-int/lit8 v8, v9, 0x1

    .local v8, "i":I
    aget-byte v9, v3, v9

    .line 114
    .local v9, "b3":I
    const/16 v10, 0x3d

    if-ne v9, v10, :cond_8

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "iso8859-1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 115
    :cond_8
    sget-object v11, Lcom/maya/sdk/framework/encrypt/Base64;->base64DecodeChars:[B

    aget-byte v9, v11, v9

    .line 116
    if-ge v8, v4, :cond_a

    if-eq v9, v6, :cond_9

    goto :goto_7

    .line 113
    .end local v9    # "b3":I
    :cond_9
    move v9, v8

    goto :goto_6

    .line 117
    .restart local v9    # "b3":I
    :cond_a
    :goto_7
    if-ne v9, v6, :cond_b

    .line 128
    .end local v5    # "b1":I
    .end local v7    # "b2":I
    .end local v9    # "b3":I
    move v5, v8

    goto :goto_a

    .line 118
    .restart local v5    # "b1":I
    .restart local v7    # "b2":I
    .restart local v9    # "b3":I
    :cond_b
    and-int/lit8 v11, v7, 0xf

    shl-int/lit8 v11, v11, 0x4

    and-int/lit8 v12, v9, 0x3c

    ushr-int/2addr v12, v1

    or-int/2addr v11, v12

    int-to-char v11, v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    :goto_8
    add-int/lit8 v11, v8, 0x1

    .local v11, "i":I
    aget-byte v8, v3, v8

    .line 122
    .local v8, "b4":I
    if-ne v8, v10, :cond_c

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "iso8859-1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 123
    :cond_c
    sget-object v12, Lcom/maya/sdk/framework/encrypt/Base64;->base64DecodeChars:[B

    aget-byte v8, v12, v8

    .line 124
    if-ge v11, v4, :cond_e

    if-eq v8, v6, :cond_d

    goto :goto_9

    .line 121
    .end local v8    # "b4":I
    :cond_d
    move v8, v11

    goto :goto_8

    .line 125
    .restart local v8    # "b4":I
    :cond_e
    :goto_9
    if-ne v8, v6, :cond_f

    .line 128
    .end local v5    # "b1":I
    .end local v7    # "b2":I
    .end local v8    # "b4":I
    .end local v9    # "b3":I
    move v5, v11

    goto :goto_a

    .line 126
    .restart local v5    # "b1":I
    .restart local v7    # "b2":I
    .restart local v8    # "b4":I
    .restart local v9    # "b3":I
    :cond_f
    and-int/lit8 v6, v9, 0x3

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v8

    int-to-char v6, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    move v5, v11

    goto/16 :goto_1

    .line 128
    .end local v7    # "b2":I
    .end local v8    # "b4":I
    .end local v9    # "b3":I
    .end local v11    # "i":I
    .local v5, "i":I
    :cond_10
    :goto_a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "iso8859-1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B

    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 56
    .local v0, "sb":Ljava/lang/StringBuffer;
    array-length v1, p0

    .line 57
    .local v1, "len":I
    const/4 v2, 0x0

    .line 59
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 60
    add-int/lit8 v3, v2, 0x1

    .local v3, "i":I
    aget-byte v2, p0, v2

    .end local v2    # "i":I
    and-int/lit16 v2, v2, 0xff

    .line 61
    .local v2, "b1":I
    if-ne v3, v1, :cond_0

    .line 62
    sget-object v4, Lcom/maya/sdk/framework/encrypt/Base64;->base64EncodeChars:[C

    ushr-int/lit8 v5, v2, 0x2

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    sget-object v4, Lcom/maya/sdk/framework/encrypt/Base64;->base64EncodeChars:[C

    and-int/lit8 v5, v2, 0x3

    shl-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    const-string v4, "=="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    nop

    .line 81
    move v2, v3

    goto :goto_1

    .line 67
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .local v4, "i":I
    aget-byte v3, p0, v3

    .end local v3    # "i":I
    and-int/lit16 v3, v3, 0xff

    .line 68
    .local v3, "b2":I
    if-ne v4, v1, :cond_1

    .line 69
    sget-object v5, Lcom/maya/sdk/framework/encrypt/Base64;->base64EncodeChars:[C

    ushr-int/lit8 v6, v2, 0x2

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 70
    sget-object v5, Lcom/maya/sdk/framework/encrypt/Base64;->base64EncodeChars:[C

    and-int/lit8 v6, v2, 0x3

    shl-int/lit8 v6, v6, 0x4

    and-int/lit16 v7, v3, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    sget-object v5, Lcom/maya/sdk/framework/encrypt/Base64;->base64EncodeChars:[C

    and-int/lit8 v6, v3, 0xf

    shl-int/lit8 v6, v6, 0x2

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    nop

    .line 81
    move v2, v4

    goto :goto_1

    .line 75
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .local v5, "i":I
    aget-byte v4, p0, v4

    .end local v4    # "i":I
    and-int/lit16 v4, v4, 0xff

    .line 76
    .local v4, "b3":I
    sget-object v6, Lcom/maya/sdk/framework/encrypt/Base64;->base64EncodeChars:[C

    ushr-int/lit8 v7, v2, 0x2

    aget-char v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    sget-object v6, Lcom/maya/sdk/framework/encrypt/Base64;->base64EncodeChars:[C

    and-int/lit8 v7, v2, 0x3

    shl-int/lit8 v7, v7, 0x4

    and-int/lit16 v8, v3, 0xf0

    ushr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    aget-char v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    sget-object v6, Lcom/maya/sdk/framework/encrypt/Base64;->base64EncodeChars:[C

    and-int/lit8 v7, v3, 0xf

    shl-int/lit8 v7, v7, 0x2

    and-int/lit16 v8, v4, 0xc0

    ushr-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    aget-char v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    sget-object v6, Lcom/maya/sdk/framework/encrypt/Base64;->base64EncodeChars:[C

    and-int/lit8 v7, v4, 0x3f

    aget-char v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 57
    move v2, v5

    goto/16 :goto_0

    .line 81
    .end local v3    # "b2":I
    .end local v4    # "b3":I
    .end local v5    # "i":I
    .local v2, "i":I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 132
    const-string v0, "abcd"

    .line 133
    .local v0, "s":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u5bc6\u524d\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/framework/encrypt/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "x":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u52a0\u5bc6\u540e\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u89e3\u5bc6\u540e\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    const-string v5, "YWFhYmJiY2NjZA==="

    invoke-static {v5}, Lcom/maya/sdk/framework/encrypt/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "abcde"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/maya/sdk/framework/encrypt/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    return-void
.end method
