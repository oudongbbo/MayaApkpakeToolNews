.class public Lcom/maya/open/http/okserver/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field public static final DM_TARGET_FOLDER:Ljava/lang/String;

.field public static final DOWNLOADING:I = 0x2

.field public static final ERROR:I = 0x5

.field public static final FINISH:I = 0x4

.field public static final NONE:I = 0x0

.field public static final PAUSE:I = 0x3

.field public static final WAITING:I = 0x1

.field private static mInstance:Lcom/maya/open/http/okserver/download/DownloadManager;


# instance fields
.field private mDownloadInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okserver/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadUIHandler:Lcom/maya/open/http/okserver/download/DownloadUIHandler;

.field private mTargetFolder:Ljava/lang/String;

.field private threadPool:Lcom/maya/open/http/okserver/download/DownloadThreadPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/maya/open/http/okserver/download/DownloadManager;->DM_TARGET_FOLDER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    .line 63
    new-instance v0, Lcom/maya/open/http/okserver/download/DownloadUIHandler;

    invoke-direct {v0}, Lcom/maya/open/http/okserver/download/DownloadUIHandler;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mDownloadUIHandler:Lcom/maya/open/http/okserver/download/DownloadUIHandler;

    .line 64
    new-instance v0, Lcom/maya/open/http/okserver/download/DownloadThreadPool;

    invoke-direct {v0}, Lcom/maya/open/http/okserver/download/DownloadThreadPool;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->threadPool:Lcom/maya/open/http/okserver/download/DownloadThreadPool;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/maya/open/http/okserver/download/DownloadManager;->DM_TARGET_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "folder":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 68
    :cond_0
    iput-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mTargetFolder:Ljava/lang/String;

    .line 70
    sget-object v1, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->INSTANCE:Lcom/maya/open/http/okserver/download/db/DownloadDBManager;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->getAll()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    .line 71
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 72
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 74
    .local v2, "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    invoke-virtual {v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 75
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    .line 76
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 77
    sget-object v3, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->INSTANCE:Lcom/maya/open/http/okserver/download/db/DownloadDBManager;

    invoke-virtual {v3, v2}, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->replace(Lcom/maya/open/http/okserver/download/DownloadInfo;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 79
    .end local v2    # "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    :cond_2
    goto :goto_0

    .line 81
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/maya/open/http/okserver/download/DownloadManager;)Lcom/maya/open/http/okserver/download/DownloadThreadPool;
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/http/okserver/download/DownloadManager;

    .line 32
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->threadPool:Lcom/maya/open/http/okserver/download/DownloadThreadPool;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/open/http/okserver/download/DownloadManager;Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Lcom/maya/open/http/okgo/request/BaseRequest;Lcom/maya/open/http/okserver/listener/DownloadListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/open/http/okserver/download/DownloadManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/io/Serializable;
    .param p4, "x4"    # Lcom/maya/open/http/okgo/request/BaseRequest;
    .param p5, "x5"    # Lcom/maya/open/http/okserver/listener/DownloadListener;
    .param p6, "x6"    # Z

    .line 32
    invoke-direct/range {p0 .. p6}, Lcom/maya/open/http/okserver/download/DownloadManager;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Lcom/maya/open/http/okgo/request/BaseRequest;Lcom/maya/open/http/okserver/listener/DownloadListener;Z)V

    return-void
.end method

