.class public Lcom/maya/sdk/m/controller/MsdkManager;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/MsdkInterface;


# static fields
.field protected static lock:[B


# instance fields
.field private final INIT_REQUSET_RETRY_MAX:I

.field private clickTime:J

.field initHandler:Landroid/os/Handler;

.field private initLoading:Lcom/maya/sdk/m/views/SplashDialog;

.field private init_retry_time:I

.field private isLoginSuccess:Z

.field private mAppConfig:Lcom/maya/sdk/m/model/bean/MAppBean;

.field private mConfig:Lcom/maya/sdk/m/model/bean/MsdkBean;

.field private mContext:Landroid/content/Context;

.field private platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

.field private platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

.field private repManager:Lcom/maya/sdk/m/http/MRepManager;

.field private requestManager:Lcom/maya/sdk/m/http/MReqManager;

.field private sdkCallBack:Lcom/maya/sdk/m/MyMsdkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/maya/sdk/m/controller/MsdkManager;->lock:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->isLoginSuccess:Z

    .line 68
    const/4 v0, 0x2

    iput v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->INIT_REQUSET_RETRY_MAX:I

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->init_retry_time:I

    .line 689
    new-instance v0, Lcom/maya/sdk/m/controller/MsdkManager$15;

    invoke-direct {v0, p0}, Lcom/maya/sdk/m/controller/MsdkManager$15;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;)V

    iput-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->initHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/m/controller/MsdkManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/MsdkManager;

    .line 46
    invoke-direct {p0}, Lcom/maya/sdk/m/controller/MsdkManager;->hideInitSplash()V

    return-void
.end method

