.class Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;
.super Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable;
.source "SourceFile"


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
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;->this$0:Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable;-><init>(Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;)V

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

    .line 66
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;->this$0:Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    invoke-static {v0}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->access$200(Lcom/maya/open/http/okserver/task/PriorityAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    .line 68
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 70
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;->this$0:Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;->this$0:Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    iget-object v2, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->access$300(Lcom/maya/open/http/okserver/task/PriorityAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
