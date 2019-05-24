.class Lcom/maya/open/main/OpenDownloadUtils$2;
.super Lcom/maya/open/http/okserver/listener/DownloadListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/main/OpenDownloadUtils;->download(Ljava/lang/String;Ljava/lang/String;Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/main/OpenDownloadUtils;

.field final synthetic val$callback:Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;


# direct methods
.method constructor <init>(Lcom/maya/open/main/OpenDownloadUtils;Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/maya/open/main/OpenDownloadUtils$2;->this$0:Lcom/maya/open/main/OpenDownloadUtils;

    iput-object p2, p0, Lcom/maya/open/main/OpenDownloadUtils$2;->val$callback:Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;

    invoke-direct {p0}, Lcom/maya/open/http/okserver/listener/DownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd(Lcom/maya/open/http/okserver/download/DownloadInfo;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/maya/open/http/okserver/listener/DownloadListener;->onAdd(Lcom/maya/open/http/okserver/download/DownloadInfo;)V

    .line 85
    iget-object p1, p0, Lcom/maya/open/main/OpenDownloadUtils$2;->val$callback:Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;

    invoke-interface {p1}, Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;->onStart()V

    return-void
.end method

.method public onError(Lcom/maya/open/http/okserver/download/DownloadInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/maya/open/main/OpenDownloadUtils$2;->val$callback:Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;

    invoke-interface {p1, p2}, Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;->onFail(Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(Lcom/maya/open/http/okserver/download/DownloadInfo;)V
    .locals 2

    .line 101
    invoke-virtual {p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTargetPath()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object p1, p0, Lcom/maya/open/main/OpenDownloadUtils$2;->val$callback:Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;

    invoke-interface {p1, v1}, Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;->onSuccess(Ljava/io/File;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/maya/open/main/OpenDownloadUtils$2;->this$0:Lcom/maya/open/main/OpenDownloadUtils;

    invoke-static {v0}, Lcom/maya/open/main/OpenDownloadUtils;->access$000(Lcom/maya/open/main/OpenDownloadUtils;)Lcom/maya/open/http/okserver/download/DownloadManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/maya/open/http/okserver/download/DownloadManager;->removeTask(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/maya/open/main/OpenDownloadUtils$2;->val$callback:Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;

    const-string v0, "\u4e0b\u8f7d\u5df2\u5b8c\u6210\uff0c\u4f46\u4e0b\u8f7d\u6587\u4ef6\u4e22\u5931\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-interface {p1, v0}, Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;->onFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onProgress(Lcom/maya/open/http/okserver/download/DownloadInfo;)V
    .locals 8

    .line 90
    invoke-virtual {p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getDownloadLength()J

    move-result-wide v1

    .line 91
    invoke-virtual {p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v3

    .line 92
    invoke-virtual {p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getNetworkSpeed()J

    move-result-wide v5

    .line 93
    invoke-virtual {p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getProgress()F

    move-result p1

    const v0, 0x461c4000    # 10000.0f

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float v7, p1, v0

    .line 95
    iget-object v0, p0, Lcom/maya/open/main/OpenDownloadUtils$2;->val$callback:Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;

    invoke-interface/range {v0 .. v7}, Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;->onLoading(JJJF)V

    return-void
.end method
