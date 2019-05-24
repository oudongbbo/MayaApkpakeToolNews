.class public final Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private callStackTrace:Ljava/lang/Object;

.field private volatile canceled:Z

.field private final client:Lcom/maya/open/http/okhttp3/OkHttpClient;

.field private final forWebSocket:Z

.field private streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okhttp3/OkHttpClient;Z)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 75
    iput-boolean p2, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    return-void
.end method

.method private createAddress(Lcom/maya/open/http/okhttp3/HttpUrl;)Lcom/maya/open/http/okhttp3/Address;
    .locals 17

    move-object/from16 v0, p0

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->isHttps()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 195
    iget-object v1, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 196
    iget-object v3, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/OkHttpClient;->certificatePinner()Lcom/maya/open/http/okhttp3/CertificatePinner;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    .line 199
    :goto_0
    new-instance v1, Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->port()I

    move-result v6

    iget-object v2, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/OkHttpClient;->dns()Lcom/maya/open/http/okhttp3/Dns;

    move-result-object v7

    iget-object v2, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 200
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/OkHttpClient;->proxyAuthenticator()Lcom/maya/open/http/okhttp3/Authenticator;

    move-result-object v12

    iget-object v2, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 201
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lcom/maya/open/http/okhttp3/Address;-><init>(Ljava/lang/String;ILcom/maya/open/http/okhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/maya/open/http/okhttp3/CertificatePinner;Lcom/maya/open/http/okhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private followUpRequest(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Request;
    .locals 6

    if-eqz p1, :cond_d

    .line 268
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0}, Lcom/maya/open/http/okhttp3/Connection;->route()Lcom/maya/open/http/okhttp3/Route;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 272
    :goto_0
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v2

    .line 274
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    sparse-switch v2, :sswitch_data_0

    return-object v1

    .line 344
    :sswitch_0
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v0

    instance-of v0, v0, Lcom/maya/open/http/okhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v0, :cond_1

    return-object v1

    .line 348
    :cond_1
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object p1

    return-object p1

    :sswitch_1
    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 279
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v1

    .line 280
    :goto_1
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_3

    .line 283
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->proxyAuthenticator()Lcom/maya/open/http/okhttp3/Authenticator;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/maya/open/http/okhttp3/Authenticator;->authenticate(Lcom/maya/open/http/okhttp3/Route;Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Request;

    move-result-object p1

    return-object p1

    .line 281
    :cond_3
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 286
    :sswitch_2
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->authenticator()Lcom/maya/open/http/okhttp3/Authenticator;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/maya/open/http/okhttp3/Authenticator;->authenticate(Lcom/maya/open/http/okhttp3/Route;Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Request;

    move-result-object p1

    return-object p1

    :sswitch_3
    const-string v0, "GET"

    .line 292
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return-object v1

    .line 301
    :cond_4
    :sswitch_4
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient;->followRedirects()Z

    move-result v0

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    const-string v0, "Location"

    .line 303
    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    return-object v1

    .line 305
    :cond_6
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_7

    return-object v1

    .line 311
    :cond_7
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 312
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v2

    if-nez v2, :cond_8

    return-object v1

    .line 315
    :cond_8
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Request;->newBuilder()Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v2

    .line 316
    invoke-static {v3}, Lcom/maya/open/http/okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 317
    invoke-static {v3}, Lcom/maya/open/http/okhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v4

    .line 318
    invoke-static {v3}, Lcom/maya/open/http/okhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v3, "GET"

    .line 319
    invoke-virtual {v2, v3, v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->method(Ljava/lang/String;Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;

    goto :goto_2

    :cond_9
    if-eqz v4, :cond_a

    .line 321
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v1

    .line 322
    :cond_a
    invoke-virtual {v2, v3, v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->method(Ljava/lang/String;Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;

    :goto_2
    if-nez v4, :cond_b

    const-string v1, "Transfer-Encoding"

    .line 325
    invoke-virtual {v2, v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    const-string v1, "Content-Length"

    .line 326
    invoke-virtual {v2, v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    const-string v1, "Content-Type"

    .line 327
    invoke-virtual {v2, v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 334
    :cond_b
    invoke-direct {p0, p1, v0}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lcom/maya/open/http/okhttp3/Response;Lcom/maya/open/http/okhttp3/HttpUrl;)Z

    move-result p1

    if-nez p1, :cond_c

    const-string p1, "Authorization"

    .line 335
    invoke-virtual {v2, p1}, Lcom/maya/open/http/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 338
    :cond_c
    invoke-virtual {v2, v0}, Lcom/maya/open/http/okhttp3/Request$Builder;->url(Lcom/maya/open/http/okhttp3/HttpUrl;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request$Builder;->build()Lcom/maya/open/http/okhttp3/Request;

    move-result-object p1

    return-object p1

    .line 267
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_4
        0x12d -> :sswitch_4
        0x12e -> :sswitch_4
        0x12f -> :sswitch_4
        0x133 -> :sswitch_3
        0x134 -> :sswitch_3
        0x191 -> :sswitch_2
        0x197 -> :sswitch_1
        0x198 -> :sswitch_0
    .end sparse-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .locals 3

    .line 231
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 237
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 238
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 243
    :cond_2
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_3

    .line 246
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_3

    return v1

    .line 250
    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private recover(Ljava/io/IOException;ZLcom/maya/open/http/okhttp3/Request;)Z
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 214
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 217
    invoke-virtual {p3}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object p3

    instance-of p3, p3, Lcom/maya/open/http/okhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz p3, :cond_1

    return v1

    .line 220
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 223
    :cond_2
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private sameConnection(Lcom/maya/open/http/okhttp3/Response;Lcom/maya/open/http/okhttp3/HttpUrl;)Z
    .locals 2

    .line 360
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object p1

    .line 361
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/HttpUrl;->port()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 363
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    .line 89
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->cancel()V

    :cond_0
    return-void
.end method

.method public intercept(Lcom/maya/open/http/okhttp3/Interceptor$Chain;)Lcom/maya/open/http/okhttp3/Response;
    .locals 9

    .line 106
    invoke-interface {p1}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 109
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/OkHttpClient;->connectionPool()Lcom/maya/open/http/okhttp3/ConnectionPool;

    move-result-object v2

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lcom/maya/open/http/okhttp3/HttpUrl;)Lcom/maya/open/http/okhttp3/Address;

    move-result-object v3

    iget-object v4, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;-><init>(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Address;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v4, 0x0

    .line 114
    :goto_0
    iget-boolean v5, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-nez v5, :cond_a

    .line 122
    :try_start_0
    move-object v5, p1

    check-cast v5, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;

    iget-object v6, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v5, v0, v6, v2, v2}, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;->proceed(Lcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;Lcom/maya/open/http/okhttp3/Connection;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v5
    :try_end_0
    .catch Lcom/maya/open/http/okhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 147
    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v3

    .line 149
    invoke-virtual {v3, v2}, Lcom/maya/open/http/okhttp3/Response$Builder;->body(Lcom/maya/open/http/okhttp3/ResponseBody;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v3

    .line 150
    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v3

    .line 148
    invoke-virtual {v0, v3}, Lcom/maya/open/http/okhttp3/Response$Builder;->priorResponse(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_0
    move-object v3, v5

    .line 154
    :goto_1
    invoke-direct {p0, v3}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    if-nez v0, :cond_2

    .line 157
    iget-boolean p1, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    if-nez p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->release()V

    :cond_1
    return-object v3

    .line 163
    :cond_2
    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v5

    invoke-static {v5}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x14

    if-gt v4, v5, :cond_6

    .line 170
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v5

    instance-of v5, v5, Lcom/maya/open/http/okhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v5, :cond_5

    .line 175
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lcom/maya/open/http/okhttp3/Response;Lcom/maya/open/http/okhttp3/HttpUrl;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 176
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 177
    new-instance v5, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    iget-object v6, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 178
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/OkHttpClient;->connectionPool()Lcom/maya/open/http/okhttp3/ConnectionPool;

    move-result-object v6

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lcom/maya/open/http/okhttp3/HttpUrl;)Lcom/maya/open/http/okhttp3/Address;

    move-result-object v7

    iget-object v8, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v5, v6, v7, v8}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;-><init>(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Address;Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    goto :goto_0

    .line 179
    :cond_3
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec()Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_0

    .line 180
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing the body of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_5
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 172
    new-instance p1, Ljava/net/HttpRetryException;

    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v0

    const-string v1, "Cannot retry streamed HTTP body"

    invoke-direct {p1, v1, v0}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 166
    :cond_6
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 167
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v5

    .line 133
    :try_start_1
    instance-of v6, v5, Lcom/maya/open/http/okhttp3/internal/http2/ConnectionShutdownException;

    if-nez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    .line 134
    :goto_2
    invoke-direct {p0, v5, v6, v0}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLcom/maya/open/http/okhttp3/Request;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto/16 :goto_0

    :cond_8
    throw v5

    :catch_1
    move-exception v5

    .line 126
    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v6

    invoke-direct {p0, v6, v1, v0}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLcom/maya/open/http/okhttp3/Request;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto/16 :goto_0

    .line 127
    :cond_9
    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :goto_3
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0, v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 141
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 143
    throw p1

    .line 115
    :cond_a
    iget-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 116
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isCanceled()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    return v0
.end method

.method public setCallStackTrace(Ljava/lang/Object;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    return-void
.end method

.method public streamAllocation()Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method
