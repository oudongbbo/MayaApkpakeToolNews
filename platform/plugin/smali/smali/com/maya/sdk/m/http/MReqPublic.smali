.class public Lcom/maya/sdk/m/http/MReqPublic;
.super Ljava/lang/Object;
.source "MReqPublic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mLogin(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mLoginData"    # Ljava/lang/String;
    .param p2, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .param p3, "isShowDialog"    # Z

    .line 17
    new-instance v0, Lcom/maya/sdk/m/http/MReqManager;

    invoke-direct {v0, p0}, Lcom/maya/sdk/m/http/MReqManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/m/http/MReqManager;->requestLogin(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;Z)V

    .line 18
    return-void
.end method

.method public static request(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/maya/sdk/framework/http/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 30
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/maya/sdk/framework/http/HttpBean;

    invoke-direct {v0}, Lcom/maya/sdk/framework/http/HttpBean;-><init>()V

    .line 31
    .local v0, "bean":Lcom/maya/sdk/framework/http/HttpBean;
    invoke-virtual {v0, p2}, Lcom/maya/sdk/framework/http/HttpBean;->setReqUrl(Ljava/lang/String;)V

    .line 32
    invoke-static {p0, p3}, Lcom/maya/sdk/framework/utils/ReqUtil;->addCommonParams(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/http/HttpBean;->setParams(Ljava/util/HashMap;)V

    .line 33
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/http/HttpBean;->setLoading(Z)V

    .line 34
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/http/HttpBean;->setLoadingText(Ljava/lang/String;)V

    .line 36
    new-instance v1, Lcom/maya/sdk/framework/http/HttpManager;

    invoke-direct {v1, p0}, Lcom/maya/sdk/framework/http/HttpManager;-><init>(Landroid/content/Context;)V

    .line 37
    .local v1, "httpManager":Lcom/maya/sdk/framework/http/HttpManager;
    sget-boolean v2, Lcom/maya/sdk/m/utils/MLogUtil;->isShowLog:Z

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/http/HttpManager;->setIsShowLog(Z)V

    .line 39
    const-string v2, "POST"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {v1, v0, p4}, Lcom/maya/sdk/framework/http/HttpManager;->post(Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1, v0, p4}, Lcom/maya/sdk/framework/http/HttpManager;->get(Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 44
    :goto_0
    return-void
.end method
