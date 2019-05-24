.class public Lcom/maya/open/http/okserver/task/ExecutorWithListener;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


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
    .locals 0
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
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
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
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 0
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
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
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
    invoke-direct/range {p0 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addOnAllTaskEndListener(Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;)V
    .locals 1

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

    return-void
.end method

.method public addOnTaskEndListener(Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;)V
    .locals 1

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

    return-void
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 3

    .line 46
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 47
    iget-object p2, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 48
    iget-object p2, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;

    .line 49
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/maya/open/http/okserver/task/ExecutorWithListener$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/maya/open/http/okserver/task/ExecutorWithListener$1;-><init>(Lcom/maya/open/http/okserver/task/ExecutorWithListener;Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->getActiveCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;

    .line 61
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/maya/open/http/okserver/task/ExecutorWithListener$2;

    invoke-direct {v1, p0, p2}, Lcom/maya/open/http/okserver/task/ExecutorWithListener$2;-><init>(Lcom/maya/open/http/okserver/task/ExecutorWithListener;Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public removeOnAllTaskEndListener(Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnTaskEndListener(Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