.method private addTask(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Lcom/maya/open/http/okgo/request/BaseRequest;Lcom/maya/open/http/okserver/listener/DownloadListener;Z)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "taskTag"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/Serializable;
    .param p4, "request"    # Lcom/maya/open/http/okgo/request/BaseRequest;
    .param p5, "listener"    # Lcom/maya/open/http/okserver/listener/DownloadListener;
    .param p6, "isRestart"    # Z

    .line 106
    invoke-virtual {p0, p2}, Lcom/maya/open/http/okserver/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object v0

    .line 107
    .local v0, "downloadInfo":Lcom/maya/open/http/okserver/download/DownloadInfo;
    if-nez v0, :cond_0

    .line 108
    new-instance v1, Lcom/maya/open/http/okserver/download/DownloadInfo;

    invoke-direct {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;-><init>()V

    move-object v0, v1

    .line 109
    invoke-virtual {p4}, Lcom/maya/open/http/okgo/request/BaseRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTaskKey(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setFileName(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p4}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setRequest(Lcom/maya/open/http/okgo/request/BaseRequest;)V

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setState(I)V

    .line 114
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mTargetFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTargetFolder(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p3}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setData(Ljava/io/Serializable;)V

    .line 116
    sget-object v1, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->INSTANCE:Lcom/maya/open/http/okserver/download/db/DownloadDBManager;

    invoke-virtual {v1, v0}, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->replace(Lcom/maya/open/http/okserver/download/DownloadInfo;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 117
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 125
    if-eqz p5, :cond_3

    invoke-virtual {p5, v0}, Lcom/maya/open/http/okserver/listener/DownloadListener;->onFinish(Lcom/maya/open/http/okserver/download/DownloadInfo;)V

    goto :goto_1

    .line 122
    :cond_2
    :goto_0
    new-instance v1, Lcom/maya/open/http/okserver/download/DownloadTask;

    invoke-direct {v1, v0, p6, p5}, Lcom/maya/open/http/okserver/download/DownloadTask;-><init>(Lcom/maya/open/http/okserver/download/DownloadInfo;ZLcom/maya/open/http/okserver/listener/DownloadListener;)V

    .line 123
    .local v1, "downloadTask":Lcom/maya/open/http/okserver/download/DownloadTask;
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTask(Lcom/maya/open/http/okserver/download/DownloadTask;)V

    .line 124
    .end local v1    # "downloadTask":Lcom/maya/open/http/okserver/download/DownloadTask;
    nop

    .line 127
    :cond_3
    :goto_1
    return-void
.end method

.method private deleteFile(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 265
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 267
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1

    .line 268
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static getInstance()Lcom/maya/open/http/okserver/download/DownloadManager;
    .locals 2

    .line 51
    sget-object v0, Lcom/maya/open/http/okserver/download/DownloadManager;->mInstance:Lcom/maya/open/http/okserver/download/DownloadManager;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/maya/open/http/okserver/download/DownloadManager;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/maya/open/http/okserver/download/DownloadManager;->mInstance:Lcom/maya/open/http/okserver/download/DownloadManager;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/maya/open/http/okserver/download/DownloadManager;

    invoke-direct {v1}, Lcom/maya/open/http/okserver/download/DownloadManager;-><init>()V

    sput-object v1, Lcom/maya/open/http/okserver/download/DownloadManager;->mInstance:Lcom/maya/open/http/okserver/download/DownloadManager;

    .line 56
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 58
    :cond_1
    :goto_0
    sget-object v0, Lcom/maya/open/http/okserver/download/DownloadManager;->mInstance:Lcom/maya/open/http/okserver/download/DownloadManager;

    return-object v0
.end method

.method private removeTaskByKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 250
    .local v0, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/maya/open/http/okserver/download/DownloadInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 251
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 252
    .local v1, "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getListener()Lcom/maya/open/http/okserver/listener/DownloadListener;

    move-result-object v2

    .line 254
    .local v2, "listener":Lcom/maya/open/http/okserver/listener/DownloadListener;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/maya/open/http/okserver/listener/DownloadListener;->onRemove(Lcom/maya/open/http/okserver/download/DownloadInfo;)V

    .line 255
    :cond_0
    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->removeListener()V

    .line 256
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 257
    goto :goto_1

    .line 259
    .end local v1    # "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    .end local v2    # "listener":Lcom/maya/open/http/okserver/listener/DownloadListener;
    :cond_1
    goto :goto_0

    .line 260
    :cond_2
    :goto_1
    return-void
.end method

.method private restartTaskByKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 229
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okserver/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object v0

    .line 230
    .local v0, "downloadInfo":Lcom/maya/open/http/okserver/download/DownloadInfo;
    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 232
    new-instance v1, Lcom/maya/open/http/okserver/download/DownloadTask;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getListener()Lcom/maya/open/http/okserver/listener/DownloadListener;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/maya/open/http/okserver/download/DownloadTask;-><init>(Lcom/maya/open/http/okserver/download/DownloadInfo;ZLcom/maya/open/http/okserver/listener/DownloadListener;)V

    .line 233
    .local v1, "downloadTask":Lcom/maya/open/http/okserver/download/DownloadTask;
    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->setTask(Lcom/maya/open/http/okserver/download/DownloadTask;)V

    .line 235
    .end local v1    # "downloadTask":Lcom/maya/open/http/okserver/download/DownloadTask;
    :cond_1
    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/String;Lcom/maya/open/http/okgo/request/BaseRequest;Lcom/maya/open/http/okserver/listener/DownloadListener;)V
    .locals 7
    .param p1, "taskTag"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/maya/open/http/okgo/request/BaseRequest;
    .param p3, "listener"    # Lcom/maya/open/http/okserver/listener/DownloadListener;

    .line 85
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/maya/open/http/okserver/download/DownloadManager;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Lcom/maya/open/http/okgo/request/BaseRequest;Lcom/maya/open/http/okserver/listener/DownloadListener;Z)V

    .line 86
    return-void
.end method

.method public addTask(Ljava/lang/String;Ljava/io/Serializable;Lcom/maya/open/http/okgo/request/BaseRequest;Lcom/maya/open/http/okserver/listener/DownloadListener;)V
    .locals 7
    .param p1, "taskTag"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/io/Serializable;
    .param p3, "request"    # Lcom/maya/open/http/okgo/request/BaseRequest;
    .param p4, "listener"    # Lcom/maya/open/http/okserver/listener/DownloadListener;

    .line 90
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/maya/open/http/okserver/download/DownloadManager;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Lcom/maya/open/http/okgo/request/BaseRequest;Lcom/maya/open/http/okserver/listener/DownloadListener;Z)V

    .line 91
    return-void
.end method

.method public addTask(Ljava/lang/String;Ljava/lang/String;Lcom/maya/open/http/okgo/request/BaseRequest;Lcom/maya/open/http/okserver/listener/DownloadListener;)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "taskTag"    # Ljava/lang/String;
    .param p3, "request"    # Lcom/maya/open/http/okgo/request/BaseRequest;
    .param p4, "listener"    # Lcom/maya/open/http/okserver/listener/DownloadListener;

    .line 95
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/maya/open/http/okserver/download/DownloadManager;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;Lcom/maya/open/http/okgo/request/BaseRequest;Lcom/maya/open/http/okserver/listener/DownloadListener;Z)V

    .line 96
    return-void
