.class public Lcom/maya/open/http/okserver/upload/UploadTask;
.super Lcom/maya/open/http/okserver/task/PriorityAsyncTask;
.source "SourceFile"


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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/maya/open/http/okserver/upload/UploadInfo;",
            "Lcom/maya/open/http/okserver/listener/UploadListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/maya/open/http/okserver/task/PriorityAsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    .line 30
    iget-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {p1, p2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setListener(Lcom/maya/open/http/okserver/listener/UploadListener;)V

    .line 31
    invoke-static {}, Lcom/maya/open/http/okserver/upload/UploadManager;->getInstance()Lcom/maya/open/http/okserver/upload/UploadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/upload/UploadManager;->getHandler()Lcom/maya/open/http/okserver/upload/UploadUIHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadUIHandler:Lcom/maya/open/http/okserver/upload/UploadUIHandler;

    .line 33
    invoke-static {}, Lcom/maya/open/http/okserver/upload/UploadManager;->getInstance()Lcom/maya/open/http/okserver/upload/UploadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/upload/UploadManager;->getThreadPool()Lcom/maya/open/http/okserver/upload/UploadThreadPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/upload/UploadThreadPool;->getExecutor()Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/maya/open/http/okserver/upload/UploadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/maya/open/http/okserver/task/PriorityAsyncTask;

    return-void
.end method

.method static synthetic access$000(Lcom/maya/open/http/okserver/upload/UploadTask;)Lcom/maya/open/http/okserver/upload/UploadInfo;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/maya/open/http/okserver/upload/UploadTask;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/maya/open/http/okserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;

    invoke-direct {v0}, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    iput-object v1, v0, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;->uploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    .line 128
    iput-object p2, v0, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;->errorMsg:Ljava/lang/String;

    .line 129
    iput-object p3, v0, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;->e:Ljava/lang/Exception;

    .line 130
    iput-object p1, v0, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;->data:Ljava/lang/Object;

    .line 131
    iget-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadUIHandler:Lcom/maya/open/http/okserver/upload/UploadUIHandler;

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/upload/UploadUIHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 132
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    iget-object p2, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadUIHandler:Lcom/maya/open/http/okserver/upload/UploadUIHandler;

    invoke-virtual {p2, p1}, Lcom/maya/open/http/okserver/upload/UploadUIHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/maya/open/http/okserver/upload/UploadInfo;
    .locals 6

    .line 51
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/upload/UploadTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    return-object p1

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 53
    iget-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setState(I)V

    const/4 p1, 0x0

    .line 54
    invoke-direct {p0, p1, p1, p1}, Lcom/maya/open/http/okserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v2, 0x4

    .line 59
    :try_start_0
    iget-object v3, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v3}, Lcom/maya/open/http/okserver/upload/UploadInfo;->getRequest()Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object v3

    new-instance v4, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;

    invoke-direct {v4, p0}, Lcom/maya/open/http/okserver/upload/UploadTask$MergeListener;-><init>(Lcom/maya/open/http/okserver/upload/UploadTask;)V

    invoke-virtual {v3, v4}, Lcom/maya/open/http/okgo/request/BaseBodyRequest;->setCallback(Lcom/maya/open/http/okgo/callback/AbsCallback;)Lcom/maya/open/http/okgo/request/BaseRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/open/http/okgo/request/BaseRequest;->execute()Lcom/maya/open/http/okhttp3/Response;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    invoke-virtual {v3}, Lcom/maya/open/http/okhttp3/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    :try_start_1
    iget-object v4, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v4}, Lcom/maya/open/http/okserver/upload/UploadInfo;->getListener()Lcom/maya/open/http/okserver/listener/UploadListener;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/maya/open/http/okserver/listener/UploadListener;->parseNetworkResponse(Lcom/maya/open/http/okhttp3/Response;)Ljava/lang/Object;

    move-result-object v3

    .line 72
    iget-object v4, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v4, v0, v1}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 73
    iget-object v4, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setState(I)V

    .line 74
    invoke-direct {p0, v3, p1, p1}, Lcom/maya/open/http/okserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 75
    iget-object v3, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    .line 77
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    iget-object v4, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v4, v0, v1}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 79
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v0, v2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setState(I)V

    const-string v0, "\u89e3\u6790\u6570\u636e\u5bf9\u8c61\u51fa\u9519"

    .line 80
    invoke-direct {p0, p1, v0, v3}, Lcom/maya/open/http/okserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 81
    iget-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    return-object p1

    .line 84
    :cond_1
    iget-object v3, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v3, v0, v1}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 85
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v0, v2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setState(I)V

    const-string v0, "\u6570\u636e\u8fd4\u56de\u5931\u8d25"

    .line 86
    invoke-direct {p0, p1, v0, p1}, Lcom/maya/open/http/okserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 87
    iget-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    return-object p1

    :catch_1
    move-exception v3

    .line 61
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 62
    iget-object v4, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v4, v0, v1}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 63
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v0, v2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setState(I)V

    const-string v0, "\u7f51\u7edc\u5f02\u5e38"

    .line 64
    invoke-direct {p0, p1, v0, v3}, Lcom/maya/open/http/okserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 65
    iget-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/maya/open/http/okserver/upload/UploadTask;->doInBackground([Ljava/lang/Void;)Lcom/maya/open/http/okserver/upload/UploadInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onPreExecute()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/upload/UploadInfo;->getListener()Lcom/maya/open/http/okserver/listener/UploadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/listener/UploadListener;->onAdd(Lcom/maya/open/http/okserver/upload/UploadInfo;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 44
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadTask;->mUploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setState(I)V

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, v0, v0, v0}, Lcom/maya/open/http/okserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
