.class public final Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;,
        Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;,
        Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field bytesLeftInWriteWindow:J

.field final client:Z

.field final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final hostname:Ljava/lang/String;

.field lastGoodStreamId:I

.field final listener:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;

.field private nextPingId:I

.field nextStreamId:I

.field okHttpSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

.field final peerSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/maya/open/http/okhttp3/internal/http2/Ping;",
            ">;"
        }
    .end annotation
.end field

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field final pushObserver:Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;

.field final readerRunnable:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field receivedInitialPeerSettings:Z

.field shutdown:Z

.field final socket:Ljava/net/Socket;

.field final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 56
    nop

    .line 70
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp Http2Connection"

    const/4 v7, 0x1

    .line 72
    invoke-static {v0, v7}, Lcom/maya/open/http/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    .line 70
    return-void
.end method

.method constructor <init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;)V
    .locals 13
    .param p1, "builder"    # Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    .line 111
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    .line 117
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->peerSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    .line 778
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    .line 127
    iget-object v1, p1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->pushObserver:Lcom/maya/open/http/okhttp3/internal/http2/PushObserver;

    .line 128
    iget-boolean v1, p1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->client:Z

    .line 129
    iget-object v1, p1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->listener:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->listener:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Listener;

    .line 131
    iget-boolean v1, p1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 132
    iget-boolean v1, p1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v1, :cond_1

    .line 133
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 136
    :cond_1
    iget-boolean v1, p1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    iput v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->nextPingId:I

    .line 142
    iget-boolean v1, p1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    const/4 v2, 0x7

    if-eqz v1, :cond_3

    .line 143
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    const/high16 v4, 0x1000000

    invoke-virtual {v1, v2, v4}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;->set(II)Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    .line 146
    :cond_3
    iget-object v1, p1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    .line 149
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x3c

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v4, "OkHttp %s Push Observer"

    new-array v11, v3, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v12, v11, v0

    .line 151
    invoke-static {v4, v11}, Lcom/maya/open/http/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v11

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 152
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->peerSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    const v1, 0xffff

    invoke-virtual {v0, v2, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;->set(II)Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    .line 153
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->peerSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;->set(II)Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    .line 154
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->peerSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 155
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    .line 156
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    iget-object v1, p1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->sink:Lcom/maya/open/http/okio/BufferedSink;

    iget-boolean v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v0, v1, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;-><init>(Lcom/maya/open/http/okio/BufferedSink;Z)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    .line 158
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    new-instance v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader;

    iget-object v2, p1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$Builder;->source:Lcom/maya/open/http/okio/BufferedSource;

    iget-boolean v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v1, v2, v3}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader;-><init>(Lcom/maya/open/http/okio/BufferedSource;Z)V

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;Lcom/maya/open/http/okhttp3/internal/http2/Http2Reader;)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->readerRunnable:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 159
    return-void
.end method

