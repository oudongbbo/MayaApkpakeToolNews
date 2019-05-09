.class public Lcom/maya/sdk/s/core/http/RequsetManager;
.super Ljava/lang/Object;
.source "RequsetManager.java"


# static fields
.field public static final GET:Ljava/lang/String; = "GET"

.field public static final POST:Ljava/lang/String; = "POST"


# instance fields
.field private httpManager:Lcom/maya/sdk/framework/http/HttpManager;

.field private mContext:Landroid/content/Context;

.field private reqUtil:Lcom/maya/sdk/framework/utils/ReqUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/maya/sdk/framework/http/HttpManager;

    invoke-direct {v0, p1}, Lcom/maya/sdk/framework/http/HttpManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    .line 37
    new-instance v0, Lcom/maya/sdk/framework/utils/ReqUtil;

    invoke-direct {v0}, Lcom/maya/sdk/framework/utils/ReqUtil;-><init>()V

    iput-object v0, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->reqUtil:Lcom/maya/sdk/framework/utils/ReqUtil;

    .line 38
    return-void
.end method

.method private request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "isShow"    # Z
    .param p5, "showTxt"    # Ljava/lang/String;
    .param p6, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/maya/sdk/framework/http/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 312
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const/16 v0, 0x194

    const-string v1, "url\u4e3a\u7a7a"

    invoke-interface {p6, v0, v1}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 314
    return-void

    .line 317
    :cond_0
    new-instance v0, Lcom/maya/sdk/framework/http/HttpBean;

    invoke-direct {v0}, Lcom/maya/sdk/framework/http/HttpBean;-><init>()V

    .line 318
    .local v0, "bean":Lcom/maya/sdk/framework/http/HttpBean;
    invoke-virtual {v0, p2}, Lcom/maya/sdk/framework/http/HttpBean;->setReqUrl(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/maya/sdk/framework/utils/ReqUtil;->addCommonParams(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/http/HttpBean;->setParams(Ljava/util/HashMap;)V

    .line 320
    invoke-virtual {v0, p4}, Lcom/maya/sdk/framework/http/HttpBean;->setLoading(Z)V

    .line 321
    invoke-virtual {v0, p5}, Lcom/maya/sdk/framework/http/HttpBean;->setLoadingText(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    sget-boolean v2, Lcom/maya/sdk/s/core/utils/SLogUtil;->isShowLog:Z

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/http/HttpManager;->setIsShowLog(Z)V

    .line 324
    const-string v1, "GET"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    invoke-virtual {v1, v0, p6}, Lcom/maya/sdk/framework/http/HttpManager;->get(Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    invoke-virtual {v1, v0, p6}, Lcom/maya/sdk/framework/http/HttpManager;->post(Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 329
    :goto_0
    return-void
.end method

.method private request2(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "isShow"    # Z
    .param p5, "showTxt"    # Ljava/lang/String;
    .param p6, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/maya/sdk/framework/http/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 342
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/16 v0, 0x194

    const-string v1, "url\u4e3a\u7a7a"

    invoke-interface {p6, v0, v1}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 344
    return-void

    .line 347
    :cond_0
    new-instance v0, Lcom/maya/sdk/framework/http/HttpBean;

    invoke-direct {v0}, Lcom/maya/sdk/framework/http/HttpBean;-><init>()V

    .line 348
    .local v0, "bean":Lcom/maya/sdk/framework/http/HttpBean;
    invoke-virtual {v0, p2}, Lcom/maya/sdk/framework/http/HttpBean;->setReqUrl(Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/maya/sdk/framework/utils/ReqUtil;->addCommonParamsWithoutDevice(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/http/HttpBean;->setParams(Ljava/util/HashMap;)V

    .line 350
    invoke-virtual {v0, p4}, Lcom/maya/sdk/framework/http/HttpBean;->setLoading(Z)V

    .line 351
    invoke-virtual {v0, p5}, Lcom/maya/sdk/framework/http/HttpBean;->setLoadingText(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    sget-boolean v2, Lcom/maya/sdk/s/core/utils/SLogUtil;->isShowLog:Z

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/http/HttpManager;->setIsShowLog(Z)V

    .line 354
    const-string v1, "GET"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    invoke-virtual {v1, v0, p6}, Lcom/maya/sdk/framework/http/HttpManager;->get(Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    invoke-virtual {v1, v0, p6}, Lcom/maya/sdk/framework/http/HttpManager;->post(Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 359
    :goto_0
    return-void
.end method

.method private requestFree(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "isShow"    # Z
    .param p5, "showTxt"    # Ljava/lang/String;
    .param p6, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/maya/sdk/framework/http/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 368
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const/16 v0, 0x194

    const-string v1, "url\u4e3a\u7a7a"

    invoke-interface {p6, v0, v1}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 370
    return-void

    .line 372
    :cond_0
    new-instance v0, Lcom/maya/sdk/framework/http/HttpBean;

    invoke-direct {v0}, Lcom/maya/sdk/framework/http/HttpBean;-><init>()V

    .line 373
    .local v0, "bean":Lcom/maya/sdk/framework/http/HttpBean;
    invoke-virtual {v0, p2}, Lcom/maya/sdk/framework/http/HttpBean;->setReqUrl(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/maya/sdk/framework/utils/ReqUtil;->addSignParams(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/http/HttpBean;->setParams(Ljava/util/HashMap;)V

    .line 375
    invoke-virtual {v0, p4}, Lcom/maya/sdk/framework/http/HttpBean;->setLoading(Z)V

    .line 376
    invoke-virtual {v0, p5}, Lcom/maya/sdk/framework/http/HttpBean;->setLoadingText(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    sget-boolean v2, Lcom/maya/sdk/s/core/utils/SLogUtil;->isShowLog:Z

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/http/HttpManager;->setIsShowLog(Z)V

    .line 379
    const-string v1, "GET"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    invoke-virtual {v1, v0, p6}, Lcom/maya/sdk/framework/http/HttpManager;->get(Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    invoke-virtual {v1, v0, p6}, Lcom/maya/sdk/framework/http/HttpManager;->post(Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 384
    :goto_0
    return-void
.end method

.method private requestNoSign(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "isShow"    # Z
    .param p5, "showTxt"    # Ljava/lang/String;
    .param p6, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/maya/sdk/framework/http/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 389
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/16 v0, 0x194

    const-string v1, "url\u4e3a\u7a7a"

    invoke-interface {p6, v0, v1}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 391
    return-void

    .line 394
    :cond_0
    new-instance v0, Lcom/maya/sdk/framework/http/HttpBean;

    invoke-direct {v0}, Lcom/maya/sdk/framework/http/HttpBean;-><init>()V

    .line 395
    .local v0, "bean":Lcom/maya/sdk/framework/http/HttpBean;
    invoke-virtual {v0, p2}, Lcom/maya/sdk/framework/http/HttpBean;->setReqUrl(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, p3}, Lcom/maya/sdk/framework/http/HttpBean;->setParams(Ljava/util/HashMap;)V

    .line 397
    invoke-virtual {v0, p4}, Lcom/maya/sdk/framework/http/HttpBean;->setLoading(Z)V

    .line 398
    invoke-virtual {v0, p5}, Lcom/maya/sdk/framework/http/HttpBean;->setLoadingText(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    sget-boolean v2, Lcom/maya/sdk/s/core/utils/SLogUtil;->isShowLog:Z

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/http/HttpManager;->setIsShowLog(Z)V

    .line 401
    const-string v1, "GET"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    invoke-virtual {v1, v0, p6}, Lcom/maya/sdk/framework/http/HttpManager;->get(Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    invoke-virtual {v1, v0, p6}, Lcom/maya/sdk/framework/http/HttpManager;->post(Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 406
    :goto_0
    return-void
.end method


# virtual methods
.method public requestAccessTokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;ZLjava/lang/String;)V
    .locals 9
    .param p1, "uname"    # Ljava/lang/String;
    .param p2, "vname"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .param p5, "isShow"    # Z
    .param p6, "showMsg"    # Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v8, v1

    .line 86
    .local v8, "info":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "uname"

    invoke-virtual {v8, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v1, "vname"

    invoke-virtual {v8, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    iget-object v1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/encrypt/CodeManager;->encodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "uinfo":Ljava/lang/String;
    const-string v2, "uinfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1    # "uinfo":Ljava/lang/String;
    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 94
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_LOGIN_BY_ACCESSTOKEN:Ljava/lang/String;

    move-object v1, p0

    move-object v4, v0

    move v5, p5

    move-object v6, p6

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/maya/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 96
    return-void
.end method

.method public requestBindInfo(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 8
    .param p1, "uname"    # Ljava/lang/String;
    .param p2, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 259
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "uname"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_FINDPWD_GET_USER:Ljava/lang/String;

    const-string v6, ""

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/maya/sdk/s/core/http/RequsetManager;->request2(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 262
    return-void
.end method

.method public requestFindPwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;Z)V
    .locals 8
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "vcode"    # Ljava/lang/String;
    .param p4, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .param p5, "isShow"    # Z

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 270
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "mobile"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v1, "new_pwd"

    invoke-static {p2}, Lcom/maya/sdk/s/core/utils/Md5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v1, "code"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v1, "type"

    const-string v2, "findpwd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_FINDPWD:Ljava/lang/String;

    const-string v6, ""

    move-object v1, p0

    move-object v4, v0

    move v5, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/maya/sdk/s/core/http/RequsetManager;->request2(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 277
    return-void
.end method

.method public requestGetRegName(Lcom/maya/sdk/framework/http/HttpCallBack;Z)V
    .locals 8
    .param p1, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .param p2, "isShow"    # Z

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "tm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v1, "gid"

    iget-object v2, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getGameId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v1, "pid"

    iget-object v2, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getGamePid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v1, "device_id"

    iget-object v2, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getMobileDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_REG_GETNAME:Ljava/lang/String;

    const-string v6, ""

    move-object v1, p0

    move-object v4, v0

    move v5, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestFree(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 252
    return-void
.end method

.method public requestGetVcode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;Z)V
    .locals 8
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .param p5, "isShow"    # Z

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "mobile"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_GET_VCODE:Ljava/lang/String;

    const-string v6, ""

    move-object v1, p0

    move-object v4, v0

    move v5, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/maya/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 182
    return-void
.end method

.method public requestLoginS(Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;ZLjava/lang/String;)V
    .locals 8
    .param p1, "vname"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .param p4, "isShow"    # Z
    .param p5, "showMsg"    # Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .local v1, "info":Lorg/json/JSONObject;
    const-string v2, "uname"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    invoke-static {p2}, Lcom/maya/sdk/s/core/utils/Md5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "password":Ljava/lang/String;
    const-string v3, "password"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    iget-object v3, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/maya/sdk/framework/encrypt/CodeManager;->encodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "uinfo":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/maya/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uinfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/maya/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    .line 56
    const-string v4, "uinfo"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1    # "info":Lorg/json/JSONObject;
    .end local v2    # "password":Ljava/lang/String;
    .end local v3    # "uinfo":Ljava/lang/String;
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "\u767b\u5f55\u52a0\u5bc6\u51fa\u9519"

    invoke-static {v2}, Lcom/maya/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "maya_tips_waiting"

    iget-object v2, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    .line 65
    :cond_0
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_LOGIN:Ljava/lang/String;

    move-object v1, p0

    move-object v4, v0

    move v5, p4

    move-object v6, p5

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/maya/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 66
    return-void
.end method

.method public requestPayOrder(Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/http/HttpCallBack;Z)V
    .locals 8
    .param p1, "info"    # Lcom/maya/sdk/framework/pay/PayInfoBean;
    .param p2, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .param p3, "isShow"    # Z

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "amt"

    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getMoney()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "goods_name"

    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getOrder_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "game_order_no"

    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getOrder_no()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "game_ext"

    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getOrder_ext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "role_id"

    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getRole_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "role_name"

    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getRole_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "role_level"

    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getRole_level()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v1, "server_id"

    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getServer_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "server_name"

    invoke-virtual {p1}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getServer_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "sdk_ver"

    iget-object v2, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_PAY_ORDER_CREATE:Ljava/lang/String;

    const-string v6, ""

    move-object v1, p0

    move-object v4, v0

    move v5, p3

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/maya/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 202
    return-void
.end method

.method public requestPhoneLogin(Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;ZLjava/lang/String;)V
    .locals 9
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .param p4, "isShow"    # Z
    .param p5, "showMsg"    # Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v8, v1

    .line 107
    .local v8, "info":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "mobile"

    invoke-virtual {v8, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    iget-object v1, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/encrypt/CodeManager;->encodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "uinfo":Ljava/lang/String;
    const-string v2, "uinfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1    # "uinfo":Ljava/lang/String;
    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 115
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_LOGIN_MOBILE_QUICK:Ljava/lang/String;

    move-object v1, p0

    move-object v4, v0

    move v5, p4

    move-object v6, p5

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/maya/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 118
    return-void
.end method

.method public requestRegVisitor(Lcom/maya/sdk/framework/http/HttpCallBack;Z)V
    .locals 7
    .param p1, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .param p2, "isShow"    # Z

    .line 72
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "POST"

    sget-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->API_REG_VISITOR:Ljava/lang/String;

    const-string v5, ""

    move-object v0, p0

    move v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/maya/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 74
    return-void
.end method

.method public requestRegisterByName(Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;Z)V
    .locals 8
    .param p1, "vname"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .param p4, "isShow"    # Z

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 129
    .local v1, "info":Lorg/json/JSONObject;
    const-string v2, "uname"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    invoke-static {p2}, Lcom/maya/sdk/s/core/utils/Md5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "password":Ljava/lang/String;
    const-string v3, "password"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    iget-object v3, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/maya/sdk/framework/encrypt/CodeManager;->encodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "uinfo":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/maya/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uinfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/maya/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    .line 137
    const-string v4, "uinfo"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v1    # "info":Lorg/json/JSONObject;
    .end local v2    # "password":Ljava/lang/String;
    .end local v3    # "uinfo":Ljava/lang/String;
    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 141
    :goto_0
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_REG_ACCOUNT:Ljava/lang/String;

    const-string v6, ""

    move-object v1, p0

    move-object v4, v0

    move v5, p4

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/maya/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 142
    return-void
.end method

.method public requestRegisterByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;Z)V
    .locals 8
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "vcode"    # Ljava/lang/String;
    .param p4, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .param p5, "isShow"    # Z

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 152
    .local v1, "info":Lorg/json/JSONObject;
    const-string v2, "mobile"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    invoke-static {p2}, Lcom/maya/sdk/s/core/utils/Md5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "password":Ljava/lang/String;
    const-string v3, "password"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    iget-object v3, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/maya/sdk/framework/encrypt/CodeManager;->encodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "uinfo":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/maya/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uinfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/maya/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    .line 160
    const-string v4, "uinfo"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1    # "info":Lorg/json/JSONObject;
    .end local v2    # "password":Ljava/lang/String;
    .end local v3    # "uinfo":Ljava/lang/String;
    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 163
    :goto_0
    const-string v1, "code"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_REG_MOBILE:Ljava/lang/String;

    const-string v6, ""

    move-object v1, p0

    move-object v4, v0

    move v5, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/maya/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 168
    return-void
.end method

.method public requestUserAuth(Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 8
    .param p1, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 281
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v1, "uname"

    iget-object v2, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v1, "tm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "gid"

    iget-object v2, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getGameId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "pid"

    iget-object v2, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getGamePid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_USER_NAME_AUTH:Ljava/lang/String;

    const-string v6, ""

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestFree(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 290
    return-void
.end method

.method public requestUserNoAdultPayMount(Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 8
    .param p1, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 297
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v1, "uname"

    iget-object v2, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_GET_USER_PAYMONEY:Ljava/lang/String;

    const-string v6, ""

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/maya/sdk/s/core/http/RequsetManager;->request2(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 302
    return-void
.end method

.method public submitSdkAction(Ljava/lang/String;)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "run_id"

    iget-object v2, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSdkRunID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "sdk_ver"

    iget-object v2, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_COLLECT_SDK_RUNNING:Ljava/lang/String;

    const-string v6, "submit"

    new-instance v7, Lcom/maya/sdk/s/core/http/RequsetManager$1;

    invoke-direct {v7, p0, p1}, Lcom/maya/sdk/s/core/http/RequsetManager$1;-><init>(Lcom/maya/sdk/s/core/http/RequsetManager;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/maya/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 224
    return-void
.end method

.method public submitSdkAction(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "run_id"

    iget-object v2, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSdkRunID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v1, "sdk_ver"

    iget-object v2, p0, Lcom/maya/sdk/s/core/http/RequsetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v2, "GET"

    sget-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->API_COLLECT_SDK_RUNNING:Ljava/lang/String;

    const-string v6, "submit"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/maya/sdk/s/core/http/RequsetManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 236
    return-void
.end method
