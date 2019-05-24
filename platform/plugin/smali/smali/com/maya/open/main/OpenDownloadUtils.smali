.class public Lcom/maya/open/main/OpenDownloadUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;
    }
.end annotation


# static fields
.field private static instance:Lcom/maya/open/main/OpenDownloadUtils;


# instance fields
.field public final DOWNLOAD_FAIL_NOT_EXIST:Ljava/lang/String;

.field private downloadManager:Lcom/maya/open/http/okserver/download/DownloadManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u4e0b\u8f7d\u5df2\u5b8c\u6210\uff0c\u4f46\u4e0b\u8f7d\u6587\u4ef6\u4e22\u5931\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    .line 16
    iput-object v0, p0, Lcom/maya/open/main/OpenDownloadUtils;->DOWNLOAD_FAIL_NOT_EXIST:Ljava/lang/String;

    const-string v0, "\u521d\u59cb\u5316"

    .line 23
    invoke-virtual {p0, v0}, Lcom/maya/open/main/OpenDownloadUtils;->printLog(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/maya/open/http/okserver/download/DownloadService;->getDownloadManager()Lcom/maya/open/http/okserver/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/main/OpenDownloadUtils;->downloadManager:Lcom/maya/open/http/okserver/download/DownloadManager;

    .line 25
    iget-object v0, p0, Lcom/maya/open/main/OpenDownloadUtils;->downloadManager:Lcom/maya/open/http/okserver/download/DownloadManager;

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadManager;->getThreadPool()Lcom/maya/open/http/okserver/download/DownloadThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadThreadPool;->getExecutor()Lcom/maya/open/http/okserver/task/ExecutorWithListener;

    move-result-object v0

    new-instance v1, Lcom/maya/open/main/OpenDownloadUtils$1;

    invoke-direct {v1, p0}, Lcom/maya/open/main/OpenDownloadUtils$1;-><init>(Lcom/maya/open/main/OpenDownloadUtils;)V

    invoke-virtual {v0, v1}, Lcom/maya/open/http/okserver/task/ExecutorWithListener;->addOnAllTaskEndListener(Lcom/maya/open/http/okserver/task/ExecutorWithListener$OnAllTaskEndListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/maya/open/main/OpenDownloadUtils;)Lcom/maya/open/http/okserver/download/DownloadManager;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/maya/open/main/OpenDownloadUtils;->downloadManager:Lcom/maya/open/http/okserver/download/DownloadManager;

    return-object p0
.end method

.method public static getInstance()Lcom/maya/open/main/OpenDownloadUtils;
    .locals 2

    .line 42
    sget-object v0, Lcom/maya/open/main/OpenDownloadUtils;->instance:Lcom/maya/open/main/OpenDownloadUtils;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/maya/open/main/OpenDownloadUtils;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/maya/open/main/OpenDownloadUtils;->instance:Lcom/maya/open/main/OpenDownloadUtils;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/maya/open/main/OpenDownloadUtils;

    invoke-direct {v1}, Lcom/maya/open/main/OpenDownloadUtils;-><init>()V

    sput-object v1, Lcom/maya/open/main/OpenDownloadUtils;->instance:Lcom/maya/open/main/OpenDownloadUtils;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/maya/open/main/OpenDownloadUtils;->instance:Lcom/maya/open/main/OpenDownloadUtils;

    return-object v0
.end method


# virtual methods
.method public download(Ljava/lang/String;Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;)V
    .locals 1

    const-string v0, ""

    .line 66
    invoke-virtual {p0, v0, p1, p2}, Lcom/maya/open/main/OpenDownloadUtils;->download(Ljava/lang/String;Ljava/lang/String;Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;)V

    return-void
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;)V
    .locals 3

    .line 78
    invoke-static {p2}, Lcom/maya/open/http/okgo/OkGo;->get(Ljava/lang/String;)Lcom/maya/open/http/okgo/request/GetRequest;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/maya/open/main/OpenDownloadUtils;->downloadManager:Lcom/maya/open/http/okserver/download/DownloadManager;

    new-instance v2, Lcom/maya/open/main/OpenDownloadUtils$2;

    invoke-direct {v2, p0, p3}, Lcom/maya/open/main/OpenDownloadUtils$2;-><init>(Lcom/maya/open/main/OpenDownloadUtils;Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;)V

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/maya/open/http/okserver/download/DownloadManager;->addTask(Ljava/lang/String;Ljava/lang/String;Lcom/maya/open/http/okgo/request/BaseRequest;Lcom/maya/open/http/okserver/listener/DownloadListener;)V

    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/maya/open/main/OpenDownloadUtils;->downloadManager:Lcom/maya/open/http/okserver/download/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okserver/download/DownloadManager;->pauseTask(Ljava/lang/String;)V

    return-void
.end method

.method public printLog(Ljava/lang/String;)V
    .locals 3

    .line 124
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openHttp-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
