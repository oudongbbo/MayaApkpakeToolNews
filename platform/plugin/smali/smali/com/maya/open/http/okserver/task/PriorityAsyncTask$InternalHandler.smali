.class Lcom/maya/open/http/okserver/task/PriorityAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okserver/task/PriorityAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 333
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 334
    return-void
.end method

.method synthetic constructor <init>(Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;

    .line 330
    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 339
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$AsyncTaskResult;

    .line 340
    .local v0, "result":Lcom/maya/open/http/okserver/task/PriorityAsyncTask$AsyncTaskResult;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask$AsyncTaskResult<*>;"
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 346
    :pswitch_0
    iget-object v1, v0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$AsyncTaskResult;->mTask:Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    iget-object v2, v0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 343
    :pswitch_1
    iget-object v1, v0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$AsyncTaskResult;->mTask:Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    iget-object v2, v0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    # invokes: Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;->access$500(Lcom/maya/open/http/okserver/task/PriorityAsyncTask;Ljava/lang/Object;)V

    .line 344
    nop

    .line 349
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
