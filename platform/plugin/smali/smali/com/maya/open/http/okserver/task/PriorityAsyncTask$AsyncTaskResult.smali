.class Lcom/maya/open/http/okserver/task/PriorityAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okserver/task/PriorityAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/maya/open/http/okserver/task/PriorityAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/maya/open/http/okserver/task/PriorityAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okserver/task/PriorityAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$AsyncTaskResult;->mTask:Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    .line 363
    iput-object p2, p0, Lcom/maya/open/http/okserver/task/PriorityAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    return-void
.end method
