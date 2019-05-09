.class public Lcom/maya/sdk/s/app/FMSdkCore;
.super Ljava/lang/Object;
.source "FMSdkCore.java"

# interfaces
.implements Lcom/maya/sdk/s/core/interfaces/SdkInterface;


# static fields
.field public static instance:Lcom/maya/sdk/s/app/FMSdkCore;

.field public static isLoginSuccess:Z

.field private static lock:[B


# instance fields
.field private mContext:Landroid/content/Context;

.field private requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

.field private responseManager:Lcom/maya/sdk/s/core/http/ResponseManager;

.field private sdkManager:Lcom/maya/sdk/s/core/SdkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/maya/sdk/s/app/FMSdkCore;->isLoginSuccess:Z

    .line 48
    new-array v0, v0, [B

    sput-object v0, Lcom/maya/sdk/s/app/FMSdkCore;->lock:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/s/app/FMSdkCore;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/FMSdkCore;

    .line 30
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/sdk/s/app/FMSdkCore;Landroid/os/Bundle;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/FMSdkCore;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Lcom/maya/sdk/framework/interfaces/ResultCallback;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/s/app/FMSdkCore;->handleUserAuthLogin(Landroid/os/Bundle;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/maya/sdk/s/app/FMSdkCore;)Lcom/maya/sdk/s/core/SdkManager;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/FMSdkCore;

    .line 30
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->sdkManager:Lcom/maya/sdk/s/core/SdkManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/maya/sdk/s/app/FMSdkCore;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/FMSdkCore;
    .param p1, "x1"    # Lcom/maya/sdk/framework/interfaces/ResultCallback;

    .line 30
    invoke-direct {p0, p1}, Lcom/maya/sdk/s/app/FMSdkCore;->handleNoAdultPayNotice(Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/maya/sdk/s/app/FMSdkCore;)Lcom/maya/sdk/s/core/http/ResponseManager;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/FMSdkCore;

    .line 30
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->responseManager:Lcom/maya/sdk/s/core/http/ResponseManager;

    return-object v0
.end method

.method public static getInstance()Lcom/maya/sdk/s/app/FMSdkCore;
    .locals 2

    .line 52
    sget-object v0, Lcom/maya/sdk/s/app/FMSdkCore;->instance:Lcom/maya/sdk/s/app/FMSdkCore;

    if-nez v0, :cond_1

    .line 53
    sget-object v0, Lcom/maya/sdk/s/app/FMSdkCore;->lock:[B

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/maya/sdk/s/app/FMSdkCore;->instance:Lcom/maya/sdk/s/app/FMSdkCore;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/maya/sdk/s/app/FMSdkCore;

    invoke-direct {v1}, Lcom/maya/sdk/s/app/FMSdkCore;-><init>()V

    sput-object v1, Lcom/maya/sdk/s/app/FMSdkCore;->instance:Lcom/maya/sdk/s/app/FMSdkCore;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/maya/sdk/s/app/FMSdkCore;->instance:Lcom/maya/sdk/s/app/FMSdkCore;

    return-object v0
.end method

.method private handleNoAdultPayNotice(Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/maya/sdk/framework/interfaces/ResultCallback;

    .line 461
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserIsPayNotice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 463
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "uid":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserAdult(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    invoke-interface {p1}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    goto :goto_0

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserAge(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 472
    .local v1, "age":I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 474
    iget-object v2, p0, Lcom/maya/sdk/s/app/FMSdkCore;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    new-instance v3, Lcom/maya/sdk/s/app/FMSdkCore$10;

    invoke-direct {v3, p0, p1}, Lcom/maya/sdk/s/app/FMSdkCore$10;-><init>(Lcom/maya/sdk/s/app/FMSdkCore;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    invoke-virtual {v2, v3}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestUserNoAdultPayMount(Lcom/maya/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 520
    :cond_1
    if-ge v1, v2, :cond_3

    .line 523
    iget-object v2, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserGuard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 525
    invoke-interface {p1}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    goto :goto_0

    .line 528
    :cond_2
    iget-object v2, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Lcom/maya/sdk/s/app/FMSdkCore$11;

    invoke-direct {v4, p0, p1}, Lcom/maya/sdk/s/app/FMSdkCore$11;-><init>(Lcom/maya/sdk/s/app/FMSdkCore;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/maya/sdk/s/app/FMSdkCore;->openUserHasGuard(Landroid/content/Context;ZLcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 542
    .end local v0    # "uid":Ljava/lang/String;
    .end local v1    # "age":I
    :cond_3
    :goto_0
    goto :goto_1

    .line 544
    :cond_4
    invoke-interface {p1}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    .line 546
    :goto_1
    return-void
.end method

.method private handleUserAuthLogin(Landroid/os/Bundle;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lcom/maya/sdk/framework/interfaces/ResultCallback;

    .line 316
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "uid":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserIsLoginAuth(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserAuth(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    new-instance v2, Lcom/maya/sdk/s/app/FMSdkCore$8;

    invoke-direct {v2, p0, v0, p2}, Lcom/maya/sdk/s/app/FMSdkCore$8;-><init>(Lcom/maya/sdk/s/app/FMSdkCore;Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    invoke-virtual {v1, v2}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestUserAuth(Lcom/maya/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-interface {p2}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    .line 384
    :goto_0
    invoke-interface {p2}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    .line 385
    return-void
.end method

.method private handleUserAuthPay(Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/maya/sdk/framework/interfaces/ResultCallback;

    .line 389
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "uid":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserIsPayAuth(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserAuth(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    new-instance v2, Lcom/maya/sdk/s/app/FMSdkCore$9;

    invoke-direct {v2, p0, v0, p1}, Lcom/maya/sdk/s/app/FMSdkCore$9;-><init>(Lcom/maya/sdk/s/app/FMSdkCore;Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    invoke-virtual {v1, v2}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestUserAuth(Lcom/maya/sdk/framework/http/HttpCallBack;)V

    goto :goto_0

    .line 454
    :cond_0
    invoke-interface {p1}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    .line 456
    :goto_0
    return-void
.end method


# virtual methods
.method public hideFloat(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hideFloat"

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/LogUtil;->sysout(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/maya/sdk/s/app/FMSdkCore$7;

    invoke-direct {v1, p0, p1}, Lcom/maya/sdk/s/app/FMSdkCore$7;-><init>(Lcom/maya/sdk/s/app/FMSdkCore;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 310
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "resultCallback"    # Lcom/maya/sdk/framework/interfaces/ResultCallback;

    .line 63
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/maya/sdk/s/core/SdkManager;

    invoke-direct {v0, p1}, Lcom/maya/sdk/s/core/SdkManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->sdkManager:Lcom/maya/sdk/s/core/SdkManager;

    .line 65
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->sdkManager:Lcom/maya/sdk/s/core/SdkManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/s/core/SdkManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 67
    new-instance v0, Lcom/maya/sdk/s/core/http/RequsetManager;

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/maya/sdk/s/core/http/RequsetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    .line 68
    new-instance v0, Lcom/maya/sdk/s/core/http/ResponseManager;

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/maya/sdk/s/core/http/ResponseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->responseManager:Lcom/maya/sdk/s/core/http/ResponseManager;

    .line 69
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->sdkManager:Lcom/maya/sdk/s/core/SdkManager;

    invoke-virtual {v0}, Lcom/maya/sdk/s/core/SdkManager;->onPause()V

    .line 282
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->sdkManager:Lcom/maya/sdk/s/core/SdkManager;

    invoke-virtual {v0}, Lcom/maya/sdk/s/core/SdkManager;->onResume()V

    .line 278
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->sdkManager:Lcom/maya/sdk/s/core/SdkManager;

    invoke-virtual {v0}, Lcom/maya/sdk/s/core/SdkManager;->onStop()V

    .line 286
    return-void
.end method

.method public openUserHasGuard(Landroid/content/Context;ZLcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCancel"    # Z
    .param p3, "callback"    # Lcom/maya/sdk/framework/interfaces/ResultCallback;

    .line 551
    sget-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_USER_NAMEAUTH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    const-string v0, "maya_tips_url_not_exit"

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 555
    :cond_0
    sget-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_USER_NAMEAUTH:Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v2, Lcom/maya/sdk/s/app/FMSdkCore$12;

    invoke-direct {v2, p0, p1, p3}, Lcom/maya/sdk/s/app/FMSdkCore$12;-><init>(Lcom/maya/sdk/s/app/FMSdkCore;Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    invoke-static {p1, v0, p2, v1, v2}, Lcom/maya/sdk/s/core/utils/SdkUtil;->openWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 583
    :goto_0
    return-void
.end method

.method public openUserNameAuth(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCancel"    # Z

    .line 621
    new-instance v0, Lcom/maya/sdk/s/app/FMSdkCore$14;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/FMSdkCore$14;-><init>(Lcom/maya/sdk/s/app/FMSdkCore;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/maya/sdk/s/app/FMSdkCore;->openUserNameAuth(Landroid/content/Context;ZLcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 631
    return-void
.end method

.method public openUserNameAuth(Landroid/content/Context;ZLcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isCancel"    # Z
    .param p3, "callback"    # Lcom/maya/sdk/framework/interfaces/ResultCallback;

    .line 588
    sget-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_USER_NAMEAUTH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const-string v0, "maya_tips_url_not_exit"

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 592
    :cond_0
    sget-object v0, Lcom/maya/sdk/s/core/http/RequestUrls;->WEB_USER_NAMEAUTH:Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v2, Lcom/maya/sdk/s/app/FMSdkCore$13;

    invoke-direct {v2, p0, p1, p3}, Lcom/maya/sdk/s/app/FMSdkCore$13;-><init>(Lcom/maya/sdk/s/app/FMSdkCore;Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    invoke-static {p1, v0, p2, v1, v2}, Lcom/maya/sdk/s/core/utils/SdkUtil;->openWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 617
    :goto_0
    return-void
.end method

.method public setUserLogoutCallback(Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 73
    new-instance v0, Lcom/maya/sdk/s/app/FMSdkCore$1;

    invoke-direct {v0, p0, p1}, Lcom/maya/sdk/s/app/FMSdkCore$1;-><init>(Lcom/maya/sdk/s/app/FMSdkCore;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 92
    .local v0, "sdkUserLogoutCallback":Lcom/maya/sdk/framework/interfaces/SdkResultCallback;
    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore;->sdkManager:Lcom/maya/sdk/s/core/SdkManager;

    invoke-virtual {v1, v0}, Lcom/maya/sdk/s/core/SdkManager;->setUserLogoutCallback(Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 93
    return-void
.end method

.method public setUserSwitchCallback(Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 96
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->sdkManager:Lcom/maya/sdk/s/core/SdkManager;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/s/core/SdkManager;->setUserSwitchCallback(Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 97
    return-void
.end method

.method public showFloat(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 290
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showFloat"

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/LogUtil;->sysout(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/maya/sdk/s/app/FMSdkCore$6;

    invoke-direct {v1, p0, p1}, Lcom/maya/sdk/s/app/FMSdkCore$6;-><init>(Lcom/maya/sdk/s/app/FMSdkCore;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method

.method public submitRoleInfo(Ljava/util/HashMap;)V
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

    .line 100
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->sdkManager:Lcom/maya/sdk/s/core/SdkManager;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/s/core/SdkManager;->submitRoleInfo(Ljava/util/HashMap;)V

    .line 101
    return-void
.end method

.method public updateRoleInfos(Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;)V
    .locals 2
    .param p1, "info"    # Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;

    .line 263
    if-eqz p1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->getRoleId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setRoleId(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->getRoleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setRoleName(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->getRoleLevel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setRoleLevel(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setRoleServerId(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setRoleServerName(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->getVip()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setRoleVip(Landroid/content/Context;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->getPartyName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setRolePartyName(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->getBalance()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setRoleBalance(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/maya/sdk/s/core/model/bean/SubmitRoleBean;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setRoleExtra(Landroid/content/Context;Ljava/lang/String;)V

    .line 274
    :cond_0
    return-void
.end method

.method public userExit(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 230
    invoke-virtual {p0, p1}, Lcom/maya/sdk/s/app/FMSdkCore;->hideFloat(Landroid/content/Context;)V

    .line 231
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->sdkManager:Lcom/maya/sdk/s/core/SdkManager;

    new-instance v1, Lcom/maya/sdk/s/app/FMSdkCore$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/maya/sdk/s/app/FMSdkCore$5;-><init>(Lcom/maya/sdk/s/app/FMSdkCore;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/s/core/SdkManager;->userExit(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 253
    return-void
.end method

.method public userLogin(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 105
    invoke-virtual {p0, p1}, Lcom/maya/sdk/s/app/FMSdkCore;->hideFloat(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->sdkManager:Lcom/maya/sdk/s/core/SdkManager;

    new-instance v1, Lcom/maya/sdk/s/app/FMSdkCore$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/maya/sdk/s/app/FMSdkCore$2;-><init>(Lcom/maya/sdk/s/app/FMSdkCore;Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/s/core/SdkManager;->userLogin(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 134
    return-void
.end method

.method public userLogout()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->sdkManager:Lcom/maya/sdk/s/core/SdkManager;

    invoke-virtual {v0}, Lcom/maya/sdk/s/core/SdkManager;->userLogout()V

    .line 138
    return-void
.end method

.method public userPay(Landroid/content/Context;Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "payinfos"    # Lcom/maya/sdk/framework/pay/PayInfoBean;
    .param p3, "payCallback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 180
    invoke-virtual {p0, p1}, Lcom/maya/sdk/s/app/FMSdkCore;->hideFloat(Landroid/content/Context;)V

    .line 183
    new-instance v0, Lcom/maya/sdk/s/app/FMSdkCore$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/maya/sdk/s/app/FMSdkCore$4;-><init>(Lcom/maya/sdk/s/app/FMSdkCore;Landroid/content/Context;Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/FMSdkCore;->handleUserAuthPay(Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 226
    return-void
.end method

.method public userSwitch(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 146
    invoke-virtual {p0, p1}, Lcom/maya/sdk/s/app/FMSdkCore;->hideFloat(Landroid/content/Context;)V

    .line 147
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->sdkManager:Lcom/maya/sdk/s/core/SdkManager;

    new-instance v1, Lcom/maya/sdk/s/app/FMSdkCore$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/maya/sdk/s/app/FMSdkCore$3;-><init>(Lcom/maya/sdk/s/app/FMSdkCore;Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/s/core/SdkManager;->userSwitch(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 175
    return-void
.end method

.method public vistorBind()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore;->sdkManager:Lcom/maya/sdk/s/core/SdkManager;

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/core/SdkManager;->vistorBind(Landroid/content/Context;)V

    .line 142
    return-void
.end method
