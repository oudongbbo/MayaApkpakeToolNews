.class public Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityBlockingQueue.java"

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
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
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

    .line 156
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;-><init>(I)V

    .line 157
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 159
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
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

    .line 160
    if-lez p1, :cond_0

    .line 161
    iput p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    .line 162
    new-instance v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;-><init>(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->last:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 163
    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 166
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;-><init>(I)V

    .line 167
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 168
    .local v0, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, "n":I
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 172
    .local v3, "e":Ljava/lang/Object;, "TE;"
    if-eqz v3, :cond_1

    .line 173
    iget v4, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-eq v1, v4, :cond_0

    .line 174
    new-instance v4, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    invoke-direct {v4, p0, v3}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;-><init>(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    .line 175
    add-int/lit8 v1, v1, 0x1

    .line 176
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 173
    .restart local v3    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Queue full"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 177
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    iget-object v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v1    # "n":I
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    nop

    .line 181
    return-void

    .line 179
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    throw v1
.end method

.method private _dequeue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 131
    .local v0, "h":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    iget-object v1, v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 132
    .local v1, "first":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    iput-object v0, v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 133
    iput-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 134
    invoke-virtual {v1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 135
    .local v2, "x":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->setValue(Ljava/lang/Object;)V

    .line 136
    return-object v2
.end method

.method private _enqueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    .local p1, "node":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    const/4 v0, 0x0

    .line 107
    .local v0, "added":Z
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 108
    .local v1, "curr":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    const/4 v2, 0x0

    .line 110
    .local v2, "temp":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    :goto_0
    iget-object v3, v1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    if-eqz v3, :cond_1

    .line 111
    iget-object v2, v1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 112
    invoke-virtual {v2}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getPriority()Lcom/maya/open/http/okserver/task/Priority;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/open/http/okserver/task/Priority;->ordinal()I

    move-result v3

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getPriority()Lcom/maya/open/http/okserver/task/Priority;

    move-result-object v4

    invoke-virtual {v4}, Lcom/maya/open/http/okserver/task/Priority;->ordinal()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 113
    iput-object p1, v1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 114
    iput-object v2, p1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 115
    const/4 v0, 0x1

    .line 116
    goto :goto_1

    .line 118
    :cond_0
    iget-object v1, v1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    goto :goto_0

    .line 121
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 122
    iget-object v3, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->last:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iput-object p1, v3, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iput-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->last:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 124
    :cond_2
    return-void
.end method

.method private declared-synchronized opQueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;)TE;"
        }
    .end annotation

    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    .local p1, "node":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    monitor-enter p0

    .line 95
    if-nez p1, :cond_0

    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->_dequeue()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 94
    .end local p1    # "node":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 98
    .restart local p1    # "node":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->_enqueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 94
    .end local p1    # "node":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 568
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
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

    .line 576
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 579
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    return-void

    .line 577
    .restart local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {p0, v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 578
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_0
.end method

.method private signalNotEmpty()V
    .locals 2

    .line 72
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 73
    .local v0, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 78
    nop

    .line 79
    return-void

    .line 77
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 78
    throw v1
.end method

.method private signalNotFull()V
    .locals 2

    .line 85
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 86
    .local v0, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 91
    nop

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 91
    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 550
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 553
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iget-object v0, v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .local v0, "p":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 553
    iget-object v1, v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    move-object v0, v1

    goto :goto_0

    .line 557
    .end local v0    # "p":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 560
    nop

    .line 561
    return-void

    .line 559
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 560
    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 420
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .local v0, "h":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    :goto_0
    iget-object v1, v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    move-object v2, v1

    .local v2, "p":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    if-eqz v1, :cond_0

    .line 423
    iput-object v0, v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 424
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->setValue(Ljava/lang/Object;)V

    .line 422
    move-object v0, v2

    goto :goto_0

    .line 426
    .end local v0    # "h":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    .end local v2    # "p":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
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

    .line 431
    nop

    .line 432
    return-void

    .line 430
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 431
    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 373
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iget-object v1, v1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .local v1, "p":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_2

    .line 377
    invoke-virtual {v1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 380
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 377
    return v0

    .line 376
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 378
    .end local v1    # "p":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    :cond_2
    nop

    .line 380
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 378
    return v0

    .line 380
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 381
    throw v0
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

    .line 436
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 10
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 441
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-eqz p1, :cond_9

    .line 442
    if-eq p1, p0, :cond_8

    .line 443
    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    .line 444
    :cond_0
    const/4 v1, 0x0

    .line 445
    .local v1, "signalNotFull":Z
    iget-object v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 446
    .local v2, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 448
    :try_start_0
    iget-object v3, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 450
    .local v3, "n":I
    iget-object v4, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 451
    .local v4, "h":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    move-object v5, v4

    const/4 v4, 0x0

    .line 453
    .local v4, "i":I
    .local v5, "h":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    :goto_0
    const/4 v6, 0x1

    if-ge v4, v3, :cond_3

    .line 454
    :try_start_1
    iget-object v7, v5, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 455
    .local v7, "p":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    invoke-virtual {v7}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 456
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->setValue(Ljava/lang/Object;)V

    .line 457
    iput-object v5, v5, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    move-object v5, v7

    .line 459
    add-int/lit8 v4, v4, 0x1

    .line 460
    .end local v7    # "p":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    goto :goto_0

    .line 464
    :catchall_0
    move-exception v7

    if-lez v4, :cond_2

    .line 466
    :try_start_2
    iput-object v5, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 467
    iget-object v8, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v9, v4

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v8

    iget v9, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v8, v9, :cond_1

    const/4 v0, 0x1

    nop

    .line 469
    :cond_1
    move v1, v0

    :cond_2
    throw v7

    .line 461
    :cond_3
    nop

    .line 464
    if-lez v4, :cond_5

    .line 466
    iput-object v5, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .line 467
    iget-object v7, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v8, v4

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v7

    iget v8, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v7, v8, :cond_4

    const/4 v0, 0x1

    nop

    :cond_4
    move v1, v0

    .line 471
    :cond_5
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 472
    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    .line 461
    :cond_6
    return v3

    .line 471
    .end local v3    # "n":I
    .end local v4    # "i":I
    .end local v5    # "h":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 472
    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    .line 473
    :cond_7
    throw v0

    .line 442
    .end local v1    # "signalNotFull":Z
    .end local v2    # "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 441
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method fullyLock()V
    .locals 1

    .line 143
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 144
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 145
    return-void
.end method

.method fullyUnlock()V
    .locals 1

    .line 151
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 152
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 153
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
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    new-instance v0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;

    invoke-direct {v0, p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Itr;-><init>(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 242
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_4

    .line 243
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 244
    .local v0, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    .line 245
    :cond_0
    const/4 v1, -0x1

    .line 246
    .local v1, "c":I
    new-instance v2, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    invoke-direct {v2, p0, p1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;-><init>(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    .line 247
    .local v2, "node":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    iget-object v4, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 248
    .local v4, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 250
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_1

    .line 251
    invoke-direct {p0, v2}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    .line 252
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    move v1, v5

    .line 253
    add-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_1

    iget-object v5, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :cond_1
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 257
    nop

    .line 258
    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->signalNotEmpty()V

    .line 259
    :cond_2
    if-ltz v1, :cond_3

    const/4 v3, 0x1

    nop

    :cond_3
    return v3

    .line 256
    :catchall_0
    move-exception v3

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 257
    throw v3

    .line 242
    .end local v0    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v1    # "c":I
    .end local v2    # "node":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    .end local v4    # "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 8
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 219
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_4

    .line 220
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 221
    .local v0, "nanos":J
    const/4 v2, -0x1

    .line 222
    .local v2, "c":I
    iget-object v3, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 223
    .local v3, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v4, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 224
    .local v4, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 226
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v6, :cond_1

    .line 227
    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-gtz v7, :cond_0

    const/4 v5, 0x0

    .line 234
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 227
    return v5

    .line 228
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v5

    move-wide v0, v5

    goto :goto_0

    .line 230
    :cond_1
    new-instance v5, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    invoke-direct {v5, p0, p1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;-><init>(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    invoke-direct {p0, v5}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    move v2, v5

    .line 232
    add-int/lit8 v5, v2, 0x1

    iget v6, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 235
    nop

    .line 236
    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->signalNotEmpty()V

    .line 237
    :cond_3
    const/4 v5, 0x1

    return v5

    .line 234
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 235
    throw v5

    .line 219
    .end local v0    # "nanos":J
    .end local v2    # "c":I
    .end local v3    # "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 329
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
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
    .local v0, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 333
    :try_start_0
    iget-object v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iget-object v2, v2, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    .local v2, "first":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    if-nez v2, :cond_1

    .line 337
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 334
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

    .line 335
    return-object v1

    .line 337
    .end local v2    # "first":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 338
    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 308
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 309
    .local v0, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 310
    :cond_0
    const/4 v1, 0x0

    .line 311
    .local v1, "x":Ljava/lang/Object;, "TE;"
    const/4 v3, -0x1

    .line 312
    .local v3, "c":I
    iget-object v4, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 313
    .local v4, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 315
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-lez v5, :cond_1

    .line 316
    invoke-direct {p0, v2}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 317
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v2

    move v3, v2

    .line 318
    const/4 v2, 0x1

    if-le v3, v2, :cond_1

    iget-object v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_1
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 322
    nop

    .line 323
    iget v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v3, v2, :cond_2

    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    .line 324
    :cond_2
    return-object v1

    .line 321
    :catchall_0
    move-exception v2

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 322
    throw v2
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 10
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 285
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    const/4 v0, 0x0

    .line 286
    .local v0, "x":Ljava/lang/Object;, "TE;"
    const/4 v1, -0x1

    .line 287
    .local v1, "c":I
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 288
    .local v2, "nanos":J
    iget-object v4, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 289
    .local v4, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v5, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 290
    .local v5, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 292
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 293
    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-gtz v6, :cond_0

    .line 300
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 293
    return-object v7

    .line 294
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v6

    move-wide v2, v6

    goto :goto_0

    .line 296
    :cond_1
    invoke-direct {p0, v7}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .line 297
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v6

    move v1, v6

    .line 298
    const/4 v6, 0x1

    if-le v1, v6, :cond_2

    iget-object v6, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :cond_2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 301
    nop

    .line 302
    iget v6, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v1, v6, :cond_3

    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    .line 303
    :cond_3
    return-object v0

    .line 300
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 301
    throw v6
.end method

.method public put(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 195
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_3

    .line 198
    const/4 v0, -0x1

    .line 199
    .local v0, "c":I
    new-instance v1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    invoke-direct {v1, p0, p1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;-><init>(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    .line 200
    .local v1, "node":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    iget-object v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 201
    .local v2, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v3, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 202
    .local v3, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 204
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v4, v5, :cond_0

    .line 205
    iget-object v4, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    .line 207
    :cond_0
    invoke-direct {p0, v1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    .line 208
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    move v0, v4

    .line 209
    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 212
    nop

    .line 213
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->signalNotEmpty()V

    .line 214
    :cond_2
    return-void

    .line 211
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 212
    throw v4

    .line 195
    .end local v0    # "c":I
    .end local v1    # "node":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    .end local v2    # "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v3    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public remainingCapacity()I
    .locals 2

    .line 190
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    iget v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 356
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .local v1, "trail":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    iget-object v2, v1, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .local v2, "p":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    :goto_0
    if-eqz v2, :cond_2

    .line 360
    invoke-virtual {v2}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    invoke-virtual {p0, v2, v1}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->unlink(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    const/4 v0, 0x1

    .line 367
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 362
    return v0

    .line 359
    :cond_1
    move-object v1, v2

    :try_start_1
    iget-object v3, v2, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    goto :goto_0

    .line 365
    .end local v1    # "trail":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    .end local v2    # "p":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    :cond_2
    nop

    .line 367
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 365
    return v0

    .line 367
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 368
    throw v0
.end method

.method public size()I
    .locals 1

    .line 185
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 265
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    const/4 v0, -0x1

    .line 266
    .local v0, "c":I
    iget-object v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 267
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 268
    .local v2, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 270
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_0

    .line 271
    iget-object v3, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    .line 273
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->opQueue(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    move-result-object v3

    .line 274
    .local v3, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v4

    move v0, v4

    .line 275
    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    iget-object v4, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 278
    nop

    .line 279
    iget v4, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v0, v4, :cond_2

    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->signalNotFull()V

    .line 280
    :cond_2
    return-object v3

    .line 277
    .end local v3    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 278
    throw v3
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .line 386
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 389
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 390
    .local v1, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 391
    .local v2, "k":I
    iget-object v3, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iget-object v3, v3, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .local v3, "p":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    :goto_0
    if-eqz v3, :cond_0

    .line 392
    add-int/lit8 v4, v2, 0x1

    .local v4, "k":I
    invoke-virtual {v3}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v2

    .line 391
    .end local v2    # "k":I
    iget-object v2, v3, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    move v2, v4

    goto :goto_0

    .line 393
    .end local v3    # "p":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    .end local v4    # "k":I
    .restart local v2    # "k":I
    :cond_0
    nop

    .line 395
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 393
    return-object v1

    .line 395
    .end local v0    # "size":I
    .end local v1    # "a":[Ljava/lang/Object;
    .end local v2    # "k":I
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 396
    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 402
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 405
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 406
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    .line 408
    :cond_0
    const/4 v1, 0x0

    .line 409
    .local v1, "k":I
    iget-object v2, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->head:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    iget-object v2, v2, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    .local v2, "p":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TT;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 410
    add-int/lit8 v3, v1, 0x1

    .local v3, "k":I
    invoke-virtual {v2}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v1

    .line 409
    .end local v1    # "k":I
    iget-object v1, v2, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;

    move-object v2, v1

    move v1, v3

    goto :goto_0

    .line 411
    .end local v2    # "p":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TT;>;"
    .end local v3    # "k":I
    .restart local v1    # "k":I
    :cond_1
    array-length v2, p1

    if-le v2, v1, :cond_2

    const/4 v2, 0x0

    aput-object v2, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :cond_2
    nop

    .line 414
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 412
    return-object p1

    .line 414
    .end local v0    # "size":I
    .end local v1    # "k":I
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 415
    throw v0
.end method

.method unlink(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;",
            "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TE;>;)V"
        }
    .end annotation

    .line 348
    .local p0, "this":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>;"
    .local p1, "p":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    .local p2, "trail":Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;, "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<TE;>.Node<TE;>;"
    const/4 v0, 0x0

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
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    iget v1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 352
    :cond_1
    return-void
.end method
