.class public final Lcom/maya/open/http/okio/GzipSink;
.super Ljava/lang/Object;
.source "GzipSink.java"

# interfaces
.implements Lcom/maya/open/http/okio/Sink;


# instance fields
.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final deflaterSink:Lcom/maya/open/http/okio/DeflaterSink;

.field private final sink:Lcom/maya/open/http/okio/BufferedSink;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okio/Sink;)V
    .locals 3
    .param p1, "sink"    # Lcom/maya/open/http/okio/Sink;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    .line 66
    if-eqz p1, :cond_0

    .line 67
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lcom/maya/open/http/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    .line 68
    invoke-static {p1}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okio/GzipSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    .line 69
    new-instance v0, Lcom/maya/open/http/okio/DeflaterSink;

    iget-object v1, p0, Lcom/maya/open/http/okio/GzipSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    iget-object v2, p0, Lcom/maya/open/http/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-direct {v0, v1, v2}, Lcom/maya/open/http/okio/DeflaterSink;-><init>(Lcom/maya/open/http/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    iput-object v0, p0, Lcom/maya/open/http/okio/GzipSink;->deflaterSink:Lcom/maya/open/http/okio/DeflaterSink;

    .line 71
    invoke-direct {p0}, Lcom/maya/open/http/okio/GzipSink;->writeHeader()V

    .line 72
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateCrc(Lcom/maya/open/http/okio/Buffer;J)V
    .locals 5
    .param p1, "buffer"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J

    .line 148
    iget-object v0, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    .local v0, "head":Lcom/maya/open/http/okio/Segment;
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    .line 149
    iget v1, v0, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v2, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 150
    .local v1, "segmentLength":I
    iget-object v2, p0, Lcom/maya/open/http/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    iget-object v3, v0, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v4, v0, Lcom/maya/open/http/okio/Segment;->pos:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 151
    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 148
    .end local v1    # "segmentLength":I
    iget-object v0, v0, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    goto :goto_0

    .line 153
    .end local v0    # "head":Lcom/maya/open/http/okio/Segment;
    :cond_0
    return-void
.end method

.method private writeFooter()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/maya/open/http/okio/GzipSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    iget-object v1, p0, Lcom/maya/open/http/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeIntLe(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 143
    iget-object v0, p0, Lcom/maya/open/http/okio/GzipSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    iget-object v1, p0, Lcom/maya/open/http/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeIntLe(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 144
    return-void
.end method

.method private writeHeader()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/maya/open/http/okio/GzipSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->buffer()Lcom/maya/open/http/okio/Buffer;

    move-result-object v0

    .line 133
    .local v0, "buffer":Lcom/maya/open/http/okio/Buffer;
    const/16 v1, 0x1f8b

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeShort(I)Lcom/maya/open/http/okio/Buffer;

    .line 134
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 136
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeInt(I)Lcom/maya/open/http/okio/Buffer;

    .line 137
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 138
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 139
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-boolean v0, p0, Lcom/maya/open/http/okio/GzipSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    .line 100
    .local v0, "thrown":Ljava/lang/Throwable;
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okio/GzipSink;->deflaterSink:Lcom/maya/open/http/okio/DeflaterSink;

    invoke-virtual {v1}, Lcom/maya/open/http/okio/DeflaterSink;->finishDeflate()V

    .line 101
    invoke-direct {p0}, Lcom/maya/open/http/okio/GzipSink;->writeFooter()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 107
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/maya/open/http/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    goto :goto_1

    .line 108
    :catch_1
    move-exception v1

    .line 109
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 113
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/maya/open/http/okio/GzipSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v1}, Lcom/maya/open/http/okio/BufferedSink;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 116
    goto :goto_2

    .line 114
    :catch_2
    move-exception v1

    .line 115
    .restart local v1    # "e":Ljava/lang/Throwable;
    if-nez v0, :cond_2

    move-object v0, v1

    .line 117
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/maya/open/http/okio/GzipSink;->closed:Z

    .line 119
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/maya/open/http/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    .line 120
    :cond_3
    return-void
.end method

.method public deflater()Ljava/util/zip/Deflater;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/maya/open/http/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/maya/open/http/okio/GzipSink;->deflaterSink:Lcom/maya/open/http/okio/DeflaterSink;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/DeflaterSink;->flush()V

    .line 84
    return-void
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/maya/open/http/okio/GzipSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/maya/open/http/okio/Buffer;J)V
    .locals 3
    .param p1, "source"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    .line 76
    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okio/GzipSink;->updateCrc(Lcom/maya/open/http/okio/Buffer;J)V

    .line 79
    iget-object v0, p0, Lcom/maya/open/http/okio/GzipSink;->deflaterSink:Lcom/maya/open/http/okio/DeflaterSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okio/DeflaterSink;->write(Lcom/maya/open/http/okio/Buffer;J)V

    .line 80
    return-void

    .line 75
    :cond_1
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
