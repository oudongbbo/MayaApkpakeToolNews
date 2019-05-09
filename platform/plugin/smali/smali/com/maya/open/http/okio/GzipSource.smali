.class public final Lcom/maya/open/http/okio/GzipSource;
.super Ljava/lang/Object;
.source "GzipSource.java"

# interfaces
.implements Lcom/maya/open/http/okio/Source;


# static fields
.field private static final FCOMMENT:B = 0x4t

.field private static final FEXTRA:B = 0x2t

.field private static final FHCRC:B = 0x1t

.field private static final FNAME:B = 0x3t

.field private static final SECTION_BODY:B = 0x1t

.field private static final SECTION_DONE:B = 0x3t

.field private static final SECTION_HEADER:B = 0x0t

.field private static final SECTION_TRAILER:B = 0x2t


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private final inflater:Ljava/util/zip/Inflater;

.field private final inflaterSource:Lcom/maya/open/http/okio/InflaterSource;

.field private section:I

.field private final source:Lcom/maya/open/http/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okio/Source;)V
    .locals 3
    .param p1, "source"    # Lcom/maya/open/http/okio/Source;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/maya/open/http/okio/GzipSource;->section:I

    .line 66
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    .line 69
    if-eqz p1, :cond_0

    .line 70
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lcom/maya/open/http/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    .line 71
    invoke-static {p1}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    .line 72
    new-instance v0, Lcom/maya/open/http/okio/InflaterSource;

    iget-object v1, p0, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    iget-object v2, p0, Lcom/maya/open/http/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-direct {v0, v1, v2}, Lcom/maya/open/http/okio/InflaterSource;-><init>(Lcom/maya/open/http/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, Lcom/maya/open/http/okio/GzipSource;->inflaterSource:Lcom/maya/open/http/okio/InflaterSource;

    .line 73
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkEqual(Ljava/lang/String;II)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "expected"    # I
    .param p3, "actual"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    if-ne p3, p2, :cond_0

    .line 216
    return-void

    .line 213
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 214
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 213
    const-string v2, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private consumeHeader()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    const-wide/16 v1, 0xa

    invoke-interface {v0, v1, v2}, Lcom/maya/open/http/okio/BufferedSource;->require(J)V

    .line 123
    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->buffer()Lcom/maya/open/http/okio/Buffer;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okio/Buffer;->getByte(J)B

    move-result v7

    .line 124
    .local v7, "flags":B
    shr-int/lit8 v0, v7, 0x1

    const/4 v8, 0x1

    and-int/2addr v0, v8

    const/4 v9, 0x0

    if-ne v0, v8, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    .line 125
    .local v10, "fhcrc":Z
    if-eqz v10, :cond_1

    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->buffer()Lcom/maya/open/http/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/maya/open/http/okio/GzipSource;->updateCrc(Lcom/maya/open/http/okio/Buffer;JJ)V

    .line 127
    :cond_1
    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->readShort()S

    move-result v11

    .line 128
    .local v11, "id1id2":S
    const-string v0, "ID1ID2"

    const/16 v1, 0x1f8b

    invoke-direct {v6, v0, v1, v11}, Lcom/maya/open/http/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 129
    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    const-wide/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    .line 135
    shr-int/lit8 v0, v7, 0x2

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_4

    .line 136
    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    const-wide/16 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/maya/open/http/okio/BufferedSource;->require(J)V

    .line 137
    if-eqz v10, :cond_2

    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->buffer()Lcom/maya/open/http/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/maya/open/http/okio/GzipSource;->updateCrc(Lcom/maya/open/http/okio/Buffer;JJ)V

    .line 138
    :cond_2
    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->buffer()Lcom/maya/open/http/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->readShortLe()S

    move-result v12

    .line 139
    .local v12, "xlen":I
    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    int-to-long v1, v12

    invoke-interface {v0, v1, v2}, Lcom/maya/open/http/okio/BufferedSource;->require(J)V

    .line 140
    if-eqz v10, :cond_3

    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->buffer()Lcom/maya/open/http/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    int-to-long v4, v12

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/maya/open/http/okio/GzipSource;->updateCrc(Lcom/maya/open/http/okio/Buffer;JJ)V

    .line 141
    :cond_3
    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    int-to-long v1, v12

    invoke-interface {v0, v1, v2}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    .line 148
    .end local v12    # "xlen":I
    :cond_4
    shr-int/lit8 v0, v7, 0x3

    and-int/2addr v0, v8

    const-wide/16 v12, -0x1

    const-wide/16 v14, 0x1

    if-ne v0, v8, :cond_7

    .line 149
    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0, v9}, Lcom/maya/open/http/okio/BufferedSource;->indexOf(B)J

    move-result-wide v16

    .line 150
    .local v16, "index":J
    cmp-long v0, v16, v12

    if-eqz v0, :cond_6

    .line 151
    if-eqz v10, :cond_5

    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->buffer()Lcom/maya/open/http/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v16, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/maya/open/http/okio/GzipSource;->updateCrc(Lcom/maya/open/http/okio/Buffer;JJ)V

    .line 152
    :cond_5
    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    add-long v1, v16, v14

    invoke-interface {v0, v1, v2}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    goto :goto_1

    .line 150
    :cond_6
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 159
    .end local v16    # "index":J
    :cond_7
    :goto_1
    shr-int/lit8 v0, v7, 0x4

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_a

    .line 160
    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0, v9}, Lcom/maya/open/http/okio/BufferedSource;->indexOf(B)J

    move-result-wide v8

    .line 161
    .local v8, "index":J
    cmp-long v0, v8, v12

    if-eqz v0, :cond_9

    .line 162
    if-eqz v10, :cond_8

    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->buffer()Lcom/maya/open/http/okio/Buffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v8, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/maya/open/http/okio/GzipSource;->updateCrc(Lcom/maya/open/http/okio/Buffer;JJ)V

    .line 163
    :cond_8
    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    add-long/2addr v14, v8

    invoke-interface {v0, v14, v15}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    goto :goto_2

    .line 161
    :cond_9
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 170
    .end local v8    # "index":J
    :cond_a
    :goto_2
    if-eqz v10, :cond_b

    .line 171
    const-string v0, "FHCRC"

    iget-object v1, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v1}, Lcom/maya/open/http/okio/BufferedSource;->readShortLe()S

    move-result v1

    iget-object v2, v6, Lcom/maya/open/http/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-direct {v6, v0, v1, v2}, Lcom/maya/open/http/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 172
    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 174
    :cond_b
    return-void