.method static synthetic access$100(Lcom/maya/sdk/m/controller/MsdkManager;)Lcom/maya/sdk/m/controller/PlatformLogCore;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/MsdkManager;

    .line 46
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/maya/sdk/m/controller/MsdkManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/MsdkManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->initCallBackFail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/maya/sdk/m/controller/MsdkManager;)Lcom/maya/sdk/m/http/MRepManager;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/MsdkManager;

    .line 46
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->repManager:Lcom/maya/sdk/m/http/MRepManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/maya/sdk/m/controller/MsdkManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/MsdkManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/maya/sdk/m/controller/MsdkManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/MsdkManager;
    .param p1, "x1"    # Z

    .line 46
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->initAction(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/maya/sdk/m/controller/MsdkManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/MsdkManager;

    .line 46
    invoke-direct {p0}, Lcom/maya/sdk/m/controller/MsdkManager;->initPaltform()V

    return-void
.end method

.method static synthetic access$200(Lcom/maya/sdk/m/controller/MsdkManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/MsdkManager;

    .line 46
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/maya/sdk/m/controller/MsdkManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/MsdkManager;

    .line 46
    iget-boolean v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->isLoginSuccess:Z

    return v0
.end method

.method static synthetic access$302(Lcom/maya/sdk/m/controller/MsdkManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/MsdkManager;
    .param p1, "x1"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->isLoginSuccess:Z

    return p1
.end method

.method static synthetic access$400(Lcom/maya/sdk/m/controller/MsdkManager;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/MsdkManager;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 46
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->reportPlatformLoginLog(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/maya/sdk/m/controller/MsdkManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/MsdkManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/maya/sdk/m/controller/MsdkManager;)Lcom/maya/sdk/m/http/MReqManager;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/MsdkManager;

    .line 46
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->requestManager:Lcom/maya/sdk/m/http/MReqManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/maya/sdk/m/controller/MsdkManager;)Lcom/maya/sdk/m/controller/PlatformCore;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/MsdkManager;

    .line 46
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    return-object v0
.end method

.method static synthetic access$800(Lcom/maya/sdk/m/controller/MsdkManager;)Lcom/maya/sdk/m/MyMsdkCallback;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/MsdkManager;

    .line 46
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->sdkCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/maya/sdk/m/controller/MsdkManager;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/controller/MsdkManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/HashMap;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/m/controller/MsdkManager;->startPay(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method private checkRoleInfos(Ljava/lang/String;Ljava/util/HashMap;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V
    .locals 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/maya/sdk/m/interfaces/MsdkCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/maya/sdk/m/interfaces/MsdkCallback;",
            ")V"
        }
    .end annotation

    .line 560
    .local p2, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "role_id"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 561
    .local v0, "roleId":Ljava/lang/String;
    const-string v1, "role_name"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 562
    .local v1, "roleName":Ljava/lang/String;
    const-string v2, "role_level"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 563
    .local v2, "roleLevel":Ljava/lang/String;
    const-string v3, "server_id"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 564
    .local v3, "serverId":Ljava/lang/String;
    const-string v4, "server_name"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 565
    .local v4, "serverName":Ljava/lang/String;
    const-string v5, "role_balance"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 566
    .local v5, "balance":Ljava/lang/String;
    const-string v6, "role_vip"

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 567
    .local v6, "vip":Ljava/lang/String;
    const-string v7, "role_partyname"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 568
    .local v7, "partyName":Ljava/lang/String;
    const-string v8, "role_extra"

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 570
    .local v8, "extra":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string v10, "\u8bf7\u68c0\u67e5\u4ee5\u4e0b\u6570\u636e\u662f\u5426\u6b63\u786e:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u63d0\u4ea4\u63a5\u53e3:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u89d2\u8272 ID:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u89d2\u8272 \u540d:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u89d2\u8272\u7b49\u7ea7:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u670d\u52a1\u5668ID:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u670d\u52a1\u5668\u540d:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u89d2\u8272\u4f59\u989d:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u89d2\u8272VIP:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u89d2\u8272\u5e2e\u6d3e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u62d3\u5c55\u53c2\u6570:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/maya/sdk/m/controller/MsdkManager$12;

    invoke-direct {v11, p0, p3}, Lcom/maya/sdk/m/controller/MsdkManager$12;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V

    invoke-direct {p0, v10, v11}, Lcom/maya/sdk/m/controller/MsdkManager;->showDebugDialog(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V

    .line 593
    return-void
.end method

.method private createNewCallBack(Lcom/maya/sdk/m/MyMsdkCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/maya/sdk/m/MyMsdkCallback;

    .line 101
    new-instance v0, Lcom/maya/sdk/m/controller/MsdkManager$1;

    invoke-direct {v0, p0, p1}, Lcom/maya/sdk/m/controller/MsdkManager$1;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;Lcom/maya/sdk/m/MyMsdkCallback;)V

    iput-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->sdkCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    .line 229
    return-void
.end method

.method private hideInitSplash()V
    .locals 1

    .line 757
    const-string v0, "hideInitSplash"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->initLoading:Lcom/maya/sdk/m/views/SplashDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->initLoading:Lcom/maya/sdk/m/views/SplashDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/m/views/SplashDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->initLoading:Lcom/maya/sdk/m/views/SplashDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/m/views/SplashDialog;->dismiss()V

    .line 761
    :cond_0
    return-void
.end method

.method private initAction(Z)V
    .locals 2
    .param p1, "isShowSplash"    # Z

    .line 704
    const-string v0, "initAction"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPublicLog(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/m/model/MConfigManager;->getIsNewLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    invoke-direct {p0}, Lcom/maya/sdk/m/controller/MsdkManager;->initPaltform()V

    goto :goto_0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mConfig:Lcom/maya/sdk/m/model/bean/MsdkBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mConfig:Lcom/maya/sdk/m/model/bean/MsdkBean;

    invoke-virtual {v0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getShowSplash()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 714
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->showInitSplashWithPicture(Z)V

    goto :goto_0

    .line 718
    :cond_1
    invoke-direct {p0}, Lcom/maya/sdk/m/controller/MsdkManager;->initPaltform()V

    .line 721
    :goto_0
    return-void
.end method

.method private initCallBackFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 679
    iget v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->init_retry_time:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 680
    iget v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->init_retry_time:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->init_retry_time:I

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25\uff0c\u8bf7\u6c42\u91cd\u8bd5:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/maya/sdk/m/controller/MsdkManager;->init_retry_time:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 682
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->startInitReqeust(ZZ)V

    goto :goto_0

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->sdkCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onInitFail(Ljava/lang/String;)V

    .line 686
    :goto_0
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPublicLog(Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method private initConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;

    .line 597
    const-string v0, "initConfig"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setGameKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 601
    invoke-static {p1}, Lcom/maya/sdk/m/model/MGameConfig;->initConfig(Landroid/content/Context;)Lcom/maya/sdk/m/model/bean/MAppBean;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mAppConfig:Lcom/maya/sdk/m/model/bean/MAppBean;

    .line 603
    invoke-static {p1}, Lcom/maya/sdk/m/model/MsdkConfig;->initConfig(Landroid/content/Context;)Lcom/maya/sdk/m/model/bean/MsdkBean;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mConfig:Lcom/maya/sdk/m/model/bean/MsdkBean;

    .line 605
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mConfig:Lcom/maya/sdk/m/model/bean/MsdkBean;

    invoke-virtual {v0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getSdkId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 606
    invoke-static {v1}, Lcom/maya/sdk/m/utils/MLogUtil;->isShowLog(Z)V

    goto :goto_0

    .line 608
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/maya/sdk/m/utils/MLogUtil;->isShowLog(Z)V

    .line 611
    :goto_0
    invoke-static {}, Lcom/maya/open/main/OpenHttpUtils;->getInstance()Lcom/maya/open/main/OpenHttpUtils;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/open/main/OpenHttpUtils;->init(Landroid/app/Application;)V

    .line 614
    new-instance v0, Lcom/maya/open/http/OpenHttpParams;

    invoke-direct {v0}, Lcom/maya/open/http/OpenHttpParams;-><init>()V

    .line 615
    .local v0, "params":Lcom/maya/open/http/OpenHttpParams;
    sget-boolean v1, Lcom/maya/sdk/m/utils/MLogUtil;->isShowLog:Z

    invoke-virtual {v0, v1}, Lcom/maya/open/http/OpenHttpParams;->setDebug(Z)V

    .line 616
    invoke-static {}, Lcom/maya/open/main/OpenHttpUtils;->getInstance()Lcom/maya/open/main/OpenHttpUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/maya/open/main/OpenHttpUtils;->reset(Lcom/maya/open/http/OpenHttpParams;)V

    .line 617
    return-void
.end method

.method private declared-synchronized initPaltform()V
    .locals 4

    monitor-enter p0

    .line 724
    :try_start_0
    const-string v0, "initPaltform"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPublicLog(Ljava/lang/String;)V

    .line 726
    invoke-static {}, Lcom/maya/sdk/m/MayaMsdk;->getPlatform()Lcom/maya/sdk/m/controller/PlatformCore;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    .line 727
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mConfig:Lcom/maya/sdk/m/model/bean/MsdkBean;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/controller/PlatformCore;->setPlatformConfig(Lcom/maya/sdk/m/model/bean/MsdkBean;)V

    .line 729
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    const-string v2, ""

    iget-object v3, p0, Lcom/maya/sdk/m/controller/MsdkManager;->sdkCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/maya/sdk/m/controller/PlatformCore;->doInit(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/m/MyMsdkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    monitor-exit p0

    return-void

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isInitRequestSuccess()Z
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 262
    const-string v0, "sdk\u8fd8\u672a\u521d\u59cb\u5316\u6210\u529f"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 263
    const-string v0, "maya_tips_error_network"

    iget-object v2, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->showToast(Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/maya/sdk/m/controller/MsdkManager;->startInitReqeust(ZZ)V

    .line 266
    return v0

    .line 268
    :cond_0
    return v1
.end method

.method private isQuickClick()Z
    .locals 7

    .line 800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 801
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/maya/sdk/m/controller/MsdkManager;->clickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 802
    iput-wide v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->clickTime:J

    .line 803
    const/4 v2, 0x0

    return v2

    .line 805
    :cond_0
    const-string v2, "\u73a9\u5bb6\u5feb\u901f\u70b9\u51fb\u4e86\uff0c\u6216\u8005CP\u8c03\u7528\u63a5\u53e3\u592a\u8fc7\u9891\u7e41"

    invoke-direct {p0, v2}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPublicLog(Ljava/lang/String;)V

    .line 806
    iput-wide v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->clickTime:J

    .line 807
    const/4 v2, 0x1

    return v2
.end method

.method private postEventInit(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getMobileDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "runID":Ljava/lang/String;
    invoke-static {v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    invoke-static {p1, v0}, Lcom/maya/sdk/framework/model/config/ConfigManager;->setSdkRunID(Landroid/content/Context;Ljava/lang/String;)V

    .line 850
    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->requestManager:Lcom/maya/sdk/m/http/MReqManager;

    const-string v2, "init"

    invoke-virtual {v1, v2}, Lcom/maya/sdk/m/http/MReqManager;->submitSdkAction(Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method private reportPlatformLoginLog(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "is_reg":Z
    const-string v1, "normal"

    .line 235
    .local v1, "reg_type":Ljava/lang/String;
    const-string v2, "is_reg"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const-string v2, "is_reg"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 238
    :cond_0
    const-string v2, "reg_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    const-string v2, "reg_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    :cond_1
    if-eqz v0, :cond_2

    .line 243
    iget-object v2, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    if-eqz v2, :cond_3

    .line 244
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v2, "regBundle":Landroid/os/Bundle;
    const-string v3, "logiType"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v3, "state"

    const-string v4, "success"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v3, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v3, v2}, Lcom/maya/sdk/m/controller/PlatformLogCore;->onRegister(Landroid/os/Bundle;)V

    .line 248
    .end local v2    # "regBundle":Landroid/os/Bundle;
    goto :goto_0

    .line 251
    :cond_2
    iget-object v2, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    if-eqz v2, :cond_3

    .line 252
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v2, "loginBundle":Landroid/os/Bundle;
    const-string v3, "logiType"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v3, "state"

    const-string v4, "success"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v3, v2}, Lcom/maya/sdk/m/controller/PlatformLogCore;->onLogin(Landroid/os/Bundle;)V

    .line 258
    .end local v2    # "loginBundle":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void
.end method

.method private sendPrivateLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 812
    const-string v0, "MsdkManager"

    invoke-static {v0, p1}, Lcom/maya/sdk/m/utils/MLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method private sendPublicLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 816
    const-string v0, "MsdkManager"

    invoke-static {v0, p1}, Lcom/maya/sdk/m/utils/MLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v0, "MsdkManager"

    invoke-static {v0, p1}, Lcom/maya/sdk/m/utils/MLogUtil;->openLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method private showDebugDialog(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/maya/sdk/m/interfaces/MsdkCallback;

    .line 821
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Debug\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5f0f\u51fa\u5305\u65f6\uff0c\u8bf7\u5173\u95eddebug\u6a21\u5f0f\n\u5728assets/mayaGame.ini,\u8bbe\u7f6edebug=0! \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 822
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/maya/sdk/m/controller/MsdkManager$18;

    invoke-direct {v2, p0, p2}, Lcom/maya/sdk/m/controller/MsdkManager$18;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V

    .line 823
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/maya/sdk/m/controller/MsdkManager$17;

    invoke-direct {v2, p0, p2}, Lcom/maya/sdk/m/controller/MsdkManager$17;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V

    .line 829
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 835
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 836
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 837
    return-void
.end method

.method private showInitSplash(Z)V
    .locals 2
    .param p1, "ifShow"    # Z

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showInitSplash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->initLoading:Lcom/maya/sdk/m/views/SplashDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 740
    new-instance v0, Lcom/maya/sdk/m/views/SplashDialog;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/maya/sdk/m/views/SplashDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->initLoading:Lcom/maya/sdk/m/views/SplashDialog;

    .line 741
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->initLoading:Lcom/maya/sdk/m/views/SplashDialog;

    new-instance v1, Lcom/maya/sdk/m/controller/MsdkManager$16;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/controller/MsdkManager$16;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;)V

    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/views/SplashDialog;->setSplashCallback(Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;)V

    .line 749
    :cond_0
    if-eqz p1, :cond_1

    .line 750
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->initLoading:Lcom/maya/sdk/m/views/SplashDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/m/views/SplashDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 751
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->initLoading:Lcom/maya/sdk/m/views/SplashDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/m/views/SplashDialog;->show()V

    .line 754
    :cond_1
    return-void
.end method

.method private showInitSplashWithPicture(Z)V
    .locals 1
    .param p1, "ifShow"    # Z

    .line 765
    const-string v0, "showInitSplashWithPicture"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 767
    if-eqz p1, :cond_0

    .line 768
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->initLoading:Lcom/maya/sdk/m/views/SplashDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->initLoading:Lcom/maya/sdk/m/views/SplashDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/m/views/SplashDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->initLoading:Lcom/maya/sdk/m/views/SplashDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/m/views/SplashDialog;->showSolidBackground()V

    goto :goto_0

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->initLoading:Lcom/maya/sdk/m/views/SplashDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->initLoading:Lcom/maya/sdk/m/views/SplashDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/m/views/SplashDialog;->getSplashCallback()Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->initLoading:Lcom/maya/sdk/m/views/SplashDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/m/views/SplashDialog;->getSplashCallback()Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;->onEnd()V

    .line 777
    :cond_1
    :goto_0
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "toast"    # Ljava/lang/String;

    .line 785
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 786
    return-void
.end method

.method private startInitReqeust(ZZ)V
    .locals 3
    .param p1, "ifShowSplash"    # Z
    .param p2, "ifShowRequestLoading"    # Z

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initReqeust:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->init_retry_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPublicLog(Ljava/lang/String;)V

    .line 629
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->showInitSplash(Z)V

    .line 631
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->requestManager:Lcom/maya/sdk/m/http/MReqManager;

    new-instance v1, Lcom/maya/sdk/m/controller/MsdkManager$13;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/controller/MsdkManager$13;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/m/http/MReqManager;->requestCollect(Lcom/maya/sdk/framework/http/HttpCallBack;Z)V

    .line 642
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->requestManager:Lcom/maya/sdk/m/http/MReqManager;

    new-instance v1, Lcom/maya/sdk/m/controller/MsdkManager$14;

    invoke-direct {v1, p0, p1}, Lcom/maya/sdk/m/controller/MsdkManager$14;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;Z)V

    invoke-virtual {v0, v1, p2}, Lcom/maya/sdk/m/http/MReqManager;->requestInit(Lcom/maya/sdk/framework/http/HttpCallBack;Z)V

    .line 675
    return-void
.end method

.method private startPay(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 10
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

    .line 404
    .local p2, "payinfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "money"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 405
    .local v0, "money":Ljava/lang/String;
    const-string v1, "order_no"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 406
    .local v1, "orderNo":Ljava/lang/String;
    const-string v2, "order_name"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 407
    .local v2, "orderName":Ljava/lang/String;
    const-string v3, "role_id"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 408
    .local v3, "roleId":Ljava/lang/String;
    const-string v4, "role_name"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 409
    .local v4, "roleName":Ljava/lang/String;
    const-string v5, "role_level"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 410
    .local v5, "roleLevel":Ljava/lang/String;
    const-string v6, "server_id"

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 411
    .local v6, "serverId":Ljava/lang/String;
    const-string v7, "server_name"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 413
    .local v7, "serverName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 414
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 415
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 416
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 417
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 418
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 419
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 420
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    iget-object v8, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    if-eqz v8, :cond_2

    .line 426
    iget-object v8, p0, Lcom/maya/sdk/m/controller/MsdkManager;->requestManager:Lcom/maya/sdk/m/http/MReqManager;

    const-string v9, "pay"

    invoke-virtual {v8, v9}, Lcom/maya/sdk/m/http/MReqManager;->submitSdkAction(Ljava/lang/String;)V

    .line 427
    iget-object v8, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v8, p1, p2}, Lcom/maya/sdk/m/controller/PlatformCore;->userPay(Landroid/content/Context;Ljava/util/HashMap;)V

    goto :goto_1

    .line 421
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/maya/sdk/m/controller/MsdkManager;->sdkCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    const-string v9, "\u652f\u4ed8\u53c2\u6570\u4e3a\u7a7a"

    invoke-interface {v8, v9}, Lcom/maya/sdk/m/MyMsdkCallback;->onPayFail(Ljava/lang/String;)V

    .line 430
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public doExitGame(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 316
    const-string v0, "doExitGame"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPublicLog(Ljava/lang/String;)V

    .line 318
    new-instance v0, Lcom/maya/sdk/m/controller/MsdkManager$4;

    invoke-direct {v0, p0, p1}, Lcom/maya/sdk/m/controller/MsdkManager$4;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 338
    return-void
.end method

.method public doInit(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/m/MyMsdkCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/maya/sdk/m/MyMsdkCallback;

    .line 78
    const-string v0, "maya_m"

    const-string v1, "<--MsdkManager--> doInit"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput-object p1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/m/controller/MsdkManager;->initConfig(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/maya/sdk/m/http/MReqManager;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/maya/sdk/m/http/MReqManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->requestManager:Lcom/maya/sdk/m/http/MReqManager;

    .line 84
    new-instance v0, Lcom/maya/sdk/m/http/MRepManager;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/maya/sdk/m/http/MRepManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->repManager:Lcom/maya/sdk/m/http/MRepManager;

    .line 88
    new-instance v0, Lcom/maya/sdk/m/controller/PlatformLogCore;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/maya/sdk/m/controller/PlatformLogCore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    .line 91
    invoke-direct {p0, p3}, Lcom/maya/sdk/m/controller/MsdkManager;->createNewCallBack(Lcom/maya/sdk/m/MyMsdkCallback;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/controller/MsdkManager;->postEventInit(Landroid/content/Context;)V

    .line 96
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/maya/sdk/m/controller/MsdkManager;->startInitReqeust(ZZ)V

    .line 97
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 917
    const-string v0, "onActivityResult"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/m/controller/PlatformCore;->onActivityResult(IILandroid/content/Intent;)V

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/m/controller/PlatformLogCore;->onActivityResult(IILandroid/content/Intent;)V

    .line 924
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 937
    const-string v0, "onConfigurationChanged"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/PlatformCore;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/PlatformLogCore;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 944
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 906
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformCore;->onDestroy()V

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformLogCore;->onDestroy()V

    .line 914
    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 927
    const-string v0, "onNewIntent"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/PlatformCore;->onNewIntent(Landroid/content/Intent;)V

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 932
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/PlatformLogCore;->onNewIntent(Landroid/content/Intent;)V

    .line 934
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 886
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformCore;->onPause()V

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 891
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformLogCore;->onPause()V

    .line 893
    :cond_1
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 866
    const-string v0, "onRestart"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformCore;->onRestart()V

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformLogCore;->onStart()V

    .line 873
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 876
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformCore;->onResume()V

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 881
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformLogCore;->onResume()V

    .line 883
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 856
    const-string v0, "onStart"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformCore;->onStart()V

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformLogCore;->onStart()V

    .line 863
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 896
    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformCore;->onStop()V

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformLogCore:Lcom/maya/sdk/m/controller/PlatformLogCore;

    invoke-virtual {v0}, Lcom/maya/sdk/m/controller/PlatformLogCore;->onStop()V

    .line 903
    :cond_1
    return-void
.end method

.method public openUserNameAuth(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "canCancel"    # Z

    .line 780
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1, p2}, Lcom/maya/sdk/m/controller/PlatformCore;->openUserNameAuth(Landroid/content/Context;Z)V

    .line 781
    return-void
.end method

.method protected postEventSdkErrorAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 842
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->requestManager:Lcom/maya/sdk/m/http/MReqManager;

    invoke-virtual {v0, p1, p2}, Lcom/maya/sdk/m/http/MReqManager;->postSdkErrorAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    return-void
.end method

.method public roleChangeName(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 534
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roleUpdate\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_1

    .line 538
    invoke-static {p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->mapToMapTrim(Ljava/util/HashMap;)V

    .line 540
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 542
    .local v0, "newInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mAppConfig:Lcom/maya/sdk/m/model/bean/MAppBean;

    invoke-virtual {v1}, Lcom/maya/sdk/m/model/bean/MAppBean;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    const-string v1, "roleUpdate"

    new-instance v2, Lcom/maya/sdk/m/controller/MsdkManager$11;

    invoke-direct {v2, p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager$11;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;Ljava/util/HashMap;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/maya/sdk/m/controller/MsdkManager;->checkRoleInfos(Ljava/lang/String;Ljava/util/HashMap;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V

    goto :goto_0

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v1, v0}, Lcom/maya/sdk/m/controller/PlatformCore;->roleChangeName(Ljava/util/HashMap;)V

    .line 555
    .end local v0    # "newInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method public roleCreate(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 459
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roleCreate\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_1

    .line 463
    invoke-static {p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->mapToMapTrim(Ljava/util/HashMap;)V

    .line 465
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 467
    .local v0, "newInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mAppConfig:Lcom/maya/sdk/m/model/bean/MAppBean;

    invoke-virtual {v1}, Lcom/maya/sdk/m/model/bean/MAppBean;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    const-string v1, "roleCreate"

    new-instance v2, Lcom/maya/sdk/m/controller/MsdkManager$8;

    invoke-direct {v2, p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager$8;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;Ljava/util/HashMap;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/maya/sdk/m/controller/MsdkManager;->checkRoleInfos(Ljava/lang/String;Ljava/util/HashMap;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V

    goto :goto_0

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v1, v0}, Lcom/maya/sdk/m/controller/PlatformCore;->roleCreate(Ljava/util/HashMap;)V

    .line 481
    .end local v0    # "newInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method public roleEnterGame(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 485
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roleEnterGame\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_1

    .line 488
    invoke-static {p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->mapToMapTrim(Ljava/util/HashMap;)V

    .line 490
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 492
    .local v0, "newInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mAppConfig:Lcom/maya/sdk/m/model/bean/MAppBean;

    invoke-virtual {v1}, Lcom/maya/sdk/m/model/bean/MAppBean;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    const-string v1, "roleEnterGame"

    new-instance v2, Lcom/maya/sdk/m/controller/MsdkManager$9;

    invoke-direct {v2, p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager$9;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;Ljava/util/HashMap;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/maya/sdk/m/controller/MsdkManager;->checkRoleInfos(Ljava/lang/String;Ljava/util/HashMap;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V

    goto :goto_0

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v1, v0}, Lcom/maya/sdk/m/controller/PlatformCore;->roleEnterGame(Ljava/util/HashMap;)V

    .line 505
    .end local v0    # "newInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method public roleLevelUp(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 509
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roleUpgrade\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_1

    .line 512
    invoke-static {p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->mapToMapTrim(Ljava/util/HashMap;)V

    .line 514
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 516
    .local v0, "newInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mAppConfig:Lcom/maya/sdk/m/model/bean/MAppBean;

    invoke-virtual {v1}, Lcom/maya/sdk/m/model/bean/MAppBean;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    const-string v1, "roleUpgrade"

    new-instance v2, Lcom/maya/sdk/m/controller/MsdkManager$10;

    invoke-direct {v2, p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager$10;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;Ljava/util/HashMap;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/maya/sdk/m/controller/MsdkManager;->checkRoleInfos(Ljava/lang/String;Ljava/util/HashMap;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V

    goto :goto_0

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v1, v0}, Lcom/maya/sdk/m/controller/PlatformCore;->roleLevelUp(Ljava/util/HashMap;)V

    .line 530
    .end local v0    # "newInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method public runOnUIThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 792
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 793
    return-void
.end method

.method public serverSelect(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 433
    .local p1, "infos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverSelect\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_1

    .line 437
    invoke-static {p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->mapToMapTrim(Ljava/util/HashMap;)V

    .line 439
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 441
    .local v0, "newInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mAppConfig:Lcom/maya/sdk/m/model/bean/MAppBean;

    invoke-virtual {v1}, Lcom/maya/sdk/m/model/bean/MAppBean;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    const-string v1, "serverSelect"

    new-instance v2, Lcom/maya/sdk/m/controller/MsdkManager$7;

    invoke-direct {v2, p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager$7;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;Ljava/util/HashMap;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/maya/sdk/m/controller/MsdkManager;->checkRoleInfos(Ljava/lang/String;Ljava/util/HashMap;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V

    goto :goto_0

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v1, v0}, Lcom/maya/sdk/m/controller/PlatformCore;->serverSelect(Ljava/util/HashMap;)V

    .line 455
    .end local v0    # "newInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method public userLogin(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 274
    const-string v0, "userLogin"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/maya/sdk/m/controller/MsdkManager;->isQuickClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/maya/sdk/m/controller/MsdkManager;->isInitRequestSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->requestManager:Lcom/maya/sdk/m/http/MReqManager;

    const-string v1, "login"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/http/MReqManager;->submitSdkAction(Ljava/lang/String;)V

    .line 282
    new-instance v0, Lcom/maya/sdk/m/controller/MsdkManager$2;

    invoke-direct {v0, p0, p1}, Lcom/maya/sdk/m/controller/MsdkManager$2;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 289
    :cond_1
    return-void
.end method

.method public userLogout(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 307
    const-string v0, "userLogout"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager;->platformCore:Lcom/maya/sdk/m/controller/PlatformCore;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/m/controller/PlatformCore;->userLogout(Landroid/content/Context;)V

    .line 312
    :cond_0
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

    .line 342
    .local p2, "payinfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userPay\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/maya/sdk/m/controller/MsdkManager;->isQuickClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    return-void

    .line 348
    :cond_0
    new-instance v0, Lcom/maya/sdk/m/controller/MsdkManager$5;

    invoke-direct {v0, p0, p2}, Lcom/maya/sdk/m/controller/MsdkManager$5;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;Ljava/util/HashMap;)V

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method

.method public userPayCommon(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 12
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

    .line 359
    .local p2, "payinfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/maya/sdk/m/controller/MsdkManager;->isInitRequestSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const-string v0, "money"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    .local v0, "money":Ljava/lang/String;
    const-string v1, "order_no"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 363
    .local v1, "orderNo":Ljava/lang/String;
    const-string v2, "order_name"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 364
    .local v2, "orderName":Ljava/lang/String;
    const-string v3, "order_ext"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 365
    .local v3, "orderExtra":Ljava/lang/String;
    const-string v4, "role_id"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 366
    .local v4, "roleId":Ljava/lang/String;
    const-string v5, "role_name"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 367
    .local v5, "roleName":Ljava/lang/String;
    const-string v6, "role_level"

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 368
    .local v6, "roleLevel":Ljava/lang/String;
    const-string v7, "server_id"

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 369
    .local v7, "serverId":Ljava/lang/String;
    const-string v8, "server_name"

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 371
    .local v8, "serverName":Ljava/lang/String;
    iget-object v9, p0, Lcom/maya/sdk/m/controller/MsdkManager;->mAppConfig:Lcom/maya/sdk/m/model/bean/MAppBean;

    invoke-virtual {v9}, Lcom/maya/sdk/m/model/bean/MAppBean;->isDebug()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 373
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .local v9, "sb":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u5145\u503c\u91d1\u989d:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\u5143\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u8ba2\u5355\u5355\u53f7:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 375
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u5546\u54c1\u540d\u79f0:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 376
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u62d3\u5c55\u6570\u636e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 377
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u89d2\u8272 ID:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 378
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u89d2\u8272\u540d\u79f0:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 379
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u89d2\u8272\u7b49\u7ea7:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 380
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u670d\u52a1\u5668ID:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 381
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u670d\u52a1\u5668\u540d:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 382
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/maya/sdk/m/controller/MsdkManager$6;

    invoke-direct {v11, p0, p1, p2}, Lcom/maya/sdk/m/controller/MsdkManager$6;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-direct {p0, v10, v11}, Lcom/maya/sdk/m/controller/MsdkManager;->showDebugDialog(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V

    .line 395
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 397
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/m/controller/MsdkManager;->startPay(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 400
    .end local v0    # "money":Ljava/lang/String;
    .end local v1    # "orderNo":Ljava/lang/String;
    .end local v2    # "orderName":Ljava/lang/String;
    .end local v3    # "orderExtra":Ljava/lang/String;
    .end local v4    # "roleId":Ljava/lang/String;
    .end local v5    # "roleName":Ljava/lang/String;
    .end local v6    # "roleLevel":Ljava/lang/String;
    .end local v7    # "serverId":Ljava/lang/String;
    .end local v8    # "serverName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method public userSwitch(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 292
    const-string v0, "userSwitch"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->sendPrivateLog(Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Lcom/maya/sdk/m/controller/MsdkManager;->isQuickClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    return-void

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/maya/sdk/m/controller/MsdkManager;->isInitRequestSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    new-instance v0, Lcom/maya/sdk/m/controller/MsdkManager$3;

    invoke-direct {v0, p0, p1}, Lcom/maya/sdk/m/controller/MsdkManager$3;-><init>(Lcom/maya/sdk/m/controller/MsdkManager;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/controller/MsdkManager;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 304
    :cond_1
    return-void
.end method
