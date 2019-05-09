.class final Lcom/maya/open/http/okio/RealBufferedSource;
.super Ljava/lang/Object;
.source "RealBufferedSource.java"

# interfaces
.implements Lcom/maya/open/http/okio/BufferedSource;


# instance fields
.field public final buffer:Lcom/maya/open/http/okio/Buffer;

.field closed:Z

.field public final source:Lcom/maya/open/http/okio/Source;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okio/Source;)V
    .locals 2
    .param p1, "source"    # Lcom/maya/open/http/okio/Source;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    .line 41
    if-eqz p1, :cond_0

    .line 42
    iput-object p1, p0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    .line 43
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public buffer()Lcom/maya/open/http/okio/Buffer;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 463
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->closed:Z

    .line 464
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    invoke-interface {v0}, Lcom/maya/open/http/okio/Source;->close()V

    .line 465
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->clear()V

    .line 466
    return-void
.end method

.method public exhausted()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(B)J
    .locals 6
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/maya/open/http/okio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 6
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/maya/open/http/okio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .locals 13
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .param p4, "toIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    move-object v0, p0

    iget-boolean v3, v0, Lcom/maya/open/http/okio/RealBufferedSource;->closed:Z

    if-nez v3, :cond_5

    .line 342
    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-ltz v5, :cond_4

    cmp-long v3, p4, p2

    if-ltz v3, :cond_4

    .line 347
    move-wide v7, p2

    .end local p2    # "fromIndex":J
    .local v7, "fromIndex":J
    :goto_0
    cmp-long v1, v7, p4

    const-wide/16 v9, -0x1

    if-gez v1, :cond_3

    .line 348
    iget-object v1, v0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    move v2, p1

    move-wide v3, v7

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/maya/open/http/okio/Buffer;->indexOf(BJJ)J

    move-result-wide v1

    .line 349
    .local v1, "result":J
    cmp-long v3, v1, v9

    if-eqz v3, :cond_0

    return-wide v1

    .line 353
    :cond_0
    iget-object v3, v0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v3, v3, Lcom/maya/open/http/okio/Buffer;->size:J

    .line 354
    .local v3, "lastBufferSize":J
    cmp-long v5, v3, p4

    if-gez v5, :cond_2

    iget-object v5, v0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    iget-object v6, v0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    const-wide/16 v11, 0x2000

    invoke-interface {v5, v6, v11, v12}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v5

    cmp-long v11, v5, v9

    if-nez v11, :cond_1

    goto :goto_1

    .line 357
    :cond_1
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 358
    .end local v1    # "result":J
    .end local v3    # "lastBufferSize":J
    goto :goto_0

    .line 354
    .restart local v1    # "result":J
    .restart local v3    # "lastBufferSize":J
    :cond_2
    :goto_1
    return-wide v9

    .line 359
    .end local v1    # "result":J
    .end local v3    # "lastBufferSize":J
    :cond_3
    return-wide v9

    .line 343
    .end local v7    # "fromIndex":J
    .restart local p2    # "fromIndex":J
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 344
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "fromIndex=%s toIndex=%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 341
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public indexOf(Lcom/maya/open/http/okio/ByteString;)J
    .locals 2
    .param p1, "bytes"    # Lcom/maya/open/http/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/maya/open/http/okio/RealBufferedSource;->indexOf(Lcom/maya/open/http/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lcom/maya/open/http/okio/ByteString;J)J
    .locals 10
    .param p1, "bytes"    # Lcom/maya/open/http/okio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_2

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okio/Buffer;->indexOf(Lcom/maya/open/http/okio/ByteString;J)J

    move-result-wide v0

    .line 371
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 373
    :cond_0
    iget-object v4, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v4, v4, Lcom/maya/open/http/okio/Buffer;->size:J

    .line 374
    .local v4, "lastBufferSize":J
    iget-object v6, p0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    iget-object v7, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    const-wide/16 v8, 0x2000

    invoke-interface {v6, v7, v8, v9}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_1

    return-wide v2

    .line 377
    :cond_1
    invoke-virtual {p1}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    sub-long v2, v4, v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 378
    .end local v0    # "result":J
    .end local v4    # "lastBufferSize":J
    goto :goto_0

    .line 367
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOfElement(Lcom/maya/open/http/okio/ByteString;)J
    .locals 2
    .param p1, "targetBytes"    # Lcom/maya/open/http/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/maya/open/http/okio/RealBufferedSource;->indexOfElement(Lcom/maya/open/http/okio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lcom/maya/open/http/okio/ByteString;J)J
    .locals 10
    .param p1, "targetBytes"    # Lcom/maya/open/http/okio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_2

    .line 389
    :goto_0
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okio/Buffer;->indexOfElement(Lcom/maya/open/http/okio/ByteString;J)J

    move-result-wide v0

    .line 390
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 392
    :cond_0
    iget-object v4, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v4, v4, Lcom/maya/open/http/okio/Buffer;->size:J

    .line 393
    .local v4, "lastBufferSize":J
    iget-object v6, p0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    iget-object v7, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    const-wide/16 v8, 0x2000

    invoke-interface {v6, v7, v8, v9}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_1

    return-wide v2

    .line 396
    :cond_1
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 397
    .end local v0    # "result":J
    .end local v4    # "lastBufferSize":J
    goto :goto_0

    .line 386
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .line 424
    new-instance v0, Lcom/maya/open/http/okio/RealBufferedSource$1;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okio/RealBufferedSource$1;-><init>(Lcom/maya/open/http/okio/RealBufferedSource;)V

    return-object v0
