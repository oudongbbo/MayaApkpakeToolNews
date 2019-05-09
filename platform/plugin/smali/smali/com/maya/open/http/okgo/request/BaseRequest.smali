.class public abstract Lcom/maya/open/http/okgo/request/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/maya/open/http/okgo/request/BaseRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected baseUrl:Ljava/lang/String;

.field protected cacheKey:Ljava/lang/String;

.field protected cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

.field protected cacheTime:J

.field protected connectTimeout:J

.field protected headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

.field protected interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/maya/open/http/okgo/callback/AbsCallback;

.field private mConverter:Lcom/maya/open/http/okgo/convert/Converter;

.field private mRequest:Lcom/maya/open/http/okhttp3/Request;

.field protected method:Ljava/lang/String;

.field protected params:Lcom/maya/open/http/okgo/model/HttpParams;

.field protected readTimeOut:J

.field protected retryCount:I

.field protected tag:Ljava/lang/Object;

.field protected url:Ljava/lang/String;

.field protected writeTimeOut:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 61
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheTime:J

    .line 53
    new-instance v0, Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/maya/open/http/okgo/model/HttpParams;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    .line 54
    new-instance v0, Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-direct {v0}, Lcom/maya/open/http/okgo/model/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->interceptors:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->url:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->baseUrl:Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/maya/open/http/okgo/OkGo;->getInstance()Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    .line 66
    .local v0, "go":Lcom/maya/open/http/okgo/OkGo;
    invoke-static {}, Lcom/maya/open/http/okgo/model/HttpHeaders;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "acceptLanguage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Accept-Language"

    invoke-virtual {p0, v2, v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 69
    :cond_0
    invoke-static {}, Lcom/maya/open/http/okgo/model/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "userAgent":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "User-Agent"

    invoke-virtual {p0, v3, v2}, Lcom/maya/open/http/okgo/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 72
    :cond_1
    invoke-virtual {v0}, Lcom/maya/open/http/okgo/OkGo;->getCommonParams()Lcom/maya/open/http/okgo/model/HttpParams;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/OkGo;->getCommonParams()Lcom/maya/open/http/okgo/model/HttpParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Lcom/maya/open/http/okgo/model/HttpParams;)V

    .line 73
    :cond_2
    invoke-virtual {v0}, Lcom/maya/open/http/okgo/OkGo;->getCommonHeaders()Lcom/maya/open/http/okgo/model/HttpHeaders;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/OkGo;->getCommonHeaders()Lcom/maya/open/http/okgo/model/HttpHeaders;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/maya/open/http/okgo/model/HttpHeaders;->put(Lcom/maya/open/http/okgo/model/HttpHeaders;)V

    .line 75
    :cond_3
    invoke-virtual {v0}, Lcom/maya/open/http/okgo/OkGo;->getCacheMode()Lcom/maya/open/http/okgo/cache/CacheMode;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/OkGo;->getCacheMode()Lcom/maya/open/http/okgo/cache/CacheMode;

    move-result-object v3

    iput-object v3, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    .line 76
    :cond_4
    invoke-virtual {v0}, Lcom/maya/open/http/okgo/OkGo;->getCacheTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheTime:J

    .line 78
    invoke-virtual {v0}, Lcom/maya/open/http/okgo/OkGo;->getRetryCount()I

    move-result v3

    iput v3, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->retryCount:I

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/maya/open/http/okgo/request/BaseRequest;)Lcom/maya/open/http/okgo/callback/AbsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 40
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mCallback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    return-object v0
.end method


