.class public final Lcom/maya/open/http/okio/DeflaterSink;
.super Ljava/lang/Object;
.source "DeflaterSink.java"

# interfaces
.implements Lcom/maya/open/http/okio/Sink;


# instance fields
.field private closed:Z

.field private final deflater:Ljava/util/zip/Deflater;

.field private final sink:Lcom/maya/open/http/okio/BufferedSink;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okio/BufferedSink;Ljava/util/zip/Deflater;)V
    .locals 2
    .param p1, "sink"    # Lcom/maya/open/http/okio/BufferedSink;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-eqz p1, :cond_1

    .line 53
    if-eqz p2, :cond_0

    .line 54
    iput-object p1, p0, Lcom/maya/open/http/okio/DeflaterSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    .line 55
    iput-object p2, p0, Lcom/maya/open/http/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    .line 56
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/maya/open/http/okio/Sink;Ljava/util/zip/Deflater;)V
    .locals 1
    .param p1, "sink"    # Lcom/maya/open/http/okio/Sink;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;

    .line 43
    invoke-static {p1}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/maya/open/http/okio/DeflaterSink;-><init>(Lcom/maya/open/http/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    .line 44
    return-void
.end method

.method private deflate(Z)V
    .locals 7
    .param p1, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/maya/open/http/okio/DeflaterSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->buffer()Lcom/maya/open/http/okio/Buffer;

    move-result-object v0

    .line 85
    .local v0, "buffer":Lcom/maya/open/http/okio/Buffer;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writableSegment(I)Lcom/maya/open/http/okio/Segment;

    move-result-object v1

    .line 91
    .local v1, "s":Lcom/maya/open/http/okio/Segment;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v4, v1, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v5, v1, Lcom/maya/open/http/okio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    const/4 v6, 0x2

    .line 92
    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/maya/open/http/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v4, v1, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v5, v1, Lcom/maya/open/http/okio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    .line 93
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    .line 95
    .local v2, "deflated":I
    :goto_1
    if-lez v2, :cond_1

    .line 96
    iget v3, v1, Lcom/maya/open/http/okio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/maya/open/http/okio/Segment;->limit:I

    .line 97
    iget-wide v3, v0, Lcom/maya/open/http/okio/Buffer;->size:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/maya/open/http/okio/Buffer;->size:J

    .line 98
    iget-object v3, p0, Lcom/maya/open/http/okio/DeflaterSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v3}, Lcom/maya/open/http/okio/BufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    goto :goto_2

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/maya/open/http/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    iget v3, v1, Lcom/maya/open/http/okio/Segment;->pos:I

    iget v4, v1, Lcom/maya/open/http/okio/Segment;->limit:I

    if-ne v3, v4, :cond_2

    .line 102
    invoke-virtual {v1}, Lcom/maya/open/http/okio/Segment;->pop()Lcom/maya/open/http/okio/Segment;

    move-result-object v3

    iput-object v3, v0, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    .line 103
    invoke-static {v1}, Lcom/maya/open/http/okio/SegmentPool;->recycle(Lcom/maya/open/http/okio/Segment;)V

    .line 105
    :cond_2
    return-void

    .line 107
    .end local v1    # "s":Lcom/maya/open/http/okio/Segment;
    .end local v2    # "deflated":I
    :cond_3
    :goto_2
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-boolean v0, p0, Lcom/maya/open/http/okio/DeflaterSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 127
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Lcom/maya/open/http/okio/DeflaterSink;->finishDeflate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 133
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/maya/open/http/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    goto :goto_1

    .line 134
    :catch_1
    move-exception v1

    .line 135
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 139
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/maya/open/http/okio/DeflaterSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v1}, Lcom/maya/open/http/okio/BufferedSink;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 142
    goto :goto_2

    .line 140
    :catch_2
    move-exception v1

    .line 141
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 143
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/maya/open/http/okio/DeflaterSink;->closed:Z

    .line 145
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/maya/open/http/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    .line 146
    :cond_3
    return-void
.end method

.method finishDeflate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/maya/open/http/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/maya/open/http/okio/DeflaterSink;->deflate(Z)V

    .line 118
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/maya/open/http/okio/DeflaterSink;->deflate(Z)V

    .line 112
    iget-object v0, p0, Lcom/maya/open/http/okio/DeflaterSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->flush()V

    .line 113
    return-void
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/maya/open/http/okio/DeflaterSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okio/DeflaterSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/maya/open/http/okio/Buffer;J)V
    .locals 6
    .param p1, "source"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-wide v0, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/maya/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 60
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 62
    iget-object v0, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    .line 63
    .local v0, "head":Lcom/maya/open/http/okio/Segment;
    iget v1, v0, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v2, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 64
    .local v1, "toDeflate":I
    iget-object v2, p0, Lcom/maya/open/http/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v0, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v4, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 67
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/maya/open/http/okio/DeflaterSink;->deflate(Z)V

    .line 70
    iget-wide v2, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    .line 71
    iget v2, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    .line 72
    iget v2, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    iget v3, v0, Lcom/maya/open/http/okio/Segment;->limit:I

    if-ne v2, v3, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/maya/open/http/okio/Segment;->pop()Lcom/maya/open/http/okio/Segment;

    move-result-object v2

    iput-object v2, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    .line 74
    invoke-static {v0}, Lcom/maya/open/http/okio/SegmentPool;->recycle(Lcom/maya/open/http/okio/Segment;)V

    .line 77
    :cond_0
    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 78
    .end local v0    # "head":Lcom/maya/open/http/okio/Segment;
    .end local v1    # "toDeflate":I
    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method
