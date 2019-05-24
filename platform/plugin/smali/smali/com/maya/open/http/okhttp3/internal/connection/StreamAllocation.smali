.class public final Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;
.super Ljava/lang/Object;
.source "SourceFile"


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

    return-void
.end method

.method public constructor <init>(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Address;Ljava/lang/Object;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    .line 89
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->address:Lcom/maya/open/http/okhttp3/Address;

    .line 90
    new-instance p1, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;

    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->routeDatabase()Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;-><init>(Lcom/maya/open/http/okhttp3/Address;Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;)V

    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->routeSelector:Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;

    .line 91
    iput-object p3, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    return-void
.end method

.method private deallocate(ZZZ)Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 263
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec:Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    :cond_0
    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 266
    iput-boolean p3, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->released:Z

    .line 269
    :cond_1
    iget-object p2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_2

    .line 271
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    iput-boolean p3, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 273
    :cond_2
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec:Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    iget-boolean p1, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz p1, :cond_5

    .line 274
    :cond_3
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    invoke-direct {p0, p1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->release(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)V

    .line 275
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    iget-object p1, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 276
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 277
    sget-object p1, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    iget-object p2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    iget-object p3, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    invoke-virtual {p1, p2, p3}, Lcom/maya/open/http/okhttp3/internal/Internal;->connectionBecameIdle(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 278
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v0

    .line 281
    :goto_0
    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    goto :goto_1

    :cond_5
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method private findConnection(IIIZ)Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    .locals 4

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

    if-eqz v1, :cond_0

    .line 157
    iget-boolean v2, v1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v2, :cond_0

    .line 158
    monitor-exit v0

    return-object v1

    .line 162
    :cond_0
    sget-object v1, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->address:Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual {v1, v2, v3, p0}, Lcom/maya/open/http/okhttp3/internal/Internal;->get(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Address;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 163
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    if-eqz v1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    monitor-exit v0

    return-object p1

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->route:Lcom/maya/open/http/okhttp3/Route;

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

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

    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 181
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    iget-object v3, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    invoke-direct {v0, v3, v1}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;-><init>(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Route;)V

    .line 182
    invoke-virtual {p0, v0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->acquire(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)V

    .line 183
    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-nez v1, :cond_4

    .line 184
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->connect(IIIZ)V

    .line 188
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->routeDatabase()Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;

    move-result-object p1

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->route()Lcom/maya/open/http/okhttp3/Route;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;->connected(Lcom/maya/open/http/okhttp3/Route;)V

    const/4 p1, 0x0

    .line 191
    iget-object p2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter p2

    .line 193
    :try_start_2
    sget-object p3, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    iget-object p4, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    invoke-virtual {p3, p4, v0}, Lcom/maya/open/http/okhttp3/internal/Internal;->put(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)V

    .line 197
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 198
    sget-object p1, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    iget-object p3, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    iget-object p4, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->address:Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual {p1, p3, p4, p0}, Lcom/maya/open/http/okhttp3/internal/Internal;->deduplicate(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Address;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object p1

    .line 199
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 201
    :cond_3
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 201
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 183
    :cond_4
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 184
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 153
    :cond_5
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "codec != null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "released"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    .line 168
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method private findHealthyConnection(IIIZZ)Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    .locals 3

    .line 122
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->findConnection(IIIZ)Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 126
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

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 130
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private release(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)V
    .locals 3

    .line 350
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 351
    iget-object v2, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 352
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 353
    iget-object p1, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
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
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    if-nez v0, :cond_0

    .line 344
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 345
    iget-object p1, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    new-instance v0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;-><init>(Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 342
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public cancel()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v0

    const/4 v1, 0x1

    .line 291
    :try_start_0
    iput-boolean v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->canceled:Z

    .line 292
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec:Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    .line 293
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 294
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 296
    invoke-interface {v1}, Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;->cancel()V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 298
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->cancel()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 294
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

    :catchall_0
    move-exception v1

    .line 224
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
    .locals 6

    .line 95
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v1

    .line 96
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v2

    .line 97
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v3

    .line 98
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v4

    move-object v0, p0

    move v5, p2

    .line 101
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->findHealthyConnection(IIIZZ)Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object p2

    .line 103
    invoke-virtual {p2, p1, p0}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->newCodec(Lcom/maya/open/http/okhttp3/OkHttpClient;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    move-result-object p1

    .line 105
    iget-object p2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :try_start_1
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec:Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    .line 107
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 108
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 110
    new-instance p2, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;

    invoke-direct {p2, p1}, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public noNewStreams()V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 247
    :try_start_0
    invoke-direct {p0, v1, v2, v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 248
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception v1

    .line 248
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 238
    :try_start_0
    invoke-direct {p0, v2, v1, v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 239
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception v1

    .line 239
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public releaseAndAcquire(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)Ljava/net/Socket;
    .locals 3

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
    invoke-direct {p0, v1, v2, v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 377
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 378
    iget-object p1, p1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 370
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public streamFailed(Ljava/io/IOException;)V
    .locals 6

    .line 306
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v0

    .line 307
    :try_start_0
    instance-of v1, p1, Lcom/maya/open/http/okhttp3/internal/http2/StreamResetException;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 308
    check-cast p1, Lcom/maya/open/http/okhttp3/internal/http2/StreamResetException;

    .line 309
    iget-object v1, p1, Lcom/maya/open/http/okhttp3/internal/http2/StreamResetException;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    sget-object v5, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    if-ne v1, v5, :cond_0

    .line 310
    iget v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 314
    :cond_0
    iget-object p1, p1, Lcom/maya/open/http/okhttp3/internal/http2/StreamResetException;->errorCode:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    sget-object v1, Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lcom/maya/open/http/okhttp3/internal/http2/ErrorCode;

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    if-le p1, v4, :cond_6

    .line 316
    :cond_1
    iput-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->route:Lcom/maya/open/http/okhttp3/Route;

    goto :goto_0

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 319
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p1, Lcom/maya/open/http/okhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v1, :cond_6

    .line 323
    :cond_3
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    iget v1, v1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v1, :cond_5

    .line 324
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->route:Lcom/maya/open/http/okhttp3/Route;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 325
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->routeSelector:Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;

    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->route:Lcom/maya/open/http/okhttp3/Route;

    invoke-virtual {v1, v5, p1}, Lcom/maya/open/http/okhttp3/internal/connection/RouteSelector;->connectFailed(Lcom/maya/open/http/okhttp3/Route;Ljava/io/IOException;)V

    .line 327
    :cond_4
    iput-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->route:Lcom/maya/open/http/okhttp3/Route;

    :cond_5
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 330
    :goto_1
    invoke-direct {p0, p1, v3, v4}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 331
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception p1

    .line 331
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public streamFinished(ZLcom/maya/open/http/okhttp3/internal/http/HttpCodec;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    monitor-enter v0

    if-eqz p2, :cond_1

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec:Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection:Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    iget v2, v1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->successCount:I

    add-int/2addr v2, p2

    iput v2, v1, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->successCount:I

    :cond_0
    const/4 v1, 0x0

    .line 216
    invoke-direct {p0, p1, v1, p2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object p1

    .line 217
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 211
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec:Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->address:Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Address;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
