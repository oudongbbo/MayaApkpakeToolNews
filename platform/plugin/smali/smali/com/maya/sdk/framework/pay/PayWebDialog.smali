.class public Lcom/maya/sdk/framework/pay/PayWebDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/framework/pay/PayWebDialog$PayJsInterface;
    }
.end annotation


# static fields
.field public static a:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/maya/sdk/framework/web/webview/WebViewBase;

.field private d:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

.field private e:Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;

.field private f:Lcom/maya/sdk/framework/view/loading/a;

.field private g:Ljava/lang/String;

.field private h:Lcom/maya/sdk/framework/pay/a;

.field private i:I

.field private j:Landroid/os/Handler;

.field private k:Lcom/maya/sdk/framework/web/SdkWebCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;Lcom/maya/sdk/framework/pay/a;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->d:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    .line 36
    iput-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->e:Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->i:I

    .line 186
    new-instance v0, Lcom/maya/sdk/framework/pay/PayWebDialog$3;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/pay/PayWebDialog$3;-><init>(Lcom/maya/sdk/framework/pay/PayWebDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->j:Landroid/os/Handler;

    .line 224
    new-instance v0, Lcom/maya/sdk/framework/pay/PayWebDialog$4;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/pay/PayWebDialog$4;-><init>(Lcom/maya/sdk/framework/pay/PayWebDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->k:Lcom/maya/sdk/framework/web/SdkWebCallback;

    .line 49
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->b:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->g:Ljava/lang/String;

    .line 51
    sput-object p3, Lcom/maya/sdk/framework/pay/PayWebDialog;->a:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 52
    iput-object p4, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->h:Lcom/maya/sdk/framework/pay/a;

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/framework/pay/PayWebDialog;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->i:I

    return p1
.end method

.method static synthetic a(Lcom/maya/sdk/framework/pay/PayWebDialog;)Lcom/maya/sdk/framework/web/webview/WebViewBase;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->c:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->f:Lcom/maya/sdk/framework/view/loading/a;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/maya/sdk/framework/view/loading/a;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/maya/sdk/framework/view/loading/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->f:Lcom/maya/sdk/framework/view/loading/a;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->f:Lcom/maya/sdk/framework/view/loading/a;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/a;->show()V

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->f:Lcom/maya/sdk/framework/view/loading/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->f:Lcom/maya/sdk/framework/view/loading/a;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->f:Lcom/maya/sdk/framework/view/loading/a;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/framework/view/loading/a;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->f:Lcom/maya/sdk/framework/view/loading/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->f:Lcom/maya/sdk/framework/view/loading/a;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->f:Lcom/maya/sdk/framework/view/loading/a;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/a;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/maya/sdk/framework/pay/PayWebDialog;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->c()V

    return-void
.end method

.method static synthetic b(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 305
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->a:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->a:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/maya/sdk/framework/pay/PayWebDialog;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->b:Landroid/content/Context;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 285
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->a:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "money"

    .line 287
    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->h:Lcom/maya/sdk/framework/pay/a;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/pay/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "order_no_m"

    .line 288
    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->h:Lcom/maya/sdk/framework/pay/a;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/pay/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "order_name"

    .line 289
    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->h:Lcom/maya/sdk/framework/pay/a;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/pay/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "role_id"

    .line 290
    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->h:Lcom/maya/sdk/framework/pay/a;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/pay/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "role_name"

    .line 291
    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->h:Lcom/maya/sdk/framework/pay/a;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/pay/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "role_level"

    .line 292
    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->h:Lcom/maya/sdk/framework/pay/a;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/pay/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "server_id"

    .line 293
    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->h:Lcom/maya/sdk/framework/pay/a;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/pay/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "server_name"

    .line 294
    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->h:Lcom/maya/sdk/framework/pay/a;

    invoke-virtual {v2}, Lcom/maya/sdk/framework/pay/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "payType"

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "state"

    const-string v2, "success"

    .line 296
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v1, Lcom/maya/sdk/framework/pay/PayWebDialog;->a:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v1, v0}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string v0, "maya_pay_state_success"

    .line 300
    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 313
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->a:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lcom/maya/sdk/framework/pay/PayWebDialog;->a:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onCancel(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_0
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/maya/sdk/framework/pay/PayWebDialog;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->a()V

    return-void
.end method

.method static synthetic d(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->a(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/f;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/maya/sdk/framework/pay/PayWebDialog;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->b()V

    return-void
.end method

.method static synthetic e(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayWeb--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/maya/sdk/framework/utils/c;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->j:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 56
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "maya_dialog_theme_main"

    const-string v1, "style"

    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->b:Landroid/content/Context;

    .line 59
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 65
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    new-instance v0, Lcom/maya/sdk/framework/web/webview/WebViewBase;

    iget-object v2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/maya/sdk/framework/web/webview/WebViewBase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->c:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    .line 70
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->c:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->c:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance p1, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->k:Lcom/maya/sdk/framework/web/SdkWebCallback;

    invoke-direct {p1, v0, v1}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;-><init>(Landroid/content/Context;Lcom/maya/sdk/framework/web/SdkWebCallback;)V

    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->d:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    .line 78
    new-instance p1, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;

    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->k:Lcom/maya/sdk/framework/web/SdkWebCallback;

    invoke-direct {p1, v0, v1}, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;-><init>(Landroid/content/Context;Lcom/maya/sdk/framework/web/SdkWebCallback;)V

    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->e:Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;

    .line 79
    iget-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->c:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->d:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 80
    iget-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->c:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->e:Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 82
    iget-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->c:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    new-instance v0, Lcom/maya/sdk/framework/pay/PayWebDialog$PayJsInterface;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/maya/sdk/framework/pay/PayWebDialog$PayJsInterface;-><init>(Lcom/maya/sdk/framework/pay/PayWebDialog;Landroid/content/Context;)V

    const-string v1, "fmWebUtils"

    invoke-virtual {p1, v0, v1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->c:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {p1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 85
    iget-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->c:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {p1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->c:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "Android"

    const-string v3, "Android FMWebView"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 88
    new-instance p1, Lcom/maya/sdk/framework/view/loading/a;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->b:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/maya/sdk/framework/view/loading/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->f:Lcom/maya/sdk/framework/view/loading/a;

    .line 89
    iget-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->f:Lcom/maya/sdk/framework/view/loading/a;

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/view/loading/a;->setCancelable(Z)V

    .line 90
    iget-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->f:Lcom/maya/sdk/framework/view/loading/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/view/loading/a;->setCanceledOnTouchOutside(Z)V

    .line 93
    iget-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->c:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->loadUrl(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->c:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setBackgroundColor(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 163
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "maya_tips_exit_pay"

    .line 165
    iget-object p2, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 167
    new-instance p2, Lcom/maya/sdk/framework/view/a/a;

    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/maya/sdk/framework/view/a/a;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {p2, p1}, Lcom/maya/sdk/framework/view/a/a;->b(Ljava/lang/CharSequence;)Lcom/maya/sdk/framework/view/a/a;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    new-instance v1, Lcom/maya/sdk/framework/pay/PayWebDialog$2;

    invoke-direct {v1, p0, p2}, Lcom/maya/sdk/framework/pay/PayWebDialog$2;-><init>(Lcom/maya/sdk/framework/pay/PayWebDialog;Lcom/maya/sdk/framework/view/a/a;)V

    invoke-virtual {p1, v0, v1}, Lcom/maya/sdk/framework/view/a/a;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/maya/sdk/framework/view/a/a;

    move-result-object p1

    const-string v0, "\u786e\u5b9a"

    new-instance v1, Lcom/maya/sdk/framework/pay/PayWebDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/maya/sdk/framework/pay/PayWebDialog$1;-><init>(Lcom/maya/sdk/framework/pay/PayWebDialog;Lcom/maya/sdk/framework/view/a/a;)V

    .line 172
    invoke-virtual {p1, v0, v1}, Lcom/maya/sdk/framework/view/a/a;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/maya/sdk/framework/view/a/a;

    const/4 p1, 0x0

    .line 178
    invoke-virtual {p2, p1}, Lcom/maya/sdk/framework/view/a/a;->a(Z)Lcom/maya/sdk/framework/view/a/a;

    .line 179
    invoke-virtual {p2}, Lcom/maya/sdk/framework/view/a/a;->a()V

    const/4 p1, 0x1

    return p1

    .line 183
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 99
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
