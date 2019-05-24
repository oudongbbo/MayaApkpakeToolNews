.class public Lcom/maya/open/http/okgo/OkGo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okgo/OkGo$OkGoHolder;
    }
.end annotation


# static fields
.field public static final DEFAULT_MILLISECONDS:I = 0xea60

.field public static REFRESH_TIME:I = 0x64

.field private static context:Landroid/app/Application;


# instance fields
.field private cookieJar:Lcom/maya/open/http/okgo/cookie/CookieJarImpl;

.field private mCacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

.field private mCacheTime:J

.field private mCommonHeaders:Lcom/maya/open/http/okgo/model/HttpHeaders;

.field private mCommonParams:Lcom/maya/open/http/okgo/model/HttpParams;

.field private mDelivery:Landroid/os/Handler;

.field private mRetryCount:I

.field private okHttpClient:Lcom/maya/open/http/okhttp3/OkHttpClient;

.field private okHttpClientBuilder:Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 54
    iput v0, p0, Lcom/maya/open/http/okgo/OkGo;->mRetryCount:I

    const-wide/16 v0, -0x1

    .line 55
    iput-wide v0, p0, Lcom/maya/open/http/okgo/OkGo;->mCacheTime:J

    .line 60
    new-instance v0, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClientBuilder:Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    .line 61
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClientBuilder:Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    sget-object v1, Lcom/maya/open/http/okgo/https/HttpsUtils;->UnSafeHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    .line 62
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClientBuilder:Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3, v1}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    .line 63
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClientBuilder:Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    .line 64
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClientBuilder:Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->mDelivery:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/maya/open/http/okgo/OkGo$1;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/maya/open/http/okgo/OkGo;-><init>()V

    return-void
.end method