.method private newStream(ILjava/util/List;Z)Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;
    .locals 10
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    xor-int/lit8 v0, p3, 0x1

    .line 212
    .local v0, "outFinished":Z
    const/4 v7, 0x0

    .line 217
    .local v7, "inFinished":Z
    iget-object v8, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    monitor-enter v8

    .line 218
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 219
    :try_start_1
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v1, :cond_6

    .line 222
    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 223
    .local v2, "streamId":I
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 224
    new-instance v9, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    move-object v1, v9

    move-object v3, p0

    move v4, v0

    move v5, v7

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;-><init>(ILcom/maya/open/http/okhttp3/internal/http2/Http2Connection;ZZLjava/util/List;)V

    move-object v1, v9

    .line 225
    .local v1, "stream":Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;
    if-eqz p3, :cond_1

    iget-wide v3, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v5, 0x0

    cmp-long v9, v3, v5

    if-eqz v9, :cond_1

    iget-wide v3, v1, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    cmp-long v9, v3, v5

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 226
    .local v3, "flushHeaders":Z
    :goto_1
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 227
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    if-nez p1, :cond_3

    .line 231
    :try_start_2
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v4, v0, v2, p1, p2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->synStream(ZIILjava/util/List;)V

    goto :goto_2

    .line 232
    :cond_3
    iget-boolean v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->client:Z

    if-nez v4, :cond_5

    .line 235
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v4, p1, v2, p2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->pushPromise(IILjava/util/List;)V

    .line 237
    :goto_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 239
    if-eqz v3, :cond_4

    .line 240
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->flush()V

    .line 243
    :cond_4
    return-object v1

    .line 233
    :cond_5
    :try_start_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 220
    .end local v1    # "stream":Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;
    .end local v2    # "streamId":I
    .end local v3    # "flushHeaders":Z
    :cond_6
    :try_start_4
    new-instance v1, Lcom/maya/open/http/okhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v1}, Lcom/maya/open/http/okhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw v1

    .line 229
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 237
    :catchall_1
    move-exception v1

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 3
    .param p1, "delta"    # J

    .line 300
    iget-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 301
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 302
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->NO_ERROR:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->CANCEL:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->close(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V

    .line 406
    return-void
.end method

.method close(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V
    .locals 8
    .param p1, "connectionCode"    # Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    .param p2, "streamCode"    # Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    nop

    .line 410
    const/4 v0, 0x0

    move-object v1, v0

    .line 412
    .local v1, "thrown":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->shutdown(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    goto :goto_0

    .line 413
    :catch_0
    move-exception v2

    .line 414
    .local v2, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 417
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v2, 0x0

    .line 418
    .local v2, "streamsToClose":[Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;
    const/4 v3, 0x0

    .line 419
    .local v3, "pingsToCancel":[Lcom/maya/open/http/okhttp3/internal/http2/Ping;
    monitor-enter p0

    .line 420
    :try_start_1
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 421
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    move-object v2, v4

    .line 422
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 424
    :cond_0
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 425
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Lcom/maya/open/http/okhttp3/internal/http2/Ping;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/maya/open/http/okhttp3/internal/http2/Ping;

    move-object v3, v4

    .line 426
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    .line 428
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    const/4 v0, 0x0

    if-eqz v2, :cond_4

    .line 431
    array-length v4, v2

    move-object v5, v1

    const/4 v1, 0x0

    .end local v1    # "thrown":Ljava/io/IOException;
    .local v5, "thrown":Ljava/io/IOException;
    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v6, v2, v1

    .line 433
    .local v6, "stream":Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;
    :try_start_2
    invoke-virtual {v6, p2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;->close(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 436
    goto :goto_2

    .line 434
    :catch_1
    move-exception v7

    .line 435
    .local v7, "e":Ljava/io/IOException;
    if-eqz v5, :cond_2

    move-object v5, v7

    .line 431
    .end local v6    # "stream":Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;
    .end local v7    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 440
    :cond_3
    move-object v1, v5

    .end local v5    # "thrown":Ljava/io/IOException;
    .restart local v1    # "thrown":Ljava/io/IOException;
    :cond_4
    if-eqz v3, :cond_5

    .line 441
    array-length v4, v3

    :goto_3
    if-ge v0, v4, :cond_5

    aget-object v5, v3, v0

    .line 442
    .local v5, "ping":Lcom/maya/open/http/okhttp3/internal/http2/Ping;
    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/internal/http2/Ping;->cancel()V

    .line 441
    .end local v5    # "ping":Lcom/maya/open/http/okhttp3/internal/http2/Ping;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 448
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 451
    goto :goto_4

    .line 449
    :catch_2
    move-exception v0

    .line 450
    .local v0, "e":Ljava/io/IOException;
    if-nez v1, :cond_6

    move-object v1, v0

    .line 455
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 458
    goto :goto_5

    .line 456
    :catch_3
    move-exception v0

    .line 457
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v0

    .line 460
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    if-nez v1, :cond_7

    .line 461
    return-void

    .line 460
    :cond_7
    throw v1

    .line 428
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->flush()V

    .line 377
    return-void
.end method

.method public getProtocol()Lcom/maya/open/http/okhttp3/Protocol;
    .locals 1

    .line 163
    sget-object v0, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_2:Lcom/maya/open/http/okhttp3/Protocol;

    return-object v0
.end method

.method declared-synchronized getStream(I)Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;
    .locals 2
    .param p1, "id"    # I

    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isShutdown()Z
    .locals 1

    monitor-enter p0

    .line 501
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maxConcurrentStreams()I
    .locals 2

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->peerSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;->getMaxConcurrentStreams(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;Z)Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;
    .locals 1
    .param p2, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized openStreamCount()I
    .locals 1

    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ping()Lcom/maya/open/http/okhttp3/internal/http2/Ping;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http2/Ping;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Ping;-><init>()V

    .line 337
    .local v0, "ping":Lcom/maya/open/http/okhttp3/internal/http2/Ping;
    monitor-enter p0

    .line 338
    :try_start_0
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v1, :cond_1

    .line 341
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->nextPingId:I

    .line 342
    .local v1, "pingId":I
    iget v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->nextPingId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->nextPingId:I

    .line 343
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    .line 344
    :cond_0
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    const/4 v2, 0x0

    const v3, 0x4f4b6f6b

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writePing(ZIILcom/maya/open/http/okhttp3/internal/http2/Ping;)V

    .line 347
    return-object v0

    .line 339
    .end local v1    # "pingId":I
    :cond_1
    :try_start_1
    new-instance v1, Lcom/maya/open/http/okhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v1}, Lcom/maya/open/http/okhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw v1

    .line 345
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method pushDataLater(ILcom/maya/open/http/okio/BufferedSource;IZ)V
    .locals 11
    .param p1, "streamId"    # I
    .param p2, "source"    # Lcom/maya/open/http/okio/BufferedSource;
    .param p3, "byteCount"    # I
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 828
    new-instance v0, Lcom/maya/open/http/okio/Buffer;

    invoke-direct {v0}, Lcom/maya/open/http/okio/Buffer;-><init>()V

    .line 829
    .local v0, "buffer":Lcom/maya/open/http/okio/Buffer;
    int-to-long v1, p3

    invoke-interface {p2, v1, v2}, Lcom/maya/open/http/okio/BufferedSource;->require(J)V

    .line 830
    int-to-long v1, p3

    invoke-interface {p2, v0, v1, v2}, Lcom/maya/open/http/okio/BufferedSource;->read(Lcom/maya/open/http/okio/Buffer;J)J

    .line 831
    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v1

    int-to-long v3, p3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 832
    iget-object v9, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$6;

    const-string v3, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v10

    move-object v2, p0

    move v5, p1

    move-object v6, v0

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$6;-><init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILcom/maya/open/http/okio/Buffer;IZ)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 846
    return-void

    .line 831
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/maya/open/http/okio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method pushHeadersLater(ILjava/util/List;Z)V
    .locals 9
    .param p1, "streamId"    # I
    .param p3, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    .line 806
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$5;

    const-string v3, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$5;-><init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 820
    return-void
.end method

.method pushRequestLater(ILjava/util/List;)V
    .locals 8
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 781
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    monitor-enter p0

    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V

    .line 784
    monitor-exit p0

    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 787
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$4;

    const-string v3, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$4;-><init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 802
    return-void

    .line 787
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method pushResetLater(ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    .line 849
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$7;

    const-string v3, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$7;-><init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 857
    return-void
.end method

.method public pushStream(ILjava/util/List;Z)Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;
    .locals 2
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->client:Z

    if-nez v0, :cond_0

    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client cannot push requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method pushedStream(I)Z
    .locals 1
    .param p1, "streamId"    # I

    .line 774
    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method declared-synchronized removePing(I)Lcom/maya/open/http/okhttp3/internal/http2/Ping;
    .locals 2
    .param p1, "id"    # I

    monitor-enter p0

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maya/open/http/okhttp3/internal/http2/Ping;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeStream(I)Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;
    .locals 2
    .param p1, "streamId"    # I

    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;

    .line 179
    .local v0, "stream":Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-object v0

    .line 177
    .end local v0    # "stream":Lcom/maya/open/http/okhttp3/internal/http2/Http2Stream;
    .end local p1    # "streamId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSettings(Lcom/maya/open/http/okhttp3/internal/http2/Settings;)V
    .locals 2
    .param p1, "settings"    # Lcom/maya/open/http/okhttp3/internal/http2/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    monitor-enter v0

    .line 490
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 491
    :try_start_1
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    invoke-virtual {v1, p1}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;->merge(Lcom/maya/open/http/okhttp3/internal/http2/Settings;)V

    .line 495
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v1, p1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->settings(Lcom/maya/open/http/okhttp3/internal/http2/Settings;)V

    .line 496
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 498
    return-void

    .line 492
    :cond_0
    :try_start_3
    new-instance v1, Lcom/maya/open/http/okhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v1}, Lcom/maya/open/http/okhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw v1

    .line 496
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 497
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public shutdown(Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V
    .locals 4
    .param p1, "statusCode"    # Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    monitor-enter v0

    .line 387
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 388
    :try_start_1
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v1, :cond_0

    .line 389
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 391
    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    .line 392
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 393
    .local v1, "lastGoodStreamId":I
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    :try_start_4
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    sget-object v3, Lcom/maya/open/http/okhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v2, v1, p1, v3}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->goAway(ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;[B)V

    .line 397
    .end local v1    # "lastGoodStreamId":I
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 398
    return-void

    .line 393
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 397
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 468
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->start(Z)V

    .line 469
    return-void
.end method

.method start(Z)V
    .locals 6
    .param p1, "sendConnectionPreface"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    if-eqz p1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->connectionPreface()V

    .line 478
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->settings(Lcom/maya/open/http/okhttp3/internal/http2/Settings;)V

    .line 479
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lcom/maya/open/http/okhttp3/internal/http2/Settings;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    .line 480
    .local v0, "windowSize":I
    const v1, 0xffff

    if-eq v0, v1, :cond_0

    .line 481
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    const/4 v3, 0x0

    sub-int v1, v0, v1

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V

    .line 484
    .end local v0    # "windowSize":I
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->readerRunnable:Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 485
    return-void
.end method

.method public writeData(IZLcom/maya/open/http/okio/Buffer;J)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .param p3, "buffer"    # Lcom/maya/open/http/okio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 266
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p2, p1, p3, v3}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->data(ZILcom/maya/open/http/okio/Buffer;I)V

    .line 267
    return-void

    .line 270
    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    .line 272
    monitor-enter p0

    .line 274
    :goto_1
    :try_start_0
    iget-wide v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_2

    .line 277
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 278
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_2
    nop

    .line 286
    :try_start_1
    iget-wide v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 287
    .local v2, "toWrite":I
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->maxDataLength()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v2, v4

    .line 288
    iget-wide v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 289
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    int-to-long v4, v2

    sub-long/2addr p4, v4

    .line 292
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->data(ZILcom/maya/open/http/okio/Buffer;I)V

    .line 293
    .end local v2    # "toWrite":I
    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 289
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 294
    :cond_4
    return-void
.end method

.method writePing(ZIILcom/maya/open/http/okhttp3/internal/http2/Ping;)V
    .locals 2
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/maya/open/http/okhttp3/internal/http2/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    monitor-enter v0

    .line 366
    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Lcom/maya/open/http/okhttp3/internal/http2/Ping;->send()V

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 367
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->ping(ZII)V

    .line 368
    monitor-exit v0

    .line 369
    return-void

    .line 368
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method writePingLater(ZIILcom/maya/open/http/okhttp3/internal/http2/Ping;)V
    .locals 10
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/maya/open/http/okhttp3/internal/http2/Ping;

    .line 352
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$3;

    const-string v3, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 353
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$3;-><init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/maya/open/http/okhttp3/internal/http2/Ping;)V

    .line 352
    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method writeSynReply(IZLjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
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

    .line 248
    .local p3, "alternating":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/http2/Header;>;"
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p2, p1, p3}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->synReply(ZILjava/util/List;)V

    .line 249
    return-void
.end method

.method writeSynReset(ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->writer:Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Writer;->rstStream(ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V

    .line 317
    return-void
.end method

.method writeSynResetLater(ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    .line 305
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$1;-><init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILcom/maya/open/http/okhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .locals 9
    .param p1, "streamId"    # I
    .param p2, "unacknowledgedBytesRead"    # J

    .line 320
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection$2;-><init>(Lcom/maya/open/http/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method
