.class Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;
.source "Relay.java"

# interfaces
.implements Lcom/maya/open/http/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelaySource"
.end annotation


# instance fields
.field private fileOperator:Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;

.field private sourcePos:J

.field final synthetic this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

.field private final timeout:Lcom/maya/open/http/okio/Timeout;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okhttp3/internal/cache2/Relay;)V
    .locals 2
    .param p1, "this$0"    # Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    .line 225
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Lcom/maya/open/http/okio/Timeout;

    invoke-direct {v0}, Lcom/maya/open/http/okio/Timeout;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->timeout:Lcom/maya/open/http/okio/Timeout;

    .line 229
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;

    if-nez v0, :cond_0

    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;

    .line 348
    const/4 v1, 0x0

    .line 349
    .local v1, "fileToClose":Ljava/io/RandomAccessFile;
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    monitor-enter v2

    .line 350
    :try_start_0
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget v4, v3, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->sourceCount:I

    .line 351
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget v3, v3, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->sourceCount:I

    if-nez v3, :cond_1

    .line 352
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-object v3, v3, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    move-object v1, v3

    .line 353
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iput-object v0, v3, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 355
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    if-eqz v1, :cond_2

    .line 358
    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 360
    :cond_2
    return-void

    .line 355
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public read(Lcom/maya/open/http/okio/Buffer;J)J
    .locals 22
    .param p1, "sink"    # Lcom/maya/open/http/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;

    if-eqz v0, :cond_7

    .line 259
    iget-object v4, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    monitor-enter v4

    .line 261
    :goto_0
    :try_start_0
    iget-wide v5, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-wide v7, v0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->upstreamPos:J

    move-wide v9, v7

    .local v9, "upstreamPos":J
    cmp-long v0, v5, v7

    const-wide/16 v5, -0x1

    if-nez v0, :cond_2

    .line 263
    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-boolean v0, v0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->complete:Z

    if-eqz v0, :cond_0

    monitor-exit v4

    return-wide v5

    .line 266
    :cond_0
    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->timeout:Lcom/maya/open/http/okio/Timeout;

    iget-object v5, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    invoke-virtual {v0, v5}, Lcom/maya/open/http/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 268
    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    iput-object v7, v0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 273
    const/4 v0, 0x1

    .line 274
    .local v0, "source":I
    monitor-exit v4

    goto :goto_1

    .line 277
    .end local v0    # "source":I
    :cond_2
    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v7

    const/4 v0, 0x0

    sub-long v7, v9, v7

    .line 280
    .local v7, "bufferPos":J
    iget-wide v11, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    cmp-long v0, v11, v7

    if-gez v0, :cond_6

    .line 281
    const/4 v0, 0x2

    .line 282
    .restart local v0    # "source":I
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 290
    .end local v7    # "bufferPos":J
    :goto_1
    move-wide v7, v9

    .end local v9    # "upstreamPos":J
    .local v7, "upstreamPos":J
    move v9, v0

    .line 293
    .end local v0    # "source":I
    .local v9, "source":I
    const/4 v0, 0x2

    const-wide/16 v10, 0x20

    if-ne v9, v0, :cond_3

    .line 294
    iget-wide v4, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v4, v7, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 295
    .local v4, "bytesToRead":J
    iget-object v12, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;

    iget-wide v13, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v13, v10

    move-object/from16 v15, p1

    move-wide/from16 v16, v4

    invoke-virtual/range {v12 .. v17}, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->read(JLcom/maya/open/http/okio/Buffer;J)V

    .line 296
    iget-wide v10, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v10, v4

    iput-wide v10, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 297
    return-wide v4

    .line 303
    .end local v4    # "bytesToRead":J
    :cond_3
    const/4 v4, 0x0

    :try_start_1
    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->upstream:Lcom/maya/open/http/okio/Source;

    iget-object v12, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-object v12, v12, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->upstreamBuffer:Lcom/maya/open/http/okio/Buffer;

    iget-object v13, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-wide v13, v13, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    invoke-interface {v0, v12, v13, v14}, Lcom/maya/open/http/okio/Source;->read(Lcom/maya/open/http/okio/Buffer;J)J

    move-result-wide v12

    .line 306
    .local v12, "upstreamBytesRead":J
    cmp-long v0, v12, v5

    if-nez v0, :cond_4

    .line 307
    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    invoke-virtual {v0, v7, v8}, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->commit(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 308
    nop

    .line 333
    iget-object v10, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    monitor-enter v10

    .line 334
    :try_start_2
    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iput-object v4, v0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 335
    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 336
    monitor-exit v10

    .line 308
    return-wide v5

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 312
    :cond_4
    :try_start_3
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 313
    .local v5, "bytesRead":J
    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-object v14, v0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->upstreamBuffer:Lcom/maya/open/http/okio/Buffer;

    const-wide/16 v16, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v18, v5

    invoke-virtual/range {v14 .. v19}, Lcom/maya/open/http/okio/Buffer;->copyTo(Lcom/maya/open/http/okio/Buffer;JJ)Lcom/maya/open/http/okio/Buffer;

    .line 314
    iget-wide v14, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    const/4 v0, 0x0

    add-long/2addr v14, v5

    iput-wide v14, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 317
    iget-object v14, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;

    const/4 v0, 0x0

    add-long v15, v7, v10

    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->upstreamBuffer:Lcom/maya/open/http/okio/Buffer;

    .line 318
    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->clone()Lcom/maya/open/http/okio/Buffer;

    move-result-object v17

    .line 317
    move-wide/from16 v18, v12

    invoke-virtual/range {v14 .. v19}, Lcom/maya/open/http/okhttp3/internal/cache2/FileOperator;->write(JLcom/maya/open/http/okio/Buffer;J)V

    .line 320
    iget-object v10, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    monitor-enter v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 322
    :try_start_4
    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-object v11, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-object v11, v11, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->upstreamBuffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0, v11, v12, v13}, Lcom/maya/open/http/okio/Buffer;->write(Lcom/maya/open/http/okio/Buffer;J)V

    .line 323
    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v14

    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide/from16 v20, v5

    .end local v5    # "bytesRead":J
    .local v20, "bytesRead":J
    :try_start_5
    iget-wide v4, v0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    cmp-long v0, v14, v4

    if-lez v0, :cond_5

    .line 324
    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-object v4, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-object v4, v4, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->buffer:Lcom/maya/open/http/okio/Buffer;

    invoke-virtual {v4}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v4

    iget-object v6, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-wide v14, v6, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    const/4 v6, 0x0

    sub-long/2addr v4, v14

    invoke-virtual {v0, v4, v5}, Lcom/maya/open/http/okio/Buffer;->skip(J)V

    .line 328
    :cond_5
    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-wide v4, v0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->upstreamPos:J

    const/4 v6, 0x0

    add-long/2addr v4, v12

    iput-wide v4, v0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 329
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 331
    nop

    .line 333
    iget-object v4, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    monitor-enter v4

    .line 334
    :try_start_6
    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 335
    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 336
    monitor-exit v4

    .line 331
    return-wide v20

    .line 336
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 329
    .end local v20    # "bytesRead":J
    .restart local v5    # "bytesRead":J
    :catchall_2
    move-exception v0

    move-wide/from16 v20, v5

    .end local v5    # "bytesRead":J
    .restart local v20    # "bytesRead":J
    :goto_2
    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 333
    .end local v12    # "upstreamBytesRead":J
    .end local v20    # "bytesRead":J
    :catchall_4
    move-exception v0

    iget-object v5, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    monitor-enter v5

    .line 334
    :try_start_9
    iget-object v4, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 335
    iget-object v4, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 336
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 337
    throw v0

    .line 336
    :catchall_5
    move-exception v0

    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0

    .line 286
    .local v7, "bufferPos":J
    .local v9, "upstreamPos":J
    :cond_6
    :try_start_b
    iget-wide v5, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    const/4 v0, 0x0

    sub-long v5, v9, v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 287
    .local v5, "bytesToRead":J
    iget-object v0, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Lcom/maya/open/http/okhttp3/internal/cache2/Relay;

    iget-object v11, v0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay;->buffer:Lcom/maya/open/http/okio/Buffer;

    iget-wide v12, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    const/4 v0, 0x0

    sub-long v14, v12, v7

    move-object/from16 v12, p1

    move-wide v13, v14

    move-wide v15, v5

    invoke-virtual/range {v11 .. v16}, Lcom/maya/open/http/okio/Buffer;->copyTo(Lcom/maya/open/http/okio/Buffer;JJ)Lcom/maya/open/http/okio/Buffer;

    .line 288
    iget-wide v11, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    const/4 v0, 0x0

    add-long/2addr v11, v5

    iput-wide v11, v1, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 289
    monitor-exit v4

    return-wide v5

    .line 290
    .end local v5    # "bytesToRead":J
    .end local v7    # "bufferPos":J
    .end local v9    # "upstreamPos":J
    :catchall_6
    move-exception v0

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0

    .line 253
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "closed"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lcom/maya/open/http/okio/Timeout;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache2/Relay$RelaySource;->timeout:Lcom/maya/open/http/okio/Timeout;

    return-object v0
.end method