# virtual methods
.method public addInterceptor(Lcom/maya/open/http/okhttp3/Interceptor;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .param p1, "interceptor"    # Lcom/maya/open/http/okhttp3/Interceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/Interceptor;",
            ")TR;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-object p0
.end method

.method public addUrlParams(Ljava/lang/String;Ljava/util/List;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TR;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okgo/model/HttpParams;->putUrlParams(Ljava/lang/String;Ljava/util/List;)V

    .line 212
    return-object p0
.end method

.method public cacheKey(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 0
    .param p1, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheKey:Ljava/lang/String;

    .line 120
    return-object p0
.end method

.method public cacheMode(Lcom/maya/open/http/okgo/cache/CacheMode;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 0
    .param p1, "cacheMode"    # Lcom/maya/open/http/okgo/cache/CacheMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okgo/cache/CacheMode;",
            ")TR;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    .line 114
    return-object p0
.end method

.method public cacheTime(J)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 3
    .param p1, "cacheTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p1, -0x1

    .line 127
    :cond_0
    iput-wide p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheTime:J

    .line 128
    return-object p0
.end method

.method public connTimeOut(J)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 0
    .param p1, "connTimeOut"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iput-wide p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->connectTimeout:J

    .line 108
    return-object p0
.end method

.method public execute()Lcom/maya/open/http/okhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCall()Lcom/maya/open/http/okhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lcom/maya/open/http/okhttp3/Call;->execute()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/maya/open/http/okgo/callback/AbsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/maya/open/http/okgo/callback/AbsCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 387
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    .local p1, "callback":Lcom/maya/open/http/okgo/callback/AbsCallback;, "Lcom/maya/open/http/okgo/callback/AbsCallback<TT;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mCallback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    .line 388
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mConverter:Lcom/maya/open/http/okgo/convert/Converter;

    .line 389
    new-instance v0, Lcom/maya/open/http/okgo/adapter/CacheCall;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okgo/adapter/CacheCall;-><init>(Lcom/maya/open/http/okgo/request/BaseRequest;)V

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okgo/adapter/CacheCall;->execute(Lcom/maya/open/http/okgo/callback/AbsCallback;)V

    .line 390
    return-void
.end method

.method public generateCall(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Call;
    .locals 6
    .param p1, "request"    # Lcom/maya/open/http/okhttp3/Request;

    .line 342
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mRequest:Lcom/maya/open/http/okhttp3/Request;

    .line 343
    iget-wide v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->readTimeOut:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->writeTimeOut:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->connectTimeout:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 344
    invoke-static {}, Lcom/maya/open/http/okgo/OkGo;->getInstance()Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/OkGo;->getOkHttpClient()Lcom/maya/open/http/okhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->newCall(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Call;

    move-result-object v0

    return-object v0

    .line 346
    :cond_0
    invoke-static {}, Lcom/maya/open/http/okgo/OkGo;->getInstance()Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/OkGo;->getOkHttpClient()Lcom/maya/open/http/okhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient;->newBuilder()Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 347
    .local v0, "newClientBuilder":Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;
    iget-wide v4, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->readTimeOut:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    iget-wide v4, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->readTimeOut:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    .line 348
    :cond_1
    iget-wide v4, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->writeTimeOut:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    iget-wide v4, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->writeTimeOut:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    .line 349
    :cond_2
    iget-wide v4, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->connectTimeout:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_3

    iget-wide v1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->connectTimeout:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    .line 350
    :cond_3
    iget-object v1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->interceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 351
    iget-object v1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->interceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/open/http/okhttp3/Interceptor;

    .line 352
    .local v2, "interceptor":Lcom/maya/open/http/okhttp3/Interceptor;
    invoke-virtual {v0, v2}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->addInterceptor(Lcom/maya/open/http/okhttp3/Interceptor;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    .line 353
    .end local v2    # "interceptor":Lcom/maya/open/http/okhttp3/Interceptor;
    goto :goto_0

    .line 355
    :cond_4
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->build()Lcom/maya/open/http/okhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->newCall(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Call;

    move-result-object v1

    return-object v1
.end method

.method public abstract generateRequest(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request;
.end method

.method public abstract generateRequestBody()Lcom/maya/open/http/okhttp3/RequestBody;
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 266
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 282
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheMode()Lcom/maya/open/http/okgo/cache/CacheMode;
    .locals 1

    .line 274
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 290
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-wide v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheTime:J

    return-wide v0
.end method

.method public getCall(Lcom/maya/open/http/okgo/convert/Converter;)Lcom/maya/open/http/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/maya/open/http/okgo/convert/Converter<",
            "TT;>;)",
            "Lcom/maya/open/http/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation

    .line 369
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    .local p1, "converter":Lcom/maya/open/http/okgo/convert/Converter;, "Lcom/maya/open/http/okgo/convert/Converter<TT;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mConverter:Lcom/maya/open/http/okgo/convert/Converter;

    .line 370
    invoke-static {}, Lcom/maya/open/http/okgo/adapter/DefaultCallAdapter;->create()Lcom/maya/open/http/okgo/adapter/DefaultCallAdapter;

    move-result-object v0

    new-instance v1, Lcom/maya/open/http/okgo/adapter/CacheCall;

    invoke-direct {v1, p0}, Lcom/maya/open/http/okgo/adapter/CacheCall;-><init>(Lcom/maya/open/http/okgo/request/BaseRequest;)V

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okgo/adapter/DefaultCallAdapter;->adapt(Lcom/maya/open/http/okgo/adapter/Call;)Lcom/maya/open/http/okgo/adapter/Call;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/maya/open/http/okhttp3/Call;
    .locals 2

    .line 362
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/request/BaseRequest;->generateRequestBody()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v0

    .line 363
    .local v0, "requestBody":Lcom/maya/open/http/okhttp3/RequestBody;
    invoke-virtual {p0, v0}, Lcom/maya/open/http/okgo/request/BaseRequest;->wrapRequestBody(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->generateRequest(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mRequest:Lcom/maya/open/http/okhttp3/Request;

    .line 364
    iget-object v1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mRequest:Lcom/maya/open/http/okhttp3/Request;

    invoke-virtual {p0, v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->generateCall(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Call;

    move-result-object v1

    return-object v1
.end method

.method public getCall(Lcom/maya/open/http/okgo/convert/Converter;Lcom/maya/open/http/okgo/adapter/CallAdapter;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/maya/open/http/okgo/convert/Converter<",
            "TT;>;",
            "Lcom/maya/open/http/okgo/adapter/CallAdapter<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 375
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    .local p1, "converter":Lcom/maya/open/http/okgo/convert/Converter;, "Lcom/maya/open/http/okgo/convert/Converter<TT;>;"
    .local p2, "adapter":Lcom/maya/open/http/okgo/adapter/CallAdapter;, "Lcom/maya/open/http/okgo/adapter/CallAdapter<TE;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mConverter:Lcom/maya/open/http/okgo/convert/Converter;

    .line 376
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCall(Lcom/maya/open/http/okgo/convert/Converter;)Lcom/maya/open/http/okgo/adapter/Call;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/maya/open/http/okgo/adapter/CallAdapter;->adapt(Lcom/maya/open/http/okgo/adapter/Call;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCallback()Lcom/maya/open/http/okgo/callback/AbsCallback;
    .locals 1

    .line 302
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mCallback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    return-object v0
.end method

.method public getConverter()Lcom/maya/open/http/okgo/convert/Converter;
    .locals 1

    .line 306
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mConverter:Lcom/maya/open/http/okgo/convert/Converter;

    return-object v0
.end method

.method public getFileParam(Ljava/lang/String;)Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 248
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    iget-object v0, v0, Lcom/maya/open/http/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 249
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;

    return-object v1

    .line 250
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getHeaders()Lcom/maya/open/http/okgo/model/HttpHeaders;
    .locals 1

    .line 258
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 314
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Lcom/maya/open/http/okgo/model/HttpParams;
    .locals 1

    .line 254
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    return-object v0
.end method

.method public getRequest()Lcom/maya/open/http/okhttp3/Request;
    .locals 1

    .line 298
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mRequest:Lcom/maya/open/http/okhttp3/Request;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 294
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->retryCount:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 270
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 262
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 241
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    iget-object v0, v0, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 242
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 243
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public headers(Lcom/maya/open/http/okgo/model/HttpHeaders;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .param p1, "headers"    # Lcom/maya/open/http/okgo/model/HttpHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okgo/model/HttpHeaders;",
            ")TR;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okgo/model/HttpHeaders;->put(Lcom/maya/open/http/okgo/model/HttpHeaders;)V

    .line 134
    return-object p0
.end method

.method public headers(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-object p0
.end method

.method public params(Lcom/maya/open/http/okgo/model/HttpParams;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .param p1, "params"    # Lcom/maya/open/http/okgo/model/HttpParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okgo/model/HttpParams;",
            ")TR;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Lcom/maya/open/http/okgo/model/HttpParams;)V

    .line 158
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;C[Z)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C
    .param p3, "isReplace"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C[Z)TR;"
        }
    .end annotation

    .line 199
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;C[Z)V

    .line 200
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;D[Z)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D
    .param p4, "isReplace"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D[Z)TR;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;D[Z)V

    .line 188
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;F[Z)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "isReplace"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F[Z)TR;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;F[Z)V

    .line 182
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;I[Z)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "isReplace"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[Z)TR;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;I[Z)V

    .line 176
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;J[Z)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "isReplace"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[Z)TR;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;J[Z)V

    .line 194
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isReplace"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[Z)TR;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 170
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;Z[Z)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "isReplace"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[Z)TR;"
        }
    .end annotation

    .line 205
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Z[Z)V

    .line 206
    return-object p0
.end method

.method public varargs params(Ljava/util/Map;[Z)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .param p2, "isReplace"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[Z)TR;"
        }
    .end annotation

    .line 163
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/util/Map;[Z)V

    .line 164
    return-object p0
.end method

.method public readTimeOut(J)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 0
    .param p1, "readTimeOut"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iput-wide p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->readTimeOut:J

    .line 96
    return-object p0
.end method

.method public removeAllHeaders()Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/model/HttpHeaders;->clear()V

    .line 152
    return-object p0
.end method

.method public removeAllParams()Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 223
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/model/HttpParams;->clear()V

    .line 224
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okgo/model/HttpHeaders;->remove(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public removeParam(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 217
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okgo/model/HttpParams;->remove(Ljava/lang/String;)V

    .line 218
    return-object p0
.end method

.method public setCacheKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheKey"    # Ljava/lang/String;

    .line 286
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheKey:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setCacheMode(Lcom/maya/open/http/okgo/cache/CacheMode;)V
    .locals 0
    .param p1, "cacheMode"    # Lcom/maya/open/http/okgo/cache/CacheMode;

    .line 278
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    .line 279
    return-void
.end method

.method public setCallback(Lcom/maya/open/http/okgo/callback/AbsCallback;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 0
    .param p1, "callback"    # Lcom/maya/open/http/okgo/callback/AbsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okgo/callback/AbsCallback;",
            ")TR;"
        }
    .end annotation

    .line 229
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mCallback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    .line 230
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->tag:Ljava/lang/Object;

    .line 90
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->url:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public wrapRequestBody(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/RequestBody;
    .locals 2
    .param p1, "requestBody"    # Lcom/maya/open/http/okhttp3/RequestBody;

    .line 322
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    new-instance v0, Lcom/maya/open/http/okgo/request/ProgressRequestBody;

    invoke-direct {v0, p1}, Lcom/maya/open/http/okgo/request/ProgressRequestBody;-><init>(Lcom/maya/open/http/okhttp3/RequestBody;)V

    .line 323
    .local v0, "progressRequestBody":Lcom/maya/open/http/okgo/request/ProgressRequestBody;
    new-instance v1, Lcom/maya/open/http/okgo/request/BaseRequest$1;

    invoke-direct {v1, p0}, Lcom/maya/open/http/okgo/request/BaseRequest$1;-><init>(Lcom/maya/open/http/okgo/request/BaseRequest;)V

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okgo/request/ProgressRequestBody;->setListener(Lcom/maya/open/http/okgo/request/ProgressRequestBody$Listener;)V

    .line 334
    return-object v0
.end method

.method public writeTimeOut(J)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 0
    .param p1, "writeTimeOut"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/maya/open/http/okgo/request/BaseRequest;, "Lcom/maya/open/http/okgo/request/BaseRequest<TR;>;"
    iput-wide p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->writeTimeOut:J

    .line 102
    return-object p0
.end method