.end method

.method public getAllTask()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okserver/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadInfo(Ljava/lang/String;)Lcom/maya/open/http/okserver/download/DownloadInfo;
    .locals 3
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 240
    .local v1, "downloadInfo":Lcom/maya/open/http/okserver/download/DownloadInfo;
    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    return-object v1

    .line 243
    .end local v1    # "downloadInfo":Lcom/maya/open/http/okserver/download/DownloadInfo;
    :cond_0
    goto :goto_0

    .line 244
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Lcom/maya/open/http/okserver/download/DownloadUIHandler;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mDownloadUIHandler:Lcom/maya/open/http/okserver/download/DownloadUIHandler;

    return-object v0
.end method

.method public getTargetFolder()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mTargetFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadPool()Lcom/maya/open/http/okserver/download/DownloadThreadPool;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->threadPool:Lcom/maya/open/http/okserver/download/DownloadThreadPool;

    return-object v0
.end method

.method public pauseAllTask()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 150
    .local v1, "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/maya/open/http/okserver/download/DownloadManager;->pauseTask(Ljava/lang/String;)V

    .line 151
    .end local v1    # "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    :cond_0
    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 153
    .restart local v1    # "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v3

    if-ne v3, v2, :cond_2

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/maya/open/http/okserver/download/DownloadManager;->pauseTask(Ljava/lang/String;)V

    .line 154
    .end local v1    # "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    :cond_2
    goto :goto_1

    .line 155
    :cond_3
    return-void
.end method

