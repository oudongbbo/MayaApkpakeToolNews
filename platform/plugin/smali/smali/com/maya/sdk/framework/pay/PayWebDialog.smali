.class public Lcom/maya/sdk/framework/pay/PayWebDialog;
.super Landroid/app/Dialog;
.source "PayWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/framework/pay/PayWebDialog$PayJsInterface;
    }
.end annotation


# static fields
.field public static sdkPayCallBack:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;


# instance fields
.field private currentUrl:Ljava/lang/String;

.field private loadCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

.field private mContext:Landroid/content/Context;

.field private mProgressDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

.field private mWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

.field private mWebClient:Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;

.field private mWebView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

.field private payInfoBean:Lcom/maya/sdk/framework/pay/PayInfoBean;

.field private payResultHandler:Landroid/os/Handler;

.field private payType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;Lcom/maya/sdk/framework/pay/PayInfoBean;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "payListener"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;
    .param p4, "infoBean"    # Lcom/maya/sdk/framework/pay/PayInfoBean;

    .line 48
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    .line 36
    iput-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebClient:Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->payType:I

    .line 186
    new-instance v0, Lcom/maya/sdk/framework/pay/PayWebDialog$3;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/pay/PayWebDialog$3;-><init>(Lcom/maya/sdk/framework/pay/PayWebDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->payResultHandler:Landroid/os/Handler;

    .line 224
    new-instance v0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/pay/PayWebDialog$4;-><init>(Lcom/maya/sdk/framework/pay/PayWebDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->loadCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

    .line 49
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->currentUrl:Ljava/lang/String;

    .line 51
    sput-object p3, Lcom/maya/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 52
    iput-object p4, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/maya/sdk/framework/pay/PayInfoBean;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/framework/pay/PayWebDialog;)Lcom/maya/sdk/framework/web/webview/WebViewBase;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/pay/PayWebDialog;

    .line 31
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/pay/PayWebDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/maya/sdk/framework/pay/PayWebDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/pay/PayWebDialog;
    .param p1, "x1"    # I

    .line 31
    iput p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->payType:I

    return p1
.end method

.method static synthetic access$200(Lcom/maya/sdk/framework/pay/PayWebDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/pay/PayWebDialog;

    .line 31
    invoke-direct {p0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->callbackSuccess()V

    return-void
.end method

.method static synthetic access$300(Lcom/maya/sdk/framework/pay/PayWebDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/pay/PayWebDialog;

    .line 31
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/pay/PayWebDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->callbackFail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/pay/PayWebDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->callbackCancel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/pay/PayWebDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/maya/sdk/framework/pay/PayWebDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/pay/PayWebDialog;

    .line 31
    invoke-direct {p0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->showLoading()V

    return-void
.end method

.method static synthetic access$800(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/pay/PayWebDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->setLoadingMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/maya/sdk/framework/pay/PayWebDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/pay/PayWebDialog;

    .line 31
    invoke-direct {p0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->closeLoading()V

    return-void
.end method

.method private callbackCancel(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 313
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onCancel(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_0
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->showToast(Ljava/lang/String;)V

    .line 318
    :goto_0
    return-void
.end method

.method private callbackFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 305
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->showToast(Ljava/lang/String;)V

    .line 310
    :goto_0
    return-void
.end method

.method private callbackSuccess()V
    .locals 4

    .line 285
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "money"

    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/maya/sdk/framework/pay/PayInfoBean;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getMoney()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "order_no_m"

    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/maya/sdk/framework/pay/PayInfoBean;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getOrder_no_m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "order_name"

    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/maya/sdk/framework/pay/PayInfoBean;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getOrder_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v1, "role_id"

    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/maya/sdk/framework/pay/PayInfoBean;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getRole_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "role_name"

    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/maya/sdk/framework/pay/PayInfoBean;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getRole_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "role_level"

    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/maya/sdk/framework/pay/PayInfoBean;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getRole_level()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "server_id"

    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/maya/sdk/framework/pay/PayInfoBean;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getServer_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v1, "server_name"

    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->payInfoBean:Lcom/maya/sdk/framework/pay/PayInfoBean;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/pay/PayInfoBean;->getServer_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v1, "payType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->payType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v1, "state"

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v1, Lcom/maya/sdk/framework/pay/PayWebDialog;->sdkPayCallBack:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v1, v0}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 299
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 300
    :cond_0
    const-string v0, "maya_pay_state_success"

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->showToast(Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void
.end method

.method public static checkApkExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 332
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 333
    const/4 v1, 0x1

    return v1

    .line 335
    :cond_0
    return v1
.end method

.method private closeLoading()V
    .locals 1

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayWeb--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/LogUtil;->w(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private setLoadingMsg(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->setLoadingMessage(Ljava/lang/CharSequence;)V

    .line 282
    :cond_0
    return-void
.end method

.method private showLoading()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->show()V

    .line 266
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 324
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "maya_dialog_theme_main"

    const-string v2, "style"

    iget-object v3, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 65
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, "fatherView":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    new-instance v1, Lcom/maya/sdk/framework/web/webview/WebViewBase;

    iget-object v3, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/maya/sdk/framework/web/webview/WebViewBase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    .line 70
    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v1, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->loadCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

    invoke-direct {v1, v2, v3}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;-><init>(Landroid/content/Context;Lcom/maya/sdk/framework/web/SdkWebCallback;)V

    iput-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    .line 78
    new-instance v1, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;

    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->loadCallback:Lcom/maya/sdk/framework/web/SdkWebCallback;

    invoke-direct {v1, v2, v3}, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;-><init>(Landroid/content/Context;Lcom/maya/sdk/framework/web/SdkWebCallback;)V

    iput-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebClient:Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;

    .line 79
    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebChromeClient:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 80
    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebClient:Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 82
    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    new-instance v2, Lcom/maya/sdk/framework/pay/PayWebDialog$PayJsInterface;

    iget-object v3, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/maya/sdk/framework/pay/PayWebDialog$PayJsInterface;-><init>(Lcom/maya/sdk/framework/pay/PayWebDialog;Landroid/content/Context;)V

    const-string v3, "fmWebUtils"

    invoke-virtual {v1, v2, v3}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 85
    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "uaName":Ljava/lang/String;
    iget-object v3, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v3}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const-string v4, "Android"

    const-string v5, "Android FMWebView"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 88
    new-instance v3, Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    iget-object v4, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    .line 89
    iget-object v3, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    invoke-virtual {v3, v2}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->setCancelable(Z)V

    .line 90
    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mProgressDialog:Lcom/maya/sdk/framework/view/loading/LoadingDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/maya/sdk/framework/view/loading/LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 93
    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    iget-object v4, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->currentUrl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->loadUrl(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v2, v3}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setBackgroundColor(I)V

    .line 96
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 163
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const-string v0, "maya_tips_exit_pay"

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "tips":Ljava/lang/String;
    new-instance v1, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, "mMaterialDialog":Lcom/maya/sdk/framework/view/dialog/MaterialDialog;
    invoke-virtual {v1, v0}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    move-result-object v2

    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/maya/sdk/framework/pay/PayWebDialog$2;

    invoke-direct {v4, p0, v1}, Lcom/maya/sdk/framework/pay/PayWebDialog$2;-><init>(Lcom/maya/sdk/framework/pay/PayWebDialog;Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)V

    invoke-virtual {v2, v3, v4}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    move-result-object v2

    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/maya/sdk/framework/pay/PayWebDialog$1;

    invoke-direct {v4, p0, v1}, Lcom/maya/sdk/framework/pay/PayWebDialog$1;-><init>(Lcom/maya/sdk/framework/pay/PayWebDialog;Lcom/maya/sdk/framework/view/dialog/MaterialDialog;)V

    .line 172
    invoke-virtual {v2, v3, v4}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    .line 178
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->setCanceledOnTouchOutside(Z)Lcom/maya/sdk/framework/view/dialog/MaterialDialog;

    .line 179
    invoke-virtual {v1}, Lcom/maya/sdk/framework/view/dialog/MaterialDialog;->show()V

    .line 181
    const/4 v2, 0x1

    return v2

    .line 183
    .end local v0    # "tips":Ljava/lang/String;
    .end local v1    # "mMaterialDialog":Lcom/maya/sdk/framework/view/dialog/MaterialDialog;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 107
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 120
    return-void
.end method

.method public payWebDismiss(I)V
    .locals 1
    .param p1, "code"    # I

    .line 103
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->payResultHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 104
    return-void
.end method

.method public show()V
    .locals 0

    .line 99
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 100
    return-void
.end method
