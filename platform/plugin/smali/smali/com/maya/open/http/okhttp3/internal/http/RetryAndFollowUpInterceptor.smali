.class public final Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

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
    .param p1, "client"    # Lcom/maya/open/http/okhttp3/OkHttpClient;
    .param p2, "forWebSocket"    # Z

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 75
    iput-boolean p2, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    .line 76
    return-void
.end method

.method private createAddress(Lcom/maya/open/http/okhttp3/HttpUrl;)Lcom/maya/open/http/okhttp3/Address;
    .locals 18
    .param p1, "url"    # Lcom/maya/open/http/okhttp3/HttpUrl;

    .line 190
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 191
    .local v1, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v2, 0x0

    .line 192
    .local v2, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v3, 0x0

    .line 193
    .local v3, "certificatePinner":Lcom/maya/open/http/okhttp3/CertificatePinner;
    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->isHttps()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    iget-object v4, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 195
    iget-object v4, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    .line 196
    iget-object v4, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/OkHttpClient;->certificatePinner()Lcom/maya/open/http/okhttp3/CertificatePinner;

    move-result-object v3

    .line 199
    :cond_0
    new-instance v17, Lcom/maya/open/http/okhttp3/Address;

    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okhttp3/HttpUrl;->port()I

    move-result v6

    iget-object v4, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/OkHttpClient;->dns()Lcom/maya/open/http/okhttp3/Dns;

    move-result-object v7

    iget-object v4, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v4, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 200
    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/OkHttpClient;->proxyAuthenticator()Lcom/maya/open/http/okhttp3/Authenticator;

    move-result-object v12

    iget-object v4, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 201
    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v13

    iget-object v4, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v14

    iget-object v4, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v15

    iget-object v4, v0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v16

    move-object/from16 v4, v17

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct/range {v4 .. v16}, Lcom/maya/open/http/okhttp3/Address;-><init>(Ljava/lang/String;ILcom/maya/open/http/okhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/maya/open/http/okhttp3/CertificatePinner;Lcom/maya/open/http/okhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 199
    return-object v17
.end method

.method private followUpRequest(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Request;
    .locals 11
    .param p1, "userResponse"    # Lcom/maya/open/http/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    if-eqz p1, :cond_d

    .line 268
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->connection()Lcom/maya/open/http/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 269
    .local v0, "connection":Lcom/maya/open/http/okhttp3/Connection;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0}, Lcom/maya/open/http/okhttp3/Connection;->route()Lcom/maya/open/http/okhttp3/Route;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 272
    .local v2, "route":Lcom/maya/open/http/okhttp3/Route;
    :goto_0
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v3

    .line 274
    .local v3, "responseCode":I
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "method":Ljava/lang/String;
    sparse-switch v3, :sswitch_data_0

    .line 351
    return-object v1

    .line 344
    :sswitch_0
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v5

    instance-of v5, v5, Lcom/maya/open/http/okhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v5, :cond_1

    .line 345
    return-object v1

    .line 348
    :cond_1
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v1

    return-object v1

    .line 277
    :sswitch_1
    if-eqz v2, :cond_2

    .line 278
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 279
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v1

    .line 280
    .local v1, "selectedProxy":Ljava/net/Proxy;
    :goto_1
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v5, v6, :cond_3

    .line 283
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/OkHttpClient;->proxyAuthenticator()Lcom/maya/open/http/okhttp3/Authenticator;

    move-result-object v5

    invoke-interface {v5, v2, p1}, Lcom/maya/open/http/okhttp3/Authenticator;->authenticate(Lcom/maya/open/http/okhttp3/Route;Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Request;

    move-result-object v5

    return-object v5

    .line 281
    :cond_3
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 286
    .end local v1    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_2
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->authenticator()Lcom/maya/open/http/okhttp3/Authenticator;

    move-result-object v1

    invoke-interface {v1, v2, p1}, Lcom/maya/open/http/okhttp3/Authenticator;->authenticate(Lcom/maya/open/http/okhttp3/Route;Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Request;

    move-result-object v1

    return-object v1

    .line 292
    :sswitch_3
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "HEAD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 293
    return-object v1

    .line 301
    :cond_4
    :sswitch_4
    iget-object v5, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/OkHttpClient;->followRedirects()Z

    move-result v5

    if-nez v5, :cond_5

    return-object v1

    .line 303
    :cond_5
    const-string v5, "Location"

    invoke-virtual {p1, v5}, Lcom/maya/open/http/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, "location":Ljava/lang/String;
    if-nez v5, :cond_6

    return-object v1

    .line 305
    :cond_6
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/maya/open/http/okhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v6

    .line 308
    .local v6, "url":Lcom/maya/open/http/okhttp3/HttpUrl;
    if-nez v6, :cond_7

    return-object v1

    .line 311
    :cond_7
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v8

    invoke-virtual {v8}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 312
    .local v7, "sameScheme":Z
    if-nez v7, :cond_8

    iget-object v8, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v8}, Lcom/maya/open/http/okhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v8

    if-nez v8, :cond_8

    return-object v1

    .line 315
    :cond_8
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v8

    invoke-virtual {v8}, Lcom/maya/open/http/okhttp3/Request;->newBuilder()Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v8

    .line 316
    .local v8, "requestBuilder":Lcom/maya/open/http/okhttp3/Request$Builder;
    invoke-static {v4}, Lcom/maya/open/http/okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 317
    invoke-static {v4}, Lcom/maya/open/http/okhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v9

    .line 318
    .local v9, "maintainBody":Z
    invoke-static {v4}, Lcom/maya/open/http/okhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 319
    const-string v10, "GET"

    invoke-virtual {v8, v10, v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->method(Ljava/lang/String;Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;

    goto :goto_2

    .line 321
    :cond_9
    if-eqz v9, :cond_a

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v1

    nop

    .line 322
    .local v1, "requestBody":Lcom/maya/open/http/okhttp3/RequestBody;
    :cond_a
    invoke-virtual {v8, v4, v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->method(Ljava/lang/String;Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 324
    .end local v1    # "requestBody":Lcom/maya/open/http/okhttp3/RequestBody;
    :goto_2
    if-nez v9, :cond_b

    .line 325
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v8, v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 326
    const-string v1, "Content-Length"

    invoke-virtual {v8, v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 327
    const-string v1, "Content-Type"

    invoke-virtual {v8, v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 334
    .end local v9    # "maintainBody":Z
    :cond_b
    invoke-direct {p0, p1, v6}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lcom/maya/open/http/okhttp3/Response;Lcom/maya/open/http/okhttp3/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 335
    const-string v1, "Authorization"

    invoke-virtual {v8, v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/maya/open/http/okhttp3/Request$Builder;

    .line 338
    :cond_c
    invoke-virtual {v8, v6}, Lcom/maya/open/http/okhttp3/Request$Builder;->url(Lcom/maya/open/http/okhttp3/HttpUrl;)Lcom/maya/open/http/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/Request$Builder;->build()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v1

    return-object v1

    .line 267
    .end local v0    # "connection":Lcom/maya/open/http/okhttp3/Connection;
    .end local v2    # "route":Lcom/maya/open/http/okhttp3/Route;
    .end local v3    # "responseCode":I
    .end local v4    # "method":Ljava/lang/String;
    .end local v5    # "location":Ljava/lang/String;
    .end local v6    # "url":Lcom/maya/open/http/okhttp3/HttpUrl;
    .end local v7    # "sameScheme":Z
    .end local v8    # "requestBuilder":Lcom/maya/open/http/okhttp3/Request$Builder;
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

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
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestSendStarted"    # Z

    .line 231
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 232
    return v1

    .line 237
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 238
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 243
    :cond_2
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_3

    .line 246
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_3

    .line 247
    return v1

    .line 250
    :cond_3
    instance-of v0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_4

    .line 252
    return v1

    .line 258
    :cond_4
    return v2
.end method

.method private recover(Ljava/io/IOException;ZLcom/maya/open/http/okhttp3/Request;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestSendStarted"    # Z
    .param p3, "userRequest"    # Lcom/maya/open/http/okhttp3/Request;

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

    .line 217
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v0

    instance-of v0, v0, Lcom/maya/open/http/okhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v0, :cond_1

    return v1

    .line 220
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 226
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private sameConnection(Lcom/maya/open/http/okhttp3/Response;Lcom/maya/open/http/okhttp3/HttpUrl;)Z
    .locals 3
    .param p1, "response"    # Lcom/maya/open/http/okhttp3/Response;
    .param p2, "followUp"    # Lcom/maya/open/http/okhttp3/HttpUrl;

    .line 360
    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/Response;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    .line 361
    .local v0, "url":Lcom/maya/open/http/okhttp3/HttpUrl;
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/HttpUrl;->port()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 363
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/maya/open/http/okhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 361
    :goto_0
    return v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    .line 89
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    .line 90
    .local v0, "streamAllocation":Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->cancel()V

    .line 91
    :cond_0
    return-void
.end method

.method public intercept(Lcom/maya/open/http/okhttp3/Interceptor$Chain;)Lcom/maya/open/http/okhttp3/Response;
    .locals 11
    .param p1, "chain"    # Lcom/maya/open/http/okhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    .line 108
    .local v0, "request":Lcom/maya/open/http/okhttp3/Request;
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

    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "followUpCount":I
    const/4 v2, 0x0

    move v3, v1

    move-object v1, v0

    move-object v0, v2

    .line 114
    .local v0, "priorResponse":Lcom/maya/open/http/okhttp3/Response;
    .local v1, "request":Lcom/maya/open/http/okhttp3/Request;
    .local v3, "followUpCount":I
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-nez v4, :cond_d

    .line 119
    const/4 v4, 0x0

    .line 120
    .local v4, "response":Lcom/maya/open/http/okhttp3/Response;
    const/4 v5, 0x1

    move v6, v5

    .line 122
    .local v6, "releaseConnection":Z
    const/4 v7, 0x0

    :try_start_0
    move-object v8, p1

    check-cast v8, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;

    iget-object v9, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v8, v1, v9, v2, v2}, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;->proceed(Lcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;Lcom/maya/open/http/okhttp3/Connection;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v8
    :try_end_0
    .catch Lcom/maya/open/http/okhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v8

    .line 123
    const/4 v5, 0x0

    .line 139
    .end local v6    # "releaseConnection":Z
    .local v5, "releaseConnection":Z
    if-eqz v5, :cond_1

    .line 140
    iget-object v6, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v6, v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 141
    iget-object v6, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 146
    :cond_1
    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v6

    .line 148
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Response;->newBuilder()Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v7

    .line 149
    invoke-virtual {v7, v2}, Lcom/maya/open/http/okhttp3/Response$Builder;->body(Lcom/maya/open/http/okhttp3/ResponseBody;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v7

    .line 150
    invoke-virtual {v7}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v7

    .line 148
    invoke-virtual {v6, v7}, Lcom/maya/open/http/okhttp3/Response$Builder;->priorResponse(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Response$Builder;

    move-result-object v6

    .line 151
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Response$Builder;->build()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v4

    .line 154
    :cond_2
    invoke-direct {p0, v4}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okhttp3/Request;

    move-result-object v6

    .line 156
    .local v6, "followUp":Lcom/maya/open/http/okhttp3/Request;
    if-nez v6, :cond_4

    .line 157
    iget-boolean v2, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    if-nez v2, :cond_3

    .line 158
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 160
    :cond_3
    return-object v4

    .line 163
    :cond_4
    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/Response;->body()Lcom/maya/open/http/okhttp3/ResponseBody;

    move-result-object v7

    invoke-static {v7}, Lcom/maya/open/http/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 165
    add-int/lit8 v3, v3, 0x1

    const/16 v7, 0x14

    if-gt v3, v7, :cond_8

    .line 170
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Request;->body()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v7

    instance-of v7, v7, Lcom/maya/open/http/okhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v7, :cond_7

    .line 175
    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lcom/maya/open/http/okhttp3/Response;Lcom/maya/open/http/okhttp3/HttpUrl;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 176
    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v7}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 177
    new-instance v7, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    iget-object v8, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 178
    invoke-virtual {v8}, Lcom/maya/open/http/okhttp3/OkHttpClient;->connectionPool()Lcom/maya/open/http/okhttp3/ConnectionPool;

    move-result-object v8

    invoke-virtual {v6}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lcom/maya/open/http/okhttp3/HttpUrl;)Lcom/maya/open/http/okhttp3/Address;

    move-result-object v9

    iget-object v10, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v7, v8, v9, v10}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;-><init>(Lcom/maya/open/http/okhttp3/ConnectionPool;Lcom/maya/open/http/okhttp3/Address;Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    goto :goto_1

    .line 179
    :cond_5
    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v7}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->codec()Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;

    move-result-object v7

    if-nez v7, :cond_6

    .line 184
    :goto_1
    move-object v1, v6

    .line 185
    move-object v0, v4

    .line 186
    .end local v4    # "response":Lcom/maya/open/http/okhttp3/Response;
    .end local v5    # "releaseConnection":Z
    .end local v6    # "followUp":Lcom/maya/open/http/okhttp3/Request;
    goto/16 :goto_0

    .line 180
    .restart local v4    # "response":Lcom/maya/open/http/okhttp3/Response;
    .restart local v5    # "releaseConnection":Z
    .restart local v6    # "followUp":Lcom/maya/open/http/okhttp3/Request;
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Closing the body of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_7
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 172
    new-instance v2, Ljava/net/HttpRetryException;

    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/Response;->code()I

    move-result v7

    const-string v8, "Cannot retry streamed HTTP body"

    invoke-direct {v2, v8, v7}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 166
    :cond_8
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 167
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too many follow-up requests: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    .end local v5    # "releaseConnection":Z
    .local v6, "releaseConnection":Z
    :catchall_0
    move-exception v5

    goto :goto_4

    .line 131
    :catch_0
    move-exception v8

    .line 133
    .local v8, "e":Ljava/io/IOException;
    :try_start_1
    instance-of v9, v8, Lcom/maya/open/http/okhttp3/internal/http2/ConnectionShutdownException;

    if-nez v9, :cond_9

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    .line 134
    .local v5, "requestSendStarted":Z
    :goto_2
    invoke-direct {p0, v8, v5, v1}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLcom/maya/open/http/okhttp3/Request;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 135
    const/4 v6, 0x0

    .line 139
    if-eqz v6, :cond_0

    goto :goto_3

    .line 134
    :cond_a
    throw v8

    .line 124
    .end local v5    # "requestSendStarted":Z
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 126
    .local v5, "e":Lcom/maya/open/http/okhttp3/internal/connection/RouteException;
    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v8

    invoke-direct {p0, v8, v7, v1}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLcom/maya/open/http/okhttp3/Request;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_b

    .line 129
    const/4 v6, 0x0

    .line 139
    if-eqz v6, :cond_0

    .line 140
    :goto_3
    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v7, v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 141
    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v7}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->release()V

    goto/16 :goto_0

    .line 127
    :cond_b
    :try_start_2
    invoke-virtual {v5}, Lcom/maya/open/http/okhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v7

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    .end local v5    # "e":Lcom/maya/open/http/okhttp3/internal/connection/RouteException;
    :goto_4
    if-eqz v6, :cond_c

    .line 140
    iget-object v7, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v7, v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 141
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 143
    :cond_c
    throw v5

    .line 115
    .end local v4    # "response":Lcom/maya/open/http/okhttp3/Response;
    .end local v6    # "releaseConnection":Z
    :cond_d
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;->release()V

    .line 116
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isCanceled()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    return v0
.end method

.method public setCallStackTrace(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callStackTrace"    # Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public streamAllocation()Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method
