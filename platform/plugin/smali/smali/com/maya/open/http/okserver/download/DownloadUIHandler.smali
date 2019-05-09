.class public Lcom/maya/open/http/okserver/download/DownloadUIHandler;
.super Landroid/os/Handler;
.source "DownloadUIHandler.java"


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
    .param p1, "listener"    # Lcom/maya/open/http/okserver/listener/DownloadListener;
    .param p2, "info"    # Lcom/maya/open/http/okserver/download/DownloadInfo;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/Exception;

    .line 42
    invoke-virtual {p2}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getState()I

    move-result v0

    .line 43
    .local v0, "state":I
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

    .line 53
    goto :goto_0

    .line 48
    :pswitch_2
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okserver/listener/DownloadListener;->onProgress(Lcom/maya/open/http/okserver/download/DownloadInfo;)V

    .line 49
    nop

    .line 59
    :goto_0
    return-void

    nop

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
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 26
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;

    .line 27
    .local v0, "messageBean":Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;
    if-eqz v0, :cond_2

    .line 28
    iget-object v1, v0, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;->downloadInfo:Lcom/maya/open/http/okserver/download/DownloadInfo;

    .line 29
    .local v1, "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    iget-object v2, v0, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;->errorMsg:Ljava/lang/String;

    .line 30
    .local v2, "errorMsg":Ljava/lang/String;
    iget-object v3, v0, Lcom/maya/open/http/okserver/download/DownloadUIHandler$MessageBean;->e:Ljava/lang/Exception;

    .line 31
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/maya/open/http/okserver/download/DownloadUIHandler;->mGlobalDownloadListener:Lcom/maya/open/http/okserver/listener/DownloadListener;

    if-eqz v4, :cond_0

    .line 32
    iget-object v4, p0, Lcom/maya/open/http/okserver/download/DownloadUIHandler;->mGlobalDownloadListener:Lcom/maya/open/http/okserver/listener/DownloadListener;

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/maya/open/http/okserver/download/DownloadUIHandler;->executeListener(Lcom/maya/open/http/okserver/listener/DownloadListener;Lcom/maya/open/http/okserver/download/DownloadInfo;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 34
    :cond_0
    invoke-virtual {v1}, Lcom/maya/open/http/okserver/download/DownloadInfo;->getListener()Lcom/maya/open/http/okserver/listener/DownloadListener;

    move-result-object v4

    .line 35
    .local v4, "listener":Lcom/maya/open/http/okserver/listener/DownloadListener;
    if-eqz v4, :cond_1

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/maya/open/http/okserver/download/DownloadUIHandler;->executeListener(Lcom/maya/open/http/okserver/listener/DownloadListener;Lcom/maya/open/http/okserver/download/DownloadInfo;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 36
    .end local v1    # "info":Lcom/maya/open/http/okserver/download/DownloadInfo;
    .end local v2    # "errorMsg":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "listener":Lcom/maya/open/http/okserver/listener/DownloadListener;
    :cond_1
    goto :goto_0

    .line 37
    :cond_2
    const-string v1, "DownloadUIHandler DownloadInfo null"

    invoke-static {v1}, Lcom/maya/open/http/okgo/utils/OkLogger;->e(Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void
.end method

.method public setGlobalDownloadListener(Lcom/maya/open/http/okserver/listener/DownloadListener;)V
    .locals 0
    .param p1, "downloadListener"    # Lcom/maya/open/http/okserver/listener/DownloadListener;

    .line 62
    iput-object p1, p0, Lcom/maya/open/http/okserver/download/DownloadUIHandler;->mGlobalDownloadListener:Lcom/maya/open/http/okserver/listener/DownloadListener;

    .line 63
    return-void
.end method
