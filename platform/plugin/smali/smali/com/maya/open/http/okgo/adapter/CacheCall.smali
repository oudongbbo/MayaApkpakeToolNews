.class public Lcom/maya/open/http/okgo/adapter/CacheCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okgo/adapter/Call;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/maya/open/http/okgo/adapter/Call<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

.field private cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/maya/open/http/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile canceled:Z

.field private currentRetryCount:I

.field private executed:Z

.field private mCallback:Lcom/maya/open/http/okgo/callback/AbsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/maya/open/http/okgo/callback/AbsCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private rawCall:Lcom/maya/open/http/okhttp3/Call;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okgo/request/BaseRequest;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/maya/open/http/okgo/adapter/CacheCall;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->currentRetryCount:I

    return p0
.end method

.method static synthetic access$008(Lcom/maya/open/http/okgo/adapter/CacheCall;)I
    .locals 2

    .line 36
    iget v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->currentRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->currentRetryCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/maya/open/http/okgo/adapter/CacheCall;)Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    return-object p0
.end method

.method static synthetic access$200(Lcom/maya/open/http/okgo/adapter/CacheCall;)Lcom/maya/open/http/okgo/callback/AbsCallback;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->mCallback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/maya/open/http/okgo/adapter/CacheCall;ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/maya/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$400(Lcom/maya/open/http/okgo/adapter/CacheCall;)Lcom/maya/open/http/okgo/cache/CacheEntity;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/maya/open/http/okgo/adapter/CacheCall;ZLjava/lang/Object;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/maya/open/http/okgo/adapter/CacheCall;->sendSuccessResultCallback(ZLjava/lang/Object;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V

    return-void
.end method

.method static synthetic access$600(Lcom/maya/open/http/okgo/adapter/CacheCall;Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okgo/model/Response;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/maya/open/http/okgo/adapter/CacheCall;->parseResponse(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okgo/model/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/maya/open/http/okgo/adapter/CacheCall;Lcom/maya/open/http/okhttp3/Headers;Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/maya/open/http/okgo/adapter/CacheCall;->handleCache(Lcom/maya/open/http/okhttp3/Headers;Ljava/lang/Object;)V

    return-void
.end method

.method private handleCache(Lcom/maya/open/http/okhttp3/Headers;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/Headers;",
            "TT;)V"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCacheMode()Lcom/maya/open/http/okgo/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lcom/maya/open/http/okgo/cache/CacheMode;->NO_CACHE:Lcom/maya/open/http/okgo/cache/CacheMode;

    if-ne v0, v1, :cond_0

    return-void

    .line 185
    :cond_0
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCacheMode()Lcom/maya/open/http/okgo/cache/CacheMode;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/maya/open/http/okgo/utils/HeaderParser;->createCacheEntity(Lcom/maya/open/http/okhttp3/Headers;Ljava/lang/Object;Lcom/maya/open/http/okgo/cache/CacheMode;Ljava/lang/String;)Lcom/maya/open/http/okgo/cache/CacheEntity;

    move-result-object p1

    if-nez p1, :cond_2

    .line 190
    sget-object p1, Lcom/maya/open/http/okgo/cache/CacheManager;->INSTANCE:Lcom/maya/open/http/okgo/cache/CacheManager;

    iget-object p2, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {p2}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCacheKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/maya/open/http/okgo/cache/CacheManager;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 193
    :cond_2
    sget-object p2, Lcom/maya/open/http/okgo/cache/CacheManager;->INSTANCE:Lcom/maya/open/http/okgo/cache/CacheManager;

    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/maya/open/http/okgo/cache/CacheManager;->replace(Ljava/lang/String;Lcom/maya/open/http/okgo/cache/CacheEntity;)Lcom/maya/open/http/okgo/cache/CacheEntity;

    :goto_0
    return-void
.end method

.method private parseResponse(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okgo/model/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okhttp3/Response;",
            ")",
            "Lcom/maya/open/http/okgo/model/Response<",
            "TT;>;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/request/BaseRequest;->getConverter()Lcom/maya/open/http/okgo/convert/Converter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/maya/open/http/okgo/convert/Converter;->convertSuccess(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/Object;

    move-result-object v0

    .line 272
    invoke-static {v0, p1}, Lcom/maya/open/http/okgo/model/Response;->success(Ljava/lang/Object;Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okgo/model/Response;

    move-result-object p1

    return-object p1
.end method

.method private sendFailResultCallback(ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V
    .locals 10

    .line 200
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCacheMode()Lcom/maya/open/http/okgo/cache/CacheMode;

    move-result-object v0

    .line 202
    invoke-static {}, Lcom/maya/open/http/okgo/OkGo;->getInstance()Lcom/maya/open/http/okgo/OkGo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okgo/OkGo;->getDelivery()Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/maya/open/http/okgo/adapter/CacheCall$2;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, v0

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/maya/open/http/okgo/adapter/CacheCall$2;-><init>(Lcom/maya/open/http/okgo/adapter/CacheCall;ZLcom/maya/open/http/okhttp3/Call;Ljava/lang/Exception;Lcom/maya/open/http/okgo/cache/CacheMode;Lcom/maya/open/http/okhttp3/Response;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez p1, :cond_3

    .line 220
    sget-object p1, Lcom/maya/open/http/okgo/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/maya/open/http/okgo/cache/CacheMode;

    if-ne v0, p1, :cond_3

    .line 221
    iget-object p1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    const/4 p4, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    invoke-virtual {p1}, Lcom/maya/open/http/okgo/cache/CacheEntity;->isExpire()Z

    move-result p1

    if-nez p1, :cond_2

    .line 222
    iget-object p1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    invoke-virtual {p1}, Lcom/maya/open/http/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object p1

    .line 223
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/maya/open/http/okgo/model/HttpHeaders;

    move-result-object v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/maya/open/http/okgo/adapter/CacheCall;->sendSuccessResultCallback(ZLjava/lang/Object;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    .line 226
    invoke-static {p1}, Lcom/maya/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/maya/open/http/okgo/exception/OkGoException;

    move-result-object p1

    invoke-direct {p0, p4, p2, p3, p1}, Lcom/maya/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    const-string p1, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    .line 231
    invoke-static {p1}, Lcom/maya/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/maya/open/http/okgo/exception/OkGoException;

    move-result-object p1

    invoke-direct {p0, p4, p2, p3, p1}, Lcom/maya/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private sendSuccessResultCallback(ZLjava/lang/Object;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;",
            "Lcom/maya/open/http/okhttp3/Call;",
            "Lcom/maya/open/http/okhttp3/Response;",
            ")V"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCacheMode()Lcom/maya/open/http/okgo/cache/CacheMode;

    move-result-object v6

    .line 240
    invoke-static {}, Lcom/maya/open/http/okgo/OkGo;->getInstance()Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/OkGo;->getDelivery()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/maya/open/http/okgo/adapter/CacheCall$3;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/maya/open/http/okgo/adapter/CacheCall$3;-><init>(Lcom/maya/open/http/okgo/adapter/CacheCall;ZLjava/lang/Object;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okgo/cache/CacheMode;Lcom/maya/open/http/okhttp3/Response;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->canceled:Z

    .line 283
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/maya/open/http/okhttp3/Call;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/maya/open/http/okhttp3/Call;

    invoke-interface {v0}, Lcom/maya/open/http/okhttp3/Call;->cancel()V

    :cond_0
    return-void
.end method

.method public clone()Lcom/maya/open/http/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/maya/open/http/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation

    .line 295
    new-instance v0, Lcom/maya/open/http/okgo/adapter/CacheCall;

    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-direct {v0, v1}, Lcom/maya/open/http/okgo/adapter/CacheCall;-><init>(Lcom/maya/open/http/okgo/request/BaseRequest;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/maya/open/http/okgo/adapter/CacheCall;->clone()Lcom/maya/open/http/okgo/adapter/Call;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lcom/maya/open/http/okgo/model/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/maya/open/http/okgo/model/Response<",
            "TT;>;"
        }
    .end annotation

    .line 258
    monitor-enter p0

    .line 259
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->executed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->executed:Z

    .line 261
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {v0}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCall()Lcom/maya/open/http/okhttp3/Call;

    move-result-object v0

    .line 263
    iget-boolean v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->canceled:Z

    if-eqz v1, :cond_0

    .line 264
    invoke-interface {v0}, Lcom/maya/open/http/okhttp3/Call;->cancel()V

    .line 266
    :cond_0
    invoke-interface {v0}, Lcom/maya/open/http/okhttp3/Call;->execute()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/open/http/okgo/adapter/CacheCall;->parseResponse(Lcom/maya/open/http/okhttp3/Response;)Lcom/maya/open/http/okgo/model/Response;

    move-result-object v0

    return-object v0

    .line 259
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 261
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public execute(Lcom/maya/open/http/okgo/callback/AbsCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okgo/callback/AbsCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->executed:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->executed:Z

    .line 57
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iput-object p1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->mCallback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    .line 59
    iget-object p1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->mCallback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    if-nez p1, :cond_0

    new-instance p1, Lcom/maya/open/http/okgo/callback/AbsCallbackWrapper;

    invoke-direct {p1}, Lcom/maya/open/http/okgo/callback/AbsCallbackWrapper;-><init>()V

    iput-object p1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->mCallback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->mCallback:Lcom/maya/open/http/okgo/callback/AbsCallback;

    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {p1, v1}, Lcom/maya/open/http/okgo/callback/AbsCallback;->onBefore(Lcom/maya/open/http/okgo/request/BaseRequest;)V

    .line 64
    iget-object p1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {p1}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {v2}, Lcom/maya/open/http/okgo/request/BaseRequest;->getParams()Lcom/maya/open/http/okgo/model/HttpParams;

    move-result-object v2

    iget-object v2, v2, Lcom/maya/open/http/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Lcom/maya/open/http/okgo/utils/HttpUtils;->createUrlFromParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->setCacheKey(Ljava/lang/String;)V

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {p1}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCacheMode()Lcom/maya/open/http/okgo/cache/CacheMode;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    sget-object v1, Lcom/maya/open/http/okgo/cache/CacheMode;->NO_CACHE:Lcom/maya/open/http/okgo/cache/CacheMode;

    invoke-virtual {p1, v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->setCacheMode(Lcom/maya/open/http/okgo/cache/CacheMode;)V

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {p1}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCacheMode()Lcom/maya/open/http/okgo/cache/CacheMode;

    move-result-object p1

    .line 70
    sget-object v1, Lcom/maya/open/http/okgo/cache/CacheMode;->NO_CACHE:Lcom/maya/open/http/okgo/cache/CacheMode;

    if-eq p1, v1, :cond_4

    .line 72
    sget-object v1, Lcom/maya/open/http/okgo/cache/CacheManager;->INSTANCE:Lcom/maya/open/http/okgo/cache/CacheManager;

    iget-object v2, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {v2}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okgo/cache/CacheManager;->get(Ljava/lang/String;)Lcom/maya/open/http/okgo/cache/CacheEntity;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    .line 74
    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    iget-object v2, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {v2}, Lcom/maya/open/http/okgo/request/BaseRequest;->getCacheTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/maya/open/http/okgo/cache/CacheEntity;->checkExpire(Lcom/maya/open/http/okgo/cache/CacheMode;JJ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v1, v0}, Lcom/maya/open/http/okgo/cache/CacheEntity;->setExpire(Z)V

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    iget-object v2, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    invoke-static {v1, v2, p1}, Lcom/maya/open/http/okgo/utils/HeaderParser;->addCacheHeaders(Lcom/maya/open/http/okgo/request/BaseRequest;Lcom/maya/open/http/okgo/cache/CacheEntity;Lcom/maya/open/http/okgo/cache/CacheMode;)V

    .line 80
    :cond_4
    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->generateRequestBody()Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    iget-object v3, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {v3, v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->wrapRequestBody(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->generateRequest(Lcom/maya/open/http/okhttp3/RequestBody;)Lcom/maya/open/http/okhttp3/Request;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    invoke-virtual {v2, v1}, Lcom/maya/open/http/okgo/request/BaseRequest;->generateCall(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/maya/open/http/okhttp3/Call;

    .line 84
    sget-object v1, Lcom/maya/open/http/okgo/cache/CacheMode;->IF_NONE_CACHE_REQUEST:Lcom/maya/open/http/okgo/cache/CacheMode;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_8

    .line 86
    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v1}, Lcom/maya/open/http/okgo/cache/CacheEntity;->isExpire()Z

    move-result v1

    if-nez v1, :cond_7

    .line 87
    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v1}, Lcom/maya/open/http/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 88
    iget-object v3, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v3}, Lcom/maya/open/http/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/maya/open/http/okgo/model/HttpHeaders;

    move-result-object v3

    if-eqz v1, :cond_6

    if-nez v3, :cond_5

    goto :goto_0

    .line 93
    :cond_5
    iget-object p1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/maya/open/http/okhttp3/Call;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/maya/open/http/okgo/adapter/CacheCall;->sendSuccessResultCallback(ZLjava/lang/Object;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V

    return-void

    .line 91
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/maya/open/http/okhttp3/Call;

    const-string v3, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v3}, Lcom/maya/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/maya/open/http/okgo/exception/OkGoException;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/maya/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    goto :goto_2

    .line 97
    :cond_7
    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/maya/open/http/okhttp3/Call;

    const-string v3, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v3}, Lcom/maya/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/maya/open/http/okgo/exception/OkGoException;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/maya/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    goto :goto_2

    .line 99
    :cond_8
    sget-object v1, Lcom/maya/open/http/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/maya/open/http/okgo/cache/CacheMode;

    if-ne p1, v1, :cond_c

    .line 101
    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v1}, Lcom/maya/open/http/okgo/cache/CacheEntity;->isExpire()Z

    move-result v1

    if-nez v1, :cond_b

    .line 102
    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v1}, Lcom/maya/open/http/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 103
    iget-object v3, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->cacheEntity:Lcom/maya/open/http/okgo/cache/CacheEntity;

    invoke-virtual {v3}, Lcom/maya/open/http/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/maya/open/http/okgo/model/HttpHeaders;

    move-result-object v3

    if-eqz v1, :cond_a

    if-nez v3, :cond_9

    goto :goto_1

    .line 108
    :cond_9
    iget-object v3, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/maya/open/http/okhttp3/Call;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/maya/open/http/okgo/adapter/CacheCall;->sendSuccessResultCallback(ZLjava/lang/Object;Lcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;)V

    goto :goto_2

    .line 106
    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/maya/open/http/okhttp3/Call;

    const-string v3, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v3}, Lcom/maya/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/maya/open/http/okgo/exception/OkGoException;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/maya/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    goto :goto_2

    .line 111
    :cond_b
    iget-object v1, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/maya/open/http/okhttp3/Call;

    const-string v3, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v3}, Lcom/maya/open/http/okgo/exception/OkGoException;->INSTANCE(Ljava/lang/String;)Lcom/maya/open/http/okgo/exception/OkGoException;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/maya/open/http/okgo/adapter/CacheCall;->sendFailResultCallback(ZLcom/maya/open/http/okhttp3/Call;Lcom/maya/open/http/okhttp3/Response;Ljava/lang/Exception;)V

    .line 115
    :cond_c
    :goto_2
    iget-boolean v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->canceled:Z

    if-eqz v0, :cond_d

    .line 116
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/maya/open/http/okhttp3/Call;

    invoke-interface {v0}, Lcom/maya/open/http/okhttp3/Call;->cancel()V

    :cond_d
    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->currentRetryCount:I

    .line 119
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->rawCall:Lcom/maya/open/http/okhttp3/Call;

    new-instance v1, Lcom/maya/open/http/okgo/adapter/CacheCall$1;

    invoke-direct {v1, p0, p1}, Lcom/maya/open/http/okgo/adapter/CacheCall$1;-><init>(Lcom/maya/open/http/okgo/adapter/CacheCall;Lcom/maya/open/http/okgo/cache/CacheMode;)V

    invoke-interface {v0, v1}, Lcom/maya/open/http/okhttp3/Call;->enqueue(Lcom/maya/open/http/okhttp3/Callback;)V

    return-void

    .line 55
    :cond_e
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getBaseRequest()Lcom/maya/open/http/okgo/request/BaseRequest;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->baseRequest:Lcom/maya/open/http/okgo/request/BaseRequest;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->canceled:Z

    return v0
.end method

.method public isExecuted()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/maya/open/http/okgo/adapter/CacheCall;->executed:Z

    return v0
.end method
