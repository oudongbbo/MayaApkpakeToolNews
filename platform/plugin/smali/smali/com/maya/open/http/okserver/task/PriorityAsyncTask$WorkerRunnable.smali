.class abstract Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable;
.super Ljava/lang/Object;
.source "PriorityAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okserver/task/PriorityAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "WorkerRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field mParams:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 352
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/maya/open/http/okserver/task/PriorityAsyncTask$1;

    .line 352
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable;, "Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable<TParams;TResult;>;"
    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$WorkerRunnable;-><init>()V

    return-void
.end method