.method public static delete(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/DeleteRequest;
    .locals 1

    .line 123
    new-instance v0, Lcom/maya/open/http/okgo/request/DeleteRequest;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okgo/request/DeleteRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/GetRequest;
    .locals 1

    .line 103
    new-instance v0, Lcom/maya/open/http/okgo/request/GetRequest;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okgo/request/GetRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .line 83
    sget-object v0, Lcom/maya/open/http/okgo/OkGo;->context:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/maya/open/http/okgo/OkGo;->context:Landroid/app/Application;

    return-object v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u8bf7\u5148\u5728\u5168\u5c40Application\u4e2d\u8c03\u7528 OkGo.init() \u521d\u59cb\u5316\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/maya/open/http/okgo/OkGo;
    .locals 1

    .line 69
    invoke-static {}, Lcom/maya/open/http/okgo/OkGo$OkGoHolder;->access$000()Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    return-object v0
.end method

.method public static head(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/HeadRequest;
    .locals 1

    .line 118
    new-instance v0, Lcom/maya/open/http/okgo/request/HeadRequest;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okgo/request/HeadRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 0

    .line 78
    sput-object p0, Lcom/maya/open/http/okgo/OkGo;->context:Landroid/app/Application;

    return-void
.end method

.method public static options(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/OptionsRequest;
    .locals 1

    .line 128
    new-instance v0, Lcom/maya/open/http/okgo/request/OptionsRequest;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okgo/request/OptionsRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/PostRequest;
    .locals 1

    .line 108
    new-instance v0, Lcom/maya/open/http/okgo/request/PostRequest;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okgo/request/PostRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/PutRequest;
    .locals 1

    .line 113
    new-instance v0, Lcom/maya/open/http/okgo/request/PutRequest;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okgo/request/PutRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addCommonHeaders(Lcom/maya/open/http/okgo/model/HttpHeaders;)Lcom/maya/open/http/okgo/OkGo;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->mCommonHeaders:Lcom/maya/open/http/okgo/model/HttpHeaders;

    if-nez v0, :cond_0

    new-instance v0, Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-direct {v0}, Lcom/maya/open/http/okgo/model/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->mCommonHeaders:Lcom/maya/open/http/okgo/model/HttpHeaders;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->mCommonHeaders:Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okgo/model/HttpHeaders;->put(Lcom/maya/open/http/okgo/model/HttpHeaders;)V

    return-object p0
.end method

.method public addCommonParams(Lcom/maya/open/http/okgo/model/HttpParams;)Lcom/maya/open/http/okgo/OkGo;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->mCommonParams:Lcom/maya/open/http/okgo/model/HttpParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/maya/open/http/okgo/model/HttpParams;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->mCommonParams:Lcom/maya/open/http/okgo/model/HttpParams;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->mCommonParams:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Lcom/maya/open/http/okgo/model/HttpParams;)V

    return-object p0
.end method

.method public addInterceptor(Lcom/maya/open/http/okhttp3/Interceptor;)Lcom/maya/open/http/okgo/OkGo;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClientBuilder:Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->addInterceptor(Lcom/maya/open/http/okhttp3/Interceptor;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public cancelAll()V
    .locals 2

    .line 308
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/OkGo;->getOkHttpClient()Lcom/maya/open/http/okhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient;->dispatcher()Lcom/maya/open/http/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okhttp3/Call;

    .line 309
    invoke-interface {v1}, Lcom/maya/open/http/okhttp3/Call;->cancel()V

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/OkGo;->getOkHttpClient()Lcom/maya/open/http/okhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient;->dispatcher()Lcom/maya/open/http/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okhttp3/Call;

    .line 312
    invoke-interface {v1}, Lcom/maya/open/http/okhttp3/Call;->cancel()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public cancelTag(Ljava/lang/Object;)V
    .locals 3

    .line 294
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/OkGo;->getOkHttpClient()Lcom/maya/open/http/okhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient;->dispatcher()Lcom/maya/open/http/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okhttp3/Call;

    .line 295
    invoke-interface {v1}, Lcom/maya/open/http/okhttp3/Call;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-interface {v1}, Lcom/maya/open/http/okhttp3/Call;->cancel()V

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/OkGo;->getOkHttpClient()Lcom/maya/open/http/okhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient;->dispatcher()Lcom/maya/open/http/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okhttp3/Call;

    .line 300
    invoke-interface {v1}, Lcom/maya/open/http/okhttp3/Call;->request()Lcom/maya/open/http/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-interface {v1}, Lcom/maya/open/http/okhttp3/Call;->cancel()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public debug(Ljava/lang/String;)Lcom/maya/open/http/okgo/OkGo;
    .locals 2

    .line 133
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/maya/open/http/okgo/OkGo;->debug(Ljava/lang/String;Ljava/util/logging/Level;Z)Lcom/maya/open/http/okgo/OkGo;

    return-object p0
.end method

.method public debug(Ljava/lang/String;Ljava/util/logging/Level;Z)Lcom/maya/open/http/okgo/OkGo;
    .locals 1

    .line 142
    new-instance v0, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;

    invoke-direct {v0, p1}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    .line 143
    sget-object p1, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->setPrintLevel(Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor$Level;)V

    .line 144
    invoke-virtual {v0, p2}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->setColorLevel(Ljava/util/logging/Level;)V

    .line 145
    invoke-virtual {v0, p3}, Lcom/maya/open/http/okgo/interceptor/HttpLoggingInterceptor;->setDebugMode(Z)V

    .line 146
    iget-object p1, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClientBuilder:Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->addInterceptor(Lcom/maya/open/http/okhttp3/Interceptor;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    .line 147
    invoke-static {p3}, Lcom/maya/open/http/okgo/utils/OkLogger;->debug(Z)V

    return-object p0
.end method

.method public getCacheMode()Lcom/maya/open/http/okgo/cache/CacheMode;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->mCacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 259
    iget-wide v0, p0, Lcom/maya/open/http/okgo/OkGo;->mCacheTime:J

    return-wide v0
.end method

.method public getCommonHeaders()Lcom/maya/open/http/okgo/model/HttpHeaders;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->mCommonHeaders:Lcom/maya/open/http/okgo/model/HttpHeaders;

    return-object v0
.end method

.method public getCommonParams()Lcom/maya/open/http/okgo/model/HttpParams;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->mCommonParams:Lcom/maya/open/http/okgo/model/HttpParams;

    return-object v0
.end method

.method public getCookieJar()Lcom/maya/open/http/okgo/cookie/CookieJarImpl;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->cookieJar:Lcom/maya/open/http/okgo/cookie/CookieJarImpl;

    return-object v0
.end method

.method public getDelivery()Landroid/os/Handler;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->mDelivery:Landroid/os/Handler;

    return-object v0
.end method

.method public getOkHttpClient()Lcom/maya/open/http/okhttp3/OkHttpClient;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClient:Lcom/maya/open/http/okhttp3/OkHttpClient;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClientBuilder:Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->build()Lcom/maya/open/http/okhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClient:Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClient:Lcom/maya/open/http/okhttp3/OkHttpClient;

    return-object v0
.end method

.method public getOkHttpClientBuilder()Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClientBuilder:Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/maya/open/http/okgo/OkGo;->mRetryCount:I

    return v0
.end method

.method public setCacheMode(Lcom/maya/open/http/okgo/cache/CacheMode;)Lcom/maya/open/http/okgo/OkGo;
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/maya/open/http/okgo/OkGo;->mCacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    return-object p0
.end method

.method public setCacheTime(J)Lcom/maya/open/http/okgo/OkGo;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    .line 253
    :cond_0
    iput-wide p1, p0, Lcom/maya/open/http/okgo/OkGo;->mCacheTime:J

    return-object p0
.end method

.method public setCertificates(Ljava/io/InputStream;Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;)Lcom/maya/open/http/okgo/OkGo;
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-static {p3, p1, p2, v0}, Lcom/maya/open/http/okgo/https/HttpsUtils;->getSslSocketFactory(Ljavax/net/ssl/X509TrustManager;Ljava/io/InputStream;Ljava/lang/String;[Ljava/io/InputStream;)Lcom/maya/open/http/okgo/https/HttpsUtils$SSLParams;

    move-result-object p1

    .line 193
    iget-object p2, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClientBuilder:Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    iget-object p3, p1, Lcom/maya/open/http/okgo/https/HttpsUtils$SSLParams;->sSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object p1, p1, Lcom/maya/open/http/okgo/https/HttpsUtils$SSLParams;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {p2, p3, p1}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public varargs setCertificates(Ljava/io/InputStream;Ljava/lang/String;[Ljava/io/InputStream;)Lcom/maya/open/http/okgo/OkGo;
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-static {v0, p1, p2, p3}, Lcom/maya/open/http/okgo/https/HttpsUtils;->getSslSocketFactory(Ljavax/net/ssl/X509TrustManager;Ljava/io/InputStream;Ljava/lang/String;[Ljava/io/InputStream;)Lcom/maya/open/http/okgo/https/HttpsUtils$SSLParams;

    move-result-object p1

    .line 182
    iget-object p2, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClientBuilder:Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    iget-object p3, p1, Lcom/maya/open/http/okgo/https/HttpsUtils$SSLParams;->sSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object p1, p1, Lcom/maya/open/http/okgo/https/HttpsUtils$SSLParams;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {p2, p3, p1}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public setCertificates(Ljavax/net/ssl/X509TrustManager;)Lcom/maya/open/http/okgo/OkGo;
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0, v0, p1}, Lcom/maya/open/http/okgo/OkGo;->setCertificates(Ljava/io/InputStream;Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;)Lcom/maya/open/http/okgo/OkGo;

    return-object p0
.end method

.method public varargs setCertificates([Ljava/io/InputStream;)Lcom/maya/open/http/okgo/OkGo;
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, v0, v0, p1}, Lcom/maya/open/http/okgo/OkGo;->setCertificates(Ljava/io/InputStream;Ljava/lang/String;[Ljava/io/InputStream;)Lcom/maya/open/http/okgo/OkGo;

    return-object p0
.end method

.method public setConnectTimeout(J)Lcom/maya/open/http/okgo/OkGo;
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClientBuilder:Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public setCookieStore(Lcom/maya/open/http/okgo/cookie/store/CookieStore;)Lcom/maya/open/http/okgo/OkGo;
    .locals 1

    .line 199
    new-instance v0, Lcom/maya/open/http/okgo/cookie/CookieJarImpl;

    invoke-direct {v0, p1}, Lcom/maya/open/http/okgo/cookie/CookieJarImpl;-><init>(Lcom/maya/open/http/okgo/cookie/store/CookieStore;)V

    iput-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->cookieJar:Lcom/maya/open/http/okgo/cookie/CookieJarImpl;

    .line 200
    iget-object p1, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClientBuilder:Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->cookieJar:Lcom/maya/open/http/okgo/cookie/CookieJarImpl;

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->cookieJar(Lcom/maya/open/http/okhttp3/CookieJar;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/maya/open/http/okgo/OkGo;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClientBuilder:Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public setReadTimeOut(J)Lcom/maya/open/http/okgo/OkGo;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClientBuilder:Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    return-object p0
.end method

.method public setRetryCount(I)Lcom/maya/open/http/okgo/OkGo;
    .locals 1

    if-ltz p1, :cond_0

    .line 230
    iput p1, p0, Lcom/maya/open/http/okgo/OkGo;->mRetryCount:I

    return-object p0

    .line 229
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "retryCount must > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWriteTimeOut(J)Lcom/maya/open/http/okgo/OkGo;
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/maya/open/http/okgo/OkGo;->okHttpClientBuilder:Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    return-object p0
.end method
