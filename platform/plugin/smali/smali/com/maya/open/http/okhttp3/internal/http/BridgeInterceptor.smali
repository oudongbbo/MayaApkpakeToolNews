.class public final Lcom/maya/open/http/okhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Lcom/maya/open/http/okhttp3/Interceptor;


# instance fields
.field private final cookieJar:Lcom/maya/open/http/okhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/CookieJar;)V
    .locals 0
    .param p1, "cookieJar"    # Lcom/maya/open/http/okhttp3/CookieJar;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http/BridgeInterceptor;->cookieJar:Lcom/maya/open/http/okhttp3/CookieJar;

    .line 46
    return-void
.end method

.method private cookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 118
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, "cookieHeader":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 120
    if-lez v1, :cond_0

    .line 121
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/maya/open/http/okhttp3/Cookie;

    .line 124
    .local v3, "cookie":Lcom/maya/open/http/okhttp3/Cookie;
    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .end local v3    # "cookie":Lcom/maya/open/http/okhttp3/Cookie;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public intercept(Lcom/maya/open/http/okhttp3/Interceptor$Chain;)Lcom/maya/open/http/okhttp3/Response;
    .locals 11
    .param p1, "chain"    # Lcom/maya/open/http/okhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-interface {p1}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    .line 50
    .local v0, "userRequest":Lcom/maya/open/http/okhttp3/Request;
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->newBuilder()Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v1

    .line 52
    .local v1, "requestBuilder":Lcom/maya/open/http/okhttp3/Request$Builder;
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v2

    .line 53
    .local v2, "body":Lcom/maya/open/http/okhttp3/RequestBody;
    if-eqz v2, :cond_2

    .line 54
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/RequestBody;->contentType()Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object v3

    .line 55
    .local v3, "contentType":Lcom/maya/open/http/okhttp3/MediaType;
    if-eqz v3, :cond_0

    .line 56
    const-string v4, "Content-Type"

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 59
    :cond_0
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/RequestBody;->contentLength()J

    move-result-wide v4

    .line 60
    .local v4, "contentLength":J
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 61
    const-string v6, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 62
    const-string v6, "Transfer-Encoding"

    invoke-virtual {v1, v6}, Lcom/maya/open/http/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    goto :goto_0

    .line 64
    :cond_1
    const-string v6, "Transfer-Encoding"

    const-string v7, "chunked"

    invoke-virtual {v1, v6, v7}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 65
    const-string v6, "Content-Length"

    invoke-virtual {v1, v6}, Lcom/maya/open/http/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 69
    .end local v3    # "contentType":Lcom/maya/open/http/okhttp3/MediaType;
    .end local v4    # "contentLength":J
    :cond_2
    :goto_0
    const-string v3, "Host"

    invoke-virtual {v0, v3}, Lcom/maya/open/http/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 70
    const-string v3, "Host"

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/maya/open/http/okhttp3/internal/Util;->hostHeader(Lcom/maya/open/http/okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 73
    :cond_3
    const-string v3, "Connection"

    invoke-virtual {v0, v3}, Lcom/maya/open/http/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 74
    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v1, v3, v4}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 79
    :cond_4
    const/4 v3, 0x0

    .line 80
    .local v3, "transparentGzip":Z
    const-string v4, "Accept-Encoding"

    invoke-virtual {v0, v4}, Lcom/maya/open/http/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v4, "Range"

    invoke-virtual {v0, v4}, Lcom/maya/open/http/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 81
    const/4 v3, 0x1

    .line 82
    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v1, v4, v5}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 85
    :cond_5
    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http/BridgeInterceptor;->cookieJar:Lcom/maya/open/http/okhttp3/CookieJar;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/maya/open/http/okhttp3/CookieJar;->loadForRequest(Lcom/maya/open/http/okhttp3/HttpUrl;)Ljava/util/List;

    move-result-object v4

    .line 86
    .local v4, "cookies":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Cookie;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 87
    const-string v5, "Cookie"

    invoke-direct {p0, v4}, Lcom/maya/open/http/okhttp3/internal/http/BridgeInterceptor;->cookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 90
    :cond_6
    const-string v5, "User-Agent"

    invoke-virtual {v0, v5}, Lcom/maya/open/http/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    .line 91
    const-string v5, "User-Agent"

    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 94
    :cond_7
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->build()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->proceed(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v5

    .line 96
    .local v5, "networkResponse":Lcom/maya/open/http/okhttp3/Response;
    iget-object v6, p0, Lcom/maya/open/http/okhttp3/internal/http/BridgeInterceptor;->cookieJar:Lcom/maya/open/http/okhttp3/CookieJar;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->receiveHeaders(Lcom/maya/open/http/okhttp3/CookieJar;Lcom/maya/open/http/okhttp3/HttpUrl;Lcom/maya/open/http/okhttp3/Headers;)V

    .line 98
    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v6

    .line 99
    invoke-virtual {v6, v0}, Lcom/maya/open/http/okhttp3/Response$Builder;->request(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v6

    .line 101
    .local v6, "responseBuilder":Lcom/maya/open/http/okhttp3/Response$Builder;
    if-eqz v3, :cond_8

    const-string v7, "gzip"

    const-string v8, "Content-Encoding"

    .line 102
    invoke-virtual {v5, v8}, Lcom/maya/open/http/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 103
    invoke-static {v5}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->hasBody(Lcom/maya/open/http/okhttp3/Response;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 104
    new-instance v7, Lcom/maya/open/http/okio/GzipSource;

    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lcom/maya/open/http/okhttp3/ResponseBody;->source()Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/maya/open/http/okio/GzipSource;-><init>(Lcom/maya/open/http/okio/Source;)V

    .line 105
    .local v7, "responseBody":Lcom/maya/open/http/okio/GzipSource;
    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v8

    invoke-virtual {v8}, Lcom/maya/open/http/okhttp3/Headers;->newBuilder()Lcom/maya/open/http/okhttp3/Headers$Builder;

    move-result-object v8

    const-string v9, "Content-Encoding"

    .line 106
    invoke-virtual {v8, v9}, Lcom/maya/open/http/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    move-result-object v8

    const-string v9, "Content-Length"

    .line 107
    invoke-virtual {v8, v9}, Lcom/maya/open/http/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    move-result-object v8

    .line 108
    invoke-virtual {v8}, Lcom/maya/open/http/okhttp3/Headers$Builder;->build()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v8

    .line 109
    .local v8, "strippedHeaders":Lcom/maya/open/http/okhttp3/Headers;
    invoke-virtual {v6, v8}, Lcom/maya/open/http/okhttp3/Response$Builder;->headers(Lcom/maya/open/http/okhttp3/Headers;)Lcom/maya/open/http/okhttp3/Response$Builder;

    .line 110
    new-instance v9, Lcom/maya/open/http/okhttp3/internal/http/RealResponseBody;

    invoke-static {v7}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Lcom/maya/open/http/okhttp3/internal/http/RealResponseBody;-><init>(Lcom/maya/open/http/okhttp3/Headers;Lcom/maya/open/http/okio/BufferedSource;)V

    invoke-virtual {v6, v9}, Lcom/maya/open/http/okhttp3/Response$Builder;->body(Lcom/maya/open/http/okhttp3/ResponseBody;)Lcom/maya/open/http/okhttp3/Response$Builder;

    .line 113
    .end local v7    # "responseBody":Lcom/maya/open/http/okio/GzipSource;
    .end local v8    # "strippedHeaders":Lcom/maya/open/http/okhttp3/Headers;
    :cond_8
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v7

    return-object v7
.end method
