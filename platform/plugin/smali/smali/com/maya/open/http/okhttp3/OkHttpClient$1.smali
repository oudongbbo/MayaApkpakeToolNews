.class final Lcom/maya/open/http/okhttp3/OkHttpClient$1;
.super Lcom/maya/open/http/okhttp3/internal/Internal;
.source "OkHttpClient.java"


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
    .param p1, "builder"    # Lcom/maya/open/http/okhttp3/Headers$Builder;
    .param p2, "line"    # Ljava/lang/String;

    .line 133
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    .line 134
    return-void
.end method

.method public addLenient(Lcom/maya/open/http/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lcom/maya/open/http/okhttp3/Headers$Builder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 137
    invoke-virtual {p1, p2, p3}, Lcom/maya/open/http/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    .line 138
    return-void
.end method

.method public apply(Lcom/maya/open/http/okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0
    .param p1, "tlsConfiguration"    # Lcom/maya/open/http/okhttp3/ConnectionSpec;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "isFallback"    # Z

    .line 173
    invoke-virtual {p1, p2, p3}, Lcom/maya/open/http/okhttp3/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    .line 174
    return-void
.end method

.method public code(Lcom/maya/open/http/okhttp3/Response$Builder;)I
    .locals 1
    .param p1, "responseBuilder"    # Lcom/maya/open/http/okhttp3/Response$Builder;

    .line 168
    iget v0, p1, Lcom/maya/open/http/okhttp3/Response$Builder;->code:I

    return v0
.end method

.method public connectionBecameIdle(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)Z
    .locals 1
    .param p1, "pool"    # Lcom/maya/open/http/okhttp3/ConnectionPool;
    .param p2, "connection"    # Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 146
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okhttp3/ConnectionPool;->connectionBecameIdle(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)Z

    move-result v0

    return v0
.end method

.method public deduplicate(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Address;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
    .locals 1
    .param p1, "pool"    # Lcom/maya/open/http/okhttp3/ConnectionPool;
    .param p2, "address"    # Lcom/maya/open/http/okhttp3/Address;
    .param p3, "streamAllocation"    # Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    .line 156
    invoke-virtual {p1, p2, p3}, Lcom/maya/open/http/okhttp3/ConnectionPool;->deduplicate(Lcom/maya/open/http/okhttp3/Address;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Address;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;
    .locals 1
    .param p1, "pool"    # Lcom/maya/open/http/okhttp3/ConnectionPool;
    .param p2, "address"    # Lcom/maya/open/http/okhttp3/Address;
    .param p3, "streamAllocation"    # Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    .line 151
    invoke-virtual {p1, p2, p3}, Lcom/maya/open/http/okhttp3/ConnectionPool;->get(Lcom/maya/open/http/okhttp3/Address;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;)Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public getHttpUrlChecked(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 178
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->getChecked(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public newWebSocketCall(Lcom/maya/open/http/okhttp3/OkHttpClient;Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Call;
    .locals 2
    .param p1, "client"    # Lcom/maya/open/http/okhttp3/OkHttpClient;
    .param p2, "originalRequest"    # Lcom/maya/open/http/okhttp3/Request;

    .line 186
    new-instance v0, Lcom/maya/open/http/okhttp3/RealCall;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/maya/open/http/okhttp3/RealCall;-><init>(Lcom/maya/open/http/okhttp3/OkHttpClient;Lcom/maya/open/http/okhttp3/Request;Z)V

    return-object v0
.end method

.method public put(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)V
    .locals 0
    .param p1, "pool"    # Lcom/maya/open/http/okhttp3/ConnectionPool;
    .param p2, "connection"    # Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    .line 160
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okhttp3/ConnectionPool;->put(Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;)V

    .line 161
    return-void
.end method

.method public routeDatabase(Lcom/maya/open/http/okhttp3/ConnectionPool;)Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;
    .locals 1
    .param p1, "connectionPool"    # Lcom/maya/open/http/okhttp3/ConnectionPool;

    .line 164
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/ConnectionPool;->routeDatabase:Lcom/maya/open/http/okhttp3/internal/connection/RouteDatabase;

    return-object v0
.end method

.method public setCache(Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;)V
    .locals 0
    .param p1, "builder"    # Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;
    .param p2, "internalCache"    # Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

    .line 141
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->setInternalCache(Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;)V

    .line 142
    return-void
.end method

.method public streamAllocation(Lcom/maya/open/http/okhttp3/Call;)Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;
    .locals 1
    .param p1, "call"    # Lcom/maya/open/http/okhttp3/Call;

    .line 182
    move-object v0, p1

    check-cast v0, Lcom/maya/open/http/okhttp3/RealCall;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/RealCall;->streamAllocation()Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method
