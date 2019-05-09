.class public Lcom/maya/sdk/s/core/SdkManager;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Lcom/maya/sdk/s/core/interfaces/SdkInterface;


# static fields
.field public static canLoginCancel:Z

.field public static isLoginShowing:Z

.field public static isOnResume:Z

.field public static isPayShowing:Z

.field public static isUCShowing:Z

.field public static sdkContext:Landroid/content/Context;

.field public static sdkUserLogoutCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

.field public static sdkUserPayCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

.field public static sdkUserSwitchCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;


# instance fields
.field private bindDialog:Lcom/maya/sdk/s/app/login/BindDialog;

.field private loginDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

.field private requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

.field private responseManager:Lcom/maya/sdk/s/core/http/ResponseManager;

.field private webDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Lcom/maya/sdk/s/core/SdkManager;->canLoginCancel:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sput-object p1, Lcom/maya/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/s/core/SdkManager;)Lcom/maya/sdk/s/core/http/ResponseManager;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/core/SdkManager;

    .line 55
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->responseManager:Lcom/maya/sdk/s/core/http/ResponseManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/sdk/s/core/SdkManager;)Lcom/maya/sdk/s/core/http/RequsetManager;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/core/SdkManager;

    .line 55
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    return-object v0
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

    .line 617
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/s/core/model/bean/ExitGameBean;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p3, p2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 618
    .local v0, "gameObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;

    invoke-direct {v1}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;-><init>()V

    .line 619
    .local v1, "gameBean":Lcom/maya/sdk/s/core/model/bean/ExitGameBean;
    const-string v2, "app_name"

    invoke-static {v0, v2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->setAppName(Ljava/lang/String;)V

    .line 620
    const-string v2, "category_name"

    invoke-static {v0, v2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->setCategoryName(Ljava/lang/String;)V

    .line 621
    const-string v2, "app_icon"

    invoke-static {v0, v2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->setIconUrl(Ljava/lang/String;)V

    .line 622
    const-string v2, "dow_url"

    invoke-static {v0, v2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->setDownloadUrl(Ljava/lang/String;)V

    .line 623
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    return-void
.end method

.method private isShowFloat()Z
    .locals 1

    .line 631
    sget-object v0, Lcom/maya/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/maya/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    .line 632
    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSdkSelfLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    const/4 v0, 0x1

    return v0

    .line 637
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private login(Ljava/lang/String;Ljava/lang/String;ZLcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 8
    .param p1, "uame"    # Ljava/lang/String;
    .param p2, "vname"    # Ljava/lang/String;
    .param p3, "isPhoneQuickLogin"    # Z
    .param p4, "callback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 547
    new-instance v0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    sget-object v1, Lcom/maya/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;-><init>(Landroid/content/Context;)V

    .line 548
    .local v0, "autoDialog":Lcom/maya/sdk/s/app/login/AutoLoginDialog;
    new-instance v7, Lcom/maya/sdk/s/core/SdkManager$10;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/maya/sdk/s/core/SdkManager$10;-><init>(Lcom/maya/sdk/s/core/SdkManager;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->setAutoLoginListener(Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;)V

    .line 583
    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->show()V

    .line 584
    invoke-virtual {v0, p2}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->setUserName(Ljava/lang/CharSequence;)V

    .line 585
    return-void
.end method


# virtual methods
.method public handleVisitordialogTips(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 477
    new-instance v0, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    invoke-direct {v0, p1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;-><init>(Landroid/content/Context;)V

    .line 478
    .local v0, "mMaterialDialog":Lcom/maya/sdk/framework/view/dialog/MaterialDialog;
    const-string v1, "maya_login_toast_visitorlogin"

    .line 479
    invoke-static {v1, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    move-result-object v1

    const-string v2, "\u53bb\u8f6c\u6b63"

    new-instance v3, Lcom/maya/sdk/s/core/SdkManager$8;

    invoke-direct {v3, p0, v0, p1}, Lcom/maya/sdk/s/core/SdkManager$8;-><init>(Lcom/maya/sdk/s/core/SdkManager;Lcom/maya/sdk/framework/view/dialog/MaterialDialog;Landroid/content/Context;)V

    .line 480
    invoke-virtual {v1, v2, v3}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    move-result-object v1

    const-string v2, "\u4e0b\u6b21\u518d\u8bf4"

    new-instance v3, Lcom/maya/sdk/s/core/SdkManager$7;

    invoke-direct {v3, p0, v0, p1}, Lcom/maya/sdk/s/core/SdkManager$7;-><init>(Lcom/maya/sdk/s/core/SdkManager;Lcom/maya/sdk/framework/view/dialog/MaterialDialog;Landroid/content/Context;)V

    .line 486
    invoke-virtual {v1, v2, v3}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    .line 492
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setCanceledOnTouchOutside(Z)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    .line 493
    new-instance v1, Lcom/maya/sdk/s/core/SdkManager$9;

    invoke-direct {v1, p0, p1}, Lcom/maya/sdk/s/core/SdkManager$9;-><init>(Lcom/maya/sdk/s/core/SdkManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    .line 503
    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->show()V

    .line 504
    return-void
.end method

.method public hideFloat(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hideFloat"

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/LogUtil;->sysout(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const/4 v0, 0x0

    sput-boolean v0, Lcom/maya/sdk/s/core/SdkManager;->isOnResume:Z

    .line 381
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->getInstance(Landroid/app/Activity;)Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->dismiss()V

    .line 382
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "resultCallback"    # Lcom/maya/sdk/framework/interfaces/ResultCallback;

    .line 85
    sput-object p1, Lcom/maya/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    .line 87
    invoke-static {p1, p2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setGameKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    invoke-static {p1}, Lcom/maya/sdk/s/core/model/GameConfig;->initConfig(Landroid/content/Context;)V

    .line 91
    const-string v0, "1"

    invoke-static {p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSdkId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/maya/sdk/s/core/utils/SLogUtil;->isShowLog(Z)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {v1}, Lcom/maya/sdk/s/core/utils/SLogUtil;->isShowLog(Z)V

    .line 98
    :goto_0
    new-instance v0, Lcom/maya/sdk/s/core/http/RequsetManager;

    invoke-direct {v0, p1}, Lcom/maya/sdk/s/core/http/RequsetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    .line 99
    new-instance v0, Lcom/maya/sdk/s/core/http/ResponseManager;

    invoke-direct {v0, p1}, Lcom/maya/sdk/s/core/http/ResponseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->responseManager:Lcom/maya/sdk/s/core/http/ResponseManager;

    .line 102
    invoke-static {p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getInitGameData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    const-string v1, "\u81ea\u8425SDK\u521d\u59cb\u5316\u6570\u636e\u4e3a\u7a7a"

    invoke-interface {p3, v1}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    .line 107
    return-void

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/maya/sdk/s/core/SdkManager;->responseManager:Lcom/maya/sdk/s/core/http/ResponseManager;

    new-instance v3, Lcom/maya/sdk/s/core/SdkManager$1;

    invoke-direct {v3, p0, p3}, Lcom/maya/sdk/s/core/SdkManager$1;-><init>(Lcom/maya/sdk/s/core/SdkManager;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    invoke-virtual {v2, v0, v3}, Lcom/maya/sdk/s/core/http/ResponseManager;->handleInit(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 122
    invoke-static {p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSdkSpecial(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    new-instance v2, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;

    invoke-direct {v2, p1}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setShowFloatBall(Z)V

    .line 128
    :cond_2
    sget-object v2, Lcom/maya/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setSdkSelfLogin(Landroid/content/Context;Z)V

    .line 133
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 294
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SdkManager-onPause"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    sput-boolean v0, Lcom/maya/sdk/s/core/SdkManager;->isOnResume:Z

    .line 296
    sget-object v0, Lcom/maya/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->getInstance(Landroid/app/Activity;)Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->dismiss()V

    .line 297
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 282
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SdkManager-onResume"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x1

    sput-boolean v0, Lcom/maya/sdk/s/core/SdkManager;->isOnResume:Z

    .line 285
    invoke-direct {p0}, Lcom/maya/sdk/s/core/SdkManager;->isShowFloat()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/maya/sdk/s/core/SdkManager;->isLoginShowing:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/maya/sdk/s/core/SdkManager;->isPayShowing:Z

    if-nez v0, :cond_0

    .line 289
    sget-object v0, Lcom/maya/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->getInstance(Landroid/app/Activity;)Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->show()V

    .line 291
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 300
    const/4 v0, 0x0

    sput-boolean v0, Lcom/maya/sdk/s/core/SdkManager;->isOnResume:Z

    .line 301
    return-void
.end method

.method public parseJson(Ljava/lang/String;)Ljava/util/List;
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

    .line 589
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 590
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "display_type"

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 591
    .local v2, "display_type":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 592
    const-string v3, "img"

    invoke-static {v1, v3}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->URL_EXIT_IMAGE:Ljava/lang/String;

    .line 593
    const-string v3, "url"

    invoke-static {v1, v3}, Lcom/maya/sdk/framework/utils/JSONUtils;->getJsonStr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/maya/sdk/s/core/http/RequestUrls;->URL_EXIT_URL:Ljava/lang/String;

    .line 594
    return-object v0

    .line 595
    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 596
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/s/core/model/bean/ExitGameBean;>;"
    const-string v4, "app_game_1"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 599
    const-string v4, "app_game_1"

    invoke-direct {p0, v3, v4, v1}, Lcom/maya/sdk/s/core/SdkManager;->getGameMessage(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 601
    :cond_1
    const-string v4, "app_game_2"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 602
    const-string v4, "app_game_2"

    invoke-direct {p0, v3, v4, v1}, Lcom/maya/sdk/s/core/SdkManager;->getGameMessage(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 604
    :cond_2
    const-string v4, "app_game_3"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 605
    const-string v4, "app_game_3"

    invoke-direct {p0, v3, v4, v1}, Lcom/maya/sdk/s/core/SdkManager;->getGameMessage(Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :cond_3
    return-object v3

    .line 611
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v2    # "display_type":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/s/core/model/bean/ExitGameBean;>;"
    :cond_4
    goto :goto_0

    .line 609
    :catch_0
    move-exception v1

    .line 610
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 612
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method public setUserLogoutCallback(Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 136
    sput-object p1, Lcom/maya/sdk/s/core/SdkManager;->sdkUserLogoutCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 137
    return-void
.end method

.method public setUserSwitchCallback(Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 140
    sput-object p1, Lcom/maya/sdk/s/core/SdkManager;->sdkUserSwitchCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 141
    return-void
.end method

.method public showFloat(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 364
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showFloat"

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/LogUtil;->sysout(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x1

    sput-boolean v0, Lcom/maya/sdk/s/core/SdkManager;->isOnResume:Z

    .line 368
    invoke-direct {p0}, Lcom/maya/sdk/s/core/SdkManager;->isShowFloat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->getInstance(Landroid/app/Activity;)Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->show()V

    .line 371
    :cond_0
    return-void
.end method

.method public showFloatAuto(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 356
    invoke-virtual {p0, p1}, Lcom/maya/sdk/s/core/SdkManager;->showFloat(Landroid/content/Context;)V

    .line 357
    return-void
.end method

.method public showLoginDialog(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 328
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->loginDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->loginDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/LoginDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->loginDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/LoginDialog;->dismiss()V

    .line 333
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->loginDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

    .line 335
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->loginDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 336
    new-instance v0, Lcom/maya/sdk/s/app/login/LoginDialog;

    invoke-direct {v0, p1, p2}, Lcom/maya/sdk/s/app/login/LoginDialog;-><init>(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    iput-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->loginDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

    .line 337
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->loginDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

    new-instance v2, Lcom/maya/sdk/s/core/SdkManager$5;

    invoke-direct {v2, p0}, Lcom/maya/sdk/s/core/SdkManager$5;-><init>(Lcom/maya/sdk/s/core/SdkManager;)V

    invoke-virtual {v0, v2}, Lcom/maya/sdk/s/app/login/LoginDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 343
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->loginDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

    sget-boolean v2, Lcom/maya/sdk/s/core/SdkManager;->canLoginCancel:Z

    invoke-virtual {v0, v2}, Lcom/maya/sdk/s/app/login/LoginDialog;->setCancelable(Z)V

    .line 344
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->loginDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

    sget-boolean v2, Lcom/maya/sdk/s/core/SdkManager;->canLoginCancel:Z

    invoke-virtual {v0, v2}, Lcom/maya/sdk/s/app/login/LoginDialog;->setCanceledOnTouchOutside(Z)V

    .line 346
    sput-boolean v1, Lcom/maya/sdk/s/core/SdkManager;->canLoginCancel:Z

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->loginDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->loginDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/LoginDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->loginDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/LoginDialog;->show()V

    .line 351
    sput-boolean v1, Lcom/maya/sdk/s/core/SdkManager;->isLoginShowing:Z

    .line 353
    :cond_2
    return-void
.end method

.method public showPayDialog(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "payinfo"    # Lcom/maya/sdk/framework/pay/PayInfoBean;
    .param p4, "paycallback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 311
    invoke-virtual {p0, p1}, Lcom/maya/sdk/s/core/SdkManager;->hideFloat(Landroid/content/Context;)V

    .line 313
    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/maya/sdk/framework/utils/ReqUtil;->buildPayParams(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/pay/PayInfoBean;Z)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/maya/sdk/framework/pay/PayWebDialog;

    invoke-direct {v2, p1, v1, p4, p3}, Lcom/maya/sdk/framework/pay/PayWebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;Lcom/maya/sdk/framework/pay/PayInfoBean;)V

    .line 316
    .local v2, "payView":Lcom/maya/sdk/framework/pay/PayWebDialog;
    invoke-virtual {v2}, Lcom/maya/sdk/framework/pay/PayWebDialog;->show()V

    .line 317
    sput-boolean v0, Lcom/maya/sdk/s/core/SdkManager;->isPayShowing:Z

    .line 318
    new-instance v0, Lcom/maya/sdk/s/core/SdkManager$4;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/core/SdkManager$4;-><init>(Lcom/maya/sdk/s/core/SdkManager;)V

    invoke-virtual {v2, v0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 324
    return-void
.end method

.method public submitRoleInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 278
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public userExit(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 388
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/maya/sdk/s/core/SdkManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/maya/sdk/s/core/SdkManager$6;-><init>(Lcom/maya/sdk/s/core/SdkManager;Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 472
    return-void
.end method

.method public userLogin(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 145
    sget-object v0, Lcom/maya/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setSdkSelfLogin(Landroid/content/Context;Z)V

    .line 147
    if-nez p2, :cond_0

    .line 148
    const-string v0, "maya_tips_login_no_callback"

    .line 149
    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {p1, v0}, Lcom/maya/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    return-void

    .line 154
    :cond_0
    invoke-static {p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "vname":Ljava/lang/String;
    invoke-static {p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getIsPhoneQuickLogin(Landroid/content/Context;)Z

    move-result v2

    .line 157
    .local v2, "isPhoneQuickLogin":Z
    invoke-static {p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "token":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 160
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/maya/sdk/s/core/SdkManager;->login(Ljava/lang/String;Ljava/lang/String;ZLcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/maya/sdk/s/core/SdkManager;->showLoginDialog(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 165
    :goto_0
    return-void
.end method

.method public userLogout()V
    .locals 2

    .line 169
    sget-object v0, Lcom/maya/sdk/s/core/SdkManager;->sdkUserLogoutCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/maya/sdk/s/core/SdkManager;->sdkUserLogoutCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 172
    :cond_0
    return-void
.end method

.method public userPay(Landroid/content/Context;Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "payinfo"    # Lcom/maya/sdk/framework/pay/PayInfoBean;
    .param p3, "paycallback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 210
    if-nez p3, :cond_0

    .line 211
    const-string v0, "maya_tips_pay_no_callback"

    .line 212
    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {p1, v0}, Lcom/maya/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    return-void

    .line 216
    :cond_0
    sput-object p3, Lcom/maya/sdk/s/core/SdkManager;->sdkUserPayCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 218
    invoke-static {p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    const-string v0, "maya_tips_not_logined"

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    new-instance v1, Lcom/maya/sdk/s/core/SdkManager$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/maya/sdk/s/core/SdkManager$3;-><init>(Lcom/maya/sdk/s/core/SdkManager;Lcom/maya/sdk/framework/pay/PayInfoBean;Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestPayOrder(Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/http/HttpCallBack;Z)V

    .line 274
    return-void
.end method

.method public userSwitch(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 176
    sget-object v0, Lcom/maya/sdk/s/core/SdkManager;->sdkContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setSdkSelfLogin(Landroid/content/Context;Z)V

    .line 178
    invoke-static {p1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->skipUserSwitchView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2, v0}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/maya/sdk/s/core/SdkManager;->showLoginDialog(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 184
    :goto_0
    return-void
.end method

.method public vistorBind(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 188
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->bindDialog:Lcom/maya/sdk/s/app/login/BindDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->bindDialog:Lcom/maya/sdk/s/app/login/BindDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/BindDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->bindDialog:Lcom/maya/sdk/s/app/login/BindDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/BindDialog;->dismiss()V

    .line 194
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->bindDialog:Lcom/maya/sdk/s/app/login/BindDialog;

    .line 195
    new-instance v0, Lcom/maya/sdk/s/app/login/BindDialog;

    invoke-direct {v0, p1}, Lcom/maya/sdk/s/app/login/BindDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->bindDialog:Lcom/maya/sdk/s/app/login/BindDialog;

    .line 196
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->bindDialog:Lcom/maya/sdk/s/app/login/BindDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/login/BindDialog;->setCancelable(Z)V

    .line 197
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->bindDialog:Lcom/maya/sdk/s/app/login/BindDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/login/BindDialog;->setCanceledOnTouchOutside(Z)V

    .line 198
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->bindDialog:Lcom/maya/sdk/s/app/login/BindDialog;

    new-instance v1, Lcom/maya/sdk/s/core/SdkManager$2;

    invoke-direct {v1, p0, p1}, Lcom/maya/sdk/s/core/SdkManager$2;-><init>(Lcom/maya/sdk/s/core/SdkManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/login/BindDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 204
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager;->bindDialog:Lcom/maya/sdk/s/app/login/BindDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/BindDialog;->show()V

    .line 205
    return-void
.end method
