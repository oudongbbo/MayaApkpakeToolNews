.class public Lcom/maya/open/http/okserver/task/ExecutorWithListener;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ExecutorWithListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;,
        Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;
    }
.end annotation


# instance fields
.field private allTaskEndListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private innerHandler:Landroid/os/Handler;

.field private taskEndListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 2
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 2
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 28
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .line 36
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 2
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p8, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 32
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method


# virtual methods
.method public addOnAllTaskEndListener(Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;)V
    .locals 1
    .param p1, "allTaskEndListener"    # Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;

    .line 90
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public addOnTaskEndListener(Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;)V
    .locals 1
    .param p1, "taskEndListener"    # Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;

    .line 75
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 46
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 47
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;

    .line 49
    .local v1, "listener":Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;
    iget-object v2, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/maya/open/http/okserver/task/ExecutorWithListener$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/maya/open/http/okserver/task/ExecutorWithListener$1;-><init>(Lcom/maya/open/http/okserver/task/ExecutorWithListener;Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .end local v1    # "listener":Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->getActiveCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;

    .line 61
    .local v1, "listener":Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;
    iget-object v2, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/maya/open/http/okserver/task/ExecutorWithListener$2;

    invoke-direct {v3, p0, v1}, Lcom/maya/open/http/okserver/task/ExecutorWithListener$2;-><init>(Lcom/maya/open/http/okserver/task/ExecutorWithListener;Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .end local v1    # "listener":Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;
    goto :goto_1

    .line 70
    :cond_1
    return-void
.end method

.method public removeOnAllTaskEndListener(Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;)V
    .locals 1
    .param p1, "allTaskEndListener"    # Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;

    .line 95
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public removeOnTaskEndListener(Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;)V
    .locals 1
    .param p1, "taskEndListener"    # Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;

    .line 80
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method
