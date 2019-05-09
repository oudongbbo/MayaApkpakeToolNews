.class final Lcom/maya/open/http/okio/SegmentedByteString;
.super Lcom/maya/open/http/okio/ByteString;
.source "SegmentedByteString.java"


# instance fields
.field final transient directory:[I

.field final transient segments:[[B


# direct methods
.method constructor <init>(Lcom/maya/open/http/okio/Buffer;I)V
    .locals 7
    .param p1, "buffer"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # I

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/maya/open/http/okio/ByteString;-><init>([B)V

    .line 62
    iget-wide v1, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/maya/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 67
    .local v1, "segmentCount":I
    iget-object v2, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    .local v2, "s":Lcom/maya/open/http/okio/Segment;
    :goto_0
    if-ge v0, p2, :cond_1

    .line 68
    iget v3, v2, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v4, v2, Lcom/maya/open/http/okio/Segment;->pos:I

    if-eq v3, v4, :cond_0

    .line 71
    iget v3, v2, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v4, v2, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 67
    iget-object v2, v2, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    goto :goto_0

    .line 69
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "s.limit == s.pos"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 76
    .end local v2    # "s":Lcom/maya/open/http/okio/Segment;
    :cond_1
    new-array v2, v1, [[B

    iput-object v2, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    .line 77
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    .line 78
    const/4 v0, 0x0

    .line 79
    const/4 v1, 0x0

    .line 80
    iget-object v2, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    .restart local v2    # "s":Lcom/maya/open/http/okio/Segment;
    :goto_1
    if-ge v0, p2, :cond_3

    .line 81
    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    iget-object v4, v2, Lcom/maya/open/http/okio/Segment;->data:[B

    aput-object v4, v3, v1

    .line 82
    iget v3, v2, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v4, v2, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 83
    if-le v0, p2, :cond_2

    .line 84
    move v0, p2

    .line 86
    :cond_2
    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    aput v0, v3, v1

    .line 87
    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    iget-object v4, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v4, v4

    add-int/2addr v4, v1

    iget v5, v2, Lcom/maya/open/http/okio/Segment;->pos:I

    aput v5, v3, v4

    .line 88
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/maya/open/http/okio/Segment;->shared:Z

    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 80
    iget-object v2, v2, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    goto :goto_1

    .line 91
    .end local v2    # "s":Lcom/maya/open/http/okio/Segment;
    :cond_3
    return-void
.end method

.method private segment(I)I
    .locals 4
    .param p1, "pos"    # I

    .line 160
    iget-object v0, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 161
    .local v0, "i":I
    if-ltz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    xor-int/lit8 v1, v0, -0x1

    :goto_0
    return v1
.end method

.method private toByteString()Lcom/maya/open/http/okio/ByteString;
    .locals 2

    .line 261
    new-instance v0, Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/maya/open/http/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 300
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 269
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 270
    :cond_0
    instance-of v1, p1, Lcom/maya/open/http/okio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/maya/open/http/okio/ByteString;

    .line 271
    invoke-virtual {v1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/maya/open/http/okio/ByteString;

    .line 272
    invoke-virtual {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->size()I

    move-result v3

    invoke-virtual {p0, v2, v1, v2, v3}, Lcom/maya/open/http/okio/SegmentedByteString;->rangeEquals(ILcom/maya/open/http/okio/ByteString;II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 270
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getByte(I)B
    .locals 7
    .param p1, "pos"    # I

    .line 150
    iget-object v0, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/maya/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 151
    invoke-direct {p0, p1}, Lcom/maya/open/http/okio/SegmentedByteString;->segment(I)I

    move-result v0

    .line 152
    .local v0, "segment":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 153
    .local v1, "segmentOffset":I
    :goto_0
    iget-object v2, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v3, v3

    add-int/2addr v3, v0

    aget v2, v2, v3

    .line 154
    .local v2, "segmentPos":I
    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    aget-object v3, v3, v0

    sub-int v4, p1, v1

    add-int/2addr v4, v2

    aget-byte v3, v3, v4

    return v3
.end method

.method public hashCode()I
    .locals 12

    .line 276
    iget v0, p0, Lcom/maya/open/http/okio/SegmentedByteString;->hashCode:I

    .line 277
    .local v0, "result":I
    if-eqz v0, :cond_0

    return v0

    .line 280
    :cond_0
    const/4 v0, 0x1

    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, "segmentOffset":I
    const/4 v2, 0x0

    .local v2, "s":I
    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v3, v3

    .local v3, "segmentCount":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 283
    iget-object v4, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v2

    .line 284
    .local v4, "segment":[B
    iget-object v5, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    add-int v6, v3, v2

    aget v5, v5, v6

    .line 285
    .local v5, "segmentPos":I
    iget-object v6, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    aget v6, v6, v2

    .line 286
    .local v6, "nextSegmentOffset":I
    sub-int v7, v6, v1

    .line 287
    .local v7, "segmentSize":I
    move v8, v5

    .local v8, "i":I
    add-int v9, v5, v7

    .local v9, "limit":I
    :goto_1
    if-ge v8, v9, :cond_1

    .line 288
    mul-int/lit8 v10, v0, 0x1f

    aget-byte v11, v4, v8

    add-int v0, v10, v11

    .line 287
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 290
    .end local v8    # "i":I
    .end local v9    # "limit":I
    :cond_1
    move v1, v6

    .line 282
    .end local v4    # "segment":[B
    .end local v5    # "segmentPos":I
    .end local v6    # "nextSegmentOffset":I
    .end local v7    # "segmentSize":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    .end local v2    # "s":I
    .end local v3    # "segmentCount":I
    :cond_2
    iput v0, p0, Lcom/maya/open/http/okio/SegmentedByteString;->hashCode:I

    return v0
.end method

.method public hex()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hmacSha1(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/ByteString;
    .locals 1
    .param p1, "key"    # Lcom/maya/open/http/okio/ByteString;

    .line 130
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/ByteString;->hmacSha1(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hmacSha256(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/ByteString;
    .locals 1
    .param p1, "key"    # Lcom/maya/open/http/okio/ByteString;

    .line 134
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/ByteString;->hmacSha256(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public indexOf([BI)I
    .locals 1
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    .line 252
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method internalArray()[B
    .locals 1

    .line 265
    invoke-virtual {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf([BI)I
    .locals 1
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    .line 256
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okio/ByteString;->lastIndexOf([BI)I

    move-result v0

    return v0
.end method

.method public md5()Lcom/maya/open/http/okio/ByteString;
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->md5()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILcom/maya/open/http/okio/ByteString;II)Z
    .locals 8
    .param p1, "offset"    # I
    .param p2, "other"    # Lcom/maya/open/http/okio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .line 215
    const/4 v0, 0x0

    if-ltz p1, :cond_4

    invoke-virtual {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p1, v1, :cond_0

    goto :goto_2

    .line 217
    :cond_0
    invoke-direct {p0, p1}, Lcom/maya/open/http/okio/SegmentedByteString;->segment(I)I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-lez p4, :cond_3

    .line 218
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 219
    .local v2, "segmentOffset":I
    :goto_1
    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    .line 220
    .local v3, "segmentSize":I
    add-int v4, v2, v3

    sub-int/2addr v4, p1

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 221
    .local v4, "stepSize":I
    iget-object v5, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    iget-object v6, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v6, v6

    add-int/2addr v6, v1

    aget v5, v5, v6

    .line 222
    .local v5, "segmentPos":I
    sub-int v6, p1, v2

    add-int/2addr v6, v5

    .line 223
    .local v6, "arrayOffset":I
    iget-object v7, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    aget-object v7, v7, v1

    invoke-virtual {p2, p3, v7, v6, v4}, Lcom/maya/open/http/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v7

    if-nez v7, :cond_2

    return v0

    .line 224
    :cond_2
    add-int/2addr p1, v4

    .line 225
    add-int/2addr p3, v4

    .line 226
    sub-int/2addr p4, v4

    .line 217
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentSize":I
    .end local v4    # "stepSize":I
    .end local v5    # "segmentPos":I
    .end local v6    # "arrayOffset":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "s":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 215
    :cond_4
    :goto_2
    return v0
.end method

.method public rangeEquals(I[BII)Z
    .locals 8
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    .line 232
    const/4 v0, 0x0

    if-ltz p1, :cond_4

    invoke-virtual {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_4

    if-ltz p3, :cond_4

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_0

    goto :goto_2

    .line 237
    :cond_0
    invoke-direct {p0, p1}, Lcom/maya/open/http/okio/SegmentedByteString;->segment(I)I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-lez p4, :cond_3

    .line 238
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 239
    .local v2, "segmentOffset":I
    :goto_1
    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    .line 240
    .local v3, "segmentSize":I
    add-int v4, v2, v3

    sub-int/2addr v4, p1

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 241
    .local v4, "stepSize":I
    iget-object v5, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    iget-object v6, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v6, v6

    add-int/2addr v6, v1

    aget v5, v5, v6

    .line 242
    .local v5, "segmentPos":I
    sub-int v6, p1, v2

    add-int/2addr v6, v5

    .line 243
    .local v6, "arrayOffset":I
    iget-object v7, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    aget-object v7, v7, v1

    invoke-static {v7, v6, p2, p3, v4}, Lcom/maya/open/http/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v7

    if-nez v7, :cond_2

    return v0

    .line 244
    :cond_2
    add-int/2addr p1, v4

    .line 245
    add-int/2addr p3, v4

    .line 246
    sub-int/2addr p4, v4

    .line 237
    .end local v2    # "segmentOffset":I
    .end local v3    # "segmentSize":I
    .end local v4    # "stepSize":I
    .end local v5    # "segmentPos":I
    .end local v6    # "arrayOffset":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "s":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 234
    :cond_4
    :goto_2
    return v0
.end method

.method public sha1()Lcom/maya/open/http/okio/ByteString;
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->sha1()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lcom/maya/open/http/okio/ByteString;
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->sha256()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 98
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Lcom/maya/open/http/okio/ByteString;
    .locals 1
    .param p1, "beginIndex"    # I

    .line 142
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/ByteString;->substring(I)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lcom/maya/open/http/okio/ByteString;
    .locals 1
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 146
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okio/ByteString;->substring(II)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiLowercase()Lcom/maya/open/http/okio/ByteString;
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->toAsciiLowercase()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toAsciiUppercase()Lcom/maya/open/http/okio/ByteString;
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->toAsciiUppercase()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 8

    .line 169
    iget-object v0, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    new-array v0, v0, [B

    .line 170
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 171
    .local v1, "segmentOffset":I
    const/4 v2, 0x0

    .local v2, "s":I
    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v3, v3

    .local v3, "segmentCount":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 172
    iget-object v4, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    add-int v5, v3, v2

    aget v4, v4, v5

    .line 173
    .local v4, "segmentPos":I
    iget-object v5, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    aget v5, v5, v2

    .line 174
    .local v5, "nextSegmentOffset":I
    iget-object v6, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v2

    sub-int v7, v5, v1

    invoke-static {v6, v4, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    move v1, v5

    .line 171
    .end local v4    # "segmentPos":I
    .end local v5    # "nextSegmentOffset":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v2    # "s":I
    .end local v3    # "segmentCount":I
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 296
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method write(Lcom/maya/open/http/okio/Buffer;)V
    .locals 8
    .param p1, "buffer"    # Lcom/maya/open/http/okio/Buffer;

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "segmentOffset":I
    const/4 v1, 0x0

    .local v1, "s":I
    iget-object v2, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v2, v2

    .local v2, "segmentCount":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 199
    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    add-int v4, v2, v1

    aget v3, v3, v4

    .line 200
    .local v3, "segmentPos":I
    iget-object v4, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    aget v4, v4, v1

    .line 201
    .local v4, "nextSegmentOffset":I
    new-instance v5, Lcom/maya/open/http/okio/Segment;

    iget-object v6, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v1

    add-int v7, v3, v4

    sub-int/2addr v7, v0

    invoke-direct {v5, v6, v3, v7}, Lcom/maya/open/http/okio/Segment;-><init>([BII)V

    .line 203
    .local v5, "segment":Lcom/maya/open/http/okio/Segment;
    iget-object v6, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    if-nez v6, :cond_0

    .line 204
    iput-object v5, v5, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    iput-object v5, v5, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    iput-object v5, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    goto :goto_1

    .line 206
    :cond_0
    iget-object v6, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    iget-object v6, v6, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    invoke-virtual {v6, v5}, Lcom/maya/open/http/okio/Segment;->push(Lcom/maya/open/http/okio/Segment;)Lcom/maya/open/http/okio/Segment;

    .line 208
    :goto_1
    move v0, v4

    .line 198
    .end local v3    # "segmentPos":I
    .end local v4    # "nextSegmentOffset":I
    .end local v5    # "segment":Lcom/maya/open/http/okio/Segment;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "s":I
    .end local v2    # "segmentCount":I
    :cond_1
    iget-wide v1, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    .line 211
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    if-eqz p1, :cond_1

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "segmentOffset":I
    const/4 v1, 0x0

    .local v1, "s":I
    iget-object v2, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v2, v2

    .local v2, "segmentCount":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 189
    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    add-int v4, v2, v1

    aget v3, v3, v4

    .line 190
    .local v3, "segmentPos":I
    iget-object v4, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    aget v4, v4, v1

    .line 191
    .local v4, "nextSegmentOffset":I
    iget-object v5, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    aget-object v5, v5, v1

    sub-int v6, v4, v0

    invoke-virtual {p1, v5, v3, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 192
    move v0, v4

    .line 188
    .end local v3    # "segmentPos":I
    .end local v4    # "nextSegmentOffset":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "s":I
    .end local v2    # "segmentCount":I
    :cond_0
    return-void

    .line 186
    .end local v0    # "segmentOffset":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
