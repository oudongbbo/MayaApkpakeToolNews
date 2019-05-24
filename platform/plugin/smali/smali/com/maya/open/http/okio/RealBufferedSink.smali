.class final Lcom/maya/open/http/okio/RealBufferedSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okio/BufferedSink;


# instance fields
.field public final buffer:Lcom/maya/open/http/okio/Buffer;

.field closed:Z

.field public final sink:Lcom/maya/open/http/okio/Sink;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okio/Sink;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/maya/open/http/okio/RealBufferedSink;->sink:Lcom/maya/open/http/okio/Sink;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public buffer()Lcom/maya/open/http/okio/Buffer;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    return-object v0
.end method

.method public close()V
    .locals 6

    .line 232
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v1, v1, Lcom/maya/open/http/okio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 239
    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSink;->sink:Lcom/maya/open/http/okio/Sink;

    iget-object v2, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-object v3, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v3, v3, Lcom/maya/open/http/okio/Buffer;->size:J

    invoke-interface {v1, v2, v3, v4}, Lcom/maya/open/http/okio/Sink;->write(Lcom/maya/open/http/okio/Buffer;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 246
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSink;->sink:Lcom/maya/open/http/okio/Sink;

    invoke-interface {v1}, Lcom/maya/open/http/okio/Sink;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 250
    iput-boolean v1, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-eqz v0, :cond_3

    .line 252
    invoke-static {v0}, Lcom/maya/open/http/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public emit()Lcom/maya/open/http/okio/BufferedSink;
    .locals 5

    .line 186
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 188
    iget-object v2, p0, Lcom/maya/open/http/okio/RealBufferedSink;->sink:Lcom/maya/open/http/okio/Sink;

    iget-object v3, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lcom/maya/open/http/okio/Sink;->write(Lcom/maya/open/http/okio/Buffer;J)V

    :cond_0
    return-object p0

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;
    .locals 5

    .line 179
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 181
    iget-object v2, p0, Lcom/maya/open/http/okio/RealBufferedSink;->sink:Lcom/maya/open/http/okio/Sink;

    iget-object v3, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lcom/maya/open/http/okio/Sink;->write(Lcom/maya/open/http/okio/Buffer;J)V

    :cond_0
    return-object p0

    .line 179
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 5

    .line 224
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v0, v0, Lcom/maya/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 226
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->sink:Lcom/maya/open/http/okio/Sink;

    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-object v2, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v2, v2, Lcom/maya/open/http/okio/Buffer;->size:J

    invoke-interface {v0, v1, v2, v3}, Lcom/maya/open/http/okio/Sink;->write(Lcom/maya/open/http/okio/Buffer;J)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->sink:Lcom/maya/open/http/okio/Sink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/Sink;->flush()V

    return-void

    .line 224
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .line 193
    new-instance v0, Lcom/maya/open/http/okio/RealBufferedSink$1;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okio/RealBufferedSink$1;-><init>(Lcom/maya/open/http/okio/RealBufferedSink;)V

    return-object v0
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->sink:Lcom/maya/open/http/okio/Sink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/Sink;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSink;->sink:Lcom/maya/open/http/okio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/Buffer;->write(Lcom/maya/open/http/okio/ByteString;)Lcom/maya/open/http/okio/Buffer;

    .line 57
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/maya/open/http/okio/Source;J)Lcom/maya/open/http/okio/BufferedSink;
    .locals 5

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 116
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-interface {p1, v0, p2, p3}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sub-long/2addr p2, v0

    .line 119
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    goto :goto_0

    .line 117
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-object p0
.end method

.method public write([B)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/Buffer;->write([B)Lcom/maya/open/http/okio/Buffer;

    .line 95
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okio/Buffer;->write([BII)Lcom/maya/open/http/okio/Buffer;

    .line 101
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/maya/open/http/okio/Buffer;J)V
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okio/Buffer;->write(Lcom/maya/open/http/okio/Buffer;J)V

    .line 51
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAll(Lcom/maya/open/http/okio/Source;)J
    .locals 7

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    .line 107
    :goto_0
    iget-object v2, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    add-long/2addr v0, v2

    .line 109
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    goto :goto_0

    :cond_0
    return-wide v0

    .line 105
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeByte(I)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/Buffer;->writeByte(I)Lcom/maya/open/http/okio/Buffer;

    .line 127
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeDecimalLong(J)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okio/Buffer;->writeDecimalLong(J)Lcom/maya/open/http/okio/Buffer;

    .line 169
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeHexadecimalUnsignedLong(J)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/maya/open/http/okio/Buffer;

    .line 175
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeInt(I)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/Buffer;->writeInt(I)Lcom/maya/open/http/okio/Buffer;

    .line 145
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeIntLe(I)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/Buffer;->writeIntLe(I)Lcom/maya/open/http/okio/Buffer;

    .line 151
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 149
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeLong(J)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okio/Buffer;->writeLong(J)Lcom/maya/open/http/okio/Buffer;

    .line 157
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 155
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeLongLe(J)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okio/Buffer;->writeLongLe(J)Lcom/maya/open/http/okio/Buffer;

    .line 163
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeShort(I)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/Buffer;->writeShort(I)Lcom/maya/open/http/okio/Buffer;

    .line 133
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeShortLe(I)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/Buffer;->writeShortLe(I)Lcom/maya/open/http/okio/Buffer;

    .line 139
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 137
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/maya/open/http/okio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lcom/maya/open/http/okio/Buffer;

    .line 89
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/maya/open/http/okio/Buffer;

    .line 82
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/maya/open/http/okio/Buffer;

    .line 63
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8(Ljava/lang/String;II)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/maya/open/http/okio/Buffer;

    .line 70
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeUtf8CodePoint(I)Lcom/maya/open/http/okio/BufferedSink;
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->closed:Z

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSink;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/Buffer;->writeUtf8CodePoint(I)Lcom/maya/open/http/okio/Buffer;

    .line 76
    invoke-virtual {p0}, Lcom/maya/open/http/okio/RealBufferedSink;->emitCompleteSegments()Lcom/maya/open/http/okio/BufferedSink;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
