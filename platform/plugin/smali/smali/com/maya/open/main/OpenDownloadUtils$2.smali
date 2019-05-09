.class Lcom/maya/open/main/OpenDownloadUtils$2;
.super Lcom/maya/open/http/okserver/listener/DownloadListener;
.source "OpenDownloadUtils.java"


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
    .param p1, "this$0"    # Lcom/maya/open/main/OpenDownloadUtils;

    .line 79
    iput-object p1, p0, Lcom/maya/open/main/OpenDownloadUtils$2;->this$0:Lcom/maya/open/main/OpenDownloadUtils;

    iput-object p2, p0, Lcom/maya/open/main/OpenDownloadUtils$2;->val$callback:Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;

    invoke-direct {p0}, Lcom/maya/open/http/okserver/listener/DownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd(Lcom/maya/open/http/okserver/download/DownloadInfo;)V
    .locals 1
    .param p1, "downloadInfo"    # Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 84
    invoke-super {p0, p1}, Lcom/maya/open/http/okserver/listener/DownloadListener;->onAdd(Lcom/maya/open/http/okserver/download/DownloadInfo;)V

    .line 85
    iget-object v0, p0, Lcom/maya/open/main/OpenDownloadUtils$2;->val$callback:Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;

    invoke-interface {v0}, Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;->onStart()V

    .line 86
    return-void
.end method

.method public onError(Lcom/maya/open/http/okserver/download/DownloadInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "downloadInfo"    # Lcom/maya/open/http/okserver/download/DownloadInfo;
    .param p2, "errorString"    # Ljava/lang/String;
    .param p3, "ex"    # Ljava/lang/Exception;

    .line 113
    iget-object v0, p0, Lcom/maya/open/main/OpenDownloadUtils$2;->val$callback:Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;

    invoke-interface {v0, p2}, Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;->onFail(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onFinish(Lcom/maya/open/http/okserver/download/DownloadInfo;)V
    .locals 4
    .param p1, "downloadInfo"    # Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 101
    invoke-virtual {p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTargetPath()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "tagetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/maya/open/main/OpenDownloadUtils$2;->val$callback:Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;

    invoke-interface {v2, v1}, Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;->onSuccess(Ljava/io/File;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/maya/open/main/OpenDownloadUtils$2;->this$0:Lcom/maya/open/main/OpenDownloadUtils;

    # getter for: Lcom/maya/open/main/OpenDownloadUtils;->downloadManager:Lcom/maya/open/http/okserver/download/DownloadManager;
    invoke-static {v2}, Lcom/maya/open/main/OpenDownloadUtils;->access$000(Lcom/maya/open/main/OpenDownloadUtils;)Lcom/maya/open/http/okserver/download/DownloadManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/maya/open/http/okserver/download/DownloadManager;->removeTask(Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/maya/open/main/OpenDownloadUtils$2;->val$callback:Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;

    const-string v3, "\u4e0b\u8f7d\u5df2\u5b8c\u6210\uff0c\u4f46\u4e0b\u8f7d\u6587\u4ef6\u4e22\u5931\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-interface {v2, v3}, Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;->onFail(Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void
.end method

.method public onProgress(Lcom/maya/open/http/okserver/download/DownloadInfo;)V
    .locals 16
    .param p1, "downloadInfo"    # Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getDownloadLength()J

    move-result-wide v8

    .line 91
    .local v8, "downloadLength":J
    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v10

    .line 92
    .local v10, "totalLength":J
    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getNetworkSpeed()J

    move-result-wide v12

    .line 93
    .local v12, "networkSpeed":J
    invoke-virtual/range {p1 .. p1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getProgress()F

    move-result v0

    const v1, 0x461c4000    # 10000.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v14, v0, v1

    .line 95
    .local v14, "percent":F
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/maya/open/main/OpenDownloadUtils$2;->val$callback:Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;

    move-wide v1, v8

    move-wide v3, v10

    move-wide v5, v12

    move v7, v14

    invoke-interface/range {v0 .. v7}, Lcom/maya/open/main/OpenDownloadUtils$OpenDownLoadCallBack;->onLoading(JJJF)V

    .line 96
    return-void
.end method
