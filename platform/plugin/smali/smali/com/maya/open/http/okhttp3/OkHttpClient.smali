.class public Lcom/maya/open/http/okhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okhttp3/Call$Factory;
.implements Lcom/maya/open/http/okhttp3/WebSocket$Factory;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final authenticator:Lcom/maya/open/http/okhttp3/Authenticator;

.field final cache:Lcom/maya/open/http/okhttp3/Cache;

.field final certificateChainCleaner:Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;

.field final certificatePinner:Lcom/maya/open/http/okhttp3/CertificatePinner;

.field final connectTimeout:I

.field final connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final cookieJar:Lcom/maya/open/http/okhttp3/CookieJar;

.field final dispatcher:Lcom/maya/open/http/okhttp3/Dispatcher;

.field final dns:Lcom/maya/open/http/okhttp3/Dns;

.field final followRedirects:Z

.field final followSslRedirects:Z

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final internalCache:Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final pingInterval:I

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;

.field final proxyAuthenticator:Lcom/maya/open/http/okhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final readTimeout:I

.field final retryOnConnectionFailure:Z

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    .line 124
    new-array v1, v0, [Lcom/maya/open/http/okhttp3/Protocol;

    sget-object v2, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_2:Lcom/maya/open/http/okhttp3/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/maya/open/http/okhttp3/Protocol;->HTTP_1_1:Lcom/maya/open/http/okhttp3/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/maya/open/http/okhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    .line 127
    new-array v0, v0, [Lcom/maya/open/http/okhttp3/ConnectionSpec;

    sget-object v1, Lcom/maya/open/http/okhttp3/ConnectionSpec;->MODERN_TLS:Lcom/maya/open/http/okhttp3/ConnectionSpec;

    aput-object v1, v0, v3

    sget-object v1, Lcom/maya/open/http/okhttp3/ConnectionSpec;->CLEARTEXT:Lcom/maya/open/http/okhttp3/ConnectionSpec;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 131
    new-instance v0, Lcom/maya/open/http/okhttp3/OkHttpClient$1;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient$1;-><init>()V

    sput-object v0, Lcom/maya/open/http/okhttp3/internal/Internal;->instance:Lcom/maya/open/http/okhttp3/internal/Internal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 219
    new-instance v0, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/maya/open/http/okhttp3/OkHttpClient;-><init>(Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;)V

    return-void
.end method

.method constructor <init>(Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;)V
    .locals 4

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->dispatcher:Lcom/maya/open/http/okhttp3/Dispatcher;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->dispatcher:Lcom/maya/open/http/okhttp3/Dispatcher;

    .line 224
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 225
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    .line 226
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 227
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    .line 228
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 229
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 230
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->cookieJar:Lcom/maya/open/http/okhttp3/CookieJar;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->cookieJar:Lcom/maya/open/http/okhttp3/CookieJar;

    .line 231
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->cache:Lcom/maya/open/http/okhttp3/Cache;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->cache:Lcom/maya/open/http/okhttp3/Cache;

    .line 232
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->internalCache:Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->internalCache:Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

    .line 233
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 236
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/maya/open/http/okhttp3/ConnectionSpec;

    if-nez v2, :cond_1

    .line 237
    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/ConnectionSpec;->isTls()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 240
    :cond_2
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 244
    :cond_3
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/OkHttpClient;->systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 245
    invoke-direct {p0, v0}, Lcom/maya/open/http/okhttp3/OkHttpClient;->systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 246
    invoke-static {v0}, Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->certificateChainCleaner:Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    goto :goto_2

    .line 241
    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 242
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->certificateChainCleaner:Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    .line 249
    :goto_2
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 250
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->certificatePinner:Lcom/maya/open/http/okhttp3/CertificatePinner;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->certificateChainCleaner:Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/CertificatePinner;->withCertificateChainCleaner(Lcom/maya/open/http/okhttp3/internal/tls/CertificateChainCleaner;)Lcom/maya/open/http/okhttp3/CertificatePinner;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->certificatePinner:Lcom/maya/open/http/okhttp3/CertificatePinner;

    .line 252
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lcom/maya/open/http/okhttp3/Authenticator;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->proxyAuthenticator:Lcom/maya/open/http/okhttp3/Authenticator;

    .line 253
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->authenticator:Lcom/maya/open/http/okhttp3/Authenticator;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->authenticator:Lcom/maya/open/http/okhttp3/Authenticator;

    .line 254
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    .line 255
    iget-object v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->dns:Lcom/maya/open/http/okhttp3/Dns;

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->dns:Lcom/maya/open/http/okhttp3/Dns;

    .line 256
    iget-boolean v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->followSslRedirects:Z

    .line 257
    iget-boolean v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->followRedirects:Z

    .line 258
    iget-boolean v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    .line 259
    iget v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    iput v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->connectTimeout:I

    .line 260
    iget v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->readTimeout:I

    iput v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->readTimeout:I

    .line 261
    iget v0, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    iput v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->writeTimeout:I

    .line 262
    iget p1, p1, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->pingInterval:I

    iput p1, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->pingInterval:I

    return-void
.end method

.method private systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    :try_start_0
    const-string v0, "TLS"

    .line 283
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    .line 284
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 285
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 287
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 268
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 269
    check-cast v1, Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 270
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 271
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_0

    .line 275
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    .line 272
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public authenticator()Lcom/maya/open/http/okhttp3/Authenticator;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->authenticator:Lcom/maya/open/http/okhttp3/Authenticator;

    return-object v0
.end method

.method public cache()Lcom/maya/open/http/okhttp3/Cache;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->cache:Lcom/maya/open/http/okhttp3/Cache;

    return-object v0
.end method

.method public certificatePinner()Lcom/maya/open/http/okhttp3/CertificatePinner;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->certificatePinner:Lcom/maya/open/http/okhttp3/CertificatePinner;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->connectTimeout:I

    return v0
.end method

.method public connectionPool()Lcom/maya/open/http/okhttp3/ConnectionPool;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->connectionPool:Lcom/maya/open/http/okhttp3/ConnectionPool;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public cookieJar()Lcom/maya/open/http/okhttp3/CookieJar;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->cookieJar:Lcom/maya/open/http/okhttp3/CookieJar;

    return-object v0
.end method

.method public dispatcher()Lcom/maya/open/http/okhttp3/Dispatcher;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->dispatcher:Lcom/maya/open/http/okhttp3/Dispatcher;

    return-object v0
.end method

.method public dns()Lcom/maya/open/http/okhttp3/Dns;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->dns:Lcom/maya/open/http/okhttp3/Dns;

    return-object v0
.end method

.method public followRedirects()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->followRedirects:Z

    return v0
.end method

.method public followSslRedirects()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->followSslRedirects:Z

    return v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method internalCache()Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->cache:Lcom/maya/open/http/okhttp3/Cache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->cache:Lcom/maya/open/http/okhttp3/Cache;

    iget-object v0, v0, Lcom/maya/open/http/okhttp3/Cache;->internalCache:Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->internalCache:Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

    :goto_0
    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public newBuilder()Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;
    .locals 1

    .line 422
    new-instance v0, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;-><init>(Lcom/maya/open/http/okhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public newCall(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Call;
    .locals 2

    .line 409
    new-instance v0, Lcom/maya/open/http/okhttp3/RealCall;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/maya/open/http/okhttp3/RealCall;-><init>(Lcom/maya/open/http/okhttp3/OkHttpClient;Lcom/maya/open/http/okhttp3/Request;Z)V

    return-object v0
.end method

.method public newWebSocket(Lcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/WebSocketListener;)Lcom/maya/open/http/okhttp3/WebSocket;
    .locals 2

    .line 416
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;-><init>(Lcom/maya/open/http/okhttp3/Request;Lcom/maya/open/http/okhttp3/WebSocketListener;Ljava/util/Random;)V

    .line 417
    invoke-virtual {v0, p0}, Lcom/maya/open/http/okhttp3/internal/ws/RealWebSocket;->connect(Lcom/maya/open/http/okhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public pingIntervalMillis()I
    .locals 1

    .line 308
    iget v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->pingInterval:I

    return v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lcom/maya/open/http/okhttp3/Authenticator;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->proxyAuthenticator:Lcom/maya/open/http/okhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public readTimeoutMillis()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->readTimeout:I

    return v0
.end method

.method public retryOnConnectionFailure()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    return v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public writeTimeoutMillis()I
    .locals 1

    .line 303
    iget v0, p0, Lcom/maya/open/http/okhttp3/OkHttpClient;->writeTimeout:I

    return v0
.end method
