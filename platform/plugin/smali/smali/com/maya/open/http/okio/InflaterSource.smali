.class public final Lcom/maya/open/http/okio/InflaterSource;
.super Ljava/lang/Object;
.source "InflaterSource.java"

# interfaces
.implements Lcom/maya/open/http/okio/Source;


# instance fields
.field private bufferBytesHeldByInflater:I

.field private closed:Z

.field private final inflater:Ljava/util/zip/Inflater;

.field private final source:Lcom/maya/open/http/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okio/BufferedSource;Ljava/util/zip/Inflater;)V
    .locals 2
    .param p1, "source"    # Lcom/maya/open/http/okio/BufferedSource;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-eqz p1, :cond_1

    .line 58
    if-eqz p2, :cond_0

    .line 59
    iput-object p1, p0, Lcom/maya/open/http/okio/InflaterSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    .line 60
    iput-object p2, p0, Lcom/maya/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    .line 61
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/maya/open/http/okio/Source;Ljava/util/zip/Inflater;)V
    .locals 1
    .param p1, "source"    # Lcom/maya/open/http/okio/Source;
    .param p2, "inflater"    # Ljava/util/zip/Inflater;

    .line 48
    invoke-static {p1}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/maya/open/http/okio/InflaterSource;-><init>(Lcom/maya/open/http/okio/BufferedSource;Ljava/util/zip/Inflater;)V

    .line 49
    return-void
.end method

.method private releaseInflatedBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget v0, p0, Lcom/maya/open/http/okio/InflaterSource;->bufferBytesHeldByInflater:I

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget v0, p0, Lcom/maya/open/http/okio/InflaterSource;->bufferBytesHeldByInflater:I

    iget-object v1, p0, Lcom/maya/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    .line 122
    .local v0, "toRelease":I
    iget v1, p0, Lcom/maya/open/http/okio/InflaterSource;->bufferBytesHeldByInflater:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/maya/open/http/okio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 123
    iget-object v1, p0, Lcom/maya/open/http/okio/InflaterSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    .line 124
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

    .line 131
    iget-boolean v0, p0, Lcom/maya/open/http/okio/InflaterSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okio/InflaterSource;->closed:Z

    .line 134
    iget-object v0, p0, Lcom/maya/open/http/okio/InflaterSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->close()V

    .line 135
    return-void
.end method

.method public read(Lcom/maya/open/http/okio/Buffer;J)J
    .locals 7
    .param p1, "sink"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 66
    iget-boolean v2, p0, Lcom/maya/open/http/okio/InflaterSource;->closed:Z

    if-nez v2, :cond_6

    .line 67
    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 70
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/maya/open/http/okio/InflaterSource;->refill()Z

    move-result v0

    .line 74
    .local v0, "sourceExhausted":Z
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/maya/open/http/okio/Buffer;->writableSegment(I)Lcom/maya/open/http/okio/Segment;

    move-result-object v1

    .line 75
    .local v1, "tail":Lcom/maya/open/http/okio/Segment;
    iget-object v2, p0, Lcom/maya/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v3, v1, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v4, v1, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v5, v1, Lcom/maya/open/http/okio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    .line 76
    .local v2, "bytesInflated":I
    if-lez v2, :cond_1

    .line 77
    iget v3, v1, Lcom/maya/open/http/okio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/maya/open/http/okio/Segment;->limit:I

    .line 78
    iget-wide v3, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p1, Lcom/maya/open/http/okio/Buffer;->size:J

    .line 79
    int-to-long v3, v2

    return-wide v3

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/maya/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/maya/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 90
    :cond_2
    if-nez v0, :cond_3

    .line 93
    .end local v1    # "tail":Lcom/maya/open/http/okio/Segment;
    .end local v2    # "bytesInflated":I
    nop

    .line 94
    .end local v0    # "sourceExhausted":Z
    goto :goto_0

    .line 90
    .restart local v0    # "sourceExhausted":Z
    .restart local v1    # "tail":Lcom/maya/open/http/okio/Segment;
    .restart local v2    # "bytesInflated":I
    :cond_3
    new-instance v3, Ljava/io/EOFException;

    const-string v4, "source exhausted prematurely"

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/maya/open/http/okio/InflaterSource;->releaseInflatedBytes()V

    .line 83
    iget v3, v1, Lcom/maya/open/http/okio/Segment;->pos:I

    iget v4, v1, Lcom/maya/open/http/okio/Segment;->limit:I

    if-ne v3, v4, :cond_5

    .line 85
    invoke-virtual {v1}, Lcom/maya/open/http/okio/Segment;->pop()Lcom/maya/open/http/okio/Segment;

    move-result-object v3

    iput-object v3, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    .line 86
    invoke-static {v1}, Lcom/maya/open/http/okio/SegmentPool;->recycle(Lcom/maya/open/http/okio/Segment;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_5
    const-wide/16 v3, -0x1

    return-wide v3

    .line 91
    .end local v1    # "tail":Lcom/maya/open/http/okio/Segment;
    .end local v2    # "bytesInflated":I
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/util/zip/DataFormatException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 66
    .end local v0    # "sourceExhausted":Z
    .end local v1    # "e":Ljava/util/zip/DataFormatException;
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refill()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/maya/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/maya/open/http/okio/InflaterSource;->releaseInflatedBytes()V

    .line 106
    iget-object v0, p0, Lcom/maya/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/maya/open/http/okio/InflaterSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okio/InflaterSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->buffer()Lcom/maya/open/http/okio/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    .line 113
    .local v0, "head":Lcom/maya/open/http/okio/Segment;
    iget v2, v0, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v3, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/maya/open/http/okio/InflaterSource;->bufferBytesHeldByInflater:I

    .line 114
    iget-object v2, p0, Lcom/maya/open/http/okio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    iget-object v3, v0, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v4, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    iget v5, p0, Lcom/maya/open/http/okio/InflaterSource;->bufferBytesHeldByInflater:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 115
    return v1

    .line 106
    .end local v0    # "head":Lcom/maya/open/http/okio/Segment;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/maya/open/http/okio/InflaterSource;->source:Lcom/maya/open/http/okio/BufferedSource;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSource;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