.end method

.method public rangeEquals(JLcom/maya/open/http/okio/ByteString;)Z
    .locals 6
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lcom/maya/open/http/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    invoke-virtual {p3}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/maya/open/http/okio/RealBufferedSource;->rangeEquals(JLcom/maya/open/http/okio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(JLcom/maya/open/http/okio/ByteString;II)Z
    .locals 6
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lcom/maya/open/http/okio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_5

    .line 409
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v0, 0x0

    if-ltz v2, :cond_4

    if-ltz p4, :cond_4

    if-ltz p5, :cond_4

    .line 412
    invoke-virtual {p3}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v1

    sub-int/2addr v1, p4

    if-ge v1, p5, :cond_0

    goto :goto_1

    .line 415
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p5, :cond_3

    .line 416
    int-to-long v2, v1

    add-long/2addr v2, p1

    .line 417
    .local v2, "bufferOffset":J
    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/maya/open/http/okio/RealBufferedSource;->request(J)Z

    move-result v4

    if-nez v4, :cond_1

    return v0

    .line 418
    :cond_1
    iget-object v4, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v4, v2, v3}, Lcom/maya/open/http/okio/Buffer;->getByte(J)B

    move-result v4

    add-int v5, p4, v1

    invoke-virtual {p3, v5}, Lcom/maya/open/http/okio/ByteString;->getByte(I)B

    move-result v5

    if-eq v4, v5, :cond_2

    return v0

    .line 415
    .end local v2    # "bufferOffset":J
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 413
    :cond_4
    :goto_1
    return v0

    .line 407
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/maya/open/http/okio/RealBufferedSource;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/maya/open/http/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 148
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v0, v0, Lcom/maya/open/http/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 149
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v0

    .line 150
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v2, -0x1

    return v2

    .line 153
    .end local v0    # "read":J
    :cond_0
    int-to-long v0, p3

    iget-object v2, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v2, v2, Lcom/maya/open/http/okio/Buffer;->size:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 154
    .local v0, "toRead":I
    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v1, p1, p2, v0}, Lcom/maya/open/http/okio/Buffer;->read([BII)I

    move-result v1

    return v1
.end method

.method public read(Lcom/maya/open/http/okio/Buffer;J)J
    .locals 5
    .param p1, "sink"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    if-eqz p1, :cond_3

    .line 51
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 52
    iget-boolean v2, p0, Lcom/maya/open/http/okio/RealBufferedSource;->closed:Z

    if-nez v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v2, v2, Lcom/maya/open/http/okio/Buffer;->size:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 55
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v0

    .line 56
    .local v0, "read":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 59
    .end local v0    # "read":J
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v0, v0, Lcom/maya/open/http/okio/Buffer;->size:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 60
    .local v0, "toRead":J
    iget-object v2, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v2, p1, v0, v1}, Lcom/maya/open/http/okio/Buffer;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v2

    return-wide v2

    .line 52
    .end local v0    # "toRead":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
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

    .line 50
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readAll(Lcom/maya/open/http/okio/Sink;)J
    .locals 9
    .param p1, "sink"    # Lcom/maya/open/http/okio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    if-eqz p1, :cond_3

    .line 171
    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 172
    .local v2, "totalBytesWritten":J
    :goto_0
    iget-object v4, p0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    iget-object v5, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 173
    iget-object v4, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v4}, Lcom/maya/open/http/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v4

    .line 174
    .local v4, "emitByteCount":J
    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    .line 175
    add-long/2addr v2, v4

    .line 176
    iget-object v6, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-interface {p1, v6, v4, v5}, Lcom/maya/open/http/okio/Sink;->write(Lcom/maya/open/http/okio/Buffer;J)V

    .line 178
    .end local v4    # "emitByteCount":J
    :cond_0
    goto :goto_0

    .line 179
    :cond_1
    iget-object v4, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v4}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    .line 180
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 181
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v1}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v4

    invoke-interface {p1, v0, v4, v5}, Lcom/maya/open/http/okio/Sink;->write(Lcom/maya/open/http/okio/Buffer;J)V

    .line 183
    :cond_2
    return-wide v2

    .line 169
    .end local v2    # "totalBytesWritten":J
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V

    .line 83
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->readByte()B

    move-result v0

    return v0
