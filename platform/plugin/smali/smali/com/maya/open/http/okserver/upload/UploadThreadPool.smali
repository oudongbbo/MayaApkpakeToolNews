.class public Lcom/maya/open/http/okserver/upload/UploadThreadPool;
.super Ljava/lang/Object;
.source "UploadThreadPool.java"


# static fields
.field private static final KEEP_ALIVE_TIME:I = 0x1

.field private static final MAX_IMUM_POOL_SIZE:I = 0x5

.field private static final UNIT:Ljava/util/concurrent/TimeUnit;


# instance fields
.field private corePoolSize:I

.field private executor:Lcom/maya/open/http/okserver/task/ExecutorWithListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/maya/open/http/okserver/upload/UploadThreadPool;->UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/maya/open/http/okserver/upload/UploadThreadPool;->corePoolSize:I

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/upload/UploadThreadPool;->getExecutor()Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->execute(Ljava/lang/Runnable;)V

    .line 53
    :cond_0
    return-void
.end method

.method public getExecutor()Lcom/maya/open/http/okserver/task/ExecutorWithListener;
    .locals 11

    .line 28
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadThreadPool;->executor:Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lcom/maya/open/http/okserver/upload/UploadThreadPool;

    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okserver/upload/UploadThreadPool;->executor:Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    iget v3, p0, Lcom/maya/open/http/okserver/upload/UploadThreadPool;->corePoolSize:I

    const/4 v4, 0x5

    const-wide/16 v5, 0x1

    sget-object v7, Lcom/maya/open/http/okserver/upload/UploadThreadPool;->UNIT:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;

    invoke-direct {v8}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;-><init>()V

    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/maya/open/http/okserver/task/ExecutorWithListener;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/maya/open/http/okserver/upload/UploadThreadPool;->executor:Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadThreadPool;->executor:Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    return-object v0
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/upload/UploadThreadPool;->getExecutor()Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->remove(Ljava/lang/Runnable;)Z

    .line 60
    :cond_0
    return-void
.end method

.method public setCorePoolSize(I)V
    .locals 1
    .param p1, "corePoolSize"    # I

    .line 43
    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 44
    :cond_0
    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    const/4 p1, 0x5

    .line 45
    :cond_1
    iput p1, p0, Lcom/maya/open/http/okserver/upload/UploadThreadPool;->corePoolSize:I

    .line 46
    return-void
.end method
