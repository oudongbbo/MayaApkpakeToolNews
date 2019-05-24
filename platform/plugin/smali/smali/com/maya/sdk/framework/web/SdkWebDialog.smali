.class public Lcom/maya/sdk/framework/web/SdkWebDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/framework/web/SdkWebDialog$sdkWebDialogLisenter;,
        Lcom/maya/sdk/framework/web/SdkWebDialog$b;,
        Lcom/maya/sdk/framework/web/SdkWebDialog$a;,
        Lcom/maya/sdk/framework/web/SdkWebDialog$WebJsInterface;
    }
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field b:Landroid/os/Handler;

.field c:Landroid/os/Handler;

.field d:Lcom/maya/sdk/framework/web/SdkWebCallback;

.field private e:J

.field private final f:I

.field private g:Landroid/content/Context;

.field private h:Lcom/maya/sdk/framework/web/webview/WebViewBase;

.field private i:Ljava/lang/String;

.field private j:Lcom/maya/sdk/framework/view/loading/a;

.field private k:Z

.field private l:Z

.field private m:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x1388

    .line 39
    iput-wide v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->e:J

    const/4 v0, 0x3

    .line 40
    iput v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->f:I

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->k:Z

    .line 48
    iput-boolean v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->l:Z

    .line 132
    new-instance v0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/web/SdkWebDialog$1;-><init>(Lcom/maya/sdk/framework/web/SdkWebDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->a:Landroid/os/Handler;

    .line 161
    new-instance v0, Lcom/maya/sdk/framework/web/SdkWebDialog$2;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/web/SdkWebDialog$2;-><init>(Lcom/maya/sdk/framework/web/SdkWebDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->b:Landroid/os/Handler;

    .line 170
    new-instance v0, Lcom/maya/sdk/framework/web/SdkWebDialog$3;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/web/SdkWebDialog$3;-><init>(Lcom/maya/sdk/framework/web/SdkWebDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->c:Landroid/os/Handler;

    .line 366
    new-instance v0, Lcom/maya/sdk/framework/web/SdkWebDialog$4;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/web/SdkWebDialog$4;-><init>(Lcom/maya/sdk/framework/web/SdkWebDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->d:Lcom/maya/sdk/framework/web/SdkWebCallback;

    .line 56
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->g:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/framework/web/SdkWebDialog;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->o:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/maya/sdk/framework/web/SdkWebDialog;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/maya/sdk/framework/web/SdkWebDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->i:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->j:Lcom/maya/sdk/framework/view/loading/a;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/maya/sdk/framework/view/loading/a;

    invoke-direct {v0, p1}, Lcom/maya/sdk/framework/view/loading/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->j:Lcom/maya/sdk/framework/view/loading/a;

    .line 186
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->j:Lcom/maya/sdk/framework/view/loading/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/view/loading/a;->setCanceledOnTouchOutside(Z)V

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->j:Lcom/maya/sdk/framework/view/loading/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->j:Lcom/maya/sdk/framework/view/loading/a;

    invoke-virtual {p1}, Lcom/maya/sdk/framework/view/loading/a;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 190
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->j:Lcom/maya/sdk/framework/view/loading/a;

    invoke-virtual {p1}, Lcom/maya/sdk/framework/view/loading/a;->show()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/framework/web/SdkWebDialog;Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/maya/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/maya/sdk/framework/web/SdkWebDialog;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->j:Lcom/maya/sdk/framework/view/loading/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->j:Lcom/maya/sdk/framework/view/loading/a;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->j:Lcom/maya/sdk/framework/view/loading/a;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/framework/view/loading/a;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/maya/sdk/framework/web/SdkWebDialog;)Lcom/maya/sdk/framework/web/webview/WebViewBase;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->h:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    return-object p0
.end method

.method static synthetic d(Lcom/maya/sdk/framework/web/SdkWebDialog;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->k:Z

    return p0
.end method

.method private e()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->j:Lcom/maya/sdk/framework/view/loading/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->j:Lcom/maya/sdk/framework/view/loading/a;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->j:Lcom/maya/sdk/framework/view/loading/a;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/a;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/maya/sdk/framework/web/SdkWebDialog;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->f()V

    return-void
.end method

.method static synthetic f(Lcom/maya/sdk/framework/web/SdkWebDialog;)Ljava/lang/Runnable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method private f()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->o:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/maya/sdk/framework/web/webview/a;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->o:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/maya/sdk/framework/web/SdkWebDialog;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->e:J

    return-wide v0
.end method

.method static synthetic h(Lcom/maya/sdk/framework/web/SdkWebDialog;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->e()V

    return-void
.end method


# virtual methods
.method public a()Landroid/webkit/WebView;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->h:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->m:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->m:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->n:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->k:Z

    return-void
.end method

.method public b()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->l:Z

    return-void
.end method

.method public c()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public d()V
    .locals 1

    const-string v0, "myWeb\u88ab\u9500\u6bc1\uff0c\u5148\u5173\u95ed\u52a0\u8f7d\u8fdb\u5ea6\u6846"

    .line 393
    invoke-static {v0}, Lcom/maya/sdk/framework/utils/c;->b(Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->e()V

    .line 396
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/framework/web/webview/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 81
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "maya_dialog_theme_main"

    const-string v1, "style"

    iget-object v2, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->g:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 85
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->g:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    new-instance v2, Lcom/maya/sdk/framework/web/webview/WebViewBase;

    iget-object v3, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->g:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/maya/sdk/framework/web/webview/WebViewBase;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->h:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    .line 90
    iget-object v2, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->h:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v2, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->h:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v2}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->h:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setEnableHardwareAccelerated(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x13

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 103
    new-instance p1, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    iget-object v1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->d:Lcom/maya/sdk/framework/web/SdkWebCallback;

    invoke-direct {p1, v1, v2}, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;-><init>(Landroid/content/Context;Lcom/maya/sdk/framework/web/SdkWebCallback;)V

    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->m:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    .line 105
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->h:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    new-instance v1, Lcom/maya/sdk/framework/web/SdkWebDialog$a;

    invoke-direct {v1, p0, v0}, Lcom/maya/sdk/framework/web/SdkWebDialog$a;-><init>(Lcom/maya/sdk/framework/web/SdkWebDialog;Lcom/maya/sdk/framework/web/SdkWebDialog$1;)V

    invoke-virtual {p1, v1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 106
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->h:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    new-instance v0, Lcom/maya/sdk/framework/web/SdkWebDialog$b;

    iget-object v1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->g:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/maya/sdk/framework/web/SdkWebDialog$b;-><init>(Lcom/maya/sdk/framework/web/SdkWebDialog;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 107
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->h:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->m:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 110
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->h:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {p1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->h:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "Android"

    const-string v2, "Android FMWebView"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 213
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->h:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {p1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->h:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    invoke-virtual {p1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->goBack()V

    goto :goto_0

    .line 217
    :cond_0
    iget-boolean p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->l:Z

    if-eqz p1, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->dismiss()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public show()V
    .locals 4

    .line 118
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 120
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->n:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->h:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    new-instance v1, Lcom/maya/sdk/framework/web/SdkWebDialog$WebJsInterface;

    iget-object v2, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->g:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/maya/sdk/framework/web/SdkWebDialog$WebJsInterface;-><init>(Lcom/maya/sdk/framework/web/SdkWebDialog;Landroid/content/Context;)V

    const-string v2, "fmWebUtils"

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->h:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    iget-object v1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->n:Ljava/lang/Object;

    const-string v2, "fmWebUtils"

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 128
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog;->h:Lcom/maya/sdk/framework/web/webview/WebViewBase;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setVisibility(I)V

    return-void
.end method
