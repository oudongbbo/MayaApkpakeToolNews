.class public Lcom/maya/open/http/okserver/upload/UploadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR:I = 0x4

.field public static final FINISH:I = 0x3

.field public static final NONE:I = 0x0

.field public static final UPLOADING:I = 0x2

.field public static final WAITING:I = 0x1

.field private static mInstance:Lcom/maya/open/http/okserver/upload/UploadManager;


# instance fields
.field private mUploadInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/open/http/okserver/upload/UploadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadUIHandler:Lcom/maya/open/http/okserver/upload/UploadUIHandler;

.field private threadPool:Lcom/maya/open/http/okserver/upload/UploadThreadPool;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadManager;->mUploadInfoList:Ljava/util/List;

    .line 53
    new-instance v0, Lcom/maya/open/http/okserver/upload/UploadUIHandler;

    invoke-direct {v0}, Lcom/maya/open/http/okserver/upload/UploadUIHandler;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadManager;->mUploadUIHandler:Lcom/maya/open/http/okserver/upload/UploadUIHandler;

    .line 54
    new-instance v0, Lcom/maya/open/http/okserver/upload/UploadThreadPool;

    invoke-direct {v0}, Lcom/maya/open/http/okserver/upload/UploadThreadPool;-><init>()V

    iput-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadManager;->threadPool:Lcom/maya/open/http/okserver/upload/UploadThreadPool;

    return-void
.end method

.method public static getInstance()Lcom/maya/open/http/okserver/upload/UploadManager;
    .locals 2

    .line 41
    sget-object v0, Lcom/maya/open/http/okserver/upload/UploadManager;->mInstance:Lcom/maya/open/http/okserver/upload/UploadManager;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/maya/open/http/okserver/upload/UploadManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/maya/open/http/okserver/upload/UploadManager;->mInstance:Lcom/maya/open/http/okserver/upload/UploadManager;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/maya/open/http/okserver/upload/UploadManager;

    invoke-direct {v1}, Lcom/maya/open/http/okserver/upload/UploadManager;-><init>()V

    sput-object v1, Lcom/maya/open/http/okserver/upload/UploadManager;->mInstance:Lcom/maya/open/http/okserver/upload/UploadManager;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Lcom/maya/open/http/okserver/upload/UploadManager;->mInstance:Lcom/maya/open/http/okserver/upload/UploadManager;

    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/String;Lcom/maya/open/http/okgo/request/BaseBodyRequest;Lcom/maya/open/http/okserver/listener/UploadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/maya/open/http/okgo/request/BaseBodyRequest;",
            "Lcom/maya/open/http/okserver/listener/UploadListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/maya/open/http/okserver/upload/UploadInfo;

    invoke-direct {v0}, Lcom/maya/open/http/okserver/upload/UploadInfo;-><init>()V

    .line 67
    invoke-virtual {v0, p1}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setTaskKey(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 68
    invoke-virtual {v0, p1}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setState(I)V

    .line 69
    invoke-virtual {v0, p2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setRequest(Lcom/maya/open/http/okgo/request/BaseBodyRequest;)V

    .line 70
    iget-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadManager;->mUploadInfoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance p1, Lcom/maya/open/http/okserver/upload/UploadTask;

    invoke-direct {p1, v0, p3}, Lcom/maya/open/http/okserver/upload/UploadTask;-><init>(Lcom/maya/open/http/okserver/upload/UploadInfo;Lcom/maya/open/http/okserver/listener/UploadListener;)V

    .line 73
    invoke-virtual {v0, p1}, Lcom/maya/open/http/okserver/upload/UploadInfo;->setTask(Lcom/maya/open/http/okserver/upload/UploadTask;)V

    return-void
.end method

.method public addTask(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/maya/open/http/okserver/listener/UploadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/maya/open/http/okserver/listener/UploadListener<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    invoke-static {p1}, Lcom/maya/open/http/okgo/OkGo;->post(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/PostRequest;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/maya/open/http/okgo/request/PostRequest;->params(Ljava/lang/String;Ljava/io/File;)Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    move-result-object p2

    check-cast p2, Lcom/maya/open/http/okgo/request/PostRequest;

    .line 61
    invoke-virtual {p0, p1, p2, p4}, Lcom/maya/open/http/okserver/upload/UploadManager;->addTask(Ljava/lang/String;Lcom/maya/open/http/okgo/request/BaseBodyRequest;Lcom/maya/open/http/okserver/listener/UploadListener;)V

    return-void
.end method

.method public getAllTask()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/maya/open/http/okserver/upload/UploadInfo;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadManager;->mUploadInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Lcom/maya/open/http/okserver/upload/UploadUIHandler;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadManager;->mUploadUIHandler:Lcom/maya/open/http/okserver/upload/UploadUIHandler;

    return-object v0
.end method

.method public getThreadPool()Lcom/maya/open/http/okserver/upload/UploadThreadPool;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadManager;->threadPool:Lcom/maya/open/http/okserver/upload/UploadThreadPool;

    return-object v0
.end method
