.class public abstract Lcom/maya/open/http/okserver/task/PriorityAsyncTask;
.super Ljava/lang/Object;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okserver/task/PriorityAsyncTask$AsyncTaskResult;,
        Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable;,
        Lcom/maya/open/http/okserver/task/PriorityAsyncTask$InternalHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/maya/open/http/okserver/task/PriorityAsyncTask$InternalHandler;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mExecuteInvoked:Z

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private priority:Lcom/maya/open/http/okserver/task/Priority;

.field private runnableTask:Lcom/maya/open/http/okserver/task/PriorityRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$InternalHandler;-><init>(Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;)V

    sput-object v0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->sHandler:Lcom/maya/open/http/okserver/task/PriorityAsyncTask$InternalHandler;

    .line 42
    new-instance v0, Lcom/maya/open/http/okserver/download/DownloadThreadPool;

    invoke-direct {v0}, Lcom/maya/open/http/okserver/download/DownloadThreadPool;-><init>()V

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadThreadPool;->getExecutor()Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mExecuteInvoked:Z

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    new-instance v0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;-><init>(Lcom/maya/open/http/okserver/task/PriorityAsyncTask;)V

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mWorker:Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable;

    .line 74
    new-instance v0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$2;

    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mWorker:Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$2;-><init>(Lcom/maya/open/http/okserver/task/PriorityAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 88
    return-void
.end method

.method static synthetic access$200(Lcom/maya/open/http/okserver/task/PriorityAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    .line 28
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/maya/open/http/okserver/task/PriorityAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/http/okserver/task/PriorityAsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 28
    invoke-direct {p0, p1}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/maya/open/http/okserver/task/PriorityAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/open/http/okserver/task/PriorityAsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 28
    invoke-direct {p0, p1}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/maya/open/http/okserver/task/PriorityAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/open/http/okserver/task/PriorityAsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 28
    invoke-direct {p0, p1}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 289
    sget-object v0, Lcom/maya/open/http/okserver/task/Priority;->DEFAULT:Lcom/maya/open/http/okserver/task/Priority;

    invoke-static {p0, v0}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->execute(Ljava/lang/Runnable;Lcom/maya/open/http/okserver/task/Priority;)V

    .line 290
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Lcom/maya/open/http/okserver/task/Priority;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "priority"    # Lcom/maya/open/http/okserver/task/Priority;

    .line 301
    sget-object v0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/maya/open/http/okserver/task/PriorityRunnable;

    invoke-direct {v1, p1, p0}, Lcom/maya/open/http/okserver/task/PriorityRunnable;-><init>(Lcom/maya/open/http/okserver/task/Priority;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 323
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->onCancelled(Ljava/lang/Object;)V

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 328
    :goto_0
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    sget-object v0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->sHandler:Lcom/maya/open/http/okserver/task/PriorityAsyncTask$InternalHandler;

    new-instance v1, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$AsyncTaskResult;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$AsyncTaskResult;-><init>(Lcom/maya/open/http/okserver/task/PriorityAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 99
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 100
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 92
    .local v0, "wasTaskInvoked":Z
    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0, p1}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .line 211
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 212
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/maya/open/http/okserver/task/PriorityAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 254
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/maya/open/http/okserver/task/PriorityAsyncTask;
    .locals 3
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 265
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    iget-boolean v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mExecuteInvoked:Z

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mExecuteInvoked:Z

    .line 271
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->onPreExecute()V

    .line 273
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mWorker:Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 274
    new-instance v0, Lcom/maya/open/http/okserver/task/PriorityRunnable;

    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->priority:Lcom/maya/open/http/okserver/task/Priority;

    iget-object v2, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1, v2}, Lcom/maya/open/http/okserver/task/PriorityRunnable;-><init>(Lcom/maya/open/http/okserver/task/Priority;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->runnableTask:Lcom/maya/open/http/okserver/task/PriorityRunnable;

    .line 275
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->runnableTask:Lcom/maya/open/http/okserver/task/PriorityRunnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 277
    return-object p0

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/maya/open/http/okserver/task/Priority;
    .locals 1

    .line 47
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->priority:Lcom/maya/open/http/okserver/task/Priority;

    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 56
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->runnableTask:Lcom/maya/open/http/okserver/task/PriorityRunnable;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 197
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .line 185
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 169
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->onCancelled()V

    .line 170
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 140
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 125
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 317
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    sget-object v0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->sHandler:Lcom/maya/open/http/okserver/task/PriorityAsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$AsyncTaskResult;-><init>(Lcom/maya/open/http/okserver/task/PriorityAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 320
    :cond_0
    return-void
.end method

.method public setPriority(Lcom/maya/open/http/okserver/task/Priority;)V
    .locals 0
    .param p1, "priority"    # Lcom/maya/open/http/okserver/task/Priority;

    .line 51
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iput-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->priority:Lcom/maya/open/http/okserver/task/Priority;

    .line 52
    return-void
.end method
