.class public final Lcom/maya/open/http/okhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okhttp3/Interceptor;


# instance fields
.field private final cookieJar:Lcom/maya/open/http/okhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/CookieJar;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http/BridgeInterceptor;->cookieJar:Lcom/maya/open/http/okhttp3/CookieJar;

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
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const-string v3, "; "

    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/maya/open/http/okhttp3/Cookie;

    .line 124
    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Cookie;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public intercept(Lcom/maya/open/http/okhttp3/Interceptor$Chain;)Lcom/maya/open/http/okhttp3/Response;
    .locals 7

    .line 49
    invoke-interface {p1}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->newBuilder()Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 54
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/RequestBody;->contentType()Lcom/maya/open/http/okhttp3/MediaType;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "Content-Type"

    .line 56
    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 59
    :cond_0
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/RequestBody;->contentLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    const-string v4, "Content-Length"

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    const-string v2, "Transfer-Encoding"

    .line 62
    invoke-virtual {v1, v2}, Lcom/maya/open/http/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    goto :goto_0

    :cond_1
    const-string v2, "Transfer-Encoding"

    const-string v3, "chunked"

    .line 64
    invoke-virtual {v1, v2, v3}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    const-string v2, "Content-Length"

    .line 65
    invoke-virtual {v1, v2}, Lcom/maya/open/http/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    :cond_2
    :goto_0
    const-string v2, "Host"

    .line 69
    invoke-virtual {v0, v2}, Lcom/maya/open/http/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    const-string v2, "Host"

    .line 70
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/maya/open/http/okhttp3/internal/Util;->hostHeader(Lcom/maya/open/http/okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    :cond_3
    const-string v2, "Connection"

    .line 73
    invoke-virtual {v0, v2}, Lcom/maya/open/http/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "Connection"

    const-string v4, "Keep-Alive"

    .line 74
    invoke-virtual {v1, v2, v4}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    :cond_4
    const-string v2, "Accept-Encoding"

    .line 80
    invoke-virtual {v0, v2}, Lcom/maya/open/http/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "Range"

    invoke-virtual {v0, v2}, Lcom/maya/open/http/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v3, 0x1

    const-string v2, "Accept-Encoding"

    const-string v4, "gzip"

    .line 82
    invoke-virtual {v1, v2, v4}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 85
    :cond_5
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http/BridgeInterceptor;->cookieJar:Lcom/maya/open/http/okhttp3/CookieJar;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/maya/open/http/okhttp3/CookieJar;->loadForRequest(Lcom/maya/open/http/okhttp3/HttpUrl;)Ljava/util/List;

    move-result-object v2

    .line 86
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "Cookie"

    .line 87
    invoke-direct {p0, v2}, Lcom/maya/open/http/okhttp3/internal/http/BridgeInterceptor;->cookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    :cond_6
    const-string v2, "User-Agent"

    .line 90
    invoke-virtual {v0, v2}, Lcom/maya/open/http/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v2, "User-Agent"

    .line 91
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/maya/open/http/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 94
    :cond_7
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->build()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->proceed(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object p1

    .line 96
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http/BridgeInterceptor;->cookieJar:Lcom/maya/open/http/okhttp3/CookieJar;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->receiveHeaders(Lcom/maya/open/http/okhttp3/CookieJar;Lcom/maya/open/http/okhttp3/HttpUrl;Lcom/maya/open/http/okhttp3/Headers;)V

    .line 98
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v1, v0}, Lcom/maya/open/http/okhttp3/Response$Builder;->request(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v0

    if-eqz v3, :cond_8

    const-string v1, "gzip"

    const-string v2, "Content-Encoding"

    .line 102
    invoke-virtual {p1, v2}, Lcom/maya/open/http/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 103
    invoke-static {p1}, Lcom/maya/open/http/okhttp3/internal/http/HttpHeaders;->hasBody(Lcom/maya/open/http/okhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 104
    new-instance v1, Lcom/maya/open/http/okio/GzipSource;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/ResponseBody;->source()Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/maya/open/http/okio/GzipSource;-><init>(Lcom/maya/open/http/okio/Source;)V

    .line 105
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->headers()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Headers;->newBuilder()Lcom/maya/open/http/okhttp3/Headers$Builder;

    move-result-object p1

    const-string v2, "Content-Encoding"

    .line 106
    invoke-virtual {p1, v2}, Lcom/maya/open/http/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    move-result-object p1

    const-string v2, "Content-Length"

    .line 107
    invoke-virtual {p1, v2}, Lcom/maya/open/http/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Headers$Builder;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Headers$Builder;->build()Lcom/maya/open/http/okhttp3/Headers;

    move-result-object p1

    .line 109
    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/Response$Builder;->headers(Lcom/maya/open/http/okhttp3/Headers;)Lcom/maya/open/http/okhttp3/Response$Builder;

    .line 110
    new-instance v2, Lcom/maya/open/http/okhttp3/internal/http/RealResponseBody;

    invoke-static {v1}, Lcom/maya/open/http/okio/Okio;->buffer(Lcom/maya/open/http/okio/Source;)Lcom/maya/open/http/okio/BufferedSource;

    move-result-object v1

    invoke-direct {v2, p1, v1}, Lcom/maya/open/http/okhttp3/internal/http/RealResponseBody;-><init>(Lcom/maya/open/http/okhttp3/Headers;Lcom/maya/open/http/okio/BufferedSource;)V

    invoke-virtual {v0, v2}, Lcom/maya/open/http/okhttp3/Response$Builder;->body(Lcom/maya/open/http/okhttp3/ResponseBody;)Lcom/maya/open/http/okhttp3/Response$Builder;

    .line 113
    :cond_8
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object p1

    return-object p1
.end method
