.class public Lcom/maya/open/http/okserver/task/PriorityRunnable;
.super Lcom/maya/open/http/okserver/task/PriorityObject;
.source "PriorityRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/maya/open/http/okserver/task/PriorityObject<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okserver/task/Priority;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "priority"    # Lcom/maya/open/http/okserver/task/Priority;
    .param p2, "obj"    # Ljava/lang/Runnable;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/maya/open/http/okserver/task/PriorityObject;-><init>(Lcom/maya/open/http/okserver/task/Priority;Ljava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/PriorityRunnable;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 24
    return-void
.end method
