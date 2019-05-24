.class final Lcom/maya/open/http/okio/SegmentedByteString;
.super Lcom/maya/open/http/okio/ByteString;
.source "SourceFile"


# instance fields
.field final transient directory:[I

.field final transient segments:[[B


# direct methods
.method constructor <init>(Lcom/maya/open/http/okio/Buffer;I)V
    .locals 7

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lcom/maya/open/http/okio/ByteString;-><init>([B)V

    .line 62
    iget-wide v1, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/maya/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 67
    iget-object v0, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 68
    iget v4, v2, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v5, v2, Lcom/maya/open/http/okio/Segment;->pos:I

    if-eq v4, v5, :cond_0

    .line 71
    iget v4, v2, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v5, v2, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v4, v5

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    .line 67
    iget-object v2, v2, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    goto :goto_0

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "s.limit == s.pos"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 76
    :cond_1
    new-array v0, v3, [[B

    iput-object v0, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    mul-int/lit8 v3, v3, 0x2

    .line 77
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    .line 80
    iget-object p1, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    move-object v0, p1

    const/4 p1, 0x0

    :goto_1
    if-ge v1, p2, :cond_3

    .line 81
    iget-object v2, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    iget-object v3, v0, Lcom/maya/open/http/okio/Segment;->data:[B

    aput-object v3, v2, p1

    .line 82
    iget v2, v0, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v3, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    if-le v1, p2, :cond_2

    move v1, p2

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    aput v1, v2, p1

    .line 87
    iget-object v2, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v3, v3

    add-int/2addr v3, p1

    iget v4, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    aput v4, v2, v3

    const/4 v2, 0x1

    .line 88
    iput-boolean v2, v0, Lcom/maya/open/http/okio/Segment;->shared:Z

    add-int/lit8 p1, p1, 0x1

    .line 80
    iget-object v0, v0, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private segment(I)I
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    iget-object v1, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    add-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
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

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 270
    :cond_0
    instance-of v1, p1, Lcom/maya/open/http/okio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/maya/open/http/okio/ByteString;

    .line 271
    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->size()I

    move-result v1

    invoke-virtual {p0, v2, p1, v2, v1}, Lcom/maya/open/http/okio/SegmentedByteString;->rangeEquals(ILcom/maya/open/http/okio/ByteString;II)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getByte(I)B
    .locals 7

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

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 153
    :goto_0
    iget-object v2, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v3, v3

    add-int/2addr v3, v0

    aget v2, v2, v3

    .line 154
    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    aget-object v0, v3, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p1, v0, p1

    return p1
.end method

.method public hashCode()I
    .locals 8

    .line 276
    iget v0, p0, Lcom/maya/open/http/okio/SegmentedByteString;->hashCode:I

    if-eqz v0, :cond_0

    return v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 283
    iget-object v4, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v1

    .line 284
    iget-object v5, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    add-int v6, v0, v1

    aget v5, v5, v6

    .line 285
    iget-object v6, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    aget v6, v6, v1

    sub-int v2, v6, v2

    add-int/2addr v2, v5

    :goto_1
    if-ge v5, v2, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    .line 288
    aget-byte v7, v4, v5

    add-int/2addr v3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v6

    goto :goto_0

    .line 292
    :cond_2
    iput v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->hashCode:I

    return v3
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

    .line 130
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/ByteString;->hmacSha1(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public hmacSha256(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/ByteString;
    .locals 1

    .line 134
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/ByteString;->hmacSha256(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public indexOf([BI)I
    .locals 1

    .line 252
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okio/ByteString;->indexOf([BI)I

    move-result p1

    return p1
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

    .line 256
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okio/ByteString;->lastIndexOf([BI)I

    move-result p1

    return p1
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
    .locals 6

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    .line 215
    invoke-virtual {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p1, v1, :cond_0

    goto :goto_2

    .line 217
    :cond_0
    invoke-direct {p0, p1}, Lcom/maya/open/http/okio/SegmentedByteString;->segment(I)I

    move-result v1

    :goto_0
    if-lez p4, :cond_3

    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 219
    :goto_1
    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    .line 220
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 221
    iget-object v4, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    iget-object v5, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v5, v5

    add-int/2addr v5, v1

    aget v4, v4, v5

    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 223
    iget-object v4, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v1

    invoke-virtual {p2, p3, v4, v2, v3}, Lcom/maya/open/http/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v0
.end method

.method public rangeEquals(I[BII)Z
    .locals 6

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    .line 232
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

    :goto_0
    if-lez p4, :cond_3

    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 239
    :goto_1
    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    .line 240
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 241
    iget-object v4, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    iget-object v5, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v5, v5

    add-int/2addr v5, v1

    aget v4, v4, v5

    sub-int v2, p1, v2

    add-int/2addr v2, v4

    .line 243
    iget-object v4, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    aget-object v4, v4, v1

    invoke-static {v4, v2, p2, p3, v3}, Lcom/maya/open/http/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

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

    .line 98
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/ByteString;->string(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public substring(I)Lcom/maya/open/http/okio/ByteString;
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/ByteString;->substring(I)Lcom/maya/open/http/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public substring(II)Lcom/maya/open/http/okio/ByteString;
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/maya/open/http/okio/SegmentedByteString;->toByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okio/ByteString;->substring(II)Lcom/maya/open/http/okio/ByteString;

    move-result-object p1

    return-object p1
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

    .line 171
    iget-object v1, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 172
    iget-object v4, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    add-int v5, v1, v2

    aget v4, v4, v5

    .line 173
    iget-object v5, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    aget v5, v5, v2

    .line 174
    iget-object v6, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v2

    sub-int v7, v5, v3

    invoke-static {v6, v4, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

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

    .line 198
    iget-object v0, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 199
    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    add-int v4, v0, v1

    aget v3, v3, v4

    .line 200
    iget-object v4, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    aget v4, v4, v1

    .line 201
    new-instance v5, Lcom/maya/open/http/okio/Segment;

    iget-object v6, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    aget-object v6, v6, v1

    add-int v7, v3, v4

    sub-int/2addr v7, v2

    invoke-direct {v5, v6, v3, v7}, Lcom/maya/open/http/okio/Segment;-><init>([BII)V

    .line 203
    iget-object v2, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    if-nez v2, :cond_0

    .line 204
    iput-object v5, v5, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    iput-object v5, v5, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    iput-object v5, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    goto :goto_1

    .line 206
    :cond_0
    iget-object v2, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    iget-object v2, v2, Lcom/maya/open/http/okio/Segment;->prev:Lcom/maya/open/http/okio/Segment;

    invoke-virtual {v2, v5}, Lcom/maya/open/http/okio/Segment;->push(Lcom/maya/open/http/okio/Segment;)Lcom/maya/open/http/okio/Segment;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    .line 210
    :cond_1
    iget-wide v0, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 188
    iget-object v0, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 189
    iget-object v3, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    add-int v4, v0, v1

    aget v3, v3, v4

    .line 190
    iget-object v4, p0, Lcom/maya/open/http/okio/SegmentedByteString;->directory:[I

    aget v4, v4, v1

    .line 191
    iget-object v5, p0, Lcom/maya/open/http/okio/SegmentedByteString;->segments:[[B

    aget-object v5, v5, v1

    sub-int v2, v4, v2

    invoke-virtual {p1, v5, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    return-void

    .line 186
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "out == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
