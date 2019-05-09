.class public Lcom/maya/sdk/s/core/http/ResponseManager;
.super Ljava/lang/Object;
.source "ResponseManager.java"


# instance fields
.field public final ERROR_CODE_DATAPARSE:I

.field public final ERROR_CODE_INIT:I

.field public final ERROR_CODE_SKIN:I

.field public final ERROR_STRING_DATAPARSE:Ljava/lang/String;

.field public final ERROR_STRING_INIT:Ljava/lang/String;

.field public final ERROR_STRING_LOGIN:Ljava/lang/String;

.field public final ERROR_STRING_SKIN:Ljava/lang/String;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const v0, 0x18704

    iput v0, p0, Lcom/maya/sdk/s/core/http/ResponseManager;->ERROR_CODE_DATAPARSE:I

    .line 36
    const v0, 0x18705

    iput v0, p0, Lcom/maya/sdk/s/core/http/ResponseManager;->ERROR_CODE_INIT:I

    .line 37
    const v0, 0x18706

    iput v0, p0, Lcom/maya/sdk/s/core/http/ResponseManager;->ERROR_CODE_SKIN:I

    .line 39
    const-string v0, "\u6570\u636e\u89e3\u6790\u9519\u8bef"

    iput-object v0, p0, Lcom/maya/sdk/s/core/http/ResponseManager;->ERROR_STRING_DATAPARSE:Ljava/lang/String;

    .line 40
    const-string v0, "\u5e73\u53f0\u521d\u59cb\u5316\u6570\u636e\u89e3\u6790\u5931\u8d25"

    iput-object v0, p0, Lcom/maya/sdk/s/core/http/ResponseManager;->ERROR_STRING_INIT:Ljava/lang/String;

    .line 41
    const-string v0, "\u66f4\u65b0\u6362\u80a4\u8d44\u6e90\u6570\u636e\u89e3\u6790\u5931\u8d25"

    iput-object v0, p0, Lcom/maya/sdk/s/core/http/ResponseManager;->ERROR_STRING_SKIN:Ljava/lang/String;

    .line 42
    const-string v0, "\u767b\u5f55\u65f6\u6570\u636e\u89e3\u6790\u5931\u8d25"

    iput-object v0, p0, Lcom/maya/sdk/s/core/http/ResponseManager;->ERROR_STRING_LOGIN:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private getGameMessage(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/maya/sdk/s/core/model/bean/ExitGameBean;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 694
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/s/core/model/bean/ExitGameBean;>;"
    new-instance v0, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;

    invoke-direct {v0}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;-><init>()V

    .line 695
    .local v0, "gameBean":Lcom/maya/sdk/s/core/model/bean/ExitGameBean;
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p3, p2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 696
    .local v1, "gameObject":Lorg/json/JSONObject;
    const-string v2, "app_name"

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->setAppName(Ljava/lang/String;)V

    .line 697
    const-string v2, "category_name"

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->setCategoryName(Ljava/lang/String;)V

    .line 698
    const-string v2, "app_icon"

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->setIconUrl(Ljava/lang/String;)V

    .line 699
    const-string v2, "dow_url"

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->setDownloadUrl(Ljava/lang/String;)V

    .line 700
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    return-void
.end method

.method private handleDialogTips(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 302
    new-instance v0, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;

    invoke-direct {v0, p1}, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, "autoLoginSuccessDialog":Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;
    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->show()V

    .line 304
    invoke-static {p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/login/AutoLoginSuccessDialog;->setUserName(Ljava/lang/CharSequence;)V

    .line 305
    return-void
.end method


# virtual methods
.method public handlGetUname(Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 312
    const-string v0, ""

    .line 314
    .local v0, "uname":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 316
    .local v1, "dataObj":Lorg/json/JSONObject;
    if-eqz p2, :cond_0

    .line 317
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "uname"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 319
    const-string v3, "uname"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-interface {p2, v2}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v1    # "dataObj":Lorg/json/JSONObject;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 324
    const-string v2, "\u83b7\u53d6\u7528\u6237\u540d\u65f6\u53d1\u751f\u9519\u8bef"

    invoke-interface {p2, v2}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 326
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public handlPaySuccess(Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 331
    const-string v0, ""

    .line 332
    .local v0, "r_order_no":Ljava/lang/String;
    const-string v1, ""

    .line 333
    .local v1, "paycenter_url":Ljava/lang/String;
    const-string v2, ""

    .line 334
    .local v2, "m_ext":Ljava/lang/String;
    const-string v3, ""

    .line 336
    .local v3, "tm":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "data"

    invoke-static {v4, v5}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 338
    .local v4, "data":Lorg/json/JSONObject;
    const-string v5, "my_order_no"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 339
    const-string v5, "my_order_no"

    invoke-static {v4, v5}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 341
    :cond_0
    const-string v5, "paycenter_url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 342
    const-string v5, "paycenter_url"

    invoke-static {v4, v5}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 344
    :cond_1
    const-string v5, "m_ext"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 345
    const-string v5, "m_ext"

    invoke-static {v4, v5}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 348
    :cond_2
    if-eqz p2, :cond_3

    .line 349
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v6, "no"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v6, "url"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v6, "ext"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-interface {p2, v5}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_3
    goto :goto_0

    .line 356
    .end local v4    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 357
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 358
    const-string v5, "\u652f\u4ed8\u65f6\u53d1\u751f\u9519\u8bef"

    invoke-interface {p2, v5}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 360
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public handleBindInfoByName(Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/ResultCallback2;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/framework/interfaces/ResultCallback2;

    .line 711
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 713
    .local v0, "data":Lorg/json/JSONObject;
    const-string v1, "mobile"

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, "mobile":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 717
    const-string v2, "\u8be5\u5e10\u53f7\u6ca1\u6709\u7ed1\u5b9a\u4fe1\u606f\uff0c\u8bf7\u8f93\u5165\u5df2\u7ed1\u5b9a\u624b\u673a\u53f7\u7684\u5e10\u53f7"

    invoke-interface {p2, v2}, Lcom/maya/sdk/framework/interfaces/ResultCallback2;->onFail(Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_0
    if-eqz p2, :cond_1

    .line 720
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 721
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "mobile"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-interface {p2, v2}, Lcom/maya/sdk/framework/interfaces/ResultCallback2;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    goto :goto_1

    .line 725
    .end local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 727
    const-string v1, "\u83b7\u53d6\u7ed1\u5b9a\u4fe1\u606f\u65f6\uff0c\u6570\u636e\u89e3\u6790\u5931\u8d25"

    invoke-interface {p2, v1}, Lcom/maya/sdk/framework/interfaces/ResultCallback2;->onFail(Ljava/lang/String;)V

    .line 729
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public handleExitGameData(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "logout"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/maya/sdk/s/core/model/bean/ExitGameBean;",
            ">;"
        }
    .end annotation

    .line 664
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 665
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 666
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "display_type"

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 667
    .local v2, "display_type":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 668
    const-string v3, "image_url"

    invoke-static {v1, v3}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->URL_EXIT_IMAGE:Ljava/lang/String;

    .line 669
    const-string v3, "target_url"

    invoke-static {v1, v3}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->URL_EXIT_URL:Ljava/lang/String;

    .line 670
    return-object v0

    .line 671
    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 672
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/s/core/model/bean/ExitGameBean;>;"
    const-string v4, "app_game_1"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 675
    const-string v4, "app_game_1"

    invoke-direct {p0, v3, v4, v1}, Lcom/maya/sdk/s/core/http/ResponseManager;->getGameMessage(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 677
    :cond_1
    const-string v4, "app_game_2"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 678
    const-string v4, "app_game_2"

    invoke-direct {p0, v3, v4, v1}, Lcom/maya/sdk/s/core/http/ResponseManager;->getGameMessage(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 680
    :cond_2
    const-string v4, "app_game_3"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 681
    const-string v4, "app_game_3"

    invoke-direct {p0, v3, v4, v1}, Lcom/maya/sdk/s/core/http/ResponseManager;->getGameMessage(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :cond_3
    return-object v3

    .line 688
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v2    # "display_type":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/s/core/model/bean/ExitGameBean;>;"
    :cond_4
    goto :goto_0

    .line 686
    :catch_0
    move-exception v1

    .line 687
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 689
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method public handleInit(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 16
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 440
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 443
    .local v0, "channelObj":Lorg/json/JSONObject;
    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 445
    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, "urlContent":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 449
    .local v5, "urlObj":Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/maya/sdk/s/core/http/RequestUrls;->initWebpages(Lorg/json/JSONObject;)V

    .line 452
    invoke-static {v5}, Lcom/maya/sdk/s/core/http/RequestUrls;->initApis(Lorg/json/JSONObject;)V

    .line 469
    .end local v4    # "urlContent":Ljava/lang/String;
    .end local v5    # "urlObj":Lorg/json/JSONObject;
    :cond_0
    const-string v4, "authConf"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 471
    const-string v4, "authConf"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, "authConf":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 474
    .local v5, "authConfObj":Lorg/json/JSONObject;
    const-string v6, "isLoginAuth"

    invoke-static {v5, v6}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    .line 475
    .local v6, "isLoginAuth":Z
    const-string v7, "isPlayAuth"

    invoke-static {v5, v7}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v7

    .line 477
    .local v7, "isPayAuth":Z
    const-string v8, "isAuthNotice"

    invoke-static {v5, v8}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    .line 478
    .local v8, "isAuthNotice":Z
    const-string v9, "isNoAdultNotice"

    invoke-static {v5, v9}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v9

    .line 479
    .local v9, "isAdultNotice":Z
    const-string v10, "isPlayNotice"

    invoke-static {v5, v10}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v10

    .line 481
    .local v10, "isPayNotice":Z
    const-string v11, "noAuthNoticeTime"

    invoke-static {v5, v11}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v11

    .line 482
    .local v11, "isAuthNoticeTime":I
    const-string v12, "noAdultNoticeTime"

    invoke-static {v5, v12}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v12

    .line 483
    .local v12, "isAdultNoticeTime":I
    const-string v13, "noAdultPlayMax"

    invoke-static {v5, v13}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v13

    .line 485
    .local v13, "noAdultPayMax":I
    const-string v14, "isNoAuthClose"

    invoke-static {v5, v14}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v14

    .line 486
    .local v14, "noAuthClose":Z
    const-string v15, "isNoAdultClose"

    invoke-static {v5, v15}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v15

    .line 488
    .local v15, "noAdultClose":Z
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserIsLoginAuth(Landroid/content/Context;Z)V

    .line 489
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserIsPayAuth(Landroid/content/Context;Z)V

    .line 490
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserIsAuthNotice(Landroid/content/Context;Z)V

    .line 491
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v9}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserIsAdultNotice(Landroid/content/Context;Z)V

    .line 492
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v10}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserIsPayNotice(Landroid/content/Context;Z)V

    .line 493
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v11}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserIsAuthNoticeTime(Landroid/content/Context;I)V

    .line 494
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v12}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserIsAdultNoticeTime(Landroid/content/Context;I)V

    .line 495
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v13}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserNoAdultPayMax(Landroid/content/Context;I)V

    .line 496
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v14}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserCanAuthClose(Landroid/content/Context;Z)V

    .line 497
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v15}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserCanAdultClose(Landroid/content/Context;Z)V

    .line 498
    .end local v4    # "authConf":Ljava/lang/String;
    .end local v5    # "authConfObj":Lorg/json/JSONObject;
    .end local v6    # "isLoginAuth":Z
    .end local v7    # "isPayAuth":Z
    .end local v8    # "isAuthNotice":Z
    .end local v9    # "isAdultNotice":Z
    .end local v10    # "isPayNotice":Z
    .end local v11    # "isAuthNoticeTime":I
    .end local v12    # "isAdultNoticeTime":I
    .end local v13    # "noAdultPayMax":I
    .end local v14    # "noAuthClose":Z
    .end local v15    # "noAdultClose":Z
    goto :goto_0

    .line 500
    :cond_1
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserIsLoginAuth(Landroid/content/Context;Z)V

    .line 501
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserIsPayAuth(Landroid/content/Context;Z)V

    .line 502
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserIsAuthNotice(Landroid/content/Context;Z)V

    .line 503
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserIsAdultNotice(Landroid/content/Context;Z)V

    .line 504
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserIsPayNotice(Landroid/content/Context;Z)V

    .line 505
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserCanAuthClose(Landroid/content/Context;Z)V

    .line 506
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserCanAdultClose(Landroid/content/Context;Z)V

    .line 510
    :goto_0
    const-string v3, "dialogQuit"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 512
    const-string v3, "dialogQuit"

    invoke-static {v0, v3}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 513
    .local v3, "logout":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 514
    iget-object v4, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setExitGameData(Landroid/content/Context;Ljava/lang/String;)V

    .line 516
    .end local v3    # "logout":Lorg/json/JSONObject;
    :cond_2
    goto :goto_1

    .line 518
    :cond_3
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setExitGameData(Landroid/content/Context;Ljava/lang/String;)V

    .line 522
    :goto_1
    const-string v3, "topScroll"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 523
    const-string v3, "topScroll"

    invoke-static {v0, v3}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 524
    .local v3, "topScrollObj":Lorg/json/JSONObject;
    if-eqz v3, :cond_5

    .line 525
    const-string v4, "content"

    invoke-static {v3, v4}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 526
    .local v4, "title":Ljava/lang/String;
    const-string v5, "url"

    invoke-static {v3, v5}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 527
    .local v5, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 528
    iget-object v6, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setScrollMessageText(Landroid/content/Context;Ljava/lang/String;)V

    .line 530
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 531
    iget-object v6, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setScrollMessageUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 534
    .end local v3    # "topScrollObj":Lorg/json/JSONObject;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 536
    :cond_6
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setScrollMessageText(Landroid/content/Context;Ljava/lang/String;)V

    .line 537
    iget-object v3, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setScrollMessageUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 541
    :goto_2
    const-string v3, "\u81ea\u8425SDK\u521d\u59cb\u5316\u5b8c\u6210"

    invoke-interface {v2, v3}, Lcom/maya/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    goto :goto_3

    .line 544
    .end local v0    # "channelObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 546
    const v3, 0x18705

    const-string v4, "\u5e73\u53f0\u521d\u59cb\u5316\u6570\u636e\u89e3\u6790\u5931\u8d25"

    invoke-interface {v2, v3, v4}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 548
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public handleLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZLcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 25
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "isPhoneFastLogin"    # Ljava/lang/Boolean;
    .param p4, "isAutoLogin"    # Z
    .param p5, "callback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 86
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v4, p1

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "contentObj":Lorg/json/JSONObject;
    const-string v5, "data"

    invoke-static {v0, v5}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 89
    .local v5, "dataObj":Lorg/json/JSONObject;
    const-string v6, "uinfo"

    invoke-static {v5, v6}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "uinfo_encode":Ljava/lang/String;
    iget-object v7, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/maya/sdk/framework/encrypt/CodeManager;->decodeSpecial(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "uinfo_decode":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[uinfo]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/maya/sdk/s/core/utils/SLogUtil;->w(Ljava/lang/String;)V

    .line 94
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    .local v8, "unifo":Lorg/json/JSONObject;
    iget-object v9, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v10, "uid"

    invoke-static {v8, v10}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserId(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    iget-object v9, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v10, "uname"

    invoke-static {v8, v10}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    iget-object v9, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v10, "vname"

    invoke-static {v8, v10}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserVname(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    iget-object v9, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 131
    iget-object v9, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserPassword(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v9, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v10, "pwd"

    invoke-static {v8, v10}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_1

    .line 138
    iget-object v9, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v11}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setIsPhoneQuickLogin(Landroid/content/Context;Z)V

    .line 139
    const-string v9, "bind_info"

    invoke-static {v8, v9}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 140
    .local v9, "bind_info":Lorg/json/JSONObject;
    const-string v12, "mobile"

    invoke-static {v9, v12}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 141
    .local v12, "mobilePhone":Ljava/lang/String;
    iget-object v13, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v13, v12}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setPhoneNumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    const-string v13, "access_token"

    invoke-static {v5, v13}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 146
    .local v13, "token":Ljava/lang/String;
    iget-object v14, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v14, v12, v13}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v9    # "bind_info":Lorg/json/JSONObject;
    .end local v12    # "mobilePhone":Ljava/lang/String;
    .end local v13    # "token":Ljava/lang/String;
    goto :goto_1

    .line 149
    :cond_1
    iget-object v9, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setIsPhoneQuickLogin(Landroid/content/Context;Z)V

    .line 153
    :goto_1
    iget-object v9, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const-string v12, "access_token"

    invoke-static {v5, v12}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    new-instance v9, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;

    iget-object v12, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-direct {v9, v12}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;-><init>(Landroid/content/Context;)V

    .line 157
    .local v9, "floatConfig":Lcom/maya/sdk/s/app/floatwindow/FloatConfig;
    const-string v12, "float"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 158
    const-string v12, "float"

    invoke-static {v5, v12}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 160
    .local v12, "floatObj":Lorg/json/JSONObject;
    const-string v13, "display"

    invoke-static {v12, v13}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 162
    .local v13, "display":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string v14, "1"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 164
    invoke-virtual {v9, v11}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setShowFloatBall(Z)V

    .line 166
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u8bbe\u7f6e\u662f\u5426\u6253\u5f00\u60ac\u6d6e\u7a97:"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->isShowFloatBall()Z

    move-result v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    const-string v11, "conf"

    invoke-static {v12, v11}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 170
    .local v11, "confObj":Lorg/json/JSONObject;
    const-string v14, "user_center"

    invoke-static {v11, v14}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 171
    .local v14, "user_center":Lorg/json/JSONObject;
    const-string v15, "msg_center"

    invoke-static {v11, v15}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 172
    .local v15, "msg_center":Lorg/json/JSONObject;
    const-string v10, "gift_center"

    invoke-static {v11, v10}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 173
    .local v10, "gift_center":Lorg/json/JSONObject;
    const-string v2, "game_center"

    invoke-static {v11, v2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 174
    .local v2, "game_center":Lorg/json/JSONObject;
    const-string v4, "server_center"

    invoke-static {v11, v4}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 175
    .local v4, "server_center":Lorg/json/JSONObject;
    move-object/from16 v16, v6

    .end local v6    # "uinfo_encode":Ljava/lang/String;
    .local v16, "uinfo_encode":Ljava/lang/String;
    const-string v6, "game_forum"

    invoke-static {v11, v6}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 177
    .local v6, "game_forum":Lorg/json/JSONObject;
    move-object/from16 v17, v7

    .end local v7    # "uinfo_decode":Ljava/lang/String;
    .local v17, "uinfo_decode":Ljava/lang/String;
    const-string v7, "display"

    invoke-static {v14, v7}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 178
    .local v7, "display_user_center":Ljava/lang/String;
    move-object/from16 v18, v8

    .end local v8    # "unifo":Lorg/json/JSONObject;
    .local v18, "unifo":Lorg/json/JSONObject;
    const-string v8, "display"

    invoke-static {v15, v8}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, "display_msg_center":Ljava/lang/String;
    move-object/from16 v19, v11

    .end local v11    # "confObj":Lorg/json/JSONObject;
    .local v19, "confObj":Lorg/json/JSONObject;
    const-string v11, "display"

    invoke-static {v10, v11}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 180
    .local v11, "display_gift_center":Ljava/lang/String;
    move-object/from16 v20, v10

    .end local v10    # "gift_center":Lorg/json/JSONObject;
    .local v20, "gift_center":Lorg/json/JSONObject;
    const-string v10, "display"

    invoke-static {v2, v10}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 181
    .local v10, "display_game_center":Ljava/lang/String;
    move-object/from16 v21, v2

    .end local v2    # "game_center":Lorg/json/JSONObject;
    .local v21, "game_center":Lorg/json/JSONObject;
    const-string v2, "display"

    invoke-static {v4, v2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "display_server_center":Ljava/lang/String;
    move-object/from16 v22, v4

    .end local v4    # "server_center":Lorg/json/JSONObject;
    .local v22, "server_center":Lorg/json/JSONObject;
    const-string v4, "display"

    invoke-static {v6, v4}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "display_game_forum":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_2

    move-object/from16 v24, v6

    .end local v6    # "game_forum":Lorg/json/JSONObject;
    .local v24, "game_forum":Lorg/json/JSONObject;
    const-string v6, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 186
    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonUcenter(Z)V

    goto :goto_2

    .line 188
    .end local v24    # "game_forum":Lorg/json/JSONObject;
    .restart local v6    # "game_forum":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v24, v6

    .end local v6    # "game_forum":Lorg/json/JSONObject;
    .restart local v24    # "game_forum":Lorg/json/JSONObject;
    :cond_3
    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonUcenter(Z)V

    .line 190
    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 191
    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonMsg(Z)V

    goto :goto_3

    .line 193
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonMsg(Z)V

    .line 195
    :goto_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "1"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 196
    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonGift(Z)V

    goto :goto_4

    .line 198
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonGift(Z)V

    .line 200
    :goto_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "1"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 201
    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonGame(Z)V

    goto :goto_5

    .line 203
    :cond_6
    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonGame(Z)V

    .line 205
    :goto_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 206
    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonCService(Z)V

    goto :goto_6

    .line 208
    :cond_7
    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonCService(Z)V

    .line 210
    :goto_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 211
    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonBBS(Z)V

    goto :goto_7

    .line 213
    :cond_8
    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setShowFloatButtonBBS(Z)V

    .line 216
    .end local v2    # "display_server_center":Ljava/lang/String;
    .end local v4    # "display_game_forum":Ljava/lang/String;
    .end local v7    # "display_user_center":Ljava/lang/String;
    .end local v8    # "display_msg_center":Ljava/lang/String;
    .end local v10    # "display_game_center":Ljava/lang/String;
    .end local v11    # "display_gift_center":Ljava/lang/String;
    .end local v14    # "user_center":Lorg/json/JSONObject;
    .end local v15    # "msg_center":Lorg/json/JSONObject;
    .end local v19    # "confObj":Lorg/json/JSONObject;
    .end local v20    # "gift_center":Lorg/json/JSONObject;
    .end local v21    # "game_center":Lorg/json/JSONObject;
    .end local v22    # "server_center":Lorg/json/JSONObject;
    .end local v24    # "game_forum":Lorg/json/JSONObject;
    :goto_7
    goto :goto_8

    .line 218
    .end local v16    # "uinfo_encode":Ljava/lang/String;
    .end local v17    # "uinfo_decode":Ljava/lang/String;
    .end local v18    # "unifo":Lorg/json/JSONObject;
    .local v6, "uinfo_encode":Ljava/lang/String;
    .local v7, "uinfo_decode":Ljava/lang/String;
    .local v8, "unifo":Lorg/json/JSONObject;
    :cond_9
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .end local v6    # "uinfo_encode":Ljava/lang/String;
    .end local v7    # "uinfo_decode":Ljava/lang/String;
    .end local v8    # "unifo":Lorg/json/JSONObject;
    .restart local v16    # "uinfo_encode":Ljava/lang/String;
    .restart local v17    # "uinfo_decode":Ljava/lang/String;
    .restart local v18    # "unifo":Lorg/json/JSONObject;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setShowFloatBall(Z)V

    .line 223
    .end local v12    # "floatObj":Lorg/json/JSONObject;
    .end local v13    # "display":Ljava/lang/String;
    :goto_8
    goto :goto_9

    .line 225
    .end local v16    # "uinfo_encode":Ljava/lang/String;
    .end local v17    # "uinfo_decode":Ljava/lang/String;
    .end local v18    # "unifo":Lorg/json/JSONObject;
    .restart local v6    # "uinfo_encode":Ljava/lang/String;
    .restart local v7    # "uinfo_decode":Ljava/lang/String;
    .restart local v8    # "unifo":Lorg/json/JSONObject;
    :cond_a
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .end local v6    # "uinfo_encode":Ljava/lang/String;
    .end local v7    # "uinfo_decode":Ljava/lang/String;
    .end local v8    # "unifo":Lorg/json/JSONObject;
    .restart local v16    # "uinfo_encode":Ljava/lang/String;
    .restart local v17    # "uinfo_decode":Ljava/lang/String;
    .restart local v18    # "unifo":Lorg/json/JSONObject;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setShowFloatBall(Z)V

    .line 229
    :goto_9
    if-nez p4, :cond_b

    .line 230
    new-instance v4, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-direct {v4}, Lcom/maya/sdk/framework/user/UserInfoBean;-><init>()V

    .line 231
    .local v4, "user":Lcom/maya/sdk/framework/user/UserInfoBean;
    iget-object v6, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->setUname(Ljava/lang/String;)V

    .line 232
    iget-object v6, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->setVname(Ljava/lang/String;)V

    .line 233
    iget-object v6, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/maya/sdk/framework/user/UserInfoBean;->setPwd(Ljava/lang/String;)V

    .line 234
    new-instance v6, Lcom/maya/sdk/framework/user/AccountManager;

    iget-object v7, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/maya/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    iget-object v7, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v4}, Lcom/maya/sdk/framework/user/AccountManager;->addAccountToFile(Landroid/content/Context;Lcom/maya/sdk/framework/user/UserInfoBean;)V

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[\u4fdd\u5b58\u5e10\u53f7]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/maya/sdk/framework/user/UserInfoBean;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/maya/sdk/s/core/utils/SLogUtil;->w(Ljava/lang/String;)V

    .line 239
    .end local v4    # "user":Lcom/maya/sdk/framework/user/UserInfoBean;
    :cond_b
    const-string v4, "dialog"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 240
    const-string v4, "dialog"

    invoke-static {v5, v4}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 241
    .local v4, "dialog":Lorg/json/JSONObject;
    if-eqz v4, :cond_c

    .line 242
    const-string v6, "target_url"

    invoke-static {v4, v6}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, "url":Ljava/lang/String;
    const-string v7, "touch_back_close"

    invoke-static {v4, v7}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 244
    .local v7, "state":Ljava/lang/String;
    const-string v8, "2"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, 0x1

    xor-int/2addr v8, v10

    .line 245
    .local v8, "canBack":Z
    iget-object v11, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v11, v6, v8, v10, v12}, Lcom/maya/sdk/s/core/utils/SdkUtil;->openWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 249
    .end local v4    # "dialog":Lorg/json/JSONObject;
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "state":Ljava/lang/String;
    .end local v8    # "canBack":Z
    :cond_c
    const-string v4, ""

    .line 250
    .local v4, "app_active":Ljava/lang/String;
    const-string v6, "app_active"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 251
    const-string v6, "app_active"

    invoke-static {v5, v6}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 254
    :cond_d
    if-eqz v3, :cond_11

    .line 257
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v6, "callbackBundle":Landroid/os/Bundle;
    const-string v7, "uid"

    iget-object v8, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v7, "uname"

    iget-object v8, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v7, "vname"

    iget-object v8, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v7, "token"

    iget-object v8, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v7, "app_active"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v7, "is_reg"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 266
    const-string v7, "is_reg"

    const-string v8, "is_reg"

    invoke-static {v0, v8}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_a

    .line 268
    :cond_e
    const-string v7, "is_reg"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 271
    :goto_a
    const-string v7, "loginType"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 272
    const-string v7, "loginType"

    const-string v8, "loginType"

    invoke-static {v0, v8}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 276
    :cond_f
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 277
    const-string v7, "loginType"

    const-string v8, "phone"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 279
    :cond_10
    const-string v7, "loginType"

    const-string v8, "account"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :goto_b
    invoke-interface {v3, v6}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 289
    iget-object v7, v1, Lcom/maya/sdk/s/core/http/ResponseManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/maya/sdk/s/core/http/ResponseManager;->handleDialogTips(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v4    # "app_active":Ljava/lang/String;
    .end local v6    # "callbackBundle":Landroid/os/Bundle;
    .end local v9    # "floatConfig":Lcom/maya/sdk/s/app/floatwindow/FloatConfig;
    .end local v16    # "uinfo_encode":Ljava/lang/String;
    .end local v17    # "uinfo_decode":Ljava/lang/String;
    .end local v18    # "unifo":Lorg/json/JSONObject;
    :cond_11
    goto :goto_c

    .line 291
    .end local v0    # "contentObj":Lorg/json/JSONObject;
    .end local v5    # "dataObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 293
    const-string v4, "\u767b\u5f55\u65f6\u6570\u636e\u89e3\u6790\u5931\u8d25"

    invoke-interface {v3, v4}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 295
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_c
    return-void
.end method

.method public handleRepContent(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/framework/http/HttpCallBack;

    .line 59
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "jsonObj":Lorg/json/JSONObject;
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 61
    .local v1, "code":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 62
    invoke-interface {p2, p1}, Lcom/maya/sdk/framework/http/HttpCallBack;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "errorMsg":Ljava/lang/String;
    invoke-interface {p2, v1, v2}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "jsonObj":Lorg/json/JSONObject;
    .end local v1    # "code":I
    .end local v2    # "errorMsg":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    const v1, 0x18704

    const-string v2, "\u6570\u636e\u89e3\u6790\u9519\u8bef"

    invoke-interface {p2, v1, v2}, Lcom/maya/sdk/framework/http/HttpCallBack;->onFail(ILjava/lang/String;)V

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public handleUserAuth(Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/ResultCallback2;)V
    .locals 8
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/framework/interfaces/ResultCallback2;

    .line 739
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 741
    .local v0, "data":Lorg/json/JSONObject;
    const-string v1, "hasNameAuth"

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    .line 742
    .local v1, "hasNameAuth":Z
    const-string v2, "isAdult"

    invoke-static {v0, v2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    .line 743
    .local v2, "isAdult":Z
    const-string v3, "age"

    invoke-static {v0, v3}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 744
    .local v3, "age":I
    const-string v4, "hasGuard"

    invoke-static {v0, v4}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    .line 747
    .local v4, "hasGuard":Z
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 748
    .local v5, "result":Landroid/os/Bundle;
    const-string v6, "hasNameAuth"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 749
    const-string v6, "isAdult"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 750
    const-string v6, "hasGuard"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 751
    const-string v6, "age"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 753
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5f53\u524d\u7528\u5b9e\u540d\u4fe1\u606f\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/maya/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 755
    invoke-interface {p2, v5}, Lcom/maya/sdk/framework/interfaces/ResultCallback2;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "hasNameAuth":Z
    .end local v2    # "isAdult":Z
    .end local v3    # "age":I
    .end local v4    # "hasGuard":Z
    .end local v5    # "result":Landroid/os/Bundle;
    goto :goto_0

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 758
    const-string v1, "\u83b7\u53d6\u7528\u6237\u5b9e\u540d\u4fe1\u606f\u662f\u53d1\u751f\u9519\u8bef"

    invoke-interface {p2, v1}, Lcom/maya/sdk/framework/interfaces/ResultCallback2;->onFail(Ljava/lang/String;)V

    .line 760
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public handleUserNoAdultPayMount(Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/ResultCallback2;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/framework/interfaces/ResultCallback2;

    .line 769
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonObj(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 771
    .local v0, "data":Lorg/json/JSONObject;
    const-string v1, "amount"

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 774
    .local v1, "amount":I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 775
    .local v2, "result":Landroid/os/Bundle;
    const-string v3, "amount"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 776
    invoke-interface {p2, v2}, Lcom/maya/sdk/framework/interfaces/ResultCallback2;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "amount":I
    .end local v2    # "result":Landroid/os/Bundle;
    goto :goto_0

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 779
    const-string v1, "\u83b7\u53d6\u672a\u6210\u5e74\u7528\u6237\u7684\u6bcf\u65e5\u91d1\u989d\u9650\u989d\uff0c\u53d1\u751f\u9519\u8bef"

    invoke-interface {p2, v1}, Lcom/maya/sdk/framework/interfaces/ResultCallback2;->onFail(Ljava/lang/String;)V

    .line 781
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
