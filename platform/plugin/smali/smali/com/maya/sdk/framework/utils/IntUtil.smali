.class public Lcom/maya/sdk/framework/utils/IntUtil;
.super Ljava/lang/Object;
.source "IntUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static getBytes(I)[B
    .locals 4
    .param p0, "i"    # I

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 13
    .local v0, "bInt":[B
    move v1, p0

    .line 14
    .local v1, "value":I
    rem-int/lit16 v2, v1, 0x100

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    .line 15
    shr-int/lit8 v1, v1, 0x8

    .line 16
    rem-int/lit16 v2, v1, 0x100

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    .line 17
    shr-int/lit8 v1, v1, 0x8

    .line 18
    rem-int/lit16 v2, v1, 0x100

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 19
    shr-int/lit8 v1, v1, 0x8

    .line 20
    rem-int/lit16 v2, v1, 0x100

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 21
    return-object v0
.end method

.method public static getBytes([BI)[B
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "i"    # I

    .line 25
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 26
    move v0, p1

    .line 27
    .local v0, "value":I
    const/4 v1, 0x3

    rem-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 28
    shr-int/lit8 v0, v0, 0x8

    .line 29
    const/4 v1, 0x2

    rem-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 30
    shr-int/lit8 v0, v0, 0x8

    .line 31
    const/4 v1, 0x1

    rem-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 32
    shr-int/lit8 v0, v0, 0x8

    .line 33
    const/4 v1, 0x0

    rem-int/lit16 v2, v0, 0x100

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 34
    return-object p0

    .line 36
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
