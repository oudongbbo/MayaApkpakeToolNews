.class final Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lcom/maya/open/http/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FramingSource"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field closed:Z

.field finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lcom/maya/open/http/okio/Buffer;

.field private final receiveBuffer:Lcom/maya/open/http/okio/Buffer;

.field final synthetic this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 310
    const-class v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    return-void
.end method

.method constructor <init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;J)V
    .locals 0
    .param p2, "maxByteCount"    # J

    .line 329
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance p1, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {p1}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lcom/maya/open/http/okio/Buffer;

    .line 315
    new-instance p1, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {p1}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lcom/maya/open/http/okio/Buffer;

    .line 330
    iput-wide p2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    .line 331
    return-void
.end method

.method private checkNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-nez v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    .line 439
    return-void

    .line 437
    :cond_0
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/StreamResetException;-><init>(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V

    throw v0

    .line 434
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private waitUntilReadable()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->readTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V

    .line 371
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->readTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 376
    nop

    .line 377
    return-void

    .line 375
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->readTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 376
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    monitor-enter v0

    .line 425
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    .line 426
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v1}, Lcom/maya/open/http/okio/Buffer;->clear()V

    .line 427
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 428
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V

    .line 430
    return-void

    .line 428
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public read(Lcom/maya/open/http/okio/Buffer;J)J
    .locals 10
    .param p1, "sink"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    .line 337
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    .line 338
    :try_start_0
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->waitUntilReadable()V

    .line 339
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->checkNotClosed()V

    .line 340
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v3}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    const-wide/16 v0, -0x1

    monitor-exit v2

    return-wide v0

    .line 343
    :cond_0
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lcom/maya/open/http/okio/Buffer;

    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v4}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v3, p1, v4, v5}, Lcom/maya/open/http/okio/Buffer;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v3

    .line 346
    .local v3, "read":J
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-wide v6, v5, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    const/4 v8, 0x0

    add-long/2addr v6, v3

    iput-wide v6, v5, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 347
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-wide v5, v5, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v7, v7, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v7, v7, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    .line 348
    invoke-virtual {v7}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-ltz v9, :cond_1

    .line 349
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v5, v5, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v6, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget v6, v6, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->id:I

    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-wide v7, v7, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    invoke-virtual {v5, v6, v7, v8}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    .line 350
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iput-wide v0, v5, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 352
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 355
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v5, v2, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    monitor-enter v5

    .line 356
    :try_start_1
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v2, v2, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget-wide v6, v2, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    const/4 v8, 0x0

    add-long/2addr v6, v3

    iput-wide v6, v2, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    .line 357
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v2, v2, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget-wide v6, v2, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v2, v2, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    .line 358
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-ltz v2, :cond_2

    .line 359
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v2, v2, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v7, v7, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget-wide v7, v7, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    invoke-virtual {v2, v6, v7, v8}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    .line 360
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v2, v2, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iput-wide v0, v2, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    .line 362
    :cond_2
    monitor-exit v5

    .line 364
    return-wide v3

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 352
    .end local v3    # "read":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 334
    :cond_3
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

.method receive(Lcom/maya/open/http/okio/BufferedSource;J)V
    .locals 12
    .param p1, "in"    # Lcom/maya/open/http/okio/BufferedSource;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    nop

    .line 382
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6

    .line 385
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    .line 386
    :try_start_0
    iget-boolean v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 387
    .local v3, "finished":Z
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v4}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v4

    const/4 v6, 0x0

    add-long/2addr v4, p2

    iget-wide v6, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    cmp-long v8, v4, v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v8, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 388
    .local v6, "flowControlError":Z
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 391
    if-eqz v6, :cond_1

    .line 392
    invoke-interface {p1, p2, p3}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    .line 393
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->closeLater(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V

    .line 394
    return-void

    .line 398
    :cond_1
    if-eqz v3, :cond_2

    .line 399
    invoke-interface {p1, p2, p3}, Lcom/maya/open/http/okio/BufferedSource;->skip(J)V

    .line 400
    return-void

    .line 404
    :cond_2
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lcom/maya/open/http/okio/BufferedSource;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v7

    .line 405
    .local v7, "read":J
    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-eqz v2, :cond_5

    .line 406
    sub-long v9, p2, v7

    .line 409
    .end local p2    # "byteCount":J
    .local v9, "byteCount":J
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    .line 410
    :try_start_1
    iget-object p2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {p2}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide p2

    cmp-long v11, p2, v0

    if-nez v11, :cond_3

    const/4 v4, 0x1

    nop

    :cond_3
    move p2, v4

    .line 411
    .local p2, "wasEmpty":Z
    iget-object p3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lcom/maya/open/http/okio/Buffer;

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {p3, v0}, Lcom/maya/open/http/okio/Buffer;->writeAll(Lcom/maya/open/http/okio/Source;)J

    .line 412
    if-eqz p2, :cond_4

    .line 413
    iget-object p3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 415
    .end local p2    # "wasEmpty":Z
    :cond_4
    monitor-exit v2

    .line 416
    .end local v3    # "finished":Z
    .end local v6    # "flowControlError":Z
    .end local v7    # "read":J
    nop

    .line 382
    move-wide p2, v9

    goto :goto_0

    .line 415
    .restart local v3    # "finished":Z
    .restart local v6    # "flowControlError":Z
    .restart local v7    # "read":J
    :catchall_0
    move-exception p2

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 405
    .end local v9    # "byteCount":J
    .local p2, "byteCount":J
    :cond_5
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 388
    .end local v3    # "finished":Z
    .end local v6    # "flowControlError":Z
    .end local v7    # "read":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 417
    :cond_6
    return-void
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->readTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method
