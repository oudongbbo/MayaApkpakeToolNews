.class Lcom/maya/open/http/okserver/task/ExecutorWithListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

.field final synthetic val$listener:Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okserver/task/ExecutorWithListener;Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener$2;->this$0:Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    iput-object p2, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener$2;->val$listener:Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/maya/open/http/okserver/task/ExecutorWithListener$2;->val$listener:Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;

    invoke-interface {v0}, Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;->onAllTaskEnd()V

    return-void
.end method
