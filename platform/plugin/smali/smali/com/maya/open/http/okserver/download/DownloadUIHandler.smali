.class public Lcom/maya/open/http/okserver/download/DownloadUIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;
    }
.end annotation


# instance fields
.field private mGlobalDownloadListener:Lcom/maya/open/http/okserver/listener/DownloadListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private executeListener(Lcom/maya/open/http/okserver/listener/DownloadListener;Lcom/maya/open/http/okserver/download/DownloadInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 42
    invoke-virtual {p2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 55
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okserver/listener/DownloadListener;->onProgress(Lcom/maya/open/http/okserver/download/DownloadInfo;)V

    .line 56
    invoke-virtual {p1, p2, p3, p4}, Lcom/maya/open/http/okserver/listener/DownloadListener;->onError(Lcom/maya/open/http/okserver/download/DownloadInfo;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 51
    :pswitch_1
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okserver/listener/DownloadListener;->onProgress(Lcom/maya/open/http/okserver/download/DownloadInfo;)V

    .line 52
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okserver/listener/DownloadListener;->onFinish(Lcom/maya/open/http/okserver/download/DownloadInfo;)V

    goto :goto_0

    .line 48
    :pswitch_2
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okserver/listener/DownloadListener;->onProgress(Lcom/maya/open/http/okserver/download/DownloadInfo;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;

    if-eqz p1, :cond_1

    .line 28
    iget-object v0, p1, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;->downloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 29
    iget-object v1, p1, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;->errorMsg:Ljava/lang/String;

    .line 30
    iget-object p1, p1, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;->e:Ljava/lang/Exception;

    .line 31
    iget-object v2, p0, Lcom/maya/open/http/okserver/download/DownloadUIHandler;->mGlobalDownloadListener:Lcom/maya/open/http/okserver/listener/DownloadListener;

    if-eqz v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/maya/open/http/okserver/download/DownloadUIHandler;->mGlobalDownloadListener:Lcom/maya/open/http/okserver/listener/DownloadListener;

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/maya/open/http/okserver/download/DownloadUIHandler;->executeListener(Lcom/maya/open/http/okserver/listener/DownloadListener;Lcom/maya/open/http/okserver/download/DownloadInfo;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 34
    :cond_0
    invoke-virtual {v0}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getListener()Lcom/maya/open/http/okserver/listener/DownloadListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 35
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/maya/open/http/okserver/download/DownloadUIHandler;->executeListener(Lcom/maya/open/http/okserver/listener/DownloadListener;Lcom/maya/open/http/okserver/download/DownloadInfo;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    const-string p1, "DownloadUIHandler DownloadInfo null"

    .line 37
    invoke-static {p1}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setGlobalDownloadListener(Lcom/maya/open/http/okserver/listener/DownloadListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadUIHandler;->mGlobalDownloadListener:Lcom/maya/open/http/okserver/listener/DownloadListener;

    return-void
.end method
