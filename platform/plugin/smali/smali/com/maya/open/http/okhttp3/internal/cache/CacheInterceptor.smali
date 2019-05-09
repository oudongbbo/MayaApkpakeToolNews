.class public final Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lcom/maya/open/http/okhttp3/Interceptor;


# instance fields
.field final cache:Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;)V
    .locals 0
    .param p1, "cache"    # Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

    .line 51
    return-void
.end method

.method private cacheWritingResponse(Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response;
    .locals 8
    .param p1, "cacheRequest"    # Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;
    .param p2, "response"    # Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    if-nez p1, :cond_0

    return-object p2

    .line 172
    :cond_0
    invoke-interface {p1}, Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;->body()Lcom/maya/open/http/okio/Sink;

    move-result-object v0

    .line 173
    .local v0, "cacheBodyUnbuffered":Lcom/maya/open/http/okio/Sink;
    if-nez v0, :cond_1

    return-object p2

    .line 175
    :cond_1
    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/ResponseBody;->source()Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v1

    .line 176
    .local v1, "source":Lcom/maya/open/http/okio/BufferedSource;
    invoke-static {v0}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Sink;)Lcom/maya/open/http/okio/BufferedSink;

    move-result-object v2

    .line 178
    .local v2, "cacheBody":Lcom/maya/open/http/okio/BufferedSink;
    new-instance v3, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;

    invoke-direct {v3, p0, v1, p1, v2}, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor$1;-><init>(Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;Lcom/maya/open/http/okio/BufferedSource;Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;Lcom/maya/open/http/okio/BufferedSink;)V

    .line 220
    .local v3, "cacheWritingSource":Lcom/maya/open/http/okio/Source;
    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v4

    new-instance v5, Lcom/maya/open/http/okhttp3/internal/http/RealResponseBody;

    .line 221
    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v6

    invoke-static {v3}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/maya/open/http/okhttp3/internal/http/RealResponseBody;-><init>(Lcom/maya/open/http/okhttp3/Headers;Lcom/maya/open/http/okio/BufferedSource;)V

    invoke-virtual {v4, v5}, Lcom/maya/open/http/okhttp3/Response$Builder;->body(Lcom/maya/open/http/okhttp3/ResponseBody;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v4

    .line 222
    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v4

    .line 220
    return-object v4
.end method

.method private static combine(Lcom/maya/open/http/okhttp3/Headers;Lcom/maya/open/http/okhttp3/Headers;)Lcom/maya/open/http/okhttp3/Headers;
    .locals 6
    .param p0, "cachedHeaders"    # Lcom/maya/open/http/okhttp3/Headers;
    .param p1, "networkHeaders"    # Lcom/maya/open/http/okhttp3/Headers;

    .line 227
    new-instance v0, Lcom/maya/open/http/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/Headers$Builder;-><init>()V

    .line 229
    .local v0, "result":Lcom/maya/open/http/okhttp3/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 230
    invoke-virtual {p0, v1}, Lcom/maya/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/maya/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Warning"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 233
    goto :goto_1

    .line 235
    :cond_0
    invoke-static {v3}, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v3}, Lcom/maya/open/http/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 236
    :cond_1
    sget-object v5, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    invoke-virtual {v5, v0, v3, v4}, Lcom/maya/open/http/okhttp3/internal/Internal;->addLenient(Lcom/maya/open/http/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Headers;->size()I

    move-result v2

    .restart local v2    # "size":I
    :goto_2
    if-ge v1, v2, :cond_6

    .line 241
    invoke-virtual {p1, v1}, Lcom/maya/open/http/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 242
    .restart local v3    # "fieldName":Ljava/lang/String;
    const-string v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 243
    goto :goto_3

    .line 245
    :cond_4
    invoke-static {v3}, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 246
    sget-object v4, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    invoke-virtual {p1, v1}, Lcom/maya/open/http/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v3, v5}, Lcom/maya/open/http/okhttp3/internal/Internal;->addLenient(Lcom/maya/open/http/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .end local v3    # "fieldName":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 250
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_6
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Headers$Builder;->build()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v1

    return-object v1
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 258
    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 259
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 260
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 261
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 262
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 263
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 264
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 265
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 258
    :goto_0
    return v0
.end method

.method private maybeCache(Lcom/maya/open/http/okhttp3/Response;Lcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;)Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;
    .locals 2
    .param p1, "userResponse"    # Lcom/maya/open/http/okhttp3/Response;
    .param p2, "networkRequest"    # Lcom/maya/open/http/okhttp3/Request;
    .param p3, "responseCache"    # Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 148
    :cond_0
    invoke-static {p1, p2}, Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy;->isCacheable(Lcom/maya/open/http/okhttp3/Response;Lcom/maya/open/http/okhttp3/Request;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 149
    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    :try_start_0
    invoke-interface {p3, p2}, Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;->remove(Lcom/maya/open/http/okhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 156
    :cond_1
    :goto_0
    return-object v0

    .line 160
    :cond_2
    invoke-interface {p3, p1}, Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;->put(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method private static stripBody(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response;
    .locals 2
    .param p0, "response"    # Lcom/maya/open/http/okhttp3/Response;

    .line 138
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/Response$Builder;->body(Lcom/maya/open/http/okhttp3/ResponseBody;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public intercept(Lcom/maya/open/http/okhttp3/Interceptor$Chain;)Lcom/maya/open/http/okhttp3/Response;
    .locals 10
    .param p1, "chain"    # Lcom/maya/open/http/okhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

    .line 55
    invoke-interface {p1}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;->get(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 58
    .local v0, "cacheCandidate":Lcom/maya/open/http/okhttp3/Response;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 60
    .local v2, "now":J
    new-instance v4, Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy$Factory;

    invoke-interface {p1}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5, v0}, Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy$Factory;-><init>(JLcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/Response;)V

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy$Factory;->get()Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy;

    move-result-object v4

    .line 61
    .local v4, "strategy":Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy;
    iget-object v5, v4, Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy;->networkRequest:Lcom/maya/open/http/okhttp3/Request;

    .line 62
    .local v5, "networkRequest":Lcom/maya/open/http/okhttp3/Request;
    iget-object v6, v4, Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy;->cacheResponse:Lcom/maya/open/http/okhttp3/Response;

    .line 64
    .local v6, "cacheResponse":Lcom/maya/open/http/okhttp3/Response;
    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

    if-eqz v7, :cond_1

    .line 65
    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

    invoke-interface {v7, v4}, Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;->trackResponse(Lcom/maya/open/http/okhttp3/internal/cache/CacheStrategy;)V

    .line 68
    :cond_1
    if-eqz v0, :cond_2

    if-nez v6, :cond_2

    .line 69
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v7

    invoke-static {v7}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 73
    :cond_2
    if-nez v5, :cond_3

    if-nez v6, :cond_3

    .line 74
    new-instance v1, Lcom/maya/open/http/okhttp3/Response$Builder;

    invoke-direct {v1}, Lcom/maya/open/http/okhttp3/Response$Builder;-><init>()V

    .line 75
    invoke-interface {p1}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/maya/open/http/okhttp3/Response$Builder;->request(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v1

    sget-object v7, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_1:Lcom/maya/open/http/okhttp3/Protocol;

    .line 76
    invoke-virtual {v1, v7}, Lcom/maya/open/http/okhttp3/Response$Builder;->protocol(Lcom/maya/open/http/okhttp3/Protocol;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v1

    const/16 v7, 0x1f8

    .line 77
    invoke-virtual {v1, v7}, Lcom/maya/open/http/okhttp3/Response$Builder;->code(I)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v1

    const-string v7, "Unsatisfiable Request (only-if-cached)"

    .line 78
    invoke-virtual {v1, v7}, Lcom/maya/open/http/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v1

    sget-object v7, Lcom/maya/open/http/okhttp3/internal/Util;->EMPTY_RESPONSE:Lcom/maya/open/http/okhttp3/ResponseBody;

    .line 79
    invoke-virtual {v1, v7}, Lcom/maya/open/http/okhttp3/Response$Builder;->body(Lcom/maya/open/http/okhttp3/ResponseBody;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v1

    const-wide/16 v7, -0x1

    .line 80
    invoke-virtual {v1, v7, v8}, Lcom/maya/open/http/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v1

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/maya/open/http/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v1

    .line 74
    return-object v1

    .line 86
    :cond_3
    if-nez v5, :cond_4

    .line 87
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v1

    .line 88
    invoke-static {v6}, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/maya/open/http/okhttp3/Response$Builder;->cacheResponse(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v1

    .line 87
    return-object v1

    .line 92
    :cond_4
    nop

    .line 94
    .local v1, "networkResponse":Lcom/maya/open/http/okhttp3/Response;
    :try_start_0
    invoke-interface {p1, v5}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->proceed(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v7

    .line 97
    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    .line 98
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v7

    invoke-static {v7}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 103
    :cond_5
    if-eqz v6, :cond_7

    .line 104
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v7

    const/16 v8, 0x130

    if-ne v7, v8, :cond_6

    .line 105
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v7

    .line 106
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v8

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->combine(Lcom/maya/open/http/okhttp3/Headers;Lcom/maya/open/http/okhttp3/Headers;)Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/maya/open/http/okhttp3/Response$Builder;->headers(Lcom/maya/open/http/okhttp3/Headers;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v7

    .line 107
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/maya/open/http/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v7

    .line 108
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/maya/open/http/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v7

    .line 109
    invoke-static {v6}, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/maya/open/http/okhttp3/Response$Builder;->cacheResponse(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v7

    .line 110
    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/maya/open/http/okhttp3/Response$Builder;->networkResponse(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v7

    .line 111
    invoke-virtual {v7}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v7

    .line 112
    .local v7, "response":Lcom/maya/open/http/okhttp3/Response;
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lcom/maya/open/http/okhttp3/ResponseBody;->close()V

    .line 116
    iget-object v8, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

    invoke-interface {v8}, Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;->trackConditionalCacheHit()V

    .line 117
    iget-object v8, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

    invoke-interface {v8, v6, v7}, Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;->update(Lcom/maya/open/http/okhttp3/Response;Lcom/maya/open/http/okhttp3/Response;)V

    .line 118
    return-object v7

    .line 120
    .end local v7    # "response":Lcom/maya/open/http/okhttp3/Response;
    :cond_6
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v7

    invoke-static {v7}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 124
    :cond_7
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v7

    .line 125
    invoke-static {v6}, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/maya/open/http/okhttp3/Response$Builder;->cacheResponse(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v7

    .line 126
    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->stripBody(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/maya/open/http/okhttp3/Response$Builder;->networkResponse(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v7

    .line 127
    invoke-virtual {v7}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v7

    .line 129
    .restart local v7    # "response":Lcom/maya/open/http/okhttp3/Response;
    invoke-static {v7}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->hasBody(Lcom/maya/open/http/okhttp3/Response;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 130
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v8

    iget-object v9, p0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->cache:Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

    invoke-direct {p0, v7, v8, v9}, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->maybeCache(Lcom/maya/open/http/okhttp3/Response;Lcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;)Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;

    move-result-object v8

    .line 131
    .local v8, "cacheRequest":Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;
    invoke-direct {p0, v8, v7}, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v7

    .line 134
    .end local v8    # "cacheRequest":Lcom/maya/open/http/okhttp3/internal/cache/CacheRequest;
    :cond_8
    return-object v7

    .line 97
    .end local v7    # "response":Lcom/maya/open/http/okhttp3/Response;
    :catchall_0
    move-exception v7

    if-nez v1, :cond_9

    if-eqz v0, :cond_9

    .line 98
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v8

    invoke-static {v8}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 100
    :cond_9
    throw v7
.end method
