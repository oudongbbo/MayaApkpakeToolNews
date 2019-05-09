.class public abstract Lcom/maya/open/http/okserver/listener/DownloadListener;
.super Ljava/lang/Object;
.source "DownloadListener.java"


# static fields
.field public static final DEFAULT_DOWNLOAD_LISTENER:Lcom/maya/open/http/okserver/listener/DownloadListener;


# instance fields
.field private userTag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/maya/open/http/okserver/listener/DownloadListener$1;

    invoke-direct {v0}, Lcom/maya/open/http/okserver/listener/DownloadListener$1;-><init>()V

    sput-object v0, Lcom/maya/open/http/okserver/listener/DownloadListener;->DEFAULT_DOWNLOAD_LISTENER:Lcom/maya/open/http/okserver/listener/DownloadListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserTag()Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/maya/open/http/okserver/listener/DownloadListener;->userTag:Ljava/lang/Object;

    return-object v0
.end method

.method public onAdd(Lcom/maya/open/http/okserver/download/DownloadInfo;)V
    .locals 0
    .param p1, "downloadInfo"    # Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 30
    return-void
.end method

.method public abstract onError(Lcom/maya/open/http/okserver/download/DownloadInfo;Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onFinish(Lcom/maya/open/http/okserver/download/DownloadInfo;)V
.end method

.method public abstract onProgress(Lcom/maya/open/http/okserver/download/DownloadInfo;)V
.end method

.method public onRemove(Lcom/maya/open/http/okserver/download/DownloadInfo;)V
    .locals 0
    .param p1, "downloadInfo"    # Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 34
    return-void
.end method

.method public setUserTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userTag"    # Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lcom/maya/open/http/okserver/listener/DownloadListener;->userTag:Ljava/lang/Object;

    .line 44
    return-void
.end method
