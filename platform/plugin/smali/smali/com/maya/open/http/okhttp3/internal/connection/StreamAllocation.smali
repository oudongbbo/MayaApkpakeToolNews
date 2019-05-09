.class public final Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final address:Lcom/maya/open/http/okhttp3/Address;

.field private final callStackTrace:Ljava/lang/Object;

.field private canceled:Z

.field private codec:Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

.field private connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

.field private refusedStreamCount:I

.field private released:Z

.field private route:Lcom/maya/open/http/okhttp3/Route;

.field private final routeSelector:Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Address;Ljava/lang/Object;)V
    .locals 2
    .param p1, "connectionPool"    # Lcom/maya/open/http/okhttp3/ConnectionPool;
    .param p2, "address"    # Lcom/maya/open/http/okhttp3/Address;
    .param p3, "callStackTrace"    # Ljava/lang/Object;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    .line 89
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->address:Lcom/maya/open/http/okhttp3/Address;

    .line 90
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;

    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->routeDatabase()Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;-><init>(Lcom/maya/open/http/okhttp3/Address;Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->routeSelector:Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;

    .line 91
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    .line 92
    return-void
.end method

.method private deallocate(ZZZ)Ljava/net/Socket;
    .locals 5
    .param p1, "noNewStreams"    # Z
    .param p2, "released"    # Z
    .param p3, "streamFinished"    # Z

    .line 260
    nop

    .line 262
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 263
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec:Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    .line 265
    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 266
    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->released:Z

    .line 268
    :cond_1
    const/4 v2, 0x0

    .line 269
    .local v2, "socket":Ljava/net/Socket;
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_5

    .line 270
    if-eqz p1, :cond_2

    .line 271
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    iput-boolean v1, v3, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec:Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    iget-boolean v1, v1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v1, :cond_5

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    invoke-direct {p0, v1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->release(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)V

    .line 275
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    iget-object v1, v1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 276
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 277
    sget-object v1, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    invoke-virtual {v1, v3, v4}, Lcom/maya/open/http/okhttp3/internal/Internal;->connectionBecameIdle(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 278
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v1

    .line 281
    move-object v2, v1

    :cond_4
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 284
    :cond_5
    return-object v2
.end method

.method private findConnection(IIIZ)Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    .locals 7
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez v1, :cond_7

    .line 152
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec:Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    if-nez v1, :cond_6

    .line 153
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-nez v1, :cond_5

    .line 156
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 157
    .local v1, "allocatedConnection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v2, :cond_0

    .line 158
    monitor-exit v0

    return-object v1

    .line 162
    :cond_0
    sget-object v2, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->address:Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual {v2, v3, v4, p0}, Lcom/maya/open/http/okhttp3/internal/Internal;->get(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Address;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 163
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    if-eqz v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    monitor-exit v0

    return-object v2

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->route:Lcom/maya/open/http/okhttp3/Route;

    move-object v1, v2

    .line 168
    .local v1, "selectedRoute":Lcom/maya/open/http/okhttp3/Route;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 171
    if-nez v1, :cond_2

    .line 172
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->routeSelector:Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->next()Lcom/maya/open/http/okhttp3/Route;

    move-result-object v1

    .line 178
    :cond_2
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v2

    .line 179
    :try_start_1
    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->route:Lcom/maya/open/http/okhttp3/Route;

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 181
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    invoke-direct {v0, v3, v1}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;-><init>(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Route;)V

    .line 182
    .local v0, "result":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->acquire(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)V

    .line 183
    iget-boolean v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-nez v3, :cond_4

    .line 184
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->connect(IIIZ)V

    .line 188
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->routeDatabase()Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;

    move-result-object v2

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route()Lcom/maya/open/http/okhttp3/Route;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;->connected(Lcom/maya/open/http/okhttp3/Route;)V

    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, "socket":Ljava/net/Socket;
    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v3

    .line 193
    :try_start_2
    sget-object v4, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    invoke-virtual {v4, v5, v0}, Lcom/maya/open/http/okhttp3/internal/Internal;->put(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)V

    .line 197
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 198
    sget-object v4, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    iget-object v6, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->address:Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual {v4, v5, v6, p0}, Lcom/maya/open/http/okhttp3/internal/Internal;->deduplicate(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Address;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object v4

    move-object v2, v4

    .line 199
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-object v0, v4

    .line 201
    :cond_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    invoke-static {v2}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 204
    return-object v0

    .line 201
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 183
    .end local v2    # "socket":Ljava/net/Socket;
    :cond_4
    :try_start_4
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 184
    .end local v0    # "result":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 153
    .end local v1    # "selectedRoute":Lcom/maya/open/http/okhttp3/Route;
    :cond_5
    :try_start_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "codec != null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "released"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method private findHealthyConnection(IIIZZ)Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    .locals 3
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .param p5, "doExtensiveHealthChecks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->findConnection(IIIZ)Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 126
    .local v0, "candidate":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v1

    .line 127
    :try_start_0
    iget v2, v0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v2, :cond_0

    .line 128
    monitor-exit v1

    return-object v0

    .line 130
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {v0, p5}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 136
    goto :goto_0

    .line 139
    :cond_1
    return-object v0

    .line 130
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private release(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)V
    .locals 4
    .param p1, "connection"    # Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 350
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 351
    iget-object v2, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 352
    .local v2, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;>;"
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 353
    iget-object v3, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 354
    return-void

    .line 350
    .end local v2    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private routeDatabase()Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;
    .locals 2

    .line 228
    sget-object v0, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/internal/Internal;->routeDatabase(Lcom/maya/open/http/okhttp3/ConnectionPool;)Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquire(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)V
    .locals 3
    .param p1, "connection"    # Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 341
    nop

    .line 342
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    if-nez v0, :cond_0

    .line 344
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 345
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    new-instance v1, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;-><init>(Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    return-void

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public cancel()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v0

    .line 291
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->canceled:Z

    .line 292
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec:Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    .line 293
    .local v1, "codecToCancel":Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 294
    .local v2, "connectionToCancel":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    if-eqz v1, :cond_0

    .line 296
    invoke-interface {v1}, Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;->cancel()V

    goto :goto_0

    .line 297
    :cond_0
    if-eqz v2, :cond_1

    .line 298
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->cancel()V

    .line 300
    :cond_1
    :goto_0
    return-void

    .line 294
    .end local v1    # "codecToCancel":Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;
    .end local v2    # "connectionToCancel":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public codec()Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec:Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    monitor-exit v0

    return-object v1

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized connection()Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    .locals 1

    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasMoreRoutes()Z
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->route:Lcom/maya/open/http/okhttp3/Route;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->routeSelector:Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public newStream(Lcom/maya/open/http/okhttp3/OkHttpClient;Z)Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;
    .locals 9
    .param p1, "client"    # Lcom/maya/open/http/okhttp3/OkHttpClient;
    .param p2, "doExtensiveHealthChecks"    # Z

    .line 95
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v6

    .line 96
    .local v6, "connectTimeout":I
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v7

    .line 97
    .local v7, "readTimeout":I
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v8

    .line 98
    .local v8, "writeTimeout":I
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v4

    .line 101
    .local v4, "connectionRetryEnabled":Z
    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v5, p2

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->findHealthyConnection(IIIZZ)Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 103
    .local v0, "resultConnection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    invoke-virtual {v0, p1, p0}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->newCodec(Lcom/maya/open/http/okhttp3/OkHttpClient;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    move-result-object v1

    .line 105
    .local v1, "resultCodec":Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :try_start_1
    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec:Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    .line 107
    monitor-exit v2

    return-object v1

    .line 108
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    .end local v0    # "resultConnection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    .end local v1    # "resultCodec":Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public noNewStreams()V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v0

    .line 247
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, v2, v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 248
    .local v1, "socket":Ljava/net/Socket;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 250
    return-void

    .line 248
    .end local v1    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v0

    .line 238
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, v1, v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 239
    .local v1, "socket":Ljava/net/Socket;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 241
    return-void

    .line 239
    .end local v1    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public releaseAndAcquire(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)Ljava/net/Socket;
    .locals 3
    .param p1, "newConnection"    # Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 369
    nop

    .line 370
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec:Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 374
    .local v0, "onlyAllocation":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;>;"
    invoke-direct {p0, v1, v2, v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 377
    .local v1, "socket":Ljava/net/Socket;
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 378
    iget-object v2, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    return-object v1

    .line 370
    .end local v0    # "onlyAllocation":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;>;"
    .end local v1    # "socket":Ljava/net/Socket;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public streamFailed(Ljava/io/IOException;)V
    .locals 7
    .param p1, "e"    # Ljava/io/IOException;

    .line 304
    const/4 v0, 0x0

    .line 306
    .local v0, "noNewStreams":Z
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v1

    .line 307
    :try_start_0
    instance-of v2, p1, Lcom/maya/open/http/okhttp3/internal/http2/StreamResetException;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 308
    move-object v2, p1

    check-cast v2, Lcom/maya/open/http/okhttp3/internal/http2/StreamResetException;

    .line 309
    .local v2, "streamResetException":Lcom/maya/open/http/okhttp3/internal/http2/StreamResetException;
    iget-object v5, v2, Lcom/maya/open/http/okhttp3/internal/http2/StreamResetException;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    sget-object v6, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    if-ne v5, v6, :cond_0

    .line 310
    iget v5, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 314
    :cond_0
    iget-object v5, v2, Lcom/maya/open/http/okhttp3/internal/http2/StreamResetException;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    sget-object v6, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    if-le v5, v4, :cond_2

    .line 315
    :cond_1
    const/4 v0, 0x1

    .line 316
    iput-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->route:Lcom/maya/open/http/okhttp3/Route;

    .line 318
    .end local v2    # "streamResetException":Lcom/maya/open/http/okhttp3/internal/http2/StreamResetException;
    :cond_2
    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 319
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, p1, Lcom/maya/open/http/okhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v2, :cond_6

    .line 320
    :cond_4
    const/4 v0, 0x1

    .line 323
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    iget v2, v2, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v2, :cond_6

    .line 324
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->route:Lcom/maya/open/http/okhttp3/Route;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    .line 325
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->routeSelector:Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;

    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v2, v5, p1}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->connectFailed(Lcom/maya/open/http/okhttp3/Route;Ljava/io/IOException;)V

    .line 327
    :cond_5
    iput-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->route:Lcom/maya/open/http/okhttp3/Route;

    .line 330
    :cond_6
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 331
    .local v2, "socket":Ljava/net/Socket;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-static {v2}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 334
    return-void

    .line 331
    .end local v2    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public streamFinished(ZLcom/maya/open/http/okhttp3/internal/http/HttpCodec;)V
    .locals 4
    .param p1, "noNewStreams"    # Z
    .param p2, "codec"    # Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    .line 209
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v0

    .line 210
    if-eqz p2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec:Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    if-ne p2, v1, :cond_1

    .line 213
    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 214
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    iget v3, v2, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->successCount:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->successCount:I

    .line 216
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 217
    .local v1, "socket":Ljava/net/Socket;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 219
    return-void

    .line 217
    .end local v1    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 211
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec:Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 388
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 389
    .local v0, "connection":Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->address:Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Address;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method
