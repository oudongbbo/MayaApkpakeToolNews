.class final Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"

# interfaces
.implements Lcom/maya/open/http/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FrameSink"
.end annotation


# instance fields
.field closed:Z

.field contentLength:J

.field formatOpcode:I

.field isFirstFrame:Z

.field final synthetic this$0:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    .line 221
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    iget-object v3, v3, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v3}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->writeMessageFrameSynchronized(IJZZ)V

    .line 265
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    .line 267
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 268
    return-void

    .line 265
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 261
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    iget-object v3, v3, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v3}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->writeMessageFrameSynchronized(IJZZ)V

    .line 251
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 253
    return-void

    .line 251
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 247
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/maya/open/http/okio/BufferedSink;

    invoke-interface {v0}, Lcom/maya/open/http/okio/BufferedSink;->timeout()Lcom/maya/open/http/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/maya/open/http/okio/Buffer;J)V
    .locals 11
    .param p1, "source"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-nez v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okio/Buffer;->write(Lcom/maya/open/http/okio/Buffer;J)V

    .line 233
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->buffer:Lcom/maya/open/http/okio/Buffer;

    .line 235
    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const-wide/16 v6, 0x2000

    sub-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 237
    .local v0, "deferWrite":Z
    :goto_0
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    iget-object v2, v2, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v2}, Lcom/maya/open/http/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v9

    .line 238
    .local v9, "emitCount":J
    const-wide/16 v2, 0x0

    cmp-long v4, v9, v2

    if-lez v4, :cond_1

    if-nez v0, :cond_1

    .line 239
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    monitor-enter v2

    .line 240
    :try_start_0
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;

    iget v4, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-boolean v7, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v8, 0x0

    move-wide v5, v9

    invoke-virtual/range {v3 .. v8}, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter;->writeMessageFrameSynchronized(IJZZ)V

    .line 241
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    goto :goto_1

    .line 241
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 244
    :cond_1
    :goto_1
    return-void

    .line 228
    .end local v0    # "deferWrite":Z
    .end local v9    # "emitCount":J
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
