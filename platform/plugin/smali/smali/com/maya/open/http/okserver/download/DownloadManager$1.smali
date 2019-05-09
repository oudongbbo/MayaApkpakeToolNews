.class Lcom/maya/open/http/okserver/download/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/http/okserver/download/DownloadManager;->restartTask(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/http/okserver/download/DownloadManager;

.field final synthetic val$downloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/maya/open/http/okserver/download/DownloadManager;Lcom/maya/open/http/okserver/download/DownloadInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/http/okserver/download/DownloadManager;

    .line 210
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadManager$1;->this$0:Lcom/maya/open/http/okserver/download/DownloadManager;

    iput-object p2, p0, Lcom/maya/open/http/okserver/download/DownloadManager$1;->val$downloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskEnd(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 213
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager$1;->val$downloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTask()Lcom/maya/open/http/okserver/download/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadTask;->getRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager$1;->this$0:Lcom/maya/open/http/okserver/download/DownloadManager;

    # getter for: Lcom/maya/open/http/okserver/download/DownloadManager;->threadPool:Lcom/maya/open/http/okserver/download/DownloadThreadPool;
    invoke-static {v0}, Lcom/maya/open/http/okserver/download/DownloadManager;->access$000(Lcom/maya/open/http/okserver/download/DownloadManager;)Lcom/maya/open/http/okserver/download/DownloadThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadThreadPool;->getExecutor()Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->removeOnTaskEndListener(Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;)V

    .line 217
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadManager$1;->this$0:Lcom/maya/open/http/okserver/download/DownloadManager;

    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager$1;->val$downloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager$1;->val$downloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager$1;->val$downloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getData()Ljava/io/Serializable;

    move-result-object v4

    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager$1;->val$downloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getRequest()Lcom/maya/open/http/okgo/request/BaseRequest;

    move-result-object v5

    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager$1;->val$downloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getListener()Lcom/maya/open/http/okserver/listener/DownloadListener;

    move-result-object v6

    const/4 v7, 0x1

    # invokes: Lcom/maya/open/http/okserver/download/DownloadManager;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Lcom/maya/open/http/okgo/request/BaseRequest;Lcom/maya/open/http/okserver/listener/DownloadListener;Z)V
    invoke-static/range {v1 .. v7}, Lcom/maya/open/http/okserver/download/DownloadManager;->access$100(Lcom/maya/open/http/okserver/download/DownloadManager;Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Lcom/maya/open/http/okgo/request/BaseRequest;Lcom/maya/open/http/okserver/listener/DownloadListener;Z)V

    .line 219
    :cond_0
    return-void
.end method
