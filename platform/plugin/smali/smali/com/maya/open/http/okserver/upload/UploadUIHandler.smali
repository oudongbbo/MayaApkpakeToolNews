.class public Lcom/maya/open/http/okserver/upload/UploadUIHandler;
.super Landroid/os/Handler;
.source "UploadUIHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;
    }
.end annotation


# instance fields
.field private mGlobalUploadListener:Lcom/maya/open/http/okserver/listener/UploadListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private executeListener(Lcom/maya/open/http/okserver/listener/UploadListener;Lcom/maya/open/http/okserver/upload/UploadInfo;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "listener"    # Lcom/maya/open/http/okserver/listener/UploadListener;
    .param p2, "info"    # Lcom/maya/open/http/okserver/upload/UploadInfo;
    .param p3, "t"    # Ljava/lang/Object;
    .param p4, "errorMsg"    # Ljava/lang/String;
    .param p5, "e"    # Ljava/lang/Exception;

    .line 38
    invoke-virtual {p2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->getState()I

    move-result v0

    .line 39
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 50
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okserver/listener/UploadListener;->onProgress(Lcom/maya/open/http/okserver/upload/UploadInfo;)V

    .line 51
    invoke-virtual {p1, p2, p4, p5}, Lcom/maya/open/http/okserver/listener/UploadListener;->onError(Lcom/maya/open/http/okserver/upload/UploadInfo;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 46
    :pswitch_1
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okserver/listener/UploadListener;->onProgress(Lcom/maya/open/http/okserver/upload/UploadInfo;)V

    .line 47
    invoke-virtual {p1, p3}, Lcom/maya/open/http/okserver/listener/UploadListener;->onFinish(Ljava/lang/Object;)V

    .line 48
    goto :goto_0

    .line 43
    :pswitch_2
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okserver/listener/UploadListener;->onProgress(Lcom/maya/open/http/okserver/upload/UploadInfo;)V

    .line 44
    nop

    .line 54
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;

    .line 24
    .local v0, "messageBean":Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;
    if-eqz v0, :cond_1

    .line 25
    iget-object v7, v0, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;->uploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    .line 26
    .local v7, "info":Lcom/maya/open/http/okserver/upload/UploadInfo;
    iget-object v8, v0, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;->errorMsg:Ljava/lang/String;

    .line 27
    .local v8, "errorMsg":Ljava/lang/String;
    iget-object v9, v0, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;->e:Ljava/lang/Exception;

    .line 28
    .local v9, "e":Ljava/lang/Exception;
    iget-object v10, v0, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;->data:Ljava/lang/Object;

    .line 29
    .local v10, "t":Ljava/lang/Object;
    iget-object v1, p0, Lcom/maya/open/http/okserver/upload/UploadUIHandler;->mGlobalUploadListener:Lcom/maya/open/http/okserver/listener/UploadListener;

    if-eqz v1, :cond_0

    .line 30
    iget-object v2, p0, Lcom/maya/open/http/okserver/upload/UploadUIHandler;->mGlobalUploadListener:Lcom/maya/open/http/okserver/listener/UploadListener;

    move-object v1, p0

    move-object v3, v7

    move-object v4, v10

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/maya/open/http/okserver/upload/UploadUIHandler;->executeListener(Lcom/maya/open/http/okserver/listener/UploadListener;Lcom/maya/open/http/okserver/upload/UploadInfo;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 32
    :cond_0
    invoke-virtual {v7}, Lcom/maya/open/http/okserver/upload/UploadInfo;->getListener()Lcom/maya/open/http/okserver/listener/UploadListener;

    move-result-object v11

    .line 33
    .local v11, "listener":Lcom/maya/open/http/okserver/listener/UploadListener;
    if-eqz v11, :cond_1

    move-object v1, p0

    move-object v2, v11

    move-object v3, v7

    move-object v4, v10

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/maya/open/http/okserver/upload/UploadUIHandler;->executeListener(Lcom/maya/open/http/okserver/listener/UploadListener;Lcom/maya/open/http/okserver/upload/UploadInfo;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 35
    .end local v7    # "info":Lcom/maya/open/http/okserver/upload/UploadInfo;
    .end local v8    # "errorMsg":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "t":Ljava/lang/Object;
    .end local v11    # "listener":Lcom/maya/open/http/okserver/listener/UploadListener;
    :cond_1
    return-void
.end method

.method public setGlobalDownloadListener(Lcom/maya/open/http/okserver/listener/UploadListener;)V
    .locals 0
    .param p1, "uploadListener"    # Lcom/maya/open/http/okserver/listener/UploadListener;

    .line 57
    iput-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadUIHandler;->mGlobalUploadListener:Lcom/maya/open/http/okserver/listener/UploadListener;

    .line 58
    return-void
.end method