.method public pauseTask(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 138
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okserver/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object v0

    .line 139
    .local v0, "downloadInfo":Lcom/maya/open/http/okserver/download/DownloadInfo;
    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v1

    .line 142
    .local v1, "state":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTask()Lcom/maya/open/http/okserver/download/DownloadTask;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 143
    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTask()Lcom/maya/open/http/okserver/download/DownloadTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/http/okserver/download/DownloadTask;->pause()V

    .line 145
    :cond_2
    return-void
.end method

.method public removeAllTask()V
    .locals 4

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v0, "taskKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 197
    .local v2, "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    invoke-virtual {v2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v2    # "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    goto :goto_0

    .line 199
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/maya/open/http/okserver/download/DownloadManager;->removeTask(Ljava/lang/String;)V

    .line 201
    .end local v2    # "url":Ljava/lang/String;
    goto :goto_1

    .line 202
    :cond_1
    return-void
.end method

.method public removeTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/maya/open/http/okserver/download/DownloadManager;->removeTask(Ljava/lang/String;Z)V

    .line 180
    return-void
.end method

.method public removeTask(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "taskKey"    # Ljava/lang/String;
    .param p2, "isDeleteFile"    # Z

    .line 184
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okserver/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object v0

    .line 185
    .local v0, "downloadInfo":Lcom/maya/open/http/okserver/download/DownloadInfo;
    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okserver/download/DownloadManager;->pauseTask(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, p1}, Lcom/maya/open/http/okserver/download/DownloadManager;->removeTaskByKey(Ljava/lang/String;)V

    .line 188
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTargetPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/maya/open/http/okserver/download/DownloadManager;->deleteFile(Ljava/lang/String;)Z

    .line 189
    :cond_1
    sget-object v1, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->INSTANCE:Lcom/maya/open/http/okserver/download/db/DownloadDBManager;

    invoke-virtual {v1, p1}, Lcom/maya/open/http/okserver/download/db/DownloadDBManager;->delete(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public restartTask(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 206
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okserver/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object v0

    .line 207
    .local v0, "downloadInfo":Lcom/maya/open/http/okserver/download/DownloadInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 209
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okserver/download/DownloadManager;->pauseTask(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->threadPool:Lcom/maya/open/http/okserver/download/DownloadThreadPool;

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadThreadPool;->getExecutor()Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    move-result-object v1

    new-instance v2, Lcom/maya/open/http/okserver/download/DownloadManager$1;

    invoke-direct {v2, p0, v0}, Lcom/maya/open/http/okserver/download/DownloadManager$1;-><init>(Lcom/maya/open/http/okserver/download/DownloadManager;Lcom/maya/open/http/okserver/download/DownloadInfo;)V

    invoke-virtual {v1, v2}, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->addOnTaskEndListener(Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnTaskEndListener;)V

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okserver/download/DownloadManager;->pauseTask(Ljava/lang/String;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/maya/open/http/okserver/download/DownloadManager;->restartTaskByKey(Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void
.end method

.method public setTargetFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetFolder"    # Ljava/lang/String;

    .line 277
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mTargetFolder:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public startAllTask()V
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 132
    .local v1, "downloadInfo":Lcom/maya/open/http/okserver/download/DownloadInfo;
    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getRequest()Lcom/maya/open/http/okgo/request/BaseRequest;

    move-result-object v3

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getListener()Lcom/maya/open/http/okserver/listener/DownloadListener;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/maya/open/http/okserver/download/DownloadManager;->addTask(Ljava/lang/String;Lcom/maya/open/http/okgo/request/BaseRequest;Lcom/maya/open/http/okserver/listener/DownloadListener;)V

    .line 133
    .end local v1    # "downloadInfo":Lcom/maya/open/http/okserver/download/DownloadInfo;
    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method public stopAllTask()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 170
    .local v1, "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/maya/open/http/okserver/download/DownloadManager;->stopTask(Ljava/lang/String;)V

    .line 171
    .end local v1    # "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    :cond_0
    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/maya/open/http/okserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 173
    .restart local v1    # "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v3

    if-ne v3, v2, :cond_2

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/maya/open/http/okserver/download/DownloadManager;->stopTask(Ljava/lang/String;)V

    .line 174
    .end local v1    # "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    :cond_2
    goto :goto_1

    .line 175
    :cond_3
    return-void
.end method

.method public stopTask(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 159
    invoke-virtual {p0, p1}, Lcom/maya/open/http/okserver/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/maya/open/http/okserver/download/DownloadInfo;

    move-result-object v0

    .line 160
    .local v0, "downloadInfo":Lcom/maya/open/http/okserver/download/DownloadInfo;
    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTask()Lcom/maya/open/http/okserver/download/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTask()Lcom/maya/open/http/okserver/download/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadTask;->stop()V

    .line 165
    :cond_1
    return-void
.end method
