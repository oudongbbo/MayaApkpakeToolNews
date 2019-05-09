.class public Lcom/maya/sdk/framework/encrypt/AuthCode;
.super Ljava/lang/Object;
.source "AuthCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CutString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "startIndex"    # I

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static CutString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "startIndex"    # I
    .param p2, "length"    # I

    .line 20
    if-ltz p1, :cond_2

    .line 21
    if-gez p2, :cond_1

    .line 22
    mul-int/lit8 p2, p2, -0x1

    .line 23
    sub-int v0, p1, p2

    if-gez v0, :cond_0

    .line 24
    move p2, p1

    .line 25
    const/4 p1, 0x0

    goto :goto_0

    .line 27
    :cond_0
    sub-int/2addr p1, p2

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_4

    .line 31
    const-string v0, ""

    return-object v0

    .line 34
    :cond_2
    if-gez p2, :cond_3

    .line 35
    const-string v0, ""

    return-object v0

    .line 37
    :cond_3
    add-int v0, p2, p1

    if-lez v0, :cond_6

    .line 38
    add-int/2addr p2, p1

    .line 39
    const/4 p1, 0x0

    .line 45
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    if-ge v0, p2, :cond_5

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int p2, v0, p1

    .line 48
    :cond_5
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :cond_6
    const-string v0, ""

    return-object v0
.end method

