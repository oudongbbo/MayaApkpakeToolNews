.class public final Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;
.super Ljava/lang/Object;
.source "RouteDatabase.java"


# instance fields
.field private final failedRoutes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/maya/open/http/okhttp3/Route;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;->failedRoutes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized connected(Lcom/maya/open/http/okhttp3/Route;)V
    .locals 1
    .param p1, "route"    # Lcom/maya/open/http/okhttp3/Route;

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;->failedRoutes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 38
    .end local p1    # "route":Lcom/maya/open/http/okhttp3/Route;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized failed(Lcom/maya/open/http/okhttp3/Route;)V
    .locals 1
    .param p1, "failedRoute"    # Lcom/maya/open/http/okhttp3/Route;

    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;->failedRoutes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 33
    .end local p1    # "failedRoute":Lcom/maya/open/http/okhttp3/Route;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shouldPostpone(Lcom/maya/open/http/okhttp3/Route;)Z
    .locals 1
    .param p1, "route"    # Lcom/maya/open/http/okhttp3/Route;

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;->failedRoutes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p1    # "route":Lcom/maya/open/http/okhttp3/Route;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
