.class Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;
.super Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okserver/task/PriorityAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okserver/task/PriorityAsyncTask;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okserver/task/PriorityAsyncTask;)V
    .locals 1
    .param p1, "this$0"    # Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    .line 63
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;"
    iput-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;->this$0:Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable;-><init>(Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;"
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;->this$0:Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    # getter for: Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->access$200(Lcom/maya/open/http/okserver/task/PriorityAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 70
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;->this$0:Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;->this$0:Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    iget-object v2, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->access$300(Lcom/maya/open/http/okserver/task/PriorityAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