.method public static Decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 114
    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 117
    :cond_0
    const/4 v0, 0x4

    .line 119
    .local v0, "ckey_length":I
    :try_start_0
    invoke-static {p1}, Lcom/maya/sdk/framework/encrypt/AuthCode;->MD52(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 120
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, v1, v2}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/maya/sdk/framework/encrypt/AuthCode;->MD52(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "keya":Ljava/lang/String;
    invoke-static {p1, v2, v2}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/maya/sdk/framework/encrypt/AuthCode;->MD52(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "keyb":Ljava/lang/String;
    if-lez v0, :cond_1

    invoke-static {p0, v1, v0}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, ""

    .line 123
    .local v5, "keyc":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/maya/sdk/framework/encrypt/AuthCode;->MD52(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "cryptkey":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/maya/sdk/framework/encrypt/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v7

    .line 127
    .local v7, "temp":[B
    new-instance v8, Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/maya/sdk/framework/encrypt/AuthCode;->RC4([BLjava/lang/String;)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 128
    .local v8, "result":Ljava/lang/String;
    const/16 v9, 0xa

    invoke-static {v8, v9, v2}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    const/16 v12, 0x1a

    invoke-static {v8, v12}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/maya/sdk/framework/encrypt/AuthCode;->MD52(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v1, v2}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    .line 128
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 130
    invoke-static {v8, v12}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 132
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/maya/sdk/framework/encrypt/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v10

    move-object v7, v10

    .line 133
    new-instance v10, Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/maya/sdk/framework/encrypt/AuthCode;->RC4([BLjava/lang/String;)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    move-object v8, v10

    .line 134
    invoke-static {v8, v9, v2}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-static {v8, v12}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/maya/sdk/framework/encrypt/AuthCode;->MD52(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v1, v2}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    .line 134
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 136
    invoke-static {v8, v12}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 138
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/maya/sdk/framework/encrypt/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v10

    move-object v7, v10

    .line 139
    new-instance v10, Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/maya/sdk/framework/encrypt/AuthCode;->RC4([BLjava/lang/String;)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    move-object v8, v10

    .line 140
    invoke-static {v8, v9, v2}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-static {v8, v12}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/maya/sdk/framework/encrypt/AuthCode;->MD52(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 142
    invoke-static {v10, v1, v2}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    invoke-static {v8, v12}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 146
    :cond_4
    const-string v1, "2"

    return-object v1

    .line 115
    .end local v0    # "ckey_length":I
    .end local v3    # "keya":Ljava/lang/String;
    .end local v4    # "keyb":Ljava/lang/String;
    .end local v5    # "keyc":Ljava/lang/String;
    .end local v6    # "cryptkey":Ljava/lang/String;
    .end local v7    # "temp":[B
    .end local v8    # "result":Ljava/lang/String;
    :cond_5
    :goto_1
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    return-object v1
.end method

.method public static Encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 90
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 93
    :cond_0
    const/4 v0, 0x4

    .line 95
    .local v0, "ckey_length":I
    :try_start_0
    invoke-static {p1}, Lcom/maya/sdk/framework/encrypt/AuthCode;->MD52(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 96
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, v1, v2}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/maya/sdk/framework/encrypt/AuthCode;->MD52(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "keya":Ljava/lang/String;
    invoke-static {p1, v2, v2}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/maya/sdk/framework/encrypt/AuthCode;->MD52(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "keyb":Ljava/lang/String;
    if-lez v0, :cond_1

    invoke-static {v0}, Lcom/maya/sdk/framework/encrypt/AuthCode;->RandomString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, ""

    .line 99
    .local v5, "keyc":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/maya/sdk/framework/encrypt/AuthCode;->MD52(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "cryptkey":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0000000000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/maya/sdk/framework/encrypt/AuthCode;->MD52(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1, v2}, Lcom/maya/sdk/framework/encrypt/AuthCode;->CutString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p0, v1

    .line 102
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v6}, Lcom/maya/sdk/framework/encrypt/AuthCode;->RC4([BLjava/lang/String;)[B

    move-result-object v1

    .line 103
    .local v1, "temp":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/maya/sdk/framework/encrypt/Base64;->encode([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 91
    .end local v0    # "ckey_length":I
    .end local v1    # "temp":[B
    .end local v3    # "keya":Ljava/lang/String;
    .end local v4    # "keyb":Ljava/lang/String;
    .end local v5    # "keyc":Ljava/lang/String;
    .end local v6    # "cryptkey":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    return-object v1
.end method

.method private static GetKey([BI)[B
    .locals 5
    .param p0, "pass"    # [B
    .param p1, "kLen"    # I

    .line 58
    new-array v0, p1, [B

    .line 59
    .local v0, "mBox":[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 60
    int-to-byte v3, v2

    aput-byte v3, v0, v2

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .line 63
    .local v2, "j":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 64
    aget-byte v3, v0, v1

    add-int/lit16 v3, v3, 0x100

    rem-int/lit16 v3, v3, 0x100

    add-int/2addr v3, v2

    array-length v4, p0

    rem-int v4, v1, v4

    aget-byte v4, p0, v4

    add-int/2addr v3, v4

    rem-int v2, v3, p1

    .line 66
    aget-byte v3, v0, v1

    .line 67
    .local v3, "temp":B
    aget-byte v4, v0, v2

    aput-byte v4, v0, v1

    .line 68
    aput-byte v3, v0, v2

    .line 63
    .end local v3    # "temp":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static MD52(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "MD5"    # Ljava/lang/String;

    .line 182
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 183
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 185
    .local v1, "part":Ljava/lang/String;
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 186
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 187
    .local v3, "md5":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 188
    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 189
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 192
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "md5":[B
    .end local v4    # "i":I
    :cond_1
    goto :goto_1

    .line 194
    :catch_0
    move-exception v2

    .line 196
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static RC4([BLjava/lang/String;)[B
    .locals 10
    .param p0, "input"    # [B
    .param p1, "pass"    # Ljava/lang/String;

    .line 159
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 162
    .local v0, "output":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/encrypt/AuthCode;->GetKey([BI)[B

    move-result-object v1

    .line 164
    .local v1, "mBox":[B
    const/4 v3, 0x0

    .line 165
    .local v3, "i":I
    const/4 v4, 0x0

    .line 166
    .local v4, "j":I
    const/4 v5, 0x0

    .local v5, "offset":I
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_1

    .line 167
    add-int/lit8 v6, v3, 0x1

    array-length v7, v1

    rem-int v3, v6, v7

    .line 168
    aget-byte v6, v1, v3

    add-int/2addr v6, v2

    rem-int/2addr v6, v2

    add-int/2addr v6, v4

    array-length v7, v1

    rem-int v4, v6, v7

    .line 169
    aget-byte v6, v1, v3

    .line 170
    .local v6, "temp":B
    aget-byte v7, v1, v4

    aput-byte v7, v1, v3

    .line 171
    aput-byte v6, v1, v4

    .line 172
    aget-byte v7, p0, v5

    .line 175
    .local v7, "a":B
    aget-byte v8, v1, v3

    invoke-static {v8}, Lcom/maya/sdk/framework/encrypt/AuthCode;->toInt(B)I

    move-result v8

    aget-byte v9, v1, v4

    invoke-static {v9}, Lcom/maya/sdk/framework/encrypt/AuthCode;->toInt(B)I

    move-result v9

    add-int/2addr v8, v9

    array-length v9, v1

    rem-int/2addr v8, v9

    aget-byte v8, v1, v8

    .line 176
    .local v8, "b":B
    invoke-static {v8}, Lcom/maya/sdk/framework/encrypt/AuthCode;->toInt(B)I

    move-result v9

    xor-int/2addr v9, v7

    int-to-byte v9, v9

    aput-byte v9, v0, v5

    .line 166
    .end local v6    # "temp":B
    .end local v7    # "a":B
    .end local v8    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 178
    .end local v5    # "offset":I
    :cond_1
    return-object v0

    .line 160
    .end local v0    # "output":[B
    .end local v1    # "mBox":[B
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static RandomString(I)Ljava/lang/String;
    .locals 7
    .param p0, "lens"    # I

    .line 75
    const/16 v0, 0x23

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 78
    .local v0, "CharArray":[C
    array-length v1, v0

    .line 79
    .local v1, "clens":I
    const-string v2, ""

    .line 80
    .local v2, "sCode":Ljava/lang/String;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 81
    .local v3, "random":Ljava/util/Random;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p0, :cond_0

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    aget-char v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    .end local v4    # "i":I
    :cond_0
    return-object v2

    nop

    :array_0
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
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
    .end array-data
.end method

.method public static decodeSpecial(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 205
    const-string v0, "_"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 206
    const-string v0, "-"

    const-string v1, "\\+"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 207
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/encrypt/AuthCode;->Decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;

    .line 212
    const-string v0, "123\u6536\u5230\u4e86\u526f\u79d1\u7ea7456"

    .line 214
    .local v0, "test":Ljava/lang/String;
    const-string v1, "keykeyString"

    .line 215
    .local v1, "key":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/maya/sdk/framework/encrypt/AuthCode;->Encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "afStr":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--------encode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    invoke-static {v2, v1}, Lcom/maya/sdk/framework/encrypt/AuthCode;->Decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "deStr":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--------decode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    const-string v4, "\u52a0\u5bc6\u540e\u7684\u5bc6\u6587"

    invoke-static {v4, v1}, Lcom/maya/sdk/framework/encrypt/AuthCode;->Decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "deStr1":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--------decode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u89e3\u5bc6\u7ed3\u679c\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "rxu4c6y-wv0S6OPjtDk8v4YRMBvcd18pL6Rt-O2MnA23EkJUO6lvegkvAlFGTijYbzUNXwhIF5UDPVtyo_KJKA"

    const-string v8, "CiT3R2wS5aHnDmV"

    .line 223
    invoke-static {v7, v8}, Lcom/maya/sdk/framework/encrypt/AuthCode;->decodeSpecial(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method private static toInt(B)I
    .locals 1
    .param p0, "b"    # B

    .line 200
    add-int/lit16 v0, p0, 0x100

    rem-int/lit16 v0, v0, 0x100

    return v0
.end method
