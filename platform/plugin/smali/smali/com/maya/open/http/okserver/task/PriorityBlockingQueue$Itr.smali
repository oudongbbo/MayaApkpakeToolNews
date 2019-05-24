.class Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private current:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;"
        }
    .end annotation
.end field

.field private currentElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lastRet:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;)V
    .locals 1

    .line 487
    iput-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    invoke-virtual {p1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 490
    :try_start_0
    iget-object v0, p1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iget-object v0, v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 491
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :cond_0
    invoke-virtual {p1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 494
    throw v0
.end method

.method private nextNode(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;)",
            "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;"
        }
    .end annotation

    .line 504
    :goto_0
    iget-object v0, p1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    if-ne v0, p1, :cond_0

    .line 505
    iget-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;

    iget-object p1, p1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iget-object p1, p1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    return-object p1

    :cond_0
    if-eqz v0, :cond_2

    .line 506
    invoke-virtual {v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->currentElement:Ljava/lang/Object;

    .line 517
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iput-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->lastRet:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 518
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    invoke-direct {p0, v1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->nextNode(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 519
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->current:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-object v0

    .line 515
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 522
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 523
    throw v0
.end method

.method public remove()V
    .locals 4

    .line 528
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->lastRet:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    if-eqz v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->lastRet:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    const/4 v1, 0x0

    .line 532
    iput-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->lastRet:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 533
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;

    iget-object v1, v1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    :cond_0
    iget-object v2, v1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->unlink(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 541
    throw v0

    .line 528
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
