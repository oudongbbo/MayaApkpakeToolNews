.class final Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lcom/maya/open/http/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FramingSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMIT_BUFFER_SIZE:J = 0x4000L


# instance fields
.field closed:Z

.field finished:Z

.field private final sendBuffer:Lcom/maya/open/http/okio/Buffer;

.field final synthetic this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 462
    const-class v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    return-void
.end method

.method constructor <init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;)V
    .locals 1
    .param p1, "this$0"    # Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    .line 462
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    new-instance v0, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lcom/maya/open/http/okio/Buffer;

    return-void
.end method

.method private emitFrame(Z)V
    .locals 9
    .param p1, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->writeTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 495
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-wide v1, v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    if-nez v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 499
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->writeTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 500
    nop

    .line 502
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->checkOutNotClosed()V

    .line 503
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-wide v1, v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v3}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 504
    .local v1, "toWrite":J
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-wide v4, v3, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    const/4 v6, 0x0

    sub-long/2addr v4, v1

    iput-wide v4, v3, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 505
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 507
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->writeTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V

    .line 509
    :try_start_3
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v3, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget v4, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->id:I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v5

    cmp-long v0, v1, v5

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lcom/maya/open/http/okio/Buffer;

    move-wide v7, v1

    invoke-virtual/range {v3 .. v8}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writeData(IZLcom/maya/open/http/okio/Buffer;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 511
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->writeTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 512
    nop

    .line 513
    return-void

    .line 511
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v3, v3, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->writeTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 512
    throw v0

    .line 499
    .end local v1    # "toWrite":J
    :catchall_1
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v2, v2, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->writeTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 500
    throw v1

    .line 505
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    nop

    .line 532
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    monitor-enter v0

    .line 533
    :try_start_0
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 534
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 535
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->sink:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 538
    :goto_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 539
    invoke-direct {p0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->emitFrame(Z)V

    goto :goto_0

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v2, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget v3, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->id:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writeData(IZLcom/maya/open/http/okio/Buffer;J)V

    .line 546
    :cond_2
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    .line 547
    :try_start_1
    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    .line 548
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->flush()V

    .line 550
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V

    .line 551
    return-void

    .line 548
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 534
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    nop

    .line 517
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    monitor-enter v0

    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->checkOutNotClosed()V

    .line 519
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :goto_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 521
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->emitFrame(Z)V

    .line 522
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->connection:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->flush()V

    goto :goto_0

    .line 524
    :cond_0
    return-void

    .line 519
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->this$0:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->writeTimeout:Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method

.method public write(Lcom/maya/open/http/okio/Buffer;J)V
    .locals 5
    .param p1, "source"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    nop

    .line 480
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okio/Buffer;->write(Lcom/maya/open/http/okio/Buffer;J)V

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->sendBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 482
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream$FramingSink;->emitFrame(Z)V

    goto :goto_0

    .line 484
    :cond_0
    return-void
.end method