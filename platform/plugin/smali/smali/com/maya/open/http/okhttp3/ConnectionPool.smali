.class public final Lcom/maya/open/http/okhttp3/ConnectionPool;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final executor:Ljava/util/concurrent/Executor;


# instance fields
.field private final cleanupRunnable:Ljava/lang/Runnable;

.field cleanupRunning:Z

.field private final connections:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I

.field final routeDatabase:Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 47
    nop

    .line 53
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    const/4 v7, 0x1

    .line 55
    invoke-static {v0, v7}, Lcom/maya/open/http/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/maya/open/http/okhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 89
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const-wide/16 v2, 0x5

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/maya/open/http/okhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 90
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "maxIdleConnections"    # I
    .param p2, "keepAliveDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/maya/open/http/okhttp3/ConnectionPool$1;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/ConnectionPool$1;-><init>(Lcom/maya/open/http/okhttp3/ConnectionPool;)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    .line 79
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    .line 80
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->routeDatabase:Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;

    .line 93
    iput p1, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->maxIdleConnections:I

    .line 94
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    .line 97
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 100
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepAliveDuration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private pruneAndGetAllocationCount(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;J)I
    .locals 8
    .param p1, "connection"    # Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    .param p2, "now"    # J

    .line 257
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    .line 258
    .local v0, "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/Reference<Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;>;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 259
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 261
    .local v3, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;>;"
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 262
    add-int/lit8 v2, v2, 0x1

    .line 263
    goto :goto_0

    .line 267
    :cond_0
    move-object v4, v3

    check-cast v4, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    .line 269
    .local v4, "streamAllocRef":Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A connection to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route()Lcom/maya/open/http/okhttp3/Route;

    move-result-object v6

    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Route;->address()Lcom/maya/open/http/okhttp3/Address;

    move-result-object v6

    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Address;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, "message":Ljava/lang/String;
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object v6

    iget-object v7, v4, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;->callStackTrace:Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 274
    const/4 v6, 0x1

    iput-boolean v6, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 277
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 278
    iget-wide v6, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    sub-long v6, p2, v6

    iput-wide v6, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 279
    return v1

    .line 281
    .end local v3    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;>;"
    .end local v4    # "streamAllocRef":Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
    .end local v5    # "message":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 283
    .end local v2    # "i":I
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method


# virtual methods
.method cleanup(J)J
    .locals 10
    .param p1, "now"    # J

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "inUseConnectionCount":I
    const/4 v1, 0x0

    .line 202
    .local v1, "idleConnectionCount":I
    const/4 v2, 0x0

    .line 203
    .local v2, "longestIdleConnection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    const-wide/high16 v3, -0x8000000000000000L

    .line 206
    .local v3, "longestIdleDurationNs":J
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 208
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 211
    .local v6, "connection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    invoke-direct {p0, v6, p1, p2}, Lcom/maya/open/http/okhttp3/ConnectionPool;->pruneAndGetAllocationCount(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;J)I

    move-result v7

    if-lez v7, :cond_0

    .line 212
    add-int/lit8 v0, v0, 0x1

    .line 213
    goto :goto_0

    .line 216
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 219
    iget-wide v7, v6, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    const/4 v9, 0x0

    sub-long v7, p1, v7

    .line 220
    .local v7, "idleDurationNs":J
    cmp-long v9, v7, v3

    if-lez v9, :cond_1

    .line 221
    move-wide v3, v7

    .line 222
    move-object v2, v6

    .line 224
    .end local v6    # "connection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    .end local v7    # "idleDurationNs":J
    :cond_1
    goto :goto_0

    .line 226
    .end local v5    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;>;"
    :cond_2
    iget-wide v5, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_6

    iget v5, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->maxIdleConnections:I

    if-le v1, v5, :cond_3

    goto :goto_1

    .line 231
    :cond_3
    if-lez v1, :cond_4

    .line 233
    iget-wide v5, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    const/4 v7, 0x0

    sub-long/2addr v5, v3

    monitor-exit p0

    return-wide v5

    .line 234
    :cond_4
    if-lez v0, :cond_5

    .line 236
    iget-wide v5, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->keepAliveDurationNs:J

    monitor-exit p0

    return-wide v5

    .line 239
    :cond_5
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->cleanupRunning:Z

    .line 240
    const-wide/16 v5, -0x1

    monitor-exit p0

    return-wide v5

    .line 230
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v5, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 242
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v5

    invoke-static {v5}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 247
    const-wide/16 v5, 0x0

    return-wide v5

    .line 242
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method connectionBecameIdle(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)Z
    .locals 1
    .param p1, "connection"    # Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 163
    nop

    .line 164
    iget-boolean v0, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->maxIdleConnections:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 169
    const/4 v0, 0x0

    return v0

    .line 165
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized connectionCount()I
    .locals 1

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

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

.method deduplicate(Lcom/maya/open/http/okhttp3/Address;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
    .locals 3
    .param p1, "address"    # Lcom/maya/open/http/okhttp3/Address;
    .param p2, "streamAllocation"    # Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    .line 138
    nop

    .line 139
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 140
    .local v1, "connection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    invoke-virtual {v1, p1}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->isEligible(Lcom/maya/open/http/okhttp3/Address;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 143
    invoke-virtual {p2, v1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->releaseAndAcquire(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    .line 145
    .end local v1    # "connection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    :cond_0
    goto :goto_0

    .line 146
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public evictAll()V
    .locals 4

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v0, "evictedConnections":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;>;"
    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 179
    .local v2, "connection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    iget-object v3, v2, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 181
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 184
    .end local v2    # "connection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    :cond_0
    goto :goto_0

    .line 185
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;>;"
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 188
    .restart local v2    # "connection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-static {v3}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 189
    .end local v2    # "connection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    goto :goto_1

    .line 190
    :cond_2
    return-void

    .line 185
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method get(Lcom/maya/open/http/okhttp3/Address;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    .locals 3
    .param p1, "address"    # Lcom/maya/open/http/okhttp3/Address;
    .param p2, "streamAllocation"    # Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    .line 123
    nop

    .line 124
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 125
    .local v1, "connection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    invoke-virtual {v1, p1}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->isEligible(Lcom/maya/open/http/okhttp3/Address;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p2, v1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->acquire(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)V

    .line 127
    return-object v1

    .line 129
    .end local v1    # "connection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    :cond_0
    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized idleConnectionCount()I
    .locals 4

    monitor-enter p0

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "total":I
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 106
    .local v2, "connection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    iget-object v3, v2, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 107
    .end local v2    # "connection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    :cond_0
    goto :goto_0

    .line 108
    :cond_1
    monitor-exit p0

    return v0

    .line 103
    .end local v0    # "total":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method put(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)V
    .locals 2
    .param p1, "connection"    # Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 150
    nop

    .line 151
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->cleanupRunning:Z

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->cleanupRunning:Z

    .line 153
    sget-object v0, Lcom/maya/open/http/okhttp3/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method
