.class public Lcom/maya/open/http/okserver/upload/UploadTask;
.super Lcom/maya/open/http/okserver/task/PriorityAsyncTask;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/maya/open/http/okserver/task/PriorityAsyncTask<",
        "Ljava/lang/Void;",
        "Lcom/maya/open/http/okserver/upload/UploadInfo;",
        "Lcom/maya/open/http/okserver/upload/UploadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

.field private mUploadUIHandler:Lcom/maya/open/http/okserver/upload/UploadUIHandler;


# direct methods
.method public constructor <init>(Lcom/maya/open/http/okserver/upload/UploadInfo;Lcom/maya/open/http/okserver/listener/UploadListener;)V
    .locals 2
    .param p1, "downloadInfo"    # Lcom/maya/open/http/okserver/upload/UploadInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okserver/upload/UploadInfo;",
            "Lcom/maya/open/http/okserver/listener/UploadListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lcom/maya/open/http/okserver/upload/UploadTask;, "Lcom/maya/open/http/okserver/upload/UploadTask<TT;>;"
    .local p2, "uploadListener":Lcom/maya/open/http/okserver/listener/UploadListener;, "Lcom/maya/open/http/okserver/listener/UploadListener<TT;>;"
    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    .line 30
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v0, p2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setListener(Lcom/maya/open/http/okserver/listener/UploadListener;)V

    .line 31
    invoke-static {}, Lcom/maya/open/http/okserver/upload/UploadManager;->getInstance()Lcom/maya/open/http/okserver/upload/UploadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/upload/UploadManager;->getHandler()Lcom/maya/open/http/okserver/upload/UploadUIHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadUIHandler:Lcom/maya/open/http/okserver/upload/UploadUIHandler;

    .line 33
    invoke-static {}, Lcom/maya/open/http/okserver/upload/UploadManager;->getInstance()Lcom/maya/open/http/okserver/upload/UploadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/upload/UploadManager;->getThreadPool()Lcom/maya/open/http/okserver/upload/UploadThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/upload/UploadThreadPool;->getExecutor()Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/maya/open/http/okserver/upload/UploadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/maya/open/http/okserver/upload/UploadTask;)Lcom/maya/open/http/okserver/upload/UploadInfo;
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/http/okserver/upload/UploadTask;

    .line 23
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/open/http/okserver/upload/UploadTask;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/open/http/okserver/upload/UploadTask;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Exception;

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 126
    .local p0, "this":Lcom/maya/open/http/okserver/upload/UploadTask;, "Lcom/maya/open/http/okserver/upload/UploadTask<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;

    invoke-direct {v0}, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;-><init>()V

    .line 127
    .local v0, "messageBean":Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;, "Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean<TT;>;"
    iget-object v1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    iput-object v1, v0, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;->uploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    .line 128
    iput-object p2, v0, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;->errorMsg:Ljava/lang/String;

    .line 129
    iput-object p3, v0, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;->e:Ljava/lang/Exception;

    .line 130
    iput-object p1, v0, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;->data:Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadUIHandler:Lcom/maya/open/http/okserver/upload/UploadUIHandler;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/upload/UploadUIHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 132
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    iget-object v2, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadUIHandler:Lcom/maya/open/http/okserver/upload/UploadUIHandler;

    invoke-virtual {v2, v1}, Lcom/maya/open/http/okserver/upload/UploadUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/maya/open/http/okserver/upload/UploadInfo;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .line 51
    .local p0, "this":Lcom/maya/open/http/okserver/upload/UploadTask;, "Lcom/maya/open/http/okserver/upload/UploadTask<TT;>;"
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/upload/UploadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 53
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setState(I)V

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/maya/open/http/okserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 59
    const/4 v3, 0x4

    :try_start_0
    iget-object v4, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v4}, Lcom/maya/open/http/okserver/upload/UploadInfo;->getRequest()Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object v4

    new-instance v5, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;

    invoke-direct {v5, p0}, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;-><init>(Lcom/maya/open/http/okserver/upload/UploadTask;)V

    invoke-virtual {v4, v5}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->setCallback(Lcom/maya/open/http/okgo/callback/AbsCallback;)Lcom/maya/open/http/okgo/request/BaseRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/maya/open/http/okgo/request/BaseRequest;->execute()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    .local v4, "response":Lcom/maya/open/http/okhttp3/Response;
    nop

    .line 65
    nop

    .line 68
    invoke-virtual {v4}, Lcom/maya/open/http/okhttp3/Response;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    :try_start_1
    iget-object v5, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v5}, Lcom/maya/open/http/okserver/upload/UploadInfo;->getListener()Lcom/maya/open/http/okserver/listener/UploadListener;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/maya/open/http/okserver/listener/UploadListener;->parseNetworkResponse(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/Object;

    move-result-object v5

    .line 72
    .local v5, "t":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v6, v1, v2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 73
    iget-object v6, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setState(I)V

    .line 74
    invoke-direct {p0, v5, v0, v0}, Lcom/maya/open/http/okserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 75
    iget-object v6, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v6

    .line 76
    .end local v5    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v5

    .line 77
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    iget-object v6, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v6, v1, v2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 79
    iget-object v1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v1, v3}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setState(I)V

    .line 80
    const-string v1, "\u89e3\u6790\u6570\u636e\u5bf9\u8c61\u51fa\u9519"

    invoke-direct {p0, v0, v1, v5}, Lcom/maya/open/http/okserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 81
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    return-object v0

    .line 84
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v5, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v5, v1, v2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 85
    iget-object v1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v1, v3}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setState(I)V

    .line 86
    const-string v1, "\u6570\u636e\u8fd4\u56de\u5931\u8d25"

    invoke-direct {p0, v0, v1, v0}, Lcom/maya/open/http/okserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 87
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    return-object v0

    .line 60
    .end local v4    # "response":Lcom/maya/open/http/okhttp3/Response;
    :catch_1
    move-exception v4

    .line 61
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 62
    iget-object v5, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v5, v1, v2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 63
    iget-object v1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v1, v3}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setState(I)V

    .line 64
    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-direct {p0, v0, v1, v4}, Lcom/maya/open/http/okserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 65
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    .local p0, "this":Lcom/maya/open/http/okserver/upload/UploadTask;, "Lcom/maya/open/http/okserver/upload/UploadTask<TT;>;"
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/maya/open/http/okserver/upload/UploadTask;->doInBackground([Ljava/lang/Void;)Lcom/maya/open/http/okserver/upload/UploadInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onPreExecute()V
    .locals 4

    .line 40
    .local p0, "this":Lcom/maya/open/http/okserver/upload/UploadTask;, "Lcom/maya/open/http/okserver/upload/UploadTask<TT;>;"
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/upload/UploadInfo;->getListener()Lcom/maya/open/http/okserver/listener/UploadListener;

    move-result-object v0

    .line 41
    .local v0, "listener":Lcom/maya/open/http/okserver/listener/UploadListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/listener/UploadListener;->onAdd(Lcom/maya/open/http/okserver/upload/UploadInfo;)V

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 44
    iget-object v1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setState(I)V

    .line 45
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v1}, Lcom/maya/open/http/okserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 46
    return-void
.end method
