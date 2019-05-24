.class public abstract Lcom/maya/open/http/okgo/request/BaseRequest;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 52
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

    move-result-object p1

    .line 66
    invoke-static {}, Lcom/maya/open/http/okgo/model/HttpHeaders;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Accept-Language"

    invoke-virtual {p0, v1, v0}, Lcom/maya/open/http/okgo/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 69
    :cond_0
    invoke-static {}, Lcom/maya/open/http/okgo/model/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "User-Agent"

    invoke-virtual {p0, v1, v0}, Lcom/maya/open/http/okgo/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;

    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/maya/open/http/okgo/OkGo;->getCommonParams()Lcom/maya/open/http/okgo/model/HttpParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {p1}, Lcom/maya/open/http/okgo/OkGo;->getCommonParams()Lcom/maya/open/http/okgo/model/HttpParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Lcom/maya/open/http/okgo/model/HttpParams;)V

    .line 73
    :cond_2
    invoke-virtual {p1}, Lcom/maya/open/http/okgo/OkGo;->getCommonHeaders()Lcom/maya/open/http/okgo/model/HttpHeaders;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-virtual {p1}, Lcom/maya/open/http/okgo/OkGo;->getCommonHeaders()Lcom/maya/open/http/okgo/model/HttpHeaders;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okgo/model/HttpHeaders;->put(Lcom/maya/open/http/okgo/model/HttpHeaders;)V

    .line 75
    :cond_3
    invoke-virtual {p1}, Lcom/maya/open/http/okgo/OkGo;->getCacheMode()Lcom/maya/open/http/okgo/cache/CacheMode;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/maya/open/http/okgo/OkGo;->getCacheMode()Lcom/maya/open/http/okgo/cache/CacheMode;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    .line 76
    :cond_4
    invoke-virtual {p1}, Lcom/maya/open/http/okgo/OkGo;->getCacheTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheTime:J

    .line 78
    invoke-virtual {p1}, Lcom/maya/open/http/okgo/OkGo;->getRetryCount()I

    move-result p1

    iput p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->retryCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/maya/open/http/okgo/request/BaseRequest;)Lcom/maya/open/http/okgo/callback/AbsCallback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mCallback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    return-object p0
.end method


