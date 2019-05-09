.class public Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;
.super Landroid/app/Activity;
.source "SdkCustomerServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;,
        Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$MyWebViewDownLoadListener;,
        Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$JsObj;
    }
.end annotation


# instance fields
.field private LOAD_TIMEOUT:J

.field private final RETRY_LOAD_COUNTS:I

.field closeHandler:Landroid/os/Handler;

.field private currentUrl:Ljava/lang/String;

.field private isTransparent:Z

.field private mContext:Landroid/content/Context;

.field private maya_customer_rl:Landroid/widget/RelativeLayout;

.field private runnable:Ljava/lang/Runnable;

.field private screenWidth:I

.field private screenheight:I

.field private sdkWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

.field showErrorWebHandler:Landroid/os/Handler;

.field showWebHandler:Landroid/os/Handler;

.field private waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

.field webLoadCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

.field private webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->LOAD_TIMEOUT:J

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->RETRY_LOAD_COUNTS:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->isTransparent:Z

    .line 139
    new-instance v0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$2;

    invoke-direct {v0, p0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$2;-><init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)V

    iput-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->showWebHandler:Landroid/os/Handler;

    .line 169
    new-instance v0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$3;

    invoke-direct {v0, p0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$3;-><init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)V

    iput-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->closeHandler:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$4;

    invoke-direct {v0, p0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$4;-><init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)V

    iput-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->showErrorWebHandler:Landroid/os/Handler;

    .line 355
    new-instance v0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$5;

    invoke-direct {v0, p0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$5;-><init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)V

    iput-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webLoadCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    .line 41
    invoke-direct {p0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->hideWaitDialog()V

    return-void
.end method

.method static synthetic access$102(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->currentUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->updateWaitDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Lcom/maya/sdk/framework/web/webview/WebViewBase;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    .line 41
    iget-boolean v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->isTransparent:Z

    return v0
.end method

.method static synthetic access$500(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sendLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    .line 41
    invoke-direct {p0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->removeTimeoutCheckingRunnable()V

    return-void
.end method

.method static synthetic access$700(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$702(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 41
    iput-object p1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->runnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    .line 41
    iget-wide v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->LOAD_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->showWaitDialog(Landroid/content/Context;)V

    return-void
.end method

.method private hideWaitDialog()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->dismiss()V

    .line 217
    :cond_0
    return-void
.end method

.method private removeTimeoutCheckingRunnable()V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->runnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/maya/sdk/framework/web/webview/WebviewHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->runnable:Ljava/lang/Runnable;

    .line 353
    :cond_0
    return-void
.end method

.method private sendLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 406
    const-string v0, "SdkCustomerServiceActivity"

    invoke-static {v0, p1}, Lcom/maya/sdk/m/utils/MLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method private showWaitDialog(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 191
    if-eqz p1, :cond_1

    .line 193
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-direct {v0, p1}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    .line 195
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->show()V

    .line 203
    :cond_1
    return-void
.end method

.method private updateWaitDialog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->setLoadingMessage(Ljava/lang/CharSequence;)V

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 391
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sdkWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sdkWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->onActivityResult(IILandroid/content/Intent;)V

    .line 394
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 395
    return-void
.end method

.method public onActivityResultAboveL(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sdkWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sdkWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->onActivityResultAboveL(IILandroid/content/Intent;)V

    .line 401
    invoke-virtual {p0, p1, p2, p3}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 403
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iput-object p0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->setFinishOnTouchOutside(Z)V

    .line 65
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 66
    .local v1, "manager":Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 67
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->screenWidth:I

    .line 69
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->screenheight:I

    .line 71
    invoke-virtual {p0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 72
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->currentUrl:Ljava/lang/String;

    .line 74
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Web\u9875\u52a0\u8f7durl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    iget-object v4, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->currentUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    return-void

    .line 80
    :cond_0
    const-string v4, "maya_dialog_customer"

    const-string v5, "layout"

    iget-object v6, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->setContentView(I)V

    .line 83
    const/4 v4, 0x0

    .line 85
    .local v4, "lParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/maya/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v5

    const-wide v6, 0x3fe4cccccccccccdL    # 0.65

    if-eqz v5, :cond_1

    .line 86
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->screenWidth:I

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    double-to-int v8, v8

    iget v9, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->screenWidth:I

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v6

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double v9, v9, v6

    double-to-int v6, v9

    invoke-direct {v5, v8, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v4, v5

    goto :goto_0

    .line 88
    :cond_1
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->screenWidth:I

    int-to-double v8, v8

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    double-to-int v8, v8

    iget v9, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->screenheight:I

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v6

    double-to-int v6, v9

    invoke-direct {v5, v8, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v4, v5

    .line 91
    :goto_0
    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 93
    const-string v5, "maya_customer_content"

    const-string v6, "id"

    iget-object v7, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    .line 94
    invoke-static {v5, v6, v7}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v5

    .line 93
    invoke-virtual {p0, v5}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 95
    .local v5, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    const-string v6, "maya_customer_title"

    const-string v7, "id"

    iget-object v8, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v8}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 98
    .local v6, "title":Landroid/widget/ImageView;
    const-string v7, "maya_customer_close"

    const-string v8, "id"

    iget-object v9, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-static {v7, v8, v9}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 99
    .local v7, "close":Landroid/widget/ImageView;
    const-string v8, "maya_customer_rl"

    const-string v9, "id"

    iget-object v10, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-static {v8, v9, v10}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->maya_customer_rl:Landroid/widget/RelativeLayout;

    .line 100
    new-instance v8, Lcom/maya/sdk/framework/web/webview/WebViewBase;

    iget-object v9, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/maya/sdk/framework/web/webview/WebViewBase;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    .line 101
    iget-object v8, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v9, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v8, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->maya_customer_rl:Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 105
    new-instance v8, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$1;

    invoke-direct {v8, p0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$1;-><init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v8, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v8, v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setEnableHardwareAccelerated(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x13

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 121
    new-instance v8, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    iget-object v9, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webLoadCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

    invoke-direct {v8, v9, v10}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;-><init>(Landroid/content/Context;Lcom/maya/sdk/framework/web/SdkWebCallback;)V

    iput-object v8, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sdkWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    .line 123
    iget-object v8, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    new-instance v9, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$MyWebViewDownLoadListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$MyWebViewDownLoadListener;-><init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$1;)V

    invoke-virtual {v8, v9}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 124
    iget-object v8, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    new-instance v9, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;

    iget-object v10, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;-><init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 125
    iget-object v8, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    iget-object v9, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sdkWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    invoke-virtual {v8, v9}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 128
    iget-object v8, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v8}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, "uaName":Ljava/lang/String;
    iget-object v9, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v9}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    const-string v10, "Android"

    const-string v11, "Android FMWebView"

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 131
    iget-object v9, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    new-instance v10, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$JsObj;

    iget-object v11, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-direct {v10, p0, v11}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$JsObj;-><init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Landroid/content/Context;)V

    const-string v11, "fmWebUtils"

    invoke-virtual {v9, v10, v11}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v9, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->showWebHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x64

    invoke-virtual {v9, v0, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 135
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setVisibility(I)V

    .line 137
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 382
    const-string v0, "myWeb\u88ab\u9500\u6bc1\uff0c\u5148\u5173\u95ed\u52a0\u8f7d\u8fdb\u5ea6\u6846"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sendLog(Ljava/lang/String;)V

    .line 383
    invoke-direct {p0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->hideWaitDialog()V

    .line 385
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/framework/web/webview/WebviewUtils;->clearWebviewPrefs(Landroid/content/Context;)V

    .line 386
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 387
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 207
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->finish()V

    .line 210
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
