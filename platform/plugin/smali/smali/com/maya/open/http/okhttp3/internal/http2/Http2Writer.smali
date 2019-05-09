.class final Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;
.super Ljava/lang/Object;
.source "Http2Writer.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Lcom/maya/open/http/okio/Buffer;

.field final hpackWriter:Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;

.field private maxFrameSize:I

.field private final sink:Lcom/maya/open/http/okio/BufferedSink;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/maya/open/http/okio/BufferedSink;Z)V
    .locals 2
    .param p1, "sink"    # Lcom/maya/open/http/okio/BufferedSink;
    .param p2, "client"    # Z

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    .line 60
    iput-boolean p2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->client:Z

    .line 61
    new-instance v0, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->hpackBuffer:Lcom/maya/open/http/okio/Buffer;

    .line 62
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->hpackBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;-><init>(Lcom/maya/open/http/okio/Buffer;)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->hpackWriter:Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;

    .line 63
    const/16 v0, 0x4000

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    .line 64
    return-void
.end method

.method private writeContinuationFrames(IJ)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 291
    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 292
    .local v2, "length":I
    int-to-long v3, v2

    sub-long/2addr p2, v3

    .line 293
    const/16 v3, 0x9

    cmp-long v4, p2, v0

    if-nez v4, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 294
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->hpackBuffer:Lcom/maya/open/http/okio/Buffer;

    int-to-long v3, v2

    invoke-interface {v0, v1, v3, v4}, Lcom/maya/open/http/okio/BufferedSink;->write(Lcom/maya/open/http/okio/Buffer;J)V

    .line 295
    .end local v2    # "length":I
    goto :goto_0

    .line 296
    :cond_1
    return-void
.end method

.method private static writeMedium(Lcom/maya/open/http/okio/BufferedSink;I)V
    .locals 1
    .param p0, "sink"    # Lcom/maya/open/http/okio/BufferedSink;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 285
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 286
    and-int/lit16 v0, p1, 0xff

    invoke-interface {p0, v0}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 287
    return-void
.end method


