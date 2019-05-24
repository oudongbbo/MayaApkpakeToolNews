.class public Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;,
        Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5fcfb35fbf1a7e0aL


# instance fields
.field private final capacity:I

.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field transient head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;"
        }
    .end annotation
.end field

.field private transient last:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;"
        }
    .end annotation
.end field

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private final putLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final takeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7fffffff

    .line 156
    invoke-direct {p0, v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 55
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 60
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    if-lez p1, :cond_0

    .line 161
    iput p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    .line 162
    new-instance p1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;-><init>(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iput-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->last:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    return-void

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 166
    invoke-direct {p0, v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;-><init>(I)V

    .line 167
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 168
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    .line 171
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 173
    iget v3, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-eq v1, v3, :cond_0

    .line 174
    new-instance v3, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    invoke-direct {v3, p0, v2}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;-><init>(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Queue full"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 177
    :cond_2
    iget-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    throw p1
.end method

.method private _dequeue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 131
    iget-object v1, v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 132
    iput-object v0, v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 133
    iput-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 134
    invoke-virtual {v1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 135
    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method private _enqueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 110
    :goto_0
    iget-object v1, v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 112
    invoke-virtual {v1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getPriority()Lcom/maya/open/http/okserver/task/Priority;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okserver/task/Priority;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getPriority()Lcom/maya/open/http/okserver/task/Priority;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/open/http/okserver/task/Priority;->ordinal()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 113
    iput-object p1, v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 114
    iput-object v1, p1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    const/4 v0, 0x1

    goto :goto_1

    .line 118
    :cond_0
    iget-object v0, v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->last:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iput-object p1, v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iput-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->last:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    :cond_2
    return-void
.end method

.method private declared-synchronized opQueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;)TE;"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->_dequeue()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 98
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->_enqueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 99
    monitor-exit p0

    return-object p1

    .line 94
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .line 568
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 570
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 571
    new-instance v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;-><init>(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->last:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 575
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 577
    :cond_0
    invoke-virtual {p0, v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private signalNotEmpty()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 78
    throw v1
.end method

.method private signalNotFull()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 86
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 91
    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .line 547
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 550
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 553
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    :goto_0
    iget-object v0, v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 557
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 560
    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 420
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    :goto_0
    iget-object v1, v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    if-eqz v1, :cond_0

    .line 423
    iput-object v0, v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    const/4 v0, 0x0

    .line 424
    invoke-virtual {v1, v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->setValue(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->last:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 428
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    iget v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :cond_1
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 431
    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    :cond_1
    iget-object v1, v1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    if-eqz v1, :cond_2

    .line 377
    invoke-virtual {v1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    .line 380
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 381
    throw p1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 436
    invoke-virtual {p0, p1, v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result p1

    return p1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    if-eqz p1, :cond_7

    if-eq p1, p0, :cond_6

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 446
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 448
    :try_start_0
    iget-object v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 450
    iget-object v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, p2, :cond_2

    .line 454
    :try_start_1
    iget-object v5, v3, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 455
    invoke-virtual {v5}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 456
    invoke-virtual {v5, v6}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->setValue(Ljava/lang/Object;)V

    .line 457
    iput-object v3, v3, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    move-object v3, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    if-lez v2, :cond_1

    .line 466
    :try_start_2
    iput-object v3, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 467
    iget-object p2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p2

    iget v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    .line 469
    :cond_1
    throw p1

    :cond_2
    if-lez v2, :cond_3

    .line 466
    iput-object v3, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 467
    iget-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v2

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    iget v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p1, v2, :cond_3

    const/4 v0, 0x1

    .line 471
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_4

    .line 472
    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    :cond_4
    return p2

    :catchall_1
    move-exception p1

    .line 471
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_5

    .line 472
    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    .line 473
    :cond_5
    throw p1

    .line 442
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 441
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method fullyLock()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 144
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method fullyUnlock()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 152
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 478
    new-instance v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;-><init>(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 243
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 244
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v1, -0x1

    .line 246
    new-instance v2, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    invoke-direct {v2, p0, p1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;-><init>(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    .line 247
    iget-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 248
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 250
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ge v4, v5, :cond_1

    .line 251
    invoke-direct {p0, v2}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    .line 252
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 253
    iget v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v1, :cond_2

    .line 258
    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->signalNotEmpty()V

    :cond_2
    if-ltz v1, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    :catchall_0
    move-exception v0

    .line 256
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 257
    throw v0

    .line 242
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 220
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    .line 222
    iget-object p4, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 223
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 224
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 226
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_0

    const/4 p1, 0x0

    .line 234
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    .line 228
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p2

    goto :goto_0

    .line 230
    :cond_1
    new-instance p2, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    invoke-direct {p2, p0, p1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;-><init>(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    .line 232
    iget p3, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ge p2, p3, :cond_2

    iget-object p2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :cond_2
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p1, :cond_3

    .line 236
    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->signalNotEmpty()V

    :cond_3
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 234
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 235
    throw p1

    .line 219
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 331
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 333
    :try_start_0
    iget-object v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iget-object v2, v2, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 337
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 335
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 338
    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 309
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, -0x1

    .line 312
    iget-object v3, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 313
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 315
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_1

    .line 316
    invoke-direct {p0, v2}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    move-result-object v2

    .line 317
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 323
    iget v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v1, v0, :cond_2

    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v0

    .line 321
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 322
    throw v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .line 287
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 288
    iget-object p3, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 289
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 290
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 292
    :goto_0
    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-gtz v1, :cond_0

    .line 300
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    .line 294
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1

    goto :goto_0

    .line 296
    :cond_1
    invoke-direct {p0, v2}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    move-result-object p1

    .line 297
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_2

    .line 298
    iget-object p3, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 302
    iget p3, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne p2, p3, :cond_3

    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    .line 300
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 301
    throw p1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 199
    new-instance v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    invoke-direct {v0, p0, p1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;-><init>(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    .line 200
    iget-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 201
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 202
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 204
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v2, v3, :cond_0

    .line 205
    iget-object v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    .line 207
    :cond_0
    invoke-direct {p0, v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    .line 208
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 209
    iget v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_2

    .line 213
    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->signalNotEmpty()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 211
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 212
    throw v0

    .line 195
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public remainingCapacity()I
    .locals 2

    .line 190
    iget v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    :cond_1
    iget-object v2, v1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    if-eqz v1, :cond_2

    .line 360
    invoke-virtual {v1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    invoke-virtual {p0, v1, v2}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->unlink(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 367
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 368
    throw p1
.end method

.method public size()I
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 267
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 268
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 270
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 273
    invoke-direct {p0, v2}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    move-result-object v2

    .line 274
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    .line 275
    iget-object v3, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 279
    iget v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v0

    .line 277
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 278
    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .line 386
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 389
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 391
    iget-object v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iget-object v2, v2, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    :goto_0
    if-eqz v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 392
    invoke-virtual {v2}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    .line 391
    iget-object v2, v2, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 396
    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 405
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 406
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 409
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iget-object v1, v1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 410
    invoke-virtual {v1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v0

    .line 409
    iget-object v1, v1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    move v0, v2

    goto :goto_0

    .line 411
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_2

    const/4 v1, 0x0

    aput-object v1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :cond_2
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 415
    throw p1
.end method

.method unlink(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;",
            "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 348
    invoke-virtual {p1, v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->setValue(Ljava/lang/Object;)V

    .line 349
    iget-object v0, p1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iput-object v0, p2, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 350
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->last:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    if-ne v0, p1, :cond_0

    iput-object p2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->last:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p1

    iget p2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_1
    return-void
.end method
