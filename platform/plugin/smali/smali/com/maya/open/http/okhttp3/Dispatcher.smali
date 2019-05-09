.class public final Lcom/maya/open/http/okhttp3/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private idleCallback:Ljava/lang/Runnable;

.field private maxRequests:I

.field private maxRequestsPerHost:I

.field private final readyAsyncCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningAsyncCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningSyncCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/maya/open/http/okhttp3/RealCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x40

    iput v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->maxRequests:I

    .line 46
    const/4 v0, 0x5

    iput v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 53
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    .line 56
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    .line 59
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x40

    iput v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->maxRequests:I

    .line 46
    const/4 v0, 0x5

    iput v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 53
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    .line 56
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    .line 59
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    .line 62
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 63
    return-void
.end method

.method private finished(Ljava/util/Deque;Ljava/lang/Object;Z)V
    .locals 2
    .param p3, "promoteCalls"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;Z)V"
        }
    .end annotation

    .line 203
    .local p1, "calls":Ljava/util/Deque;, "Ljava/util/Deque<TT;>;"
    .local p2, "call":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 204
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/Dispatcher;->promoteCalls()V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Dispatcher;->runningCallsCount()I

    move-result v0

    .line 207
    .local v0, "runningCallsCount":I
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->idleCallback:Ljava/lang/Runnable;

    .line 208
    .local v1, "idleCallback":Ljava/lang/Runnable;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 211
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 213
    :cond_1
    return-void

    .line 204
    .end local v0    # "runningCallsCount":I
    .end local v1    # "idleCallback":Ljava/lang/Runnable;
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Call wasn\'t in-flight!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private promoteCalls()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->maxRequests:I

    if-lt v0, v1, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;

    .line 166
    .local v1, "call":Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;
    invoke-direct {p0, v1}, Lcom/maya/open/http/okhttp3/Dispatcher;->runningCallsForHost(Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;)I

    move-result v2

    iget v3, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->maxRequestsPerHost:I

    if-ge v2, v3, :cond_2

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 168
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 172
    :cond_2
    iget-object v2, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    iget v3, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->maxRequests:I

    if-lt v2, v3, :cond_3

    return-void

    .line 173
    .end local v1    # "call":Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;
    :cond_3
    goto :goto_0

    .line 174
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;>;"
    :cond_4
    return-void
.end method

.method private runningCallsForHost(Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;)I
    .locals 5
    .param p1, "call"    # Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "result":I
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;

    .line 180
    .local v2, "c":Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 181
    .end local v2    # "c":Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;
    :cond_0
    goto :goto_0

    .line 182
    :cond_1
    return v0
.end method


# virtual methods
.method public declared-synchronized cancelAll()V
    .locals 3

    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;

    .line 147
    .local v1, "call":Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;->get()Lcom/maya/open/http/okhttp3/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/RealCall;->cancel()V

    .line 148
    .end local v1    # "call":Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;
    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;

    .line 151
    .restart local v1    # "call":Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;->get()Lcom/maya/open/http/okhttp3/RealCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/RealCall;->cancel()V

    .line 152
    .end local v1    # "call":Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;
    goto :goto_1

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okhttp3/RealCall;

    .line 155
    .local v1, "call":Lcom/maya/open/http/okhttp3/RealCall;
    invoke-virtual {v1}, Lcom/maya/open/http/okhttp3/RealCall;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v1    # "call":Lcom/maya/open/http/okhttp3/RealCall;
    goto :goto_2

    .line 157
    :cond_2
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enqueue(Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;)V
    .locals 2
    .param p1, "call"    # Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;

    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->maxRequests:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/maya/open/http/okhttp3/Dispatcher;->runningCallsForHost(Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;)I

    move-result v0

    iget v1, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->maxRequestsPerHost:I

    if-ge v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {p0}, Lcom/maya/open/http/okhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :goto_0
    monitor-exit p0

    return-void

    .line 132
    .end local p1    # "call":Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized executed(Lcom/maya/open/http/okhttp3/RealCall;)V
    .locals 1
    .param p1, "call"    # Lcom/maya/open/http/okhttp3/RealCall;

    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 186
    .end local p1    # "call":Lcom/maya/open/http/okhttp3/RealCall;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized executorService()Ljava/util/concurrent/ExecutorService;
    .locals 9

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "OkHttp Dispatcher"

    const/4 v8, 0x0

    .line 71
    invoke-static {v1, v8}, Lcom/maya/open/http/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method finished(Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;)V
    .locals 2
    .param p1, "call"    # Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;

    .line 192
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/maya/open/http/okhttp3/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;Z)V

    .line 193
    return-void
.end method

.method finished(Lcom/maya/open/http/okhttp3/RealCall;)V
    .locals 2
    .param p1, "call"    # Lcom/maya/open/http/okhttp3/RealCall;

    .line 197
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/maya/open/http/okhttp3/Dispatcher;->finished(Ljava/util/Deque;Ljava/lang/Object;Z)V

    .line 198
    return-void
.end method

.method public declared-synchronized getMaxRequests()I
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->maxRequests:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxRequestsPerHost()I
    .locals 1

    monitor-enter p0

    .line 113
    :try_start_0
    iget v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->maxRequestsPerHost:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queuedCalls()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Call;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 217
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Call;>;"
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;

    .line 219
    .local v2, "asyncCall":Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;->get()Lcom/maya/open/http/okhttp3/RealCall;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v2    # "asyncCall":Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;
    goto :goto_0

    .line 221
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 216
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Call;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queuedCallsCount()I
    .locals 1

    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized runningCalls()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okhttp3/Call;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 226
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Call;>;"
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;

    .line 229
    .local v2, "asyncCall":Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;
    invoke-virtual {v2}, Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;->get()Lcom/maya/open/http/okhttp3/RealCall;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v2    # "asyncCall":Lcom/maya/open/http/okhttp3/RealCall$AsyncCall;
    goto :goto_0

    .line 231
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 225
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/maya/open/http/okhttp3/Call;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized runningCallsCount()I
    .locals 2

    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIdleCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "idleCallback"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 129
    :try_start_0
    iput-object p1, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->idleCallback:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 128
    .end local p1    # "idleCallback":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaxRequests(I)V
    .locals 3
    .param p1, "maxRequests"    # I

    monitor-enter p0

    .line 84
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 87
    :try_start_0
    iput p1, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->maxRequests:I

    .line 88
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/Dispatcher;->promoteCalls()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 85
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .end local p1    # "maxRequests":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaxRequestsPerHost(I)V
    .locals 3
    .param p1, "maxRequestsPerHost"    # I

    monitor-enter p0

    .line 105
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 108
    :try_start_0
    iput p1, p0, Lcom/maya/open/http/okhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 109
    invoke-direct {p0}, Lcom/maya/open/http/okhttp3/Dispatcher;->promoteCalls()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 106
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .end local p1    # "maxRequestsPerHost":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
