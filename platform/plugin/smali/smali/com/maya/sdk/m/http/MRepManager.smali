.class public Lcom/maya/sdk/m/http/MRepManager;
.super Ljava/lang/Object;
.source "MRepManager.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/m/http/MRepManager;Lorg/json/JSONObject;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/http/MRepManager;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/m/http/MRepManager;->handleInitUpdate(Lorg/json/JSONObject;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    return-void
.end method

.method public static getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1
    .param p0, "data"    # Lorg/json/JSONObject;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 395
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 1
    .param p0, "data"    # Lorg/json/JSONObject;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 391
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 383
    invoke-static {p1, p2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 387
    invoke-static {p1, p2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleInitApiAndWeb(Lorg/json/JSONObject;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 4
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 151
    :try_start_0
    const-string v0, "common"

    invoke-static {p1, v0}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 153
    .local v0, "commonObj":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/maya/sdk/m/http/MReqUrls;->initWebpages(Lorg/json/JSONObject;)V

    .line 155
    invoke-static {v0}, Lcom/maya/sdk/m/http/MReqUrls;->initApis(Lorg/json/JSONObject;)V

    .line 158
    const-string v1, "channel"

    invoke-static {p1, v1}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 160
    .local v1, "channelObj":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/maya/sdk/m/http/MReqUrls;->initChannel(Lorg/json/JSONObject;)V

    .line 162
    iget-object v2, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setInitGameData(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    const-string v2, "\u521d\u59cb\u5316\u5b8c\u6210"

    invoke-interface {p2, v2}, Lcom/maya/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v0    # "commonObj":Lorg/json/JSONObject;
    .end local v1    # "channelObj":Lorg/json/JSONObject;
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    const/4 v1, -0x1

    const-string v2, "API\u63a5\u53e3\u89e3\u6790\u5931\u8d25"

    invoke-interface {p2, v1, v2}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private handleInitUpdate(Lorg/json/JSONObject;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 7
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 122
    :try_start_0
    const-string v0, "common"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 123
    .local v0, "commonObj":Lorg/json/JSONObject;
    const-string v1, "up"

    invoke-direct {p0, v0, v1}, Lcom/maya/sdk/m/http/MRepManager;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 124
    .local v1, "up":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 125
    const-string v2, "state"

    invoke-direct {p0, v1, v2}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "state":Ljava/lang/String;
    const-string v3, "desc"

    invoke-direct {p0, v1, v3}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "desc":Ljava/lang/String;
    const-string v4, "url"

    invoke-direct {p0, v1, v4}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "url":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    iget-object v5, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6, v3, v4}, Lcom/maya/sdk/m/controller/UpdateManager;->checkUpdate(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v5, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v6, v3, v4}, Lcom/maya/sdk/m/controller/UpdateManager;->checkUpdate(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/m/http/MRepManager;->handleInitApiAndWeb(Lorg/json/JSONObject;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 136
    .end local v2    # "state":Ljava/lang/String;
    .end local v3    # "desc":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 138
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/m/http/MRepManager;->handleInitApiAndWeb(Lorg/json/JSONObject;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0    # "commonObj":Lorg/json/JSONObject;
    .end local v1    # "up":Lorg/json/JSONObject;
    :goto_1
    goto :goto_2

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    const/4 v1, -0x1

    const-string v2, "\u66f4\u65b0\u6570\u636e\u89e3\u6790\u5931\u8d25"

    invoke-interface {p2, v1, v2}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public handleActiveCheckResult(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 216
    const/4 v0, 0x0

    .line 219
    .local v0, "active":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "active"

    invoke-static {v1, v2}, Lcom/maya/sdk/m/http/MRepManager;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 221
    if-eqz p2, :cond_0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/maya/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 226
    const/4 v2, -0x1

    const-string v3, "\u83b7\u53d6\u6e38\u620f\u6fc0\u6d3b\u72b6\u6001\u5931\u8d25"

    invoke-interface {p2, v2, v3}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 228
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public handleActiveResult(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, "active":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "active"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 238
    if-eqz p2, :cond_0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/maya/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_0
    goto :goto_0

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 243
    const/4 v2, -0x1

    const-string v3, "\u83b7\u53d6\u7528\u6237\u6fc0\u6d3b\u7801\u6570\u636e\u5931\u8d25"

    invoke-interface {p2, v2, v3}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 245
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public handleAppActive(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/m/interfaces/MsdkCallback;

    .line 355
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "dialog":Lorg/json/JSONObject;
    const-string v1, "state"

    invoke-direct {p0, v0, v1}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "state":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    const-string v2, "target_url"

    invoke-direct {p0, v0, v2}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "url":Ljava/lang/String;
    const-string v3, "a_qq_group_key"

    invoke-direct {p0, v0, v3}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, "a_qq_group_key":Ljava/lang/String;
    const-string v4, "code_id"

    invoke-direct {p0, v0, v4}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, "code_id":Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 365
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v6, "url"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v6, "a_qq_group_key"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v6, "code_id"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-interface {p2, v5}, Lcom/maya/sdk/m/interfaces/MsdkCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 369
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "a_qq_group_key":Ljava/lang/String;
    .end local v4    # "code_id":Ljava/lang/String;
    .end local v5    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 371
    :cond_0
    const-string v2, "\u4e0d\u9700\u8981\u6fc0\u6d3b\u7801"

    invoke-interface {p2, v2}, Lcom/maya/sdk/m/interfaces/MsdkCallback;->onFail(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v1    # "state":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 373
    .end local v0    # "dialog":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 376
    const-string v1, ""

    invoke-interface {p2, v1}, Lcom/maya/sdk/m/interfaces/MsdkCallback;->onFail(Ljava/lang/String;)V

    .line 378
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public handleInit(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 10
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 56
    .local v0, "dataObj":Lorg/json/JSONObject;
    const-string v1, "common"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 59
    .local v1, "commonObj":Lorg/json/JSONObject;
    const-string v2, "device"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 60
    const-string v2, "device"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "device":Ljava/lang/String;
    iget-object v4, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/maya/sdk/m/utils/MsdkUtils;->unZipString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "deviceContent":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/maya/sdk/m/utils/MLogUtil;->w(Ljava/lang/String;)V

    .line 64
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    .local v5, "deviceObj":Lorg/json/JSONObject;
    const-string v6, "is"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 67
    .local v6, "is":Z
    const-string v7, "type"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "type":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v8, "1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 70
    iget-object v8, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v3}, Lcom/maya/sdk/m/model/MConfigManager;->setIsNewLogin(Landroid/content/Context;Z)V

    goto :goto_0

    .line 71
    :cond_0
    if-eqz v6, :cond_1

    const-string v8, "2"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 73
    iget-object v8, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v3}, Lcom/maya/sdk/m/model/MConfigManager;->setIsNewLoginAfterChannel(Landroid/content/Context;Z)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v8, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/maya/sdk/m/model/MConfigManager;->setIsNewLogin(Landroid/content/Context;Z)V

    .line 76
    iget-object v8, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/maya/sdk/m/model/MConfigManager;->setIsNewLoginAfterChannel(Landroid/content/Context;Z)V

    .line 81
    .end local v2    # "device":Ljava/lang/String;
    .end local v4    # "deviceContent":Ljava/lang/String;
    .end local v5    # "deviceObj":Lorg/json/JSONObject;
    .end local v6    # "is":Z
    .end local v7    # "type":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v2, "dialogInit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    const-string v2, "dialogInit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "dialogInit":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .local v4, "dialogInitObj":Lorg/json/JSONObject;
    nop

    .line 87
    const-string v5, "touch_back_close"

    invoke-direct {p0, v4, v5}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "touch_back_close":Ljava/lang/String;
    const-string v6, "target_url"

    invoke-direct {p0, v4, v6}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "target_url":Ljava/lang/String;
    const-string v7, "2"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v3

    .line 90
    .local v7, "canBack":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u521d\u59cb\u5316\u5f39\u7a97\u662f\u5426\u53ef\u9000\u51fa\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/maya/sdk/m/utils/MLogUtil;->d(Ljava/lang/String;)V

    .line 92
    iget-object v8, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/maya/sdk/m/http/MRepManager$1;

    invoke-direct {v9, p0, v0, p2}, Lcom/maya/sdk/m/http/MRepManager$1;-><init>(Lcom/maya/sdk/m/http/MRepManager;Lorg/json/JSONObject;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    invoke-static {v8, v6, v7, v3, v9}, Lcom/maya/sdk/m/utils/MsdkUtils;->showWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 104
    .end local v5    # "touch_back_close":Ljava/lang/String;
    .end local v6    # "target_url":Ljava/lang/String;
    .end local v7    # "canBack":Z
    nop

    .line 108
    .end local v2    # "dialogInit":Ljava/lang/String;
    .end local v4    # "dialogInitObj":Lorg/json/JSONObject;
    goto :goto_1

    .line 110
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/maya/sdk/m/http/MRepManager;->handleInitUpdate(Lorg/json/JSONObject;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0    # "dataObj":Lorg/json/JSONObject;
    .end local v1    # "commonObj":Lorg/json/JSONObject;
    :goto_1
    goto :goto_2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    const/4 v1, -0x1

    const-string v2, "\u521d\u59cb\u5316\u65f6\u53d1\u751f\u9519\u8bef"

    invoke-interface {p2, v1, v2}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public handleLoginSuccess(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V
    .locals 12
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/m/interfaces/MsdkCallback;

    .line 251
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-direct {p0, v0, v1}, Lcom/maya/sdk/m/http/MRepManager;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 252
    .local v0, "data":Lorg/json/JSONObject;
    const-string v1, "uinfo"

    invoke-direct {p0, v0, v1}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "uinfo_encode":Ljava/lang/String;
    iget-object v2, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/maya/sdk/m/utils/MsdkUtils;->unZipString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "uinfo_decode":Ljava/lang/String;
    invoke-static {v2}, Lcom/maya/sdk/m/utils/MLogUtil;->w(Ljava/lang/String;)V

    .line 256
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 258
    .local v3, "unifo":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const-string v5, "uid"

    invoke-direct {p0, v3, v5}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    iget-object v4, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const-string v5, "uname"

    invoke-direct {p0, v3, v5}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    iget-object v4, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const-string v5, "vname"

    invoke-direct {p0, v3, v5}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setUserVname(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    iget-object v4, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const-string v5, "pwd"

    invoke-direct {p0, v3, v5}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setUserPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    const-string v4, "access_token"

    invoke-direct {p0, v0, v4}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "access_token":Ljava/lang/String;
    iget-object v5, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setUserToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    new-instance v5, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-direct {v5}, Lcom/maya/sdk/framework/user/UserInfoBean;-><init>()V

    .line 268
    .local v5, "user":Lcom/maya/sdk/framework/user/UserInfoBean;
    iget-object v6, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->setUname(Ljava/lang/String;)V

    .line 269
    iget-object v6, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->setVname(Ljava/lang/String;)V

    .line 270
    iget-object v6, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/maya/sdk/framework/model/config/ConfigManager;->getUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->setPwd(Ljava/lang/String;)V

    .line 271
    iget-object v6, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/maya/sdk/m/utils/MsdkUtils;->addAccount(Landroid/content/Context;Lcom/maya/sdk/framework/user/UserInfoBean;)V

    .line 274
    const-string v6, "old"

    .line 275
    .local v6, "loginType":Ljava/lang/String;
    iget-object v7, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/maya/sdk/m/model/MConfigManager;->getIsNewLoginAfterChannel(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 276
    const-string v7, "new"

    move-object v6, v7

    .line 277
    iget-object v7, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/maya/sdk/m/model/MConfigManager;->setIsNewLogin(Landroid/content/Context;Z)V

    .line 281
    :cond_0
    const-string v7, "dialog"

    invoke-direct {p0, v0, v7}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 282
    .local v7, "dialog":Ljava/lang/String;
    const-string v8, "cch_data"

    invoke-direct {p0, v0, v8}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 283
    .local v8, "cch_data":Ljava/lang/String;
    const-string v9, "app_active"

    invoke-direct {p0, v0, v9}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 286
    .local v9, "app_active":Ljava/lang/String;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v10, "result":Landroid/os/Bundle;
    const-string v11, "token"

    invoke-virtual {v10, v11, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v11, "type"

    invoke-virtual {v10, v11, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v11, "dialog"

    invoke-virtual {v10, v11, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v11, "cch_data"

    invoke-virtual {v10, v11, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v11, "app_active"

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-interface {p2, v10}, Lcom/maya/sdk/m/interfaces/MsdkCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "uinfo_encode":Ljava/lang/String;
    .end local v2    # "uinfo_decode":Ljava/lang/String;
    .end local v3    # "unifo":Lorg/json/JSONObject;
    .end local v4    # "access_token":Ljava/lang/String;
    .end local v5    # "user":Lcom/maya/sdk/framework/user/UserInfoBean;
    .end local v6    # "loginType":Ljava/lang/String;
    .end local v7    # "dialog":Ljava/lang/String;
    .end local v8    # "cch_data":Ljava/lang/String;
    .end local v9    # "app_active":Ljava/lang/String;
    .end local v10    # "result":Landroid/os/Bundle;
    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 295
    const-string v1, "\u767b\u5f55\u65f6\u89e3\u6790\u6570\u636e\u53d1\u751f\u9519\u8bef."

    invoke-interface {p2, v1}, Lcom/maya/sdk/m/interfaces/MsdkCallback;->onFail(Ljava/lang/String;)V

    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public handlePaySuccess(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V
    .locals 10
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/m/interfaces/MsdkCallback;

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "data":Lorg/json/JSONObject;
    const-string v1, ""

    .line 177
    .local v1, "my_order_no":Ljava/lang/String;
    const-string v2, ""

    .line 178
    .local v2, "partner_data":Ljava/lang/String;
    const-string v3, ""

    .line 179
    .local v3, "id":Ljava/lang/String;
    const-string v4, ""

    .line 181
    .local v4, "pay_url":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "data"

    invoke-direct {p0, v5, v6}, Lcom/maya/sdk/m/http/MRepManager;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object v0, v5

    .line 182
    if-eqz v0, :cond_2

    .line 184
    const-string v5, "my_order_no"

    invoke-direct {p0, v0, v5}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 186
    const-string v5, "partner_data"

    invoke-direct {p0, v0, v5}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 188
    iget-object v5, p0, Lcom/maya/sdk/m/http/MRepManager;->mContext:Landroid/content/Context;

    const-string v6, "device"

    invoke-direct {p0, v0, v6}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/maya/sdk/m/utils/MsdkUtils;->unZipString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "deviceStr":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    .local v6, "device":Lorg/json/JSONObject;
    nop

    .line 191
    const-string v7, "id"

    invoke-direct {p0, v6, v7}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 192
    const-string v7, "pay_url"

    invoke-direct {p0, v6, v7}, Lcom/maya/sdk/m/http/MRepManager;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 194
    if-eqz p2, :cond_1

    .line 195
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v8, "no"

    invoke-virtual {v7, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v8, "cch_data"

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v8, "type"

    const-string v9, "ff9aCXiM"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "new"

    goto :goto_0

    :cond_0
    const-string v9, "old"

    :goto_0
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v8, "url"

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-interface {p2, v7}, Lcom/maya/sdk/m/interfaces/MsdkCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 202
    .end local v5    # "deviceStr":Ljava/lang/String;
    .end local v6    # "device":Lorg/json/JSONObject;
    .end local v7    # "bundle":Landroid/os/Bundle;
    :cond_1
    goto :goto_1

    .line 203
    :cond_2
    const-string v5, "\u652f\u4ed8\u6570\u636e\u4e3a\u7a7a"

    invoke-interface {p2, v5}, Lcom/maya/sdk/m/interfaces/MsdkCallback;->onFail(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_1
    goto :goto_2

    .line 205
    :catch_0
    move-exception v5

    .line 206
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 207
    const-string v6, "\u652f\u4ed8\u65f6\u53d1\u751f\u9519\u8bef"

    invoke-interface {p2, v6}, Lcom/maya/sdk/m/interfaces/MsdkCallback;->onFail(Ljava/lang/String;)V

    .line 209
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method public handleRepContent(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 34
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 36
    .local v1, "state":I
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "msg":Ljava/lang/String;
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_0

    .line 38
    invoke-interface {p2, p1}, Lcom/maya/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p2, v1, v2}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "jsonObj":Lorg/json/JSONObject;
    .end local v1    # "state":I
    .end local v2    # "msg":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    const/4 v1, -0x1

    const-string v2, "\u6570\u636e\u89e3\u6790\u9519\u8bef"

    invoke-interface {p2, v1, v2}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public handleRoleCreateTime(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 302
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5904\u7406\u89d2\u8272\u521b\u5efa\u65f6\u95f4"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 306
    .local v1, "data":Lorg/json/JSONObject;
    const-string v2, "create_time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    const-string v2, "create_time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 309
    .local v2, "create_time":I
    if-lez v2, :cond_0

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/maya/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_0
    const-string v3, "create_time\u7684\u503c\u4e0d\u6b63\u786e"

    invoke-interface {p2, v0, v3}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 314
    .end local v2    # "create_time":I
    :goto_0
    goto :goto_1

    .line 315
    :cond_1
    const-string v2, "json\u6570\u636e\u6ca1\u6709\u5b57\u6bb5\uff1acreate_time"

    invoke-interface {p2, v0, v2}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v1    # "data":Lorg/json/JSONObject;
    :goto_1
    goto :goto_2

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 319
    const-string v2, "\u89e3\u6790\u89d2\u8272\u521b\u5efa\u65f6\u95f4\u53d1\u751f\u9519\u8bef."

    invoke-interface {p2, v0, v2}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 321
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method public handleServerTime(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 326
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u83b7\u53d6\u670d\u52a1\u5668\u65f6\u95f4"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 329
    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 330
    .local v1, "data":Lorg/json/JSONObject;
    const-string v2, "service_time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    const-string v2, "service_time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 333
    .local v2, "service_time":I
    if-lez v2, :cond_0

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/maya/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_0
    const-string v3, "service_time\u7684\u503c\u4e0d\u6b63\u786e"

    invoke-interface {p2, v0, v3}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 338
    .end local v2    # "service_time":I
    :goto_0
    goto :goto_1

    .line 339
    :cond_1
    const-string v2, "json\u6570\u636e\u6ca1\u6709\u5b57\u6bb5\uff1aservice_time"

    invoke-interface {p2, v0, v2}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v1    # "data":Lorg/json/JSONObject;
    :goto_1
    goto :goto_2

    .line 341
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 343
    const-string v2, "\u83b7\u53d6\u670d\u52a1\u5668\u65f6\u95f4\u53d1\u751f\u9519\u8bef."

    invoke-interface {p2, v0, v2}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 345
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method
