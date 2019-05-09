.class public Lcom/maya/sdk/framework/http/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# instance fields
.field public final ERROR_PARAMS_NULL:Ljava/lang/String;

.field public final ERROR_URL_NULL:Ljava/lang/String;

.field public final REQUEST_TYPE_GET:Ljava/lang/String;

.field public final REQUEST_TYPE_POST:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private isShowLog:Z

.field private loadingDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "\u8bf7\u6c42\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    iput-object v0, p0, Lcom/maya/sdk/framework/http/HttpManager;->ERROR_PARAMS_NULL:Ljava/lang/String;

    .line 17
    const-string v0, "\u8bf7\u6c42\u5730\u5740\u4e0d\u80fd\u4e3a\u7a7a"

    iput-object v0, p0, Lcom/maya/sdk/framework/http/HttpManager;->ERROR_URL_NULL:Ljava/lang/String;

    .line 19
    const-string v0, "GET"

    iput-object v0, p0, Lcom/maya/sdk/framework/http/HttpManager;->REQUEST_TYPE_GET:Ljava/lang/String;

    .line 20
    const-string v0, "POST"

    iput-object v0, p0, Lcom/maya/sdk/framework/http/HttpManager;->REQUEST_TYPE_POST:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/framework/http/HttpManager;->isShowLog:Z

    .line 30
    iput-object p1, p0, Lcom/maya/sdk/framework/http/HttpManager;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/framework/http/HttpManager;)Lcom/maya/sdk/framework/view/loading/LoadingDialog;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/http/HttpManager;

    .line 14
    iget-object v0, p0, Lcom/maya/sdk/framework/http/HttpManager;->loadingDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/sdk/framework/http/HttpManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/http/HttpManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/http/HttpManager;->sendHttpLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/maya/sdk/framework/http/HttpManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/http/HttpManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/http/HttpManager;->sendHttpLogWarn(Ljava/lang/String;)V

    return-void
.end method

.method private sendHttpLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 133
    iget-boolean v0, p0, Lcom/maya/sdk/framework/http/HttpManager;->isShowLog:Z

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "maya_http"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    return-void
.end method

.method private sendHttpLogWarn(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 139
    iget-boolean v0, p0, Lcom/maya/sdk/framework/http/HttpManager;->isShowLog:Z

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "maya_http"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public get(Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 1
    .param p1, "bean"    # Lcom/maya/sdk/framework/http/HttpBean;
    .param p2, "callback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 38
    const-string v0, "GET"

    invoke-virtual {p0, v0, p1, p2}, Lcom/maya/sdk/framework/http/HttpManager;->httpRequest(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 39
    return-void
.end method

.method public httpRequest(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 7
    .param p1, "Type"    # Ljava/lang/String;
    .param p2, "bean"    # Lcom/maya/sdk/framework/http/HttpBean;
    .param p3, "callback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 43
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 44
    const-string v1, "\u8bf7\u6c42\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-interface {p3, v0, v1}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 45
    return-void

    .line 48
    :cond_0
    invoke-virtual {p2}, Lcom/maya/sdk/framework/http/HttpBean;->getReqUrl()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/maya/sdk/framework/http/HttpBean;->getParams()Ljava/util/HashMap;

    move-result-object v2

    .line 50
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/maya/sdk/framework/http/HttpBean;->isLoading()Z

    move-result v3

    .line 51
    .local v3, "isLoading":Z
    invoke-virtual {p2}, Lcom/maya/sdk/framework/http/HttpBean;->getLoadingText()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "loadingText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    const/16 v0, 0x194

    const-string v5, "\u8bf7\u6c42\u5730\u5740\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-interface {p3, v0, v5}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 56
    const-string v0, "\u8bf7\u6c42\u5730\u5740\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/http/HttpManager;->sendHttpLogWarn(Ljava/lang/String;)V

    .line 57
    return-void

    .line 60
    :cond_1
    if-eqz v3, :cond_3

    .line 61
    iget-object v5, p0, Lcom/maya/sdk/framework/http/HttpManager;->loadingDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    if-nez v5, :cond_2

    .line 62
    new-instance v5, Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    iget-object v6, p0, Lcom/maya/sdk/framework/http/HttpManager;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/maya/sdk/framework/http/HttpManager;->loadingDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    .line 63
    iget-object v5, p0, Lcom/maya/sdk/framework/http/HttpManager;->loadingDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v5, v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->setCancelable(Z)V

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/maya/sdk/framework/http/HttpManager;->loadingDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/maya/sdk/framework/http/HttpManager;->loadingDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/maya/sdk/framework/http/HttpManager;->loadingDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->show()V

    .line 67
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/maya/sdk/framework/http/HttpManager;->loadingDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0, v4}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->setLoadingMessage(Ljava/lang/CharSequence;)V

    .line 74
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>>>>>>>["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]{Request}: > \n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/http/HttpManager;->sendHttpLog(Ljava/lang/String;)V

    .line 76
    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    invoke-static {}, Lcom/maya/open/main/OpenHttpUtils;->getInstance()Lcom/maya/open/main/OpenHttpUtils;

    move-result-object v0

    new-instance v5, Lcom/maya/sdk/framework/http/HttpManager$1;

    invoke-direct {v5, p0, p1, v1, p3}, Lcom/maya/sdk/framework/http/HttpManager$1;-><init>(Lcom/maya/sdk/framework/http/HttpManager;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    invoke-virtual {v0, v1, v2, v5}, Lcom/maya/open/main/OpenHttpUtils;->post(Ljava/lang/String;Ljava/util/Map;Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;)V

    goto :goto_0

    .line 102
    :cond_4
    invoke-static {}, Lcom/maya/open/main/OpenHttpUtils;->getInstance()Lcom/maya/open/main/OpenHttpUtils;

    move-result-object v0

    new-instance v5, Lcom/maya/sdk/framework/http/HttpManager$2;

    invoke-direct {v5, p0, p1, v1, p3}, Lcom/maya/sdk/framework/http/HttpManager$2;-><init>(Lcom/maya/sdk/framework/http/HttpManager;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    invoke-virtual {v0, v1, v2, v5}, Lcom/maya/open/main/OpenHttpUtils;->get(Ljava/lang/String;Ljava/util/Map;Lcom/maya/open/main/OpenHttpUtils$OpenCallBack;)V

    .line 126
    :goto_0
    return-void
.end method

.method public post(Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 1
    .param p1, "bean"    # Lcom/maya/sdk/framework/http/HttpBean;
    .param p2, "callback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 34
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1, p2}, Lcom/maya/sdk/framework/http/HttpManager;->httpRequest(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 35
    return-void
.end method

.method public setIsShowLog(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .line 129
    iput-boolean p1, p0, Lcom/maya/sdk/framework/http/HttpManager;->isShowLog:Z

    .line 130
    return-void
.end method