# virtual methods
.method public declared-synchronized applyAndAckSettings(Lcom/maya/open/http/okhttp3/internal/http2/Settings;)V
    .locals 5
    .param p1, "peerSettings"    # Lcom/maya/open/http/okhttp3/internal/http2/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 78
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_1

    .line 79
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;->getMaxFrameSize(I)I

    move-result v0

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    .line 80
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;->getHeaderTableSize()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->hpackWriter:Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;->getHeaderTableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->setHeaderTableSizeSetting(I)V

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 84
    .local v0, "length":I
    const/4 v1, 0x4

    .line 85
    .local v1, "type":B
    const/4 v2, 0x1

    .line 86
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 87
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 88
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v4}, Lcom/maya/open/http/okio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 78
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .end local p1    # "peerSettings":Lcom/maya/open/http/okhttp3/internal/http2/Settings;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 279
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->closed:Z

    .line 280
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_2

    .line 68
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->client:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 69
    :cond_0
    :try_start_1
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/maya/open/http/okhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v4}, Lcom/maya/open/http/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/maya/open/http/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lcom/maya/open/http/okio/ByteString;

    invoke-virtual {v1}, Lcom/maya/open/http/okio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->write([B)Lcom/maya/open/http/okio/BufferedSink;

    .line 73
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 67
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized data(ZILcom/maya/open/http/okio/Buffer;I)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lcom/maya/open/http/okio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 171
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_1

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "flags":B
    if-eqz p1, :cond_0

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 174
    :cond_0
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->dataFrame(IBLcom/maya/open/http/okio/Buffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 171
    .end local v0    # "flags":B
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .end local p1    # "outFinished":Z
    .end local p2    # "streamId":I
    .end local p3    # "source":Lcom/maya/open/http/okio/Buffer;
    .end local p4    # "byteCount":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method dataFrame(IBLcom/maya/open/http/okio/Buffer;I)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "flags"    # B
    .param p3, "buffer"    # Lcom/maya/open/http/okio/Buffer;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "type":B
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 180
    if-lez p4, :cond_0

    .line 181
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    int-to-long v2, p4

    invoke-interface {v1, p3, v2, v3}, Lcom/maya/open/http/okio/BufferedSink;->write(Lcom/maya/open/http/okio/Buffer;J)V

    .line 183
    :cond_0
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 121
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 121
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public frameHeader(IIBB)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->logger:Ljava/util/logging/Logger;

    invoke-static {v1, p1, p2, p3, p4}, Lcom/maya/open/http/okhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 268
    :cond_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    const/4 v2, 0x1

    if-gt p2, v0, :cond_2

    .line 271
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-static {v0, p2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->writeMedium(Lcom/maya/open/http/okio/BufferedSink;I)V

    .line 273
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    and-int/lit16 v1, p3, 0xff

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 274
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    and-int/lit16 v1, p4, 0xff

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeByte(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 275
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/maya/open/http/okio/BufferedSink;->writeInt(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 276
    return-void

    .line 271
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "reserved bit set: %s"

    invoke-static {v1, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 269
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {v1, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized goAway(ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;[B)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    .param p3, "debugData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 233
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_2

    .line 234
    iget v0, p2, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 235
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    .line 236
    .local v0, "length":I
    const/4 v1, 0x7

    .line 237
    .local v1, "type":B
    const/4 v2, 0x0

    .line 238
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 239
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 240
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v4, p1}, Lcom/maya/open/http/okio/BufferedSink;->writeInt(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 241
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    iget v5, p2, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->httpCode:I

    invoke-interface {v4, v5}, Lcom/maya/open/http/okio/BufferedSink;->writeInt(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 242
    array-length v4, p3

    if-lez v4, :cond_0

    .line 243
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v4, p3}, Lcom/maya/open/http/okio/BufferedSink;->write([B)Lcom/maya/open/http/okio/BufferedSink;

    .line 245
    :cond_0
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v4}, Lcom/maya/open/http/okio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 234
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    :cond_1
    :try_start_1
    const-string v0, "errorCode.httpCode == -1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 233
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    .end local p1    # "lastGoodStreamId":I
    .end local p2    # "errorCode":Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    .end local p3    # "debugData":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 2
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    monitor-enter p0

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 139
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .end local p1    # "streamId":I
    .end local p2    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method headers(ZILjava/util/List;)V
    .locals 9
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->hpackWriter:Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;

    invoke-virtual {v0, p3}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 302
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->hpackBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v0

    .line 303
    .local v0, "byteCount":J
    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 304
    .local v2, "length":I
    const/4 v3, 0x1

    .line 305
    .local v3, "type":B
    int-to-long v4, v2

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 306
    .local v4, "flags":B
    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 v5, v4, 0x1

    int-to-byte v4, v5

    .line 307
    :cond_1
    invoke-virtual {p0, p2, v2, v3, v4}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 308
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    iget-object v6, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->hpackBuffer:Lcom/maya/open/http/okio/Buffer;

    int-to-long v7, v2

    invoke-interface {v5, v6, v7, v8}, Lcom/maya/open/http/okio/BufferedSink;->write(Lcom/maya/open/http/okio/Buffer;J)V

    .line 310
    int-to-long v5, v2

    cmp-long v7, v0, v5

    if-lez v7, :cond_2

    int-to-long v5, v2

    sub-long v5, v0, v5

    invoke-direct {p0, p2, v5, v6}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->writeContinuationFrames(IJ)V

    .line 311
    :cond_2
    return-void

    .line 299
    .end local v0    # "byteCount":J
    .end local v2    # "length":I
    .end local v3    # "type":B
    .end local v4    # "flags":B
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public maxDataLength()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .locals 5
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 212
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_0

    .line 213
    const/16 v0, 0x8

    .line 214
    .local v0, "length":I
    const/4 v1, 0x6

    .line 215
    .local v1, "type":B
    move v2, p1

    .line 216
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 217
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 218
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v4, p2}, Lcom/maya/open/http/okio/BufferedSink;->writeInt(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 219
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v4, p3}, Lcom/maya/open/http/okio/BufferedSink;->writeInt(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 220
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v4}, Lcom/maya/open/http/okio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 212
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    .end local p1    # "ack":Z
    .end local p2    # "payload1":I
    .end local p3    # "payload2":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
    .locals 9
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    monitor-enter p0

    .line 106
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->hpackWriter:Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;

    invoke-virtual {v0, p3}, Lcom/maya/open/http/okhttp3/internal/http2/Hpack$Writer;->writeHeaders(Ljava/util/List;)V

    .line 109
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->hpackBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v0

    .line 110
    .local v0, "byteCount":J
    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->maxFrameSize:I

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    int-to-long v4, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 111
    .local v2, "length":I
    const/4 v4, 0x5

    .line 112
    .local v4, "type":B
    int-to-long v5, v2

    cmp-long v7, v0, v5

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 113
    .local v3, "flags":B
    :goto_0
    add-int/lit8 v5, v2, 0x4

    invoke-virtual {p0, p1, v5, v4, v3}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 114
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    const v6, 0x7fffffff

    and-int/2addr v6, p2

    invoke-interface {v5, v6}, Lcom/maya/open/http/okio/BufferedSink;->writeInt(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 115
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    iget-object v6, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->hpackBuffer:Lcom/maya/open/http/okio/Buffer;

    int-to-long v7, v2

    invoke-interface {v5, v6, v7, v8}, Lcom/maya/open/http/okio/BufferedSink;->write(Lcom/maya/open/http/okio/Buffer;J)V

    .line 117
    int-to-long v5, v2

    cmp-long v7, v0, v5

    if-lez v7, :cond_1

    int-to-long v5, v2

    sub-long v5, v0, v5

    invoke-direct {p0, p1, v5, v6}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->writeContinuationFrames(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_1
    monitor-exit p0

    return-void

    .line 106
    .end local v0    # "byteCount":J
    .end local v2    # "length":I
    .end local v3    # "flags":B
    .end local v4    # "type":B
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .end local p1    # "streamId":I
    .end local p2    # "promisedStreamId":I
    .end local p3    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rstStream(ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 145
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_1

    .line 146
    iget v0, p2, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 148
    const/4 v0, 0x4

    .line 149
    .local v0, "length":I
    const/4 v1, 0x3

    .line 150
    .local v1, "type":B
    const/4 v2, 0x0

    .line 151
    .local v2, "flags":B
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 152
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    iget v4, p2, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->httpCode:I

    invoke-interface {v3, v4}, Lcom/maya/open/http/okio/BufferedSink;->writeInt(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 153
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v3}, Lcom/maya/open/http/okio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 146
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 145
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .end local p1    # "streamId":I
    .end local p2    # "errorCode":Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized settings(Lcom/maya/open/http/okhttp3/internal/http2/Settings;)V
    .locals 8
    .param p1, "settings"    # Lcom/maya/open/http/okhttp3/internal/http2/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 187
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_4

    .line 188
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    .line 189
    .local v0, "length":I
    const/4 v1, 0x4

    .line 190
    .local v1, "type":B
    const/4 v2, 0x0

    .line 191
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 192
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 193
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0xa

    if-ge v4, v5, :cond_3

    .line 194
    invoke-virtual {p1, v4}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;->isSet(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 195
    :cond_0
    move v5, v4

    .line 196
    .local v5, "id":I
    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 197
    const/4 v5, 0x3

    goto :goto_1

    .line 198
    :cond_1
    const/4 v6, 0x7

    if-ne v5, v6, :cond_2

    .line 199
    const/4 v5, 0x4

    .line 201
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v6, v5}, Lcom/maya/open/http/okio/BufferedSink;->writeShort(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 202
    iget-object v6, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-virtual {p1, v4}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;->get(I)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/maya/open/http/okio/BufferedSink;->writeInt(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 193
    .end local v5    # "id":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    .end local v4    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v4}, Lcom/maya/open/http/okio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 187
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    :cond_4
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local p1    # "settings":Lcom/maya/open/http/okhttp3/internal/http2/Settings;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    monitor-enter p0

    .line 133
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 133
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .end local p1    # "outFinished":Z
    .end local p2    # "streamId":I
    .end local p3    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synStream(ZIILjava/util/List;)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p4, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    monitor-enter p0

    .line 127
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0, p1, p2, p4}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 127
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .end local p1    # "outFinished":Z
    .end local p2    # "streamId":I
    .end local p3    # "associatedStreamId":I
    .end local p4    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 253
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->closed:Z

    if-nez v0, :cond_1

    .line 254
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 258
    const/4 v0, 0x4

    .line 259
    .local v0, "length":I
    const/16 v1, 0x8

    .line 260
    .local v1, "type":B
    const/4 v2, 0x0

    .line 261
    .local v2, "flags":B
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->frameHeader(IIBB)V

    .line 262
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    long-to-int v4, p2

    invoke-interface {v3, v4}, Lcom/maya/open/http/okio/BufferedSink;->writeInt(I)Lcom/maya/open/http/okio/BufferedSink;

    .line 263
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v3}, Lcom/maya/open/http/okio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    .line 255
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    :cond_0
    :try_start_1
    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 256
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 255
    invoke-static {v0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 253
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    .end local p1    # "streamId":I
    .end local p2    # "windowSizeIncrement":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
