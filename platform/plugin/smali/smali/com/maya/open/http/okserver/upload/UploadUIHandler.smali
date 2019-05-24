.class public Lcom/maya/open/http/okserver/upload/UploadUIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


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

    .line 38
    invoke-virtual {p2}, Lcom/maya/open/http/okserver/upload/UploadInfo;->getState()I

    move-result v0

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

    goto :goto_0

    .line 43
    :pswitch_2
    invoke-virtual {p1, p2}, Lcom/maya/open/http/okserver/listener/UploadListener;->onProgress(Lcom/maya/open/http/okserver/upload/UploadInfo;)V

    :goto_0
    return-void

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
    .locals 9

    .line 23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;

    if-eqz p1, :cond_1

    .line 25
    iget-object v6, p1, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;->uploadInfo:Lcom/maya/open/http/okserver/upload/UploadInfo;

    .line 26
    iget-object v7, p1, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;->errorMsg:Ljava/lang/String;

    .line 27
    iget-object v8, p1, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;->e:Ljava/lang/Exception;

    .line 28
    iget-object p1, p1, Lcom/maya/open/http/okserver/upload/UploadUIHandler$MessageBean;->data:Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/maya/open/http/okserver/upload/UploadUIHandler;->mGlobalUploadListener:Lcom/maya/open/http/okserver/listener/UploadListener;

    if-eqz v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/maya/open/http/okserver/upload/UploadUIHandler;->mGlobalUploadListener:Lcom/maya/open/http/okserver/listener/UploadListener;

    move-object v0, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/maya/open/http/okserver/upload/UploadUIHandler;->executeListener(Lcom/maya/open/http/okserver/listener/UploadListener;Lcom/maya/open/http/okserver/upload/UploadInfo;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 32
    :cond_0
    invoke-virtual {v6}, Lcom/maya/open/http/okserver/upload/UploadInfo;->getListener()Lcom/maya/open/http/okserver/listener/UploadListener;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, v7

    move-object v5, v8

    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/maya/open/http/okserver/upload/UploadUIHandler;->executeListener(Lcom/maya/open/http/okserver/listener/UploadListener;Lcom/maya/open/http/okserver/upload/UploadInfo;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public setGlobalDownloadListener(Lcom/maya/open/http/okserver/listener/UploadListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/maya/open/http/okserver/upload/UploadUIHandler;->mGlobalUploadListener:Lcom/maya/open/http/okserver/listener/UploadListener;

    return-void
.end method
