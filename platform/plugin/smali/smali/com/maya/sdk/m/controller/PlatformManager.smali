.class public Lcom/maya/sdk/m/controller/PlatformManager;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/MsdkInterface;


# instance fields
.field protected fmSingleSdk:Lcom/maya/sdk/s/app/FMSdkCore;

.field protected isLogoutSuccess:Z

.field protected isNeedInputMoney:Z

.field protected mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

.field protected mConfig:Lcom/maya/sdk/m/model/bean/MsdkBean;

.field protected mContext:Landroid/content/Context;

.field protected mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

.field protected payDataExtra:Ljava/lang/String;

.field private requestManager:Lcom/maya/sdk/m/http/MReqManager;

.field private responseManager:Lcom/maya/sdk/m/http/MRepManager;

.field protected roleInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->isLogoutSuccess:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->isNeedInputMoney:Z

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->payDataExtra:Ljava/lang/String;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/m/controller/PlatformManager;)Lcom/maya/sdk/m/http/MRepManager;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/PlatformManager;

    .line 48
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->responseManager:Lcom/maya/sdk/m/http/MRepManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/sdk/m/controller/PlatformManager;Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MResultCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/PlatformManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/maya/sdk/m/interfaces/MResultCallback;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/m/controller/PlatformManager;->doAppActiveFuction(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MResultCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/maya/sdk/m/controller/PlatformManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MResultCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/PlatformManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/maya/sdk/m/interfaces/MResultCallback;

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/maya/sdk/m/controller/PlatformManager;->handleAppActiveAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MResultCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/maya/sdk/m/controller/PlatformManager;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/PlatformManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashMap;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/m/controller/PlatformManager;->postRoleInfos(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$400(Lcom/maya/sdk/m/controller/PlatformManager;Landroid/os/Bundle;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/PlatformManager;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Lcom/maya/sdk/m/interfaces/MsdkCallback;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/m/controller/PlatformManager;->handleLoginSSuccessBundle(Landroid/os/Bundle;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V

    return-void
.end method

.method private doAppActiveFuction(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MResultCallback;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/m/interfaces/MResultCallback;

    .line 975
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->responseManager:Lcom/maya/sdk/m/http/MRepManager;

    new-instance v1, Lcom/maya/sdk/m/controller/PlatformManager$7;

    invoke-direct {v1, p0, p2}, Lcom/maya/sdk/m/controller/PlatformManager$7;-><init>(Lcom/maya/sdk/m/controller/PlatformManager;Lcom/maya/sdk/m/interfaces/MResultCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/m/http/MRepManager;->handleAppActive(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V

    .line 1004
    return-void
.end method

.method private handleAppActive(Landroid/os/Bundle;Lcom/maya/sdk/m/interfaces/MResultCallback;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lcom/maya/sdk/m/interfaces/MResultCallback;

    .line 947
    const-string v0, "app_active"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "activeContent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 953
    invoke-interface {p2}, Lcom/maya/sdk/m/interfaces/MResultCallback;->onSuccess()V

    goto :goto_0

    .line 956
    :cond_0
    new-instance v1, Lcom/maya/sdk/m/controller/PlatformManager$6;

    invoke-direct {v1, p0, p2}, Lcom/maya/sdk/m/controller/PlatformManager$6;-><init>(Lcom/maya/sdk/m/controller/PlatformManager;Lcom/maya/sdk/m/interfaces/MResultCallback;)V

    invoke-direct {p0, v0, v1}, Lcom/maya/sdk/m/controller/PlatformManager;->doAppActiveFuction(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MResultCallback;)V

    .line 968
    :goto_0
    return-void
.end method

.method private handleAppActiveAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MResultCallback;)V
    .locals 8
    .param p1, "code_id"    # Ljava/lang/String;
    .param p2, "a_qq_group_key"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/maya/sdk/m/interfaces/MResultCallback;

    .line 1013
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->requestManager:Lcom/maya/sdk/m/http/MReqManager;

    new-instance v7, Lcom/maya/sdk/m/controller/PlatformManager$8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/maya/sdk/m/controller/PlatformManager$8;-><init>(Lcom/maya/sdk/m/controller/PlatformManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MResultCallback;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v7}, Lcom/maya/sdk/m/http/MReqManager;->requestActiveCheck(Ljava/lang/String;ZLcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 1063
    return-void
.end method

.method private handleLoginSSuccessBundle(Landroid/os/Bundle;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lcom/maya/sdk/m/interfaces/MsdkCallback;

    .line 1324
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->postEventPlatformLoginSuccess()V

    .line 1327
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1328
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "token"

    const-string v2, "token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    const-string v1, "is_reg"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1331
    const-string v1, "is_reg"

    const-string v2, "is_reg"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1333
    :cond_0
    const-string v1, "loginType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1335
    const-string v1, "loginType"

    const-string v2, "loginType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    :cond_1
    new-instance v1, Lcom/maya/sdk/m/controller/PlatformManager$17;

    invoke-direct {v1, p0, p2, v0}, Lcom/maya/sdk/m/controller/PlatformManager$17;-><init>(Lcom/maya/sdk/m/controller/PlatformManager;Lcom/maya/sdk/m/interfaces/MsdkCallback;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v1}, Lcom/maya/sdk/m/controller/PlatformManager;->handleAppActive(Landroid/os/Bundle;Lcom/maya/sdk/m/interfaces/MResultCallback;)V

    .line 1348
    return-void
.end method

.method private initPlatformCallBack(Lcom/maya/sdk/m/MyMsdkCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/maya/sdk/m/MyMsdkCallback;

    .line 1067
    new-instance v0, Lcom/maya/sdk/m/controller/PlatformManager$9;

    invoke-direct {v0, p0, p1}, Lcom/maya/sdk/m/controller/PlatformManager$9;-><init>(Lcom/maya/sdk/m/controller/PlatformManager;Lcom/maya/sdk/m/MyMsdkCallback;)V

    iput-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    .line 1133
    return-void
.end method

.method public static mapToJson(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1365
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1369
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1370
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1371
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v2, ""

    .line 1372
    .local v2, "jsonStr":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1374
    .local v3, "obj":Lorg/json/JSONObject;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1376
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1377
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1378
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_1

    .line 1379
    :catch_0
    move-exception v4

    .line 1380
    .local v4, "e1":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 1381
    .end local v4    # "e1":Lorg/json/JSONException;
    :goto_1
    goto :goto_0

    .line 1383
    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1384
    return-object v2

    .line 1366
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "jsonStr":Ljava/lang/String;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :cond_2
    :goto_2
    const-string v0, ""

    return-object v0
.end method

.method private postRoleInfos(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 794
    .local p2, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/maya/sdk/framework/utils/CommonUtil;->mapToMapTrim(Ljava/util/HashMap;)V

    .line 795
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->requestManager:Lcom/maya/sdk/m/http/MReqManager;

    invoke-static {p2}, Lcom/maya/sdk/framework/utils/CommonUtil;->mapToJson(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/maya/sdk/m/http/MReqManager;->submitRoleInfos(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 796
    return-void
.end method

.method private userPayM(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 299
    .local p1, "payinfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->requestManager:Lcom/maya/sdk/m/http/MReqManager;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/PlatformManager;->payDataExtra:Ljava/lang/String;

    new-instance v2, Lcom/maya/sdk/m/controller/PlatformManager$4;

    invoke-direct {v2, p0, p1}, Lcom/maya/sdk/m/controller/PlatformManager$4;-><init>(Lcom/maya/sdk/m/controller/PlatformManager;Ljava/util/HashMap;)V

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/maya/sdk/m/http/MReqManager;->requestPay(Ljava/util/HashMap;Ljava/lang/String;ZLcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 375
    return-void
.end method


# virtual methods
.method public doExitGame(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 212
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Lcom/maya/sdk/m/controller/PlatformManager$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/m/controller/PlatformManager$1;-><init>(Lcom/maya/sdk/m/controller/PlatformManager;)V

    invoke-static {p1, v0}, Lcom/maya/sdk/m/utils/MViewUtil;->showAndoridExit(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mConfig:Lcom/maya/sdk/m/model/bean/MsdkBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mConfig:Lcom/maya/sdk/m/model/bean/MsdkBean;

    invoke-virtual {v0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getShowExit()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/PlatformCore;->mExitGame(Landroid/content/Context;)V

    goto :goto_0

    .line 229
    :cond_1
    new-instance v0, Lcom/maya/sdk/m/controller/PlatformManager$2;

    invoke-direct {v0, p0, p1}, Lcom/maya/sdk/m/controller/PlatformManager$2;-><init>(Lcom/maya/sdk/m/controller/PlatformManager;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/maya/sdk/m/utils/MViewUtil;->showAndoridExit(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 250
    :goto_0
    return-void
.end method

.method public doInit(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/m/MyMsdkCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/maya/sdk/m/MyMsdkCallback;

    .line 143
    const-string v0, "doInit"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 145
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->isLogoutSuccess:Z

    .line 147
    new-instance v0, Lcom/maya/sdk/m/http/MReqManager;

    invoke-direct {v0, p1}, Lcom/maya/sdk/m/http/MReqManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->requestManager:Lcom/maya/sdk/m/http/MReqManager;

    .line 148
    new-instance v0, Lcom/maya/sdk/m/http/MRepManager;

    invoke-direct {v0, p1}, Lcom/maya/sdk/m/http/MRepManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->responseManager:Lcom/maya/sdk/m/http/MRepManager;

    .line 150
    invoke-direct {p0, p3}, Lcom/maya/sdk/m/controller/PlatformManager;->initPlatformCallBack(Lcom/maya/sdk/m/MyMsdkCallback;)V

    .line 152
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "init s"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/PlatformManager;->doInitS(Landroid/content/Context;)V

    goto :goto_0

    .line 156
    :cond_0
    const-string v0, "init m"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/PlatformCore;->mInit(Landroid/content/Context;)V

    .line 159
    :goto_0
    return-void
.end method

.method public declared-synchronized doInitS(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 1139
    :try_start_0
    invoke-static {}, Lcom/maya/sdk/s/app/FMSdkCore;->getInstance()Lcom/maya/sdk/s/app/FMSdkCore;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/maya/sdk/s/app/FMSdkCore;

    .line 1141
    invoke-static {p1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getGameKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/maya/sdk/s/app/FMSdkCore;

    new-instance v2, Lcom/maya/sdk/m/controller/PlatformManager$10;

    invoke-direct {v2, p0}, Lcom/maya/sdk/m/controller/PlatformManager$10;-><init>(Lcom/maya/sdk/m/controller/PlatformManager;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/maya/sdk/s/app/FMSdkCore;->init(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 1153
    iget-object v1, p0, Lcom/maya/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/maya/sdk/s/app/FMSdkCore;

    new-instance v2, Lcom/maya/sdk/m/controller/PlatformManager$11;

    invoke-direct {v2, p0}, Lcom/maya/sdk/m/controller/PlatformManager$11;-><init>(Lcom/maya/sdk/m/controller/PlatformManager;)V

    invoke-virtual {v1, v2}, Lcom/maya/sdk/s/app/FMSdkCore;->setUserLogoutCallback(Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 1168
    iget-object v1, p0, Lcom/maya/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/maya/sdk/s/app/FMSdkCore;

    new-instance v2, Lcom/maya/sdk/m/controller/PlatformManager$12;

    invoke-direct {v2, p0}, Lcom/maya/sdk/m/controller/PlatformManager$12;-><init>(Lcom/maya/sdk/m/controller/PlatformManager;)V

    invoke-virtual {v1, v2}, Lcom/maya/sdk/s/app/FMSdkCore;->setUserSwitchCallback(Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1192
    monitor-exit p0

    return-void

    .line 1138
    .end local v0    # "key":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public exitGameS(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1302
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/maya/sdk/s/app/FMSdkCore;

    if-nez v0, :cond_0

    .line 1303
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/PlatformManager;->doInitS(Landroid/content/Context;)V

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/maya/sdk/s/app/FMSdkCore;

    new-instance v1, Lcom/maya/sdk/m/controller/PlatformManager$16;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/controller/PlatformManager$16;-><init>(Lcom/maya/sdk/m/controller/PlatformManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/s/app/FMSdkCore;->userExit(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 1320
    return-void
.end method

.method public handleLoginAndSwitchCallbackBundle(ZLandroid/os/Bundle;)V
    .locals 1
    .param p1, "isSwitch"    # Z
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 864
    if-eqz p1, :cond_0

    .line 865
    const/4 p1, 0x0

    .line 866
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p2}, Lcom/maya/sdk/m/MyMsdkCallback;->onUserSwitchSuccess(Landroid/os/Bundle;)V

    goto :goto_0

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p2}, Lcom/maya/sdk/m/MyMsdkCallback;->onLoginSuccess(Landroid/os/Bundle;)V

    .line 870
    :goto_0
    return-void
.end method

.method public handleLoginAndSwitchCallbackCancel(Z)V
    .locals 2
    .param p1, "isSwitch"    # Z

    .line 855
    if-eqz p1, :cond_0

    .line 856
    const/4 p1, 0x0

    .line 857
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    const-string v1, "switch_cancel"

    invoke-interface {v0, v1}, Lcom/maya/sdk/m/MyMsdkCallback;->onUserSwitchFail(Ljava/lang/String;)V

    goto :goto_0

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    const-string v1, "login_cancel"

    invoke-interface {v0, v1}, Lcom/maya/sdk/m/MyMsdkCallback;->onLoginFail(Ljava/lang/String;)V

    .line 861
    :goto_0
    return-void
.end method

.method public handleLoginAndSwitchCallbackFail(ZLjava/lang/String;)V
    .locals 1
    .param p1, "isSwitch"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .line 846
    if-eqz p1, :cond_0

    .line 847
    const/4 p1, 0x0

    .line 848
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p2}, Lcom/maya/sdk/m/MyMsdkCallback;->onUserSwitchFail(Ljava/lang/String;)V

    goto :goto_0

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p2}, Lcom/maya/sdk/m/MyMsdkCallback;->onLoginFail(Ljava/lang/String;)V

    .line 852
    :goto_0
    return-void
.end method

.method public isNewSdk()Z
    .locals 2

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNewSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/maya/sdk/m/model/MConfigManager;->getIsNewLogin(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/m/model/MConfigManager;->getIsNewLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    const/4 v0, 0x1

    return v0

    .line 823
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOldSdk()Z
    .locals 2

    .line 828
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mConfig:Lcom/maya/sdk/m/model/bean/MsdkBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mConfig:Lcom/maya/sdk/m/model/bean/MsdkBean;

    invoke-virtual {v0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getSdk()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mConfig:Lcom/maya/sdk/m/model/bean/MsdkBean;

    .line 829
    invoke-virtual {v0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getSdk()I

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_1

    .line 831
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 833
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public mLoginSuccess(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MLoginCallback;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/m/interfaces/MLoginCallback;

    .line 874
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->responseManager:Lcom/maya/sdk/m/http/MRepManager;

    new-instance v1, Lcom/maya/sdk/m/controller/PlatformManager$5;

    invoke-direct {v1, p0, p2}, Lcom/maya/sdk/m/controller/PlatformManager$5;-><init>(Lcom/maya/sdk/m/controller/PlatformManager;Lcom/maya/sdk/m/interfaces/MLoginCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/m/http/MRepManager;->handleRepContent(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 942
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 117
    const-string v0, "onActivityResult()"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/m/controller/PlatformCore;->mOnActivityResult(IILandroid/content/Intent;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 131
    const-string v0, "onConfigurationChanged()"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/PlatformCore;->mOnConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 110
    const-string v0, "onDestroy()"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformCore;->mOnDestroy()V

    .line 114
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 124
    const-string v0, "onNewIntent()"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/PlatformCore;->mOnNewIntent(Landroid/content/Intent;)V

    .line 128
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 96
    const-string v0, "onPause()"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformCore;->mOnPause()V

    .line 100
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 82
    const-string v0, "onRestart()"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformCore;->mOnRestart()V

    .line 86
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 89
    const-string v0, "onResume()"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformCore;->mOnResume()V

    .line 93
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 75
    const-string v0, "onStart()"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformCore;->mOnStart()V

    .line 79
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 103
    const-string v0, "onStop()"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformCore;->mOnStop()V

    .line 107
    :cond_0
    return-void
.end method

.method public openUserNameAuth(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "canCancel"    # Z

    .line 138
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1, p2}, Lcom/maya/sdk/m/controller/PlatformCore;->mOpenUserNameAuth(Landroid/content/Context;Z)V

    .line 139
    return-void
.end method

.method public openUserNameAuth4S(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "canCancel"    # Z

    .line 1352
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/maya/sdk/s/app/FMSdkCore;

    invoke-virtual {v0, p1, p2}, Lcom/maya/sdk/s/app/FMSdkCore;->openUserNameAuth(Landroid/content/Context;Z)V

    .line 1353
    return-void
.end method

.method public postEventPlatformLoginSuccess()V
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->requestManager:Lcom/maya/sdk/m/http/MReqManager;

    const-string v1, "login_success"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/http/MReqManager;->submitSdkAction(Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method public roleChangeName(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 626
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "roleUpdate"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager;->roleInfos:Ljava/util/HashMap;

    .line 632
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/PlatformManager;->updateRoleInfos(Ljava/util/HashMap;)V

    .line 633
    const-string v0, "changeName"

    invoke-direct {p0, v0, p1}, Lcom/maya/sdk/m/controller/PlatformManager;->postRoleInfos(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 634
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/PlatformCore;->mRoleUpdate(Ljava/util/HashMap;)V

    .line 636
    :goto_0
    return-void
.end method

.method public roleCreate(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 389
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "roleCreate"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager;->roleInfos:Ljava/util/HashMap;

    .line 396
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/PlatformManager;->updateRoleInfos(Ljava/util/HashMap;)V

    .line 398
    const-string v0, "roleCreate"

    invoke-direct {p0, v0, p1}, Lcom/maya/sdk/m/controller/PlatformManager;->postRoleInfos(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 400
    const-string v0, "role_createtime"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/PlatformCore;->mRoleCreate(Ljava/util/HashMap;)V

    goto :goto_0

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "\u89d2\u8272\u521b\u5efa\u65f6\u95f4\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 460
    :goto_0
    return-void
.end method

.method public roleEnterGame(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 463
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "roleEnterGame"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager;->roleInfos:Ljava/util/HashMap;

    .line 470
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/PlatformManager;->updateRoleInfos(Ljava/util/HashMap;)V

    .line 472
    const-string v0, "enterGame"

    invoke-direct {p0, v0, p1}, Lcom/maya/sdk/m/controller/PlatformManager;->postRoleInfos(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 474
    const-string v0, "role_createtime"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/PlatformCore;->mRoleEnterGame(Ljava/util/HashMap;)V

    goto :goto_0

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "\u89d2\u8272\u521b\u5efa\u65f6\u95f4\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 542
    :goto_0
    return-void
.end method

.method public roleLevelUp(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 545
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "roleUpgrade"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    const-string v0, "role_leveltime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager;->roleInfos:Ljava/util/HashMap;

    .line 554
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/PlatformManager;->updateRoleInfos(Ljava/util/HashMap;)V

    .line 556
    const-string v0, "roleUplevel"

    invoke-direct {p0, v0, p1}, Lcom/maya/sdk/m/controller/PlatformManager;->postRoleInfos(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 558
    const-string v0, "role_createtime"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/PlatformCore;->mRoleUpgrade(Ljava/util/HashMap;)V

    goto :goto_0

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "\u89d2\u8272\u521b\u5efa\u65f6\u95f4\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 623
    :goto_0
    return-void
.end method

.method public runOnUiThread(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 842
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 843
    return-void
.end method

.method public sendLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1360
    const-string v0, "Platform"

    invoke-static {v0, p1}, Lcom/maya/sdk/m/utils/MLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    return-void
.end method

.method public serverSelect(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 379
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "roleCreate"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    const-string v0, "serverSeclet"

    invoke-direct {p0, v0, p1}, Lcom/maya/sdk/m/controller/PlatformManager;->postRoleInfos(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 386
    :goto_0
    return-void
.end method

.method public setPlatform(Lcom/maya/sdk/m/controller/PlatformCore;Landroid/content/Context;)V
    .locals 0
    .param p1, "platform"    # Lcom/maya/sdk/m/controller/PlatformCore;
    .param p2, "context"    # Landroid/content/Context;

    .line 71
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    .line 72
    return-void
.end method

.method public updateRoleInfos(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 803
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 804
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "role_id"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setRoleId(Landroid/content/Context;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "role_name"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setRoleName(Landroid/content/Context;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "role_level"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setRoleLevel(Landroid/content/Context;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "server_id"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setRoleServerId(Landroid/content/Context;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "server_name"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setRoleServerName(Landroid/content/Context;Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "role_vip"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setRoleVip(Landroid/content/Context;Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "role_partyname"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setRolePartyName(Landroid/content/Context;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "role_balance"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setRoleBalance(Landroid/content/Context;Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, "role_extra"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setRoleExtra(Landroid/content/Context;Ljava/lang/String;)V

    .line 814
    :cond_0
    return-void
.end method

.method public userLogin(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 163
    const-string v0, "userLogin"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 165
    iget-boolean v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->isLogoutSuccess:Z

    if-nez v0, :cond_2

    .line 168
    if-nez p1, :cond_0

    .line 169
    const-string v0, "login,context is null."

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 170
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const-string v0, "login-s"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/PlatformManager;->userLoginS(Landroid/content/Context;)V

    goto :goto_0

    .line 177
    :cond_1
    const-string v0, "login-m"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/PlatformCore;->mUserLogin(Landroid/content/Context;)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/PlatformManager;->userSwitch(Landroid/content/Context;)V

    .line 184
    :goto_0
    return-void
.end method

.method public userLoginS(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1196
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/maya/sdk/s/app/FMSdkCore;

    if-nez v0, :cond_0

    .line 1197
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/PlatformManager;->doInitS(Landroid/content/Context;)V

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/maya/sdk/s/app/FMSdkCore;

    new-instance v1, Lcom/maya/sdk/m/controller/PlatformManager$13;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/controller/PlatformManager$13;-><init>(Lcom/maya/sdk/m/controller/PlatformManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/s/app/FMSdkCore;->userLogin(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 1225
    return-void
.end method

.method public userLogout(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 198
    const-string v0, "userLogout"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mContext:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/PlatformCore;->mUserLogout(Landroid/content/Context;)V

    .line 207
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onLogoutSuccess()V

    .line 208
    return-void
.end method

.method public userPay(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 254
    .local p2, "payinfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "userPay"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 256
    if-eqz p2, :cond_3

    .line 258
    const-string v0, "0"

    const-string v1, "money"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->isNeedInputMoney:Z

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Lcom/maya/sdk/m/views/MoneySelectDialog;

    invoke-direct {v0, p1}, Lcom/maya/sdk/m/views/MoneySelectDialog;-><init>(Landroid/content/Context;)V

    .line 261
    .local v0, "dialog":Lcom/maya/sdk/m/views/MoneySelectDialog;
    new-instance v1, Lcom/maya/sdk/m/controller/PlatformManager$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/maya/sdk/m/controller/PlatformManager$3;-><init>(Lcom/maya/sdk/m/controller/PlatformManager;Ljava/util/HashMap;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/views/MoneySelectDialog;->setMoneyCallback(Lcom/maya/sdk/m/views/MoneySelectDialog$MoneyCallback;)V

    .line 274
    invoke-virtual {v0}, Lcom/maya/sdk/m/views/MoneySelectDialog;->show()V

    .line 275
    .end local v0    # "dialog":Lcom/maya/sdk/m/views/MoneySelectDialog;
    goto :goto_1

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isOldSdk()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 284
    :cond_1
    const-string v0, "userPay-m"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 286
    invoke-direct {p0, p2}, Lcom/maya/sdk/m/controller/PlatformManager;->userPayM(Ljava/util/HashMap;)V

    goto :goto_1

    .line 279
    :cond_2
    :goto_0
    const-string v0, "userPay-s"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/maya/sdk/m/controller/PlatformManager;->userPayS(Landroid/content/Context;Ljava/util/HashMap;)V

    goto :goto_1

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    const-string v1, "\u652f\u4ed8\u53c2\u6570\u4e3a\u7a7a"

    invoke-interface {v0, v1}, Lcom/maya/sdk/m/MyMsdkCallback;->onPayFail(Ljava/lang/String;)V

    .line 292
    :goto_1
    return-void
.end method

.method public userPayS(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1266
    .local p2, "payinfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/maya/sdk/s/app/FMSdkCore;

    if-nez v0, :cond_0

    .line 1267
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/PlatformManager;->doInitS(Landroid/content/Context;)V

    .line 1270
    :cond_0
    const-string v0, "order_no"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1272
    .local v0, "moid":Ljava/lang/String;
    new-instance v1, Lcom/maya/sdk/framework/pay/PayInfoBean;

    invoke-direct {v1}, Lcom/maya/sdk/framework/pay/PayInfoBean;-><init>()V

    .line 1273
    .local v1, "infos":Lcom/maya/sdk/framework/pay/PayInfoBean;
    const-string v2, "money"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setMoney(Ljava/lang/String;)V

    .line 1274
    const-string v2, "order_no"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_no(Ljava/lang/String;)V

    .line 1275
    const-string v2, "order_name"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_name(Ljava/lang/String;)V

    .line 1276
    const-string v2, "order_ext"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setOrder_ext(Ljava/lang/String;)V

    .line 1277
    const-string v2, "role_id"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setRole_id(Ljava/lang/String;)V

    .line 1278
    const-string v2, "role_name"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setRole_name(Ljava/lang/String;)V

    .line 1279
    const-string v2, "role_level"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setRole_level(Ljava/lang/String;)V

    .line 1280
    const-string v2, "server_id"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setServer_id(Ljava/lang/String;)V

    .line 1281
    const-string v2, "server_name"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->setServer_name(Ljava/lang/String;)V

    .line 1283
    iget-object v2, p0, Lcom/maya/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/maya/sdk/s/app/FMSdkCore;

    new-instance v3, Lcom/maya/sdk/m/controller/PlatformManager$15;

    invoke-direct {v3, p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager$15;-><init>(Lcom/maya/sdk/m/controller/PlatformManager;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v1, v3}, Lcom/maya/sdk/s/app/FMSdkCore;->userPay(Landroid/content/Context;Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 1298
    return-void
.end method

.method public userSwitch(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 187
    const-string v0, "userSwitch"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/PlatformManager;->sendLog(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/maya/sdk/m/controller/PlatformManager;->isNewSdk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/PlatformManager;->userSwitchS(Landroid/content/Context;)V

    .line 191
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/PlatformCore;->mUserSwitch(Landroid/content/Context;)V

    .line 195
    return-void
.end method

.method public userSwitchS(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1228
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/maya/sdk/s/app/FMSdkCore;

    if-nez v0, :cond_0

    .line 1229
    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/controller/PlatformManager;->doInitS(Landroid/content/Context;)V

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager;->fmSingleSdk:Lcom/maya/sdk/s/app/FMSdkCore;

    new-instance v1, Lcom/maya/sdk/m/controller/PlatformManager$14;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/controller/PlatformManager$14;-><init>(Lcom/maya/sdk/m/controller/PlatformManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/s/app/FMSdkCore;->userSwitch(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 1257
    return-void
.end method
