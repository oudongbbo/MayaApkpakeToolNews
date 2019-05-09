.class Lcom/maya/open/http/okserver/task/ExecutorWithListener$1;
.super Ljava/lang/Object;
.source "ExecutorWithListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okserver/task/ExecutorWithListener;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okserver/task/ExecutorWithListener;

.field final synthetic val$listener:Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okserver/task/ExecutorWithListener;Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    .line 49
    iput-object p1, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener$1;->this$0:Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    iput-object p2, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener$1;->val$listener:Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;

    iput-object p3, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener$1;->val$listener:Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;

    iget-object v1, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;->onTaskEnd(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method
