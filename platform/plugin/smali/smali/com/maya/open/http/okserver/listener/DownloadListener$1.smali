.class final Lcom/maya/open/http/okserver/listener/DownloadListener$1;
.super Lcom/maya/open/http/okserver/listener/DownloadListener;
.source "DownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/http/okserver/listener/DownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/maya/open/http/okserver/listener/DownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/maya/open/http/okserver/download/DownloadInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "downloadInfo"    # Lcom/maya/open/http/okserver/download/DownloadInfo;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 58
    return-void
.end method

.method public onFinish(Lcom/maya/open/http/okserver/download/DownloadInfo;)V
    .locals 0
    .param p1, "downloadInfo"    # Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 54
    return-void
.end method

.method public onProgress(Lcom/maya/open/http/okserver/download/DownloadInfo;)V
    .locals 0
    .param p1, "downloadInfo"    # Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 50
    return-void
.end method
