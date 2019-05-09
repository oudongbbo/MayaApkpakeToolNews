.class public Lcom/maya/sdk/m/http/MReqManager;
.super Ljava/lang/Object;
.source "MReqManager.java"


# static fields
.field public static final GET:Ljava/lang/String; = "GET"

.field public static final POST:Ljava/lang/String; = "POST"


# instance fields
.field private httpManager:Lcom/maya/sdk/framework/http/HttpManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/maya/sdk/framework/http/HttpManager;

    invoke-direct {v0, p1}, Lcom/maya/sdk/framework/http/HttpManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/m/http/MReqManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    .line 30
    return-void
.end method

.method private request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "isShow"    # Z
    .param p5, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/maya/sdk/framework/http/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 236
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/maya/sdk/framework/http/HttpBean;

    invoke-direct {v0}, Lcom/maya/sdk/framework/http/HttpBean;-><init>()V

    .line 237
    .local v0, "bean":Lcom/maya/sdk/framework/http/HttpBean;
    invoke-virtual {v0, p2}, Lcom/maya/sdk/framework/http/HttpBean;->setReqUrl(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/maya/sdk/framework/utils/ReqUtil;->addCommonParams(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/http/HttpBean;->setParams(Ljava/util/HashMap;)V

    .line 239
    invoke-virtual {v0, p4}, Lcom/maya/sdk/framework/http/HttpBean;->setLoading(Z)V

    .line 240
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/http/HttpBean;->setLoadingText(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/maya/sdk/m/http/MReqManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    sget-boolean v2, Lcom/maya/sdk/m/utils/MLogUtil;->isShowLog:Z

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/http/HttpManager;->setIsShowLog(Z)V

    .line 243
    const-string v1, "POST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/maya/sdk/m/http/MReqManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    invoke-virtual {v1, v0, p5}, Lcom/maya/sdk/framework/http/HttpManager;->post(Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/maya/sdk/m/http/MReqManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    invoke-virtual {v1, v0, p5}, Lcom/maya/sdk/framework/http/HttpManager;->get(Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 248
    :goto_0
    return-void
.end method

.method private requestFree(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "isShow"    # Z
    .param p5, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/maya/sdk/framework/http/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 254
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const/16 v0, 0x194

    const-string v1, "url\u4e3a\u7a7a"

    invoke-interface {p5, v0, v1}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : ------------>url\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 257
    return-void

    .line 261
    :cond_0
    new-instance v0, Lcom/maya/sdk/framework/http/HttpBean;

    invoke-direct {v0}, Lcom/maya/sdk/framework/http/HttpBean;-><init>()V

    .line 262
    .local v0, "bean":Lcom/maya/sdk/framework/http/HttpBean;
    invoke-virtual {v0, p2}, Lcom/maya/sdk/framework/http/HttpBean;->setReqUrl(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/maya/sdk/framework/utils/ReqUtil;->addAuthParams(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/http/HttpBean;->setParams(Ljava/util/HashMap;)V

    .line 264
    invoke-virtual {v0, p4}, Lcom/maya/sdk/framework/http/HttpBean;->setLoading(Z)V

    .line 265
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/http/HttpBean;->setLoadingText(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/maya/sdk/m/http/MReqManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    sget-boolean v2, Lcom/maya/sdk/m/utils/MLogUtil;->isShowLog:Z

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/http/HttpManager;->setIsShowLog(Z)V

    .line 267
    iget-object v1, p0, Lcom/maya/sdk/m/http/MReqManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    sget-boolean v2, Lcom/maya/sdk/m/utils/MLogUtil;->isShowLog:Z

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/http/HttpManager;->setIsShowLog(Z)V

    .line 269
    const-string v1, "POST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/maya/sdk/m/http/MReqManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    invoke-virtual {v1, v0, p5}, Lcom/maya/sdk/framework/http/HttpManager;->post(Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/maya/sdk/m/http/MReqManager;->httpManager:Lcom/maya/sdk/framework/http/HttpManager;

    invoke-virtual {v1, v0, p5}, Lcom/maya/sdk/framework/http/HttpManager;->get(Lcom/maya/sdk/framework/http/HttpBean;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 274
    :goto_0
    return-void
.end method


# virtual methods
.method public postSdkErrorAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "error_msg"    # Ljava/lang/String;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "error_msg"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "sdk_ver"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_ERROR:Ljava/lang/String;

    new-instance v6, Lcom/maya/sdk/m/http/MReqManager$3;

    invoke-direct {v6, p0, p1}, Lcom/maya/sdk/m/http/MReqManager$3;-><init>(Lcom/maya/sdk/m/http/MReqManager;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/maya/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 217
    return-void
.end method

.method public requestActive(Ljava/lang/String;Ljava/lang/String;ZLcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 7
    .param p1, "codeId"    # Ljava/lang/String;
    .param p2, "activeCode"    # Ljava/lang/String;
    .param p3, "isShowDialog"    # Z
    .param p4, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
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

    .line 158
    const-string v1, "gid"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getGameId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "pid"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getGamePid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "code_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "active_code"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v2, "GET"

    sget-object v3, Lcom/maya/sdk/m/http/MReqUrls;->API_M_USER_ACTIVE:Ljava/lang/String;

    move-object v1, p0

    move-object v4, v0

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/maya/sdk/m/http/MReqManager;->requestFree(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 166
    return-void
.end method

.method public requestActiveCheck(Ljava/lang/String;ZLcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 7
    .param p1, "codeId"    # Ljava/lang/String;
    .param p2, "isShowDialog"    # Z
    .param p3, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
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

    .line 144
    const-string v1, "gid"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getGameId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v1, "pid"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getGamePid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v1, "code_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v2, "GET"

    sget-object v3, Lcom/maya/sdk/m/http/MReqUrls;->API_M_USER_ACTIVE_CHECK:Ljava/lang/String;

    move-object v1, p0

    move-object v4, v0

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/maya/sdk/m/http/MReqManager;->requestFree(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 151
    return-void
.end method

.method public requestCollect(Lcom/maya/sdk/framework/http/HttpCallBack;Z)V
    .locals 7
    .param p1, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .param p2, "isShow"    # Z

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sdk_ver"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "package_name"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "mac"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "imei"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "wpi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getWpixels(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "hpi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getHpixels(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "device_brand"

    invoke-static {}, Lcom/maya/sdk/framework/utils/CommonUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "device_model"

    invoke-static {}, Lcom/maya/sdk/framework/utils/CommonUtil;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "net"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getNetWorkTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "os_ver"

    invoke-static {}, Lcom/maya/sdk/framework/utils/CommonUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_DEVICE:Ljava/lang/String;

    move-object v1, p0

    move-object v4, v0

    move v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/maya/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 49
    return-void
.end method

.method public requestInit(Lcom/maya/sdk/framework/http/HttpCallBack;Z)V
    .locals 7
    .param p1, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .param p2, "isShow"    # Z

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "mac"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "imei"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "sdk_ver"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "app_ver"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getAppInfo(Landroid/content/Context;)Lcom/maya/open/utils/AppUtils$AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/maya/open/utils/AppUtils$AppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "app_vercode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getAppInfo(Landroid/content/Context;)Lcom/maya/open/utils/AppUtils$AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maya/open/utils/AppUtils$AppInfo;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/m/http/MReqUrls;->API_M_INIT:Ljava/lang/String;

    move-object v1, p0

    move-object v4, v0

    move v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/maya/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 63
    return-void
.end method

.method public requestLogin(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;Z)V
    .locals 7
    .param p1, "mLoginData"    # Ljava/lang/String;
    .param p2, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .param p3, "isShowDialog"    # Z

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "partner_login_data"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/m/http/MReqUrls;->API_M_CHANNEL_LOGIN:Ljava/lang/String;

    move-object v1, p0

    move-object v4, v0

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/maya/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 69
    return-void
.end method

.method public requestPay(Ljava/util/HashMap;Ljava/lang/String;ZLcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 7
    .param p2, "mPayData"    # Ljava/lang/String;
    .param p3, "isShowDialog"    # Z
    .param p4, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/maya/sdk/framework/http/HttpCallBack;",
            ")V"
        }
    .end annotation

    .line 81
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "amt"

    const-string v2, "money"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "game_order_no"

    const-string v2, "order_no"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "goods_name"

    const-string v2, "order_name"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "game_ext"

    const-string v2, "order_ext"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "role_id"

    const-string v2, "role_id"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "role_name"

    const-string v2, "role_name"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "role_level"

    const-string v2, "role_level"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "server_id"

    const-string v2, "server_id"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "server_name"

    const-string v2, "server_name"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "partner_pay_data"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "sdk_ver"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/m/model/MConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/m/http/MReqUrls;->API_M_ORDER_CREATE:Ljava/lang/String;

    move-object v1, p0

    move-object v4, v0

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/maya/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 99
    return-void
.end method

.method public requestPush(ZLcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 7
    .param p1, "isShowDialog"    # Z
    .param p2, "reqestCallback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sdk_ver"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v2, "GET"

    sget-object v3, Lcom/maya/sdk/m/http/MReqUrls;->API_M_USER_PUSH:Ljava/lang/String;

    move-object v1, p0

    move-object v4, v0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/maya/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 108
    return-void
.end method

.method public submitRoleInfos(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "role_info"    # Ljava/lang/String;
    .param p3, "isShow"    # Z

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "client"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "role_info"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_ROLE:Ljava/lang/String;

    new-instance v6, Lcom/maya/sdk/m/http/MReqManager$1;

    invoke-direct {v6, p0, p1}, Lcom/maya/sdk/m/http/MReqManager$1;-><init>(Lcom/maya/sdk/m/http/MReqManager;Ljava/lang/String;)V

    move-object v1, p0

    move-object v4, v0

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/maya/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 137
    return-void
.end method

.method public submitSdkAction(Ljava/lang/String;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 174
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "run_id"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getSdkRunID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "sdk_ver"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_RUNNING:Ljava/lang/String;

    new-instance v6, Lcom/maya/sdk/m/http/MReqManager$2;

    invoke-direct {v6, p0, p1}, Lcom/maya/sdk/m/http/MReqManager$2;-><init>(Lcom/maya/sdk/m/http/MReqManager;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/maya/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 190
    return-void
.end method

.method public submitSdkAction(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 227
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "run_id"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getSdkRunID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "sdk_ver"

    iget-object v2, p0, Lcom/maya/sdk/m/http/MReqManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v2, "POST"

    sget-object v3, Lcom/maya/sdk/m/http/MReqUrls;->API_M_COLLECT_SDK_RUNNING:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/maya/sdk/m/http/MReqManager;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 231
    return-void
.end method