.end method

.method public readByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeAll(Lcom/maya/open/http/okio/Source;)J

    .line 117
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public readByteArray(J)[B
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V

    .line 122
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okio/Buffer;->readByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteString()Lcom/maya/open/http/okio/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeAll(Lcom/maya/open/http/okio/Source;)J

    .line 88
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->readByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readByteString(J)Lcom/maya/open/http/okio/ByteString;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V

    .line 93
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okio/Buffer;->readByteString(J)Lcom/maya/open/http/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readDecimalLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V

    .line 287
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/maya/open/http/okio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 288
    iget-object v2, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/maya/open/http/okio/Buffer;->getByte(J)B

    move-result v2

    .line 289
    .local v2, "b":B
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_1

    :cond_0
    if-nez v1, :cond_2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 287
    .end local v2    # "b":B
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .restart local v2    # "b":B
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .end local v1    # "pos":I
    .end local v2    # "b":B
    goto :goto_2

    .line 292
    .restart local v1    # "pos":I
    .restart local v2    # "b":B
    :cond_3
    new-instance v3, Ljava/lang/NumberFormatException;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 293
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v0

    .line 292
    const-string v0, "Expected leading [0-9] or \'-\' character but was %#x"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 299
    .end local v1    # "pos":I
    .end local v2    # "b":B
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->readDecimalLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFully(Lcom/maya/open/http/okio/Buffer;J)V
    .locals 2
    .param p1, "sink"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    nop

    .line 165
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okio/Buffer;->readFully(Lcom/maya/open/http/okio/Buffer;J)V

    .line 166
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/EOFException;
    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {p1, v1}, Lcom/maya/open/http/okio/Buffer;->writeAll(Lcom/maya/open/http/okio/Source;)J

    .line 163
    throw v0
.end method

.method public readFully([B)V
    .locals 7
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    nop

    .line 142
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/Buffer;->readFully([B)V

    .line 143
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, 0x0

    .line 135
    .local v1, "offset":I
    :goto_0
    iget-object v2, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v2, v2, Lcom/maya/open/http/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 136
    iget-object v2, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-object v3, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v3, v3, Lcom/maya/open/http/okio/Buffer;->size:J

    long-to-int v3, v3

    invoke-virtual {v2, p1, v1, v3}, Lcom/maya/open/http/okio/Buffer;->read([BII)I

    move-result v2

    .line 137
    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 138
    add-int/2addr v1, v2

    .line 139
    .end local v2    # "read":I
    goto :goto_0

    .line 137
    .restart local v2    # "read":I
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 140
    .end local v2    # "read":I
    :cond_1
    throw v0
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V

    .line 305
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/maya/open/http/okio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 306
    iget-object v2, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/maya/open/http/okio/Buffer;->getByte(J)B

    move-result v2

    .line 307
    .local v2, "b":B
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    const/16 v3, 0x46

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 305
    .end local v2    # "b":B
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .restart local v2    # "b":B
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .end local v1    # "pos":I
    .end local v2    # "b":B
    goto :goto_2

    .line 310
    .restart local v1    # "pos":I
    .restart local v2    # "b":B
    :cond_4
    new-instance v3, Ljava/lang/NumberFormatException;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 311
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v0

    .line 310
    const-string v0, "Expected leading [0-9a-fA-F] character but was %#x"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 317
    .end local v1    # "pos":I
    .end local v2    # "b":B
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V

    .line 266
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->readInt()I

    move-result v0

    return v0
.end method

.method public readIntLe()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V

    .line 271
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->readIntLe()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V

    .line 276
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLe()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V

    .line 281
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V

    .line 256
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->readShort()S

    move-result v0

    return v0
.end method

.method public readShortLe()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V

    .line 261
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->readShortLe()S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V

    .line 205
    if-eqz p3, :cond_0

    .line 206
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    if-eqz p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeAll(Lcom/maya/open/http/okio/Source;)J

    .line 200
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okio/Buffer;->writeAll(Lcom/maya/open/http/okio/Source;)J

    .line 188
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V

    .line 193
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V

    .line 242
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okio/Buffer;->getByte(J)B

    move-result v0

    .line 243
    .local v0, "b0":B
    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    .line 244
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V

    goto :goto_0

    .line 245
    :cond_0
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_1

    .line 246
    const-wide/16 v1, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V

    goto :goto_0

    .line 247
    :cond_1
    and-int/lit16 v1, v0, 0xf8

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_2

    .line 248
    const-wide/16 v1, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/maya/open/http/okio/RealBufferedSource;->require(J)V

    .line 251
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v1}, Lcom/maya/open/http/okio/Buffer;->readUtf8CodePoint()I

    move-result v1

    return v1
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okio/RealBufferedSource;->indexOf(B)J

    move-result-wide v0

    .line 212
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 213
    iget-object v2, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v2, v2, Lcom/maya/open/http/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-object v2, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v2, v2, Lcom/maya/open/http/okio/Buffer;->size:J

    invoke-virtual {p0, v2, v3}, Lcom/maya/open/http/okio/RealBufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/maya/open/http/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okio/RealBufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 21
    .param p1, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    const-wide/16 v0, 0x0

    cmp-long v2, v7, v0

    if-ltz v2, :cond_3

    .line 225
    const-wide v9, 0x7fffffffffffffffL

    cmp-long v0, v7, v9

    const-wide/16 v11, 0x1

    if-nez v0, :cond_0

    move-wide v0, v9

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    add-long v0, v7, v11

    :goto_0
    move-wide v13, v0

    .line 226
    .local v13, "scanLength":J
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide v4, v13

    invoke-virtual/range {v0 .. v5}, Lcom/maya/open/http/okio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v0

    .line 227
    .local v0, "newline":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v2, v6, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/maya/open/http/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 228
    :cond_1
    cmp-long v2, v13, v9

    if-gez v2, :cond_2

    .line 229
    invoke-virtual {v6, v13, v14}, Lcom/maya/open/http/okio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v6, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    sub-long v3, v13, v11

    invoke-virtual {v2, v3, v4}, Lcom/maya/open/http/okio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    add-long/2addr v11, v13

    .line 230
    invoke-virtual {v6, v11, v12}, Lcom/maya/open/http/okio/RealBufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v6, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v2, v13, v14}, Lcom/maya/open/http/okio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 231
    iget-object v2, v6, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v2, v13, v14}, Lcom/maya/open/http/okio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 233
    :cond_2
    new-instance v16, Lcom/maya/open/http/okio/Buffer;

    invoke-direct/range {v16 .. v16}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    .line 234
    .local v16, "data":Lcom/maya/open/http/okio/Buffer;
    iget-object v15, v6, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    const-wide/16 v17, 0x0

    const-wide/16 v2, 0x20

    iget-object v4, v6, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v4}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v19

    invoke-virtual/range {v15 .. v20}, Lcom/maya/open/http/okio/Buffer;->copyTo(Lcom/maya/open/http/okio/Buffer;JJ)Lcom/maya/open/http/okio/Buffer;

    .line 235
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\n not found: limit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v4}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v4

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual/range {v16 .. v16}, Lcom/maya/open/http/okio/Buffer;->readByteString()Lcom/maya/open/http/okio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/maya/open/http/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2026

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    .end local v0    # "newline":J
    .end local v13    # "scanLength":J
    .end local v16    # "data":Lcom/maya/open/http/okio/Buffer;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public request(J)Z
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    .line 74
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_2

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v0, v0, Lcom/maya/open/http/okio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    .line 76
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 78
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public require(J)V
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/maya/open/http/okio/RealBufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public select(Lcom/maya/open/http/okio/Options;)I
    .locals 8
    .param p1, "options"    # Lcom/maya/open/http/okio/Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_3

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okio/Buffer;->selectPrefix(Lcom/maya/open/http/okio/Options;)I

    move-result v0

    .line 101
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 104
    :cond_0
    iget-object v2, p1, Lcom/maya/open/http/okio/Options;->byteStrings:[Lcom/maya/open/http/okio/ByteString;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/maya/open/http/okio/ByteString;->size()I

    move-result v2

    .line 105
    .local v2, "selectedSize":I
    int-to-long v3, v2

    iget-object v5, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v5, v5, Lcom/maya/open/http/okio/Buffer;->size:J

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    .line 106
    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Lcom/maya/open/http/okio/Buffer;->skip(J)V

    .line 107
    return v0

    .line 111
    :cond_1
    iget-object v3, p0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    iget-object v4, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    const-wide/16 v5, 0x2000

    invoke-interface {v3, v4, v5, v6}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    return v1

    .line 112
    .end local v0    # "index":I
    .end local v2    # "selectedSize":I
    :cond_2
    goto :goto_0

    .line 97
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)V
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-boolean v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_3

    .line 322
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 323
    iget-object v2, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v2, v2, Lcom/maya/open/http/okio/Buffer;->size:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_1

    .line 324
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 326
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 327
    .local v0, "toSkip":J
    iget-object v2, p0, Lcom/maya/open/http/okio/RealBufferedSource;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v2, v0, v1}, Lcom/maya/open/http/okio/Buffer;->skip(J)V

    .line 328
    sub-long/2addr p1, v0

    .line 329
    .end local v0    # "toSkip":J
    goto :goto_0

    .line 330
    :cond_2
    return-void

    .line 321
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    invoke-interface {v0}, Lcom/maya/open/http/okio/Source;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/open/http/okio/RealBufferedSource;->source:Lcom/maya/open/http/okio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
