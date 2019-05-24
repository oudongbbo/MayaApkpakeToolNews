.class Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field next:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/maya/open/http/okserver/task/PriorityBlockingQueue<",
            "TE;>.Node<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;

.field private value:Lcom/maya/open/http/okserver/task/PriorityObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/maya/open/http/okserver/task/PriorityObject<",
            "*>;"
        }
    .end annotation
.end field

.field private valueAsT:Z


# direct methods
.method constructor <init>(Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 589
    iput-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->this$0:Lcom/maya/open/http/okserver/task/PriorityBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 585
    iput-boolean p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->valueAsT:Z

    .line 590
    invoke-virtual {p0, p2}, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getPriority()Lcom/maya/open/http/okserver/task/Priority;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->value:Lcom/maya/open/http/okserver/task/PriorityObject;

    iget-object v0, v0, Lcom/maya/open/http/okserver/task/PriorityObject;->priority:Lcom/maya/open/http/okserver/task/Priority;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->value:Lcom/maya/open/http/okserver/task/PriorityObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 601
    :cond_0
    iget-boolean v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->valueAsT:Z

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->value:Lcom/maya/open/http/okserver/task/PriorityObject;

    return-object v0

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->value:Lcom/maya/open/http/okserver/task/PriorityObject;

    iget-object v0, v0, Lcom/maya/open/http/okserver/task/PriorityObject;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 610
    iput-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->value:Lcom/maya/open/http/okserver/task/PriorityObject;

    goto :goto_0

    .line 611
    :cond_0
    instance-of v0, p1, Lcom/maya/open/http/okserver/task/PriorityObject;

    if-eqz v0, :cond_1

    .line 612
    check-cast p1, Lcom/maya/open/http/okserver/task/PriorityObject;

    iput-object p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->value:Lcom/maya/open/http/okserver/task/PriorityObject;

    const/4 p1, 0x1

    .line 613
    iput-boolean p1, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->valueAsT:Z

    goto :goto_0

    .line 615
    :cond_1
    new-instance v0, Lcom/maya/open/http/okserver/task/PriorityObject;

    sget-object v1, Lcom/maya/open/http/okserver/task/Priority;->DEFAULT:Lcom/maya/open/http/okserver/task/Priority;

    invoke-direct {v0, v1, p1}, Lcom/maya/open/http/okserver/task/PriorityObject;-><init>(Lcom/maya/open/http/okserver/task/Priority;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityBlockingQueue$Node;->value:Lcom/maya/open/http/okserver/task/PriorityObject;

    :goto_0
    return-void
.end method
