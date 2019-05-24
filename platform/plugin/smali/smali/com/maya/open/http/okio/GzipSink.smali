.class public final Lcom/maya/open/http/okio/GzipSink;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    if-eqz p1, :cond_0

    .line 67
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lcom/maya/open/http/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    .line 68
    invoke-static {p1}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okio/GzipSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    .line 69
    new-instance p1, Lcom/maya/open/http/okio/DeflaterSink;

    iget-object v0, p0, Lcom/maya/open/http/okio/GzipSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    iget-object v1, p0, Lcom/maya/open/http/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-direct {p1, v0, v1}, Lcom/maya/open/http/okio/DeflaterSink;-><init>(Lcom/maya/open/http/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    iput-object p1, p0, Lcom/maya/open/http/okio/GzipSink;->deflaterSink:Lcom/maya/open/http/okio/DeflaterSink;

    .line 71
    invoke-direct {p0}, Lcom/maya/open/http/okio/GzipSink;->writeHeader()V

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateCrc(Lcom/maya/open/http/okio/Buffer;J)V
    .locals 4

    .line 148
    iget-object p1, p1, Lcom/maya/open/http/okio/Buffer;->head:Lcom/maya/open/http/okio/Segment;

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 149
    iget v0, p1, Lcom/maya/open/http/okio/Segment;->limit:I

    iget v1, p1, Lcom/maya/open/http/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 150
    iget-object v1, p0, Lcom/maya/open/http/okio/GzipSink;->crc:Ljava/util/zip/CRC32;

    iget-object v2, p1, Lcom/maya/open/http/okio/Segment;->data:[B

    iget v3, p1, Lcom/maya/open/http/okio/Segment;->pos:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v0, v0

    sub-long/2addr p2, v0

    .line 148
    iget-object p1, p1, Lcom/maya/open/http/okio/Segment;->next:Lcom/maya/open/http/okio/Segment;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeFooter()V
    .locals 3

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

    return-void
.end method

.method private writeHeader()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/maya/open/http/okio/GzipSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->buffer()Lcom/maya/open/http/okio/Buffer;

    move-result-object v0

    const/16 v1, 0x1f8b

    .line 133
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeShort(I)Lcom/maya/open/http/okio/Buffer;

    const/16 v1, 0x8

    .line 134
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 136
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeInt(I)Lcom/maya/open/http/okio/Buffer;

    .line 137
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 138
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 91
    iget-boolean v0, p0, Lcom/maya/open/http/okio/GzipSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okio/GzipSink;->deflaterSink:Lcom/maya/open/http/okio/DeflaterSink;

    invoke-virtual {v1}, Lcom/maya/open/http/okio/DeflaterSink;->finishDeflate()V

    .line 101
    invoke-direct {p0}, Lcom/maya/open/http/okio/GzipSink;->writeFooter()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/maya/open/http/okio/GzipSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    .line 113
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/maya/open/http/okio/GzipSink;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v1}, Lcom/maya/open/http/okio/BufferedSink;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 117
    iput-boolean v1, p0, Lcom/maya/open/http/okio/GzipSink;->closed:Z

    if-eqz v0, :cond_3

    .line 119
    invoke-static {v0}, Lcom/maya/open/http/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

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

    .line 83
    iget-object v0, p0, Lcom/maya/open/http/okio/GzipSink;->deflaterSink:Lcom/maya/open/http/okio/DeflaterSink;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/DeflaterSink;->flush()V

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

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okio/GzipSink;->updateCrc(Lcom/maya/open/http/okio/Buffer;J)V

    .line 79
    iget-object v0, p0, Lcom/maya/open/http/okio/GzipSink;->deflaterSink:Lcom/maya/open/http/okio/DeflaterSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okio/DeflaterSink;->write(Lcom/maya/open/http/okio/Buffer;J)V

    return-void

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
