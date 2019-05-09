.class public Lcom/maya/open/http/okserver/upload/UploadInfo;
.super Ljava/lang/Object;
.source "UploadInfo.java"


# instance fields
.field private listener:Lcom/maya/open/http/okserver/listener/UploadListener;

.field private networkSpeed:J

.field private progress:F

.field private request:Lcom/maya/open/http/okgo/request/BaseBodyRequest;

.field private state:I

.field private task:Lcom/maya/open/http/okserver/upload/UploadTask;

.field private taskKey:Ljava/lang/String;

.field private totalLength:J

.field private uploadLength:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 118
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/maya/open/http/okserver/download/DownloadInfo;

    if-eqz v0, :cond_0

    .line 119
    move-object v0, p1

    check-cast v0, Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 120
    .local v0, "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    invoke-virtual {p0}, Lcom/maya/open/http/okserver/upload/UploadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 122
    .end local v0    # "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getListener()Lcom/maya/open/http/okserver/listener/UploadListener;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->listener:Lcom/maya/open/http/okserver/listener/UploadListener;

    return-object v0
.end method

.method public getNetworkSpeed()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->networkSpeed:J

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    .line 48
    iget v0, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->progress:F

    return v0
.end method

.method public getRequest()Lcom/maya/open/http/okgo/request/BaseBodyRequest;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->request:Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->state:I

    return v0
.end method

.method public getTask()Lcom/maya/open/http/okserver/upload/UploadTask;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->task:Lcom/maya/open/http/okserver/upload/UploadTask;

    return-object v0
.end method

.method public getTaskKey()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->taskKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalLength()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->totalLength:J

    return-wide v0
.end method

.method public getUploadLength()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->uploadLength:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public removeListener()V
    .locals 1

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->listener:Lcom/maya/open/http/okserver/listener/UploadListener;

    .line 113
    return-void
.end method

.method public setListener(Lcom/maya/open/http/okserver/listener/UploadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/maya/open/http/okserver/listener/UploadListener;

    .line 108
    iput-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->listener:Lcom/maya/open/http/okserver/listener/UploadListener;

    .line 109
    return-void
.end method

.method public setNetworkSpeed(J)V
    .locals 0
    .param p1, "networkSpeed"    # J

    .line 76
    iput-wide p1, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->networkSpeed:J

    .line 77
    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .line 52
    iput p1, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->progress:F

    .line 53
    return-void
.end method

.method public setRequest(Lcom/maya/open/http/okgo/request/BaseBodyRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    .line 92
    iput-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->request:Lcom/maya/open/http/okgo/request/BaseBodyRequest;

    .line 93
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 84
    iput p1, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->state:I

    .line 85
    return-void
.end method

.method public setTask(Lcom/maya/open/http/okserver/upload/UploadTask;)V
    .locals 0
    .param p1, "task"    # Lcom/maya/open/http/okserver/upload/UploadTask;

    .line 100
    iput-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->task:Lcom/maya/open/http/okserver/upload/UploadTask;

    .line 101
    return-void
.end method

.method public setTaskKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->taskKey:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setTotalLength(J)V
    .locals 0
    .param p1, "totalLength"    # J

    .line 60
    iput-wide p1, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->totalLength:J

    .line 61
    return-void
.end method

.method public setUploadLength(J)V
    .locals 0
    .param p1, "uploadLength"    # J

    .line 68
    iput-wide p1, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->uploadLength:J

    .line 69
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadInfo;->url:Ljava/lang/String;

    .line 37
    return-void
.end method
