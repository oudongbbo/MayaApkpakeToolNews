.class final Lcom/maya/open/http/okhttp3/OkHttpClient$1;
.super Lcom/maya/open/http/okhttp3/internal/Internal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lcom/maya/open/http/okhttp3/Headers$Builder;Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    return-void
.end method

.method public addLenient(Lcom/maya/open/http/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 137
    invoke-virtual {p1, p2, p3}, Lcom/maya/open/http/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    return-void
.end method

.method public apply(Lcom/maya/open/http/okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    .line 173
    invoke-virtual {p1, p2, p3}, Lcom/maya/open/http/okhttp3/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public code(Lcom/maya/open/http/okhttp3/Response$Builder;)I
    .locals 0

    .line 168
    iget p1, p1, Lcom/maya/open/http/okhttp3/Response$Builder;->code:I

    return p1
.end method

.method public connectionBecameIdle(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)Z
    .locals 0

    .line 146
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okhttp3/ConnectionPool;->connectionBecameIdle(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)Z

    move-result p1

    return p1
.end method

.method public deduplicate(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Address;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
    .locals 0

    .line 156
    invoke-virtual {p1, p2, p3}, Lcom/maya/open/http/okhttp3/ConnectionPool;->deduplicate(Lcom/maya/open/http/okhttp3/Address;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Address;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    .locals 0

    .line 151
    invoke-virtual {p1, p2, p3}, Lcom/maya/open/http/okhttp3/ConnectionPool;->get(Lcom/maya/open/http/okhttp3/Address;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object p1

    return-object p1
.end method

.method public getHttpUrlChecked(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl;
    .locals 0

    .line 178
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->getChecked(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object p1

    return-object p1
.end method

.method public newWebSocketCall(Lcom/maya/open/http/okhttp3/OkHttpClient;Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Call;
    .locals 2

    .line 186
    new-instance v0, Lcom/maya/open/http/okhttp3/RealCall;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/maya/open/http/okhttp3/RealCall;-><init>(Lcom/maya/open/http/okhttp3/OkHttpClient;Lcom/maya/open/http/okhttp3/Request;Z)V

    return-object v0
.end method

.method public put(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)V
    .locals 0

    .line 160
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okhttp3/ConnectionPool;->put(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)V

    return-void
.end method

.method public routeDatabase(Lcom/maya/open/http/okhttp3/ConnectionPool;)Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;
    .locals 0

    .line 164
    iget-object p1, p1, Lcom/maya/open/http/okhttp3/ConnectionPool;->routeDatabase:Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;

    return-object p1
.end method

.method public setCache(Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;)V
    .locals 0

    .line 141
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->setInternalCache(Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;)V

    return-void
.end method

.method public streamAllocation(Lcom/maya/open/http/okhttp3/Call;)Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;
    .locals 0

    .line 182
    check-cast p1, Lcom/maya/open/http/okhttp3/RealCall;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/RealCall;->streamAllocation()Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    move-result-object p1

    return-object p1
.end method
