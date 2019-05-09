.class public Lcom/maya/open/main/OpenHttpUtils;
.super Ljava/lang/Object;
.source "OpenHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/main/OpenHttpUtils$OpenDownLoadCallBack;,
        Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;
    }
.end annotation


# static fields
.field private static instance:Lcom/maya/open/main/OpenHttpUtils;


# instance fields
.field public final CODE_ERROR_DEFAULT:I

.field public final STRING_ERROR_DEFAULT:Ljava/lang/String;

.field public final STRING_ERROR_HTTP:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/maya/open/main/OpenHttpUtils;->CODE_ERROR_DEFAULT:I

    .line 23
    const-string v0, "Request Fail:Not HttpException!"

    iput-object v0, p0, Lcom/maya/open/main/OpenHttpUtils;->STRING_ERROR_DEFAULT:Ljava/lang/String;

    .line 24
    const-string v0, "Http Error!"

    iput-object v0, p0, Lcom/maya/open/main/OpenHttpUtils;->STRING_ERROR_HTTP:Ljava/lang/String;

    .line 29
    const-string v0, "\u521d\u59cb\u5316"

    invoke-virtual {p0, v0}, Lcom/maya/open/main/OpenHttpUtils;->printLog(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/maya/open/main/OpenHttpUtils;
    .locals 2

    .line 37
    sget-object v0, Lcom/maya/open/main/OpenHttpUtils;->instance:Lcom/maya/open/main/OpenHttpUtils;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/maya/open/main/OpenHttpUtils;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/maya/open/main/OpenHttpUtils;->instance:Lcom/maya/open/main/OpenHttpUtils;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/maya/open/main/OpenHttpUtils;

    invoke-direct {v1}, Lcom/maya/open/main/OpenHttpUtils;-><init>()V

    sput-object v1, Lcom/maya/open/main/OpenHttpUtils;->instance:Lcom/maya/open/main/OpenHttpUtils;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/maya/open/main/OpenHttpUtils;->instance:Lcom/maya/open/main/OpenHttpUtils;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/util/Map;Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;",
            ")V"
        }
    .end annotation

    .line 151
    .local p2, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "\u8c03\u7528get\u65b9\u6cd5"

    invoke-virtual {p0, v0}, Lcom/maya/open/main/OpenHttpUtils;->printLog(Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/maya/open/http/okgo/model/HttpParams;-><init>()V

    .line 155
    .local v0, "params":Lcom/maya/open/http/okgo/model/HttpParams;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 157
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Z

    invoke-virtual {v0, v3, v4, v5}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 158
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 161
    :cond_0
    invoke-static {p1}, Lcom/maya/open/http/okgo/OkGo;->get(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/GetRequest;

    move-result-object v1

    .line 162
    invoke-virtual {v1, p0}, Lcom/maya/open/http/okgo/request/GetRequest;->tag(Ljava/lang/Object;)Lcom/maya/open/http/okgo/request/BaseRequest;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okgo/request/GetRequest;

    .line 163
    invoke-virtual {v1, v0}, Lcom/maya/open/http/okgo/request/GetRequest;->params(Lcom/maya/open/http/okgo/model/HttpParams;)Lcom/maya/open/http/okgo/request/BaseRequest;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okgo/request/GetRequest;

    new-instance v2, Lcom/maya/open/main/OpenHttpUtils$1;

    invoke-direct {v2, p0, p3}, Lcom/maya/open/main/OpenHttpUtils$1;-><init>(Lcom/maya/open/main/OpenHttpUtils;Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;)V

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okgo/request/GetRequest;->execute(Lcom/maya/open/http/okgo/callback/AbsCallback;)V

    .line 184
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 4
    .param p1, "app"    # Landroid/app/Application;

    .line 89
    invoke-static {p1}, Lcom/maya/open/http/okgo/OkGo;->init(Landroid/app/Application;)V

    .line 95
    :try_start_0
    invoke-static {}, Lcom/maya/open/http/okgo/OkGo;->getInstance()Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    const-string v1, "OpenHttpUtils"

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 99
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/maya/open/http/okgo/OkGo;->debug(Ljava/lang/String;Ljava/util/logging/Level;Z)Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    .line 102
    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okgo/OkGo;->setConnectTimeout(J)Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okgo/OkGo;->setReadTimeOut(J)Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okgo/OkGo;->setWriteTimeOut(J)Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    sget-object v1, Lcom/maya/open/http/okgo/cache/CacheMode;->NO_CACHE:Lcom/maya/open/http/okgo/cache/CacheMode;

    .line 107
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okgo/OkGo;->setCacheMode(Lcom/maya/open/http/okgo/cache/CacheMode;)Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    const-wide/16 v1, -0x1

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okgo/OkGo;->setCacheTime(J)Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    const/4 v1, 0x3

    .line 113
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okgo/OkGo;->setRetryCount(I)Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    new-instance v1, Lcom/maya/open/http/okgo/cookie/store/PersistentCookieStore;

    invoke-direct {v1}, Lcom/maya/open/http/okgo/cookie/store/PersistentCookieStore;-><init>()V

    .line 117
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okgo/OkGo;->setCookieStore(Lcom/maya/open/http/okgo/cookie/store/CookieStore;)Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    new-array v1, v3, [Ljava/io/InputStream;

    .line 120
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okgo/OkGo;->setCertificates([Ljava/io/InputStream;)Lcom/maya/open/http/okgo/OkGo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;",
            ")V"
        }
    .end annotation

    .line 190
    .local p2, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "\u8c03\u7528post\u65b9\u6cd5"

    invoke-virtual {p0, v0}, Lcom/maya/open/main/OpenHttpUtils;->printLog(Ljava/lang/String;)V

    .line 192
    new-instance v0, Lcom/maya/open/http/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/maya/open/http/okgo/model/HttpParams;-><init>()V

    .line 194
    .local v0, "params":Lcom/maya/open/http/okgo/model/HttpParams;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 196
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Z

    invoke-virtual {v0, v3, v4, v5}, Lcom/maya/open/http/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 197
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 200
    :cond_0
    invoke-static {p1}, Lcom/maya/open/http/okgo/OkGo;->post(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/PostRequest;

    move-result-object v1

    .line 201
    invoke-virtual {v1, p0}, Lcom/maya/open/http/okgo/request/PostRequest;->tag(Ljava/lang/Object;)Lcom/maya/open/http/okgo/request/BaseRequest;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okgo/request/PostRequest;

    .line 202
    invoke-virtual {v1, v0}, Lcom/maya/open/http/okgo/request/PostRequest;->params(Lcom/maya/open/http/okgo/model/HttpParams;)Lcom/maya/open/http/okgo/request/BaseRequest;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okgo/request/PostRequest;

    new-instance v2, Lcom/maya/open/main/OpenHttpUtils$2;

    invoke-direct {v2, p0, p3}, Lcom/maya/open/main/OpenHttpUtils$2;-><init>(Lcom/maya/open/main/OpenHttpUtils;Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;)V

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okgo/request/PostRequest;->execute(Lcom/maya/open/http/okgo/callback/AbsCallback;)V

    .line 229
    return-void
.end method

.method public printLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .line 232
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openHttp-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public reset(Lcom/maya/open/http/OpenHttpParams;)V
    .locals 4
    .param p1, "params"    # Lcom/maya/open/http/OpenHttpParams;

    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-static {}, Lcom/maya/open/http/okgo/OkGo;->getInstance()Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    const-string v1, "OpenHttpUtils"

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 70
    invoke-virtual {p1}, Lcom/maya/open/http/OpenHttpParams;->isDebug()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/maya/open/http/okgo/OkGo;->debug(Ljava/lang/String;Ljava/util/logging/Level;Z)Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcom/maya/open/http/OpenHttpParams;->getTimeOut()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okgo/OkGo;->setConnectTimeout(J)Lcom/maya/open/http/okgo/OkGo;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lcom/maya/open/http/OpenHttpParams;->getRetry()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okgo/OkGo;->setRetryCount(I)Lcom/maya/open/http/okgo/OkGo;

    goto :goto_0

    .line 74
    :cond_0
    const-string v0, "OpenHttpUtils"

    const-string v1, "OpenHttp \u91cd\u8bbe\u5c5e\u6027\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    return-void
.end method
