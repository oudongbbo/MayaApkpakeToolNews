.class final Lcom/maya/open/http/okhttp3/RealCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maya/open/http/okhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field final client:Lcom/maya/open/http/okhttp3/OkHttpClient;

.field private executed:Z

.field final forWebSocket:Z

.field final originalRequest:Lcom/maya/open/http/okhttp3/Request;

.field final retryAndFollowUpInterceptor:Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okhttp3/OkHttpClient;Lcom/maya/open/http/okhttp3/Request;Z)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/RealCall;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    .line 47
    iput-object p2, p0, Lcom/maya/open/http/okhttp3/RealCall;->originalRequest:Lcom/maya/open/http/okhttp3/Request;

    .line 48
    iput-boolean p3, p0, Lcom/maya/open/http/okhttp3/RealCall;->forWebSocket:Z

    .line 49
    new-instance p2, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-direct {p2, p1, p3}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lcom/maya/open/http/okhttp3/OkHttpClient;Z)V

    iput-object p2, p0, Lcom/maya/open/http/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    return-void
.end method

.method private captureCallStackTrace()V
    .locals 2

    .line 73
    invoke-static {}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->get()Lcom/maya/open/http/okhttp3/internal/platform/Platform;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1, v0}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->setCallStackTrace(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Lcom/maya/open/http/okhttp3/Call;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/RealCall;->clone()Lcom/maya/open/http/okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/maya/open/http/okhttp3/RealCall;
    .locals 4

    .line 100
    new-instance v0, Lcom/maya/open/http/okhttp3/RealCall;

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/RealCall;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/RealCall;->originalRequest:Lcom/maya/open/http/okhttp3/Request;

    iget-boolean v3, p0, Lcom/maya/open/http/okhttp3/RealCall;->forWebSocket:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/maya/open/http/okhttp3/RealCall;-><init>(Lcom/maya/open/http/okhttp3/OkHttpClient;Lcom/maya/open/http/okhttp3/Request;Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/RealCall;->clone()Lcom/maya/open/http/okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lcom/maya/open/http/okhttp3/Callback;)V
    .locals 2

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/RealCall;->executed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/RealCall;->executed:Z

    .line 81
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/RealCall;->captureCallStackTrace()V

    .line 83
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/RealCall;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient;->dispatcher()Lcom/maya/open/http/okhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;

    invoke-direct {v1, p0, p1}, Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;-><init>(Lcom/maya/open/http/okhttp3/RealCall;Lcom/maya/open/http/okhttp3/Callback;)V

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okhttp3/Dispatcher;->enqueue(Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;)V

    return-void

    .line 79
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 81
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public execute()Lcom/maya/open/http/okhttp3/Response;
    .locals 2

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/RealCall;->executed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/maya/open/http/okhttp3/RealCall;->executed:Z

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/RealCall;->captureCallStackTrace()V

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/RealCall;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient;->dispatcher()Lcom/maya/open/http/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/maya/open/http/okhttp3/Dispatcher;->executed(Lcom/maya/open/http/okhttp3/RealCall;)V

    .line 64
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/RealCall;->getResponseWithInterceptorChain()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/RealCall;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->dispatcher()Lcom/maya/open/http/okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/maya/open/http/okhttp3/Dispatcher;->finished(Lcom/maya/open/http/okhttp3/RealCall;)V

    return-object v0

    .line 65
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 68
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/RealCall;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/OkHttpClient;->dispatcher()Lcom/maya/open/http/okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/maya/open/http/okhttp3/Dispatcher;->finished(Lcom/maya/open/http/okhttp3/RealCall;)V

    .line 69
    throw v0

    .line 58
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 60
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method getResponseWithInterceptorChain()Lcom/maya/open/http/okhttp3/Response;
    .locals 8

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/RealCall;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http/BridgeInterceptor;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/RealCall;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/OkHttpClient;->cookieJar()Lcom/maya/open/http/okhttp3/CookieJar;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/maya/open/http/okhttp3/internal/http/BridgeInterceptor;-><init>(Lcom/maya/open/http/okhttp3/CookieJar;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/RealCall;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/OkHttpClient;->internalCache()Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/maya/open/http/okhttp3/internal/cache/CacheInterceptor;-><init>(Lcom/maya/open/http/okhttp3/internal/cache/InternalCache;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/connection/ConnectInterceptor;

    iget-object v2, p0, Lcom/maya/open/http/okhttp3/RealCall;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-direct {v0, v2}, Lcom/maya/open/http/okhttp3/internal/connection/ConnectInterceptor;-><init>(Lcom/maya/open/http/okhttp3/OkHttpClient;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/RealCall;->forWebSocket:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/RealCall;->client:Lcom/maya/open/http/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    :cond_0
    new-instance v0, Lcom/maya/open/http/okhttp3/internal/http/CallServerInterceptor;

    iget-boolean v2, p0, Lcom/maya/open/http/okhttp3/RealCall;->forWebSocket:Z

    invoke-direct {v0, v2}, Lcom/maya/open/http/okhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v7, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/maya/open/http/okhttp3/RealCall;->originalRequest:Lcom/maya/open/http/okhttp3/Request;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/maya/open/http/okhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;Lcom/maya/open/http/okhttp3/internal/http/HttpCodec;Lcom/maya/open/http/okhttp3/Connection;ILcom/maya/open/http/okhttp3/Request;)V

    .line 180
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/RealCall;->originalRequest:Lcom/maya/open/http/okhttp3/Request;

    invoke-interface {v7, v0}, Lcom/maya/open/http/okhttp3/Interceptor$Chain;->proceed(Lcom/maya/open/http/okhttp3/Request;)Lcom/maya/open/http/okhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    monitor-enter p0

    .line 91
    :try_start_0
    iget-boolean v0, p0, Lcom/maya/open/http/okhttp3/RealCall;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method redactedUrl()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/RealCall;->originalRequest:Lcom/maya/open/http/okhttp3/Request;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/Request;->url()Lcom/maya/open/http/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lcom/maya/open/http/okhttp3/Request;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/RealCall;->originalRequest:Lcom/maya/open/http/okhttp3/Request;

    return-object v0
.end method

.method streamAllocation()Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lcom/maya/open/http/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation()Lcom/maya/open/http/okhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method

.method toLoggableString()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/RealCall;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/maya/open/http/okhttp3/RealCall;->forWebSocket:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
