.class public Lcom/maya/sdk/framework/web/SdkWebDialog;
.super Landroid/app/Dialog;
.source "SdkWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/framework/web/SdkWebDialog$sdkWebDialogLisenter;,
        Lcom/maya/sdk/framework/web/SdkWebDialog$myWebViewClient;,
        Lcom/maya/sdk/framework/web/SdkWebDialog$MyWebViewDownLoadListener;,
        Lcom/maya/sdk/framework/web/SdkWebDialog$WebJsInterface;
    }
.end annotation


# instance fields
.field private JsObject:Ljava/lang/Object;

.field private LOAD_TIMEOUT:J

.field private final RETRY_LOAD_COUNTS:I

.field closeHandler:Landroid/os/Handler;

.field private currentUrl:Ljava/lang/String;

.field private isCanBackClose:Z

.field private isTransparent:Z

.field private mContext:Landroid/content/Context;

.field private runnable:Ljava/lang/Runnable;

.field private sdkWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

.field showErrorWebHandler:Landroid/os/Handler;

.field showWebHandler:Landroid/os/Handler;

.field private waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

.field webLoadCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

.field private webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 39
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->LOAD_TIMEOUT:J

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->RETRY_LOAD_COUNTS:I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->isTransparent:Z

    .line 48
    iput-boolean v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->isCanBackClose:Z

    .line 132
    new-instance v0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/web/SdkWebDialog$1;-><init>(Lcom/maya/sdk/framework/web/SdkWebDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->showWebHandler:Landroid/os/Handler;

    .line 161
    new-instance v0, Lcom/maya/sdk/framework/web/SdkWebDialog$2;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/web/SdkWebDialog$2;-><init>(Lcom/maya/sdk/framework/web/SdkWebDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->closeHandler:Landroid/os/Handler;

    .line 170
    new-instance v0, Lcom/maya/sdk/framework/web/SdkWebDialog$3;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/web/SdkWebDialog$3;-><init>(Lcom/maya/sdk/framework/web/SdkWebDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->showErrorWebHandler:Landroid/os/Handler;

    .line 366
    new-instance v0, Lcom/maya/sdk/framework/web/SdkWebDialog$4;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/web/SdkWebDialog$4;-><init>(Lcom/maya/sdk/framework/web/SdkWebDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webLoadCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

    .line 56
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/maya/sdk/framework/web/SdkWebDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/web/SdkWebDialog;

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/maya/sdk/framework/web/SdkWebDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/web/SdkWebDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->updateWaitDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/maya/sdk/framework/web/SdkWebDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/web/SdkWebDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->currentUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/maya/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/web/SdkWebDialog;

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/maya/sdk/framework/web/SdkWebDialog;)Lcom/maya/sdk/framework/web/webview/WebViewBase;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/web/SdkWebDialog;

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/maya/sdk/framework/web/SdkWebDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/web/SdkWebDialog;

    .line 36
    iget-boolean v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->isTransparent:Z

    return v0
.end method

.method static synthetic access$500(Lcom/maya/sdk/framework/web/SdkWebDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/web/SdkWebDialog;

    .line 36
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->removeTimeoutCheckingRunnable()V

    return-void
.end method

.method static synthetic access$600(Lcom/maya/sdk/framework/web/SdkWebDialog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/web/SdkWebDialog;

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/maya/sdk/framework/web/SdkWebDialog;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/web/SdkWebDialog;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 36
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->runnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/maya/sdk/framework/web/SdkWebDialog;)J
    .locals 2
    .param p0, "x0"    # Lcom/maya/sdk/framework/web/SdkWebDialog;

    .line 36
    iget-wide v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->LOAD_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/maya/sdk/framework/web/SdkWebDialog;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/web/SdkWebDialog;
    .param p1, "x1"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->showWaitDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/maya/sdk/framework/web/SdkWebDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/web/SdkWebDialog;

    .line 36
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->hideWaitDialog()V

    return-void
.end method

.method private hideWaitDialog()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->dismiss()V

    .line 200
    :cond_0
    return-void
.end method

.method private removeTimeoutCheckingRunnable()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->runnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/maya/sdk/framework/web/webview/WebviewHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->runnable:Ljava/lang/Runnable;

    .line 364
    :cond_0
    return-void
.end method

.method private showWaitDialog(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 182
    if-eqz p1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-direct {v0, p1}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    .line 186
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->show()V

    .line 194
    :cond_1
    return-void
.end method

.method private updateWaitDialog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->waitDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->setLoadingMessage(Ljava/lang/CharSequence;)V

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public closeWeb()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->closeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    return-void
.end method

.method public getWebview()Landroid/webkit/WebView;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 400
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->sdkWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->sdkWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->onActivityResult(IILandroid/content/Intent;)V

    .line 403
    :cond_0
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

    .line 407
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->sdkWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->sdkWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->onActivityResultAboveL(IILandroid/content/Intent;)V

    .line 410
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 81
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "maya_dialog_theme_main"

    const-string v2, "style"

    iget-object v3, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 85
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "fatherView":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    new-instance v3, Lcom/maya/sdk/framework/web/webview/WebViewBase;

    iget-object v4, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/maya/sdk/framework/web/webview/WebViewBase;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    .line 90
    iget-object v3, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v3, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v2, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setEnableHardwareAccelerated(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 103
    new-instance v2, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    iget-object v3, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webLoadCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

    invoke-direct {v2, v3, v4}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;-><init>(Landroid/content/Context;Lcom/maya/sdk/framework/web/SdkWebCallback;)V

    iput-object v2, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->sdkWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    .line 105
    iget-object v2, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    new-instance v3, Lcom/maya/sdk/framework/web/SdkWebDialog$MyWebViewDownLoadListener;

    invoke-direct {v3, p0, v1}, Lcom/maya/sdk/framework/web/SdkWebDialog$MyWebViewDownLoadListener;-><init>(Lcom/maya/sdk/framework/web/SdkWebDialog;Lcom/maya/sdk/framework/web/SdkWebDialog$1;)V

    invoke-virtual {v2, v3}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 106
    iget-object v1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    new-instance v2, Lcom/maya/sdk/framework/web/SdkWebDialog$myWebViewClient;

    iget-object v3, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/maya/sdk/framework/web/SdkWebDialog$myWebViewClient;-><init>(Lcom/maya/sdk/framework/web/SdkWebDialog;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 107
    iget-object v1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    iget-object v2, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->sdkWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 110
    iget-object v1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "uaName":Ljava/lang/String;
    iget-object v2, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-string v3, "Android"

    const-string v4, "Android FMWebView"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 393
    const-string v0, "myWeb\u88ab\u9500\u6bc1\uff0c\u5148\u5173\u95ed\u52a0\u8f7d\u8fdb\u5ea6\u6846"

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->hideWaitDialog()V

    .line 396
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/framework/web/webview/WebviewUtils;->clearWebviewPrefs(Landroid/content/Context;)V

    .line 397
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 211
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->goBack()V

    goto :goto_0

    .line 217
    :cond_0
    iget-boolean v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->isCanBackClose:Z

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->dismiss()V

    .line 222
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public refreshWeb()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->showWebHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 253
    return-void
.end method

.method public setCanBackClose(Z)V
    .locals 0
    .param p1, "isTrue"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->isCanBackClose:Z

    .line 69
    return-void
.end method

.method public setJsInterface(Ljava/lang/Object;)V
    .locals 0
    .param p1, "js"    # Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->JsObject:Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public setTransparent(Z)V
    .locals 0
    .param p1, "isTrue"    # Z

    .line 64
    iput-boolean p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->isTransparent:Z

    .line 65
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->currentUrl:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public show()V
    .locals 4

    .line 118
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 120
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->JsObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    new-instance v1, Lcom/maya/sdk/framework/web/SdkWebDialog$WebJsInterface;

    iget-object v2, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/maya/sdk/framework/web/SdkWebDialog$WebJsInterface;-><init>(Lcom/maya/sdk/framework/web/SdkWebDialog;Landroid/content/Context;)V

    const-string v2, "fmWebUtils"

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    iget-object v1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->JsObject:Ljava/lang/Object;

    const-string v2, "fmWebUtils"

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->showWebHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 128
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setVisibility(I)V

    .line 129
    return-void
.end method