.end method

.method private consumeTrailer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    const-string v0, "CRC"

    iget-object v1, p0, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v1}, Lcom/maya/open/http/okio/BufferedSource;->readIntLe()I

    move-result v1

    iget-object v2, p0, Lcom/maya/open/http/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/maya/open/http/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 182
    const-string v0, "ISIZE"

    iget-object v1, p0, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v1}, Lcom/maya/open/http/okio/BufferedSource;->readIntLe()I

    move-result v1

    iget-object v2, p0, Lcom/maya/open/http/okio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/maya/open/http/okio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    .line 183
    return-void
.end method

.method private updateCrc(Lcom/maya/open/http/okio/Buffer;JJ)V
    .locals 5
    .param p1, "buffer"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    .line 196
    iget-object v0, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    .line 197
    .local v0, "s":Lcom/maya/open/http/okio/Segment;
    :goto_0
    iget v1, v0, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v2, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, p2, v1

    if-ltz v3, :cond_0

    .line 198
    iget v1, v0, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v2, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr p2, v1

    .line 197
    iget-object v0, v0, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    goto :goto_0

    .line 202
    :cond_0
    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-lez v3, :cond_1

    .line 203
    iget v1, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    long-to-int v1, v1

    .line 204
    .local v1, "pos":I
    iget v2, v0, Lcom/maya/open/http/okio/Segment;->limit:I

    sub-int/2addr v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 205
    .local v2, "toUpdate":I
    iget-object v3, p0, Lcom/maya/open/http/okio/GzipSource;->crc:Ljava/util/zip/CRC32;

    iget-object v4, v0, Lcom/maya/open/http/okio/Segment;->data:[B

    invoke-virtual {v3, v4, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 206
    int-to-long v3, v2

    sub-long/2addr p4, v3

    .line 207
    const-wide/16 p2, 0x0

    .line 202
    .end local v1    # "pos":I
    .end local v2    # "toUpdate":I
    iget-object v0, v0, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    goto :goto_1

    .line 209
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/maya/open/http/okio/GzipSource;->inflaterSource:Lcom/maya/open/http/okio/InflaterSource;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/InflaterSource;->close()V

    .line 191
    return-void
.end method

.method public read(Lcom/maya/open/http/okio/Buffer;J)J
    .locals 14
    .param p1, "sink"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    move-object v6, p0

    move-object v7, p1

    move-wide/from16 v8, p2

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-ltz v2, :cond_6

    .line 77
    cmp-long v2, v8, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 80
    :cond_0
    iget v0, v6, Lcom/maya/open/http/okio/GzipSource;->section:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/maya/open/http/okio/GzipSource;->consumeHeader()V

    .line 82
    iput v1, v6, Lcom/maya/open/http/okio/GzipSource;->section:I

    .line 86
    :cond_1
    iget v0, v6, Lcom/maya/open/http/okio/GzipSource;->section:I

    const/4 v2, 0x2

    const-wide/16 v3, -0x1

    if-ne v0, v1, :cond_3

    .line 87
    iget-wide v10, v7, Lcom/maya/open/http/okio/Buffer;->size:J

    .line 88
    .local v10, "offset":J
    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->inflaterSource:Lcom/maya/open/http/okio/InflaterSource;

    invoke-virtual {v0, p1, v8, v9}, Lcom/maya/open/http/okio/InflaterSource;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v12

    .line 89
    .local v12, "result":J
    cmp-long v0, v12, v3

    if-eqz v0, :cond_2

    .line 90
    move-object v0, p0

    move-object v1, p1

    move-wide v2, v10

    move-wide v4, v12

    invoke-direct/range {v0 .. v5}, Lcom/maya/open/http/okio/GzipSource;->updateCrc(Lcom/maya/open/http/okio/Buffer;JJ)V

    .line 91
    return-wide v12

    .line 93
    :cond_2
    iput v2, v6, Lcom/maya/open/http/okio/GzipSource;->section:I

    .line 99
    .end local v10    # "offset":J
    .end local v12    # "result":J
    :cond_3
    iget v0, v6, Lcom/maya/open/http/okio/GzipSource;->section:I

    if-ne v0, v2, :cond_5

    .line 100
    invoke-direct {p0}, Lcom/maya/open/http/okio/GzipSource;->consumeTrailer()V

    .line 101
    const/4 v0, 0x3

    iput v0, v6, Lcom/maya/open/http/okio/GzipSource;->section:I

    .line 107
    iget-object v0, v6, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 108
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_5
    :goto_0
    return-wide v3

    .line 76
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/maya/open/http/okio/GzipSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