# virtual methods
.method public addInterceptor(Lcom/maya/open/http/okhttp3/Interceptor;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/Interceptor;",
            ")TR;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addUrlParams(Ljava/lang/String;Ljava/util/List;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
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
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okgo/model/HttpParams;->putUrlParams(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public cacheKey(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public cacheMode(Lcom/maya/open/http/okgo/cache/CacheMode;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okgo/cache/CacheMode;",
            ")TR;"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    return-object p0
.end method

.method public cacheTime(J)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    .line 127
    :cond_0
    iput-wide p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheTime:J

    return-object p0
.end method

.method public connTimeOut(J)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .line 107
    iput-wide p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->connectTimeout:J

    return-object p0
.end method

.method public execute()Lcom/maya/open/http/okhttp3/Response;
    .locals 1

    .line 381
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
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mCallback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    .line 388
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mConverter:Lcom/maya/open/http/okgo/convert/Converter;

    .line 389
    new-instance v0, Lcom/maya/open/http/okgo/adapter/CacheCall;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okgo/adapter/CacheCall;-><init>(Lcom/maya/open/http/okgo/request/BaseRequest;)V

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okgo/adapter/CacheCall;->execute(Lcom/maya/open/http/okgo/callback/AbsCallback;)V

    return-void
.end method

.method public generateCall(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Call;
    .locals 6

    .line 342
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

    move-result-object p1

    return-object p1

    .line 346
    :cond_0
    invoke-static {}, Lcom/maya/open/http/okgo/OkGo;->getInstance()Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/OkGo;->getOkHttpClient()Lcom/maya/open/http/okhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient;->newBuilder()Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 347
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
    invoke-virtual {v0, v2}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->addInterceptor(Lcom/maya/open/http/okhttp3/Interceptor;)Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;

    goto :goto_0

    .line 355
    :cond_4
    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient$Builder;->build()Lcom/maya/open/http/okhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->newCall(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method public abstract generateRequest(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request;
.end method

.method public abstract generateRequestBody()Lcom/maya/open/http/okhttp3/RequestBody;
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheMode()Lcom/maya/open/http/okgo/cache/CacheMode;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 290
    iget-wide v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheTime:J

    return-wide v0
.end method

.method public getCall(Lcom/maya/open/http/okgo/convert/Converter;)Lcom/maya/open/http/okgo/adapter/Call;
    .locals 1
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
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mConverter:Lcom/maya/open/http/okgo/convert/Converter;

    .line 370
    invoke-static {}, Lcom/maya/open/http/okgo/adapter/DefaultCallAdapter;->create()Lcom/maya/open/http/okgo/adapter/DefaultCallAdapter;

    move-result-object p1

    new-instance v0, Lcom/maya/open/http/okgo/adapter/CacheCall;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okgo/adapter/CacheCall;-><init>(Lcom/maya/open/http/okgo/request/BaseRequest;)V

    invoke-virtual {p1, v0}, Lcom/maya/open/http/okgo/adapter/DefaultCallAdapter;->adapt(Lcom/maya/open/http/okgo/adapter/Call;)Lcom/maya/open/http/okgo/adapter/Call;

    move-result-object p1

    return-object p1
.end method

.method public getCall()Lcom/maya/open/http/okhttp3/Call;
    .locals 1

    .line 362
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/request/BaseRequest;->generateRequestBody()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v0

    .line 363
    invoke-virtual {p0, v0}, Lcom/maya/open/http/okgo/request/BaseRequest;->wrapRequestBody(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okgo/request/BaseRequest;->generateRequest(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mRequest:Lcom/maya/open/http/okhttp3/Request;

    .line 364
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mRequest:Lcom/maya/open/http/okhttp3/Request;

    invoke-virtual {p0, v0}, Lcom/maya/open/http/okgo/request/BaseRequest;->generateCall(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Call;

    move-result-object v0

    return-object v0
.end method

.method public getCall(Lcom/maya/open/http/okgo/convert/Converter;Lcom/maya/open/http/okgo/adapter/CallAdapter;)Ljava/lang/Object;
    .locals 0
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
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mConverter:Lcom/maya/open/http/okgo/convert/Converter;

    .line 376
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCall(Lcom/maya/open/http/okgo/convert/Converter;)Lcom/maya/open/http/okgo/adapter/Call;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/maya/open/http/okgo/adapter/CallAdapter;->adapt(Lcom/maya/open/http/okgo/adapter/Call;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCallback()Lcom/maya/open/http/okgo/callback/AbsCallback;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mCallback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    return-object v0
.end method

.method public getConverter()Lcom/maya/open/http/okgo/convert/Converter;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mConverter:Lcom/maya/open/http/okgo/convert/Converter;

    return-object v0
.end method

.method public getFileParam(Ljava/lang/String;)Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    iget-object v0, v0, Lcom/maya/open/http/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 249
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/maya/open/http/okgo/model/HttpParams$FileWrapper;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaders()Lcom/maya/open/http/okgo/model/HttpHeaders;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Lcom/maya/open/http/okgo/model/HttpParams;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    return-object v0
.end method

.method public getRequest()Lcom/maya/open/http/okhttp3/Request;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mRequest:Lcom/maya/open/http/okhttp3/Request;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->retryCount:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    iget-object v0, v0, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 242
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public headers(Lcom/maya/open/http/okgo/model/HttpHeaders;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okgo/model/HttpHeaders;",
            ")TR;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okgo/model/HttpHeaders;->put(Lcom/maya/open/http/okgo/model/HttpHeaders;)V

    return-object p0
.end method

.method public headers(Ljava/lang/String;Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public params(Lcom/maya/open/http/okgo/model/HttpParams;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okgo/model/HttpParams;",
            ")TR;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Lcom/maya/open/http/okgo/model/HttpParams;)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;C[Z)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C[Z)TR;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;C[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;D[Z)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D[Z)TR;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;D[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;F[Z)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F[Z)TR;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;F[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;I[Z)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[Z)TR;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;I[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;J[Z)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[Z)TR;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;J[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[Z)TR;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;Z[Z)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[Z)TR;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Z[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/util/Map;[Z)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
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
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/util/Map;[Z)V

    return-object p0
.end method

.method public readTimeOut(J)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .line 95
    iput-wide p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->readTimeOut:J

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
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/model/HttpHeaders;->clear()V

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
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/model/HttpParams;->clear()V

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->headers:Lcom/maya/open/http/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okgo/model/HttpHeaders;->remove(Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public removeParam(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->params:Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okgo/model/HttpParams;->remove(Ljava/lang/String;)V

    return-object p0
.end method

.method public setCacheKey(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheKey:Ljava/lang/String;

    return-void
.end method

.method public setCacheMode(Lcom/maya/open/http/okgo/cache/CacheMode;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->cacheMode:Lcom/maya/open/http/okgo/cache/CacheMode;

    return-void
.end method

.method public setCallback(Lcom/maya/open/http/okgo/callback/AbsCallback;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okgo/callback/AbsCallback;",
            ")TR;"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->mCallback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->url:Ljava/lang/String;

    return-object p0
.end method

.method public wrapRequestBody(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/RequestBody;
    .locals 1

    .line 322
    new-instance v0, Lcom/maya/open/http/okgo/request/ProgressRequestBody;

    invoke-direct {v0, p1}, Lcom/maya/open/http/okgo/request/ProgressRequestBody;-><init>(Lcom/maya/open/http/okhttp3/RequestBody;)V

    .line 323
    new-instance p1, Lcom/maya/open/http/okgo/request/BaseRequest$1;

    invoke-direct {p1, p0}, Lcom/maya/open/http/okgo/request/BaseRequest$1;-><init>(Lcom/maya/open/http/okgo/request/BaseRequest;)V

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okgo/request/ProgressRequestBody;->setListener(Lcom/maya/open/http/okgo/request/ProgressRequestBody$Listener;)V

    return-object v0
.end method

.method public writeTimeOut(J)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .line 101
    iput-wide p1, p0, Lcom/maya/open/http/okgo/request/BaseRequest;->writeTimeOut:J

    return-object p0
.end method
