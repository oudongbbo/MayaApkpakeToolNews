.class public Lcom/maya/sdk/framework/web/webview/WebViewBase;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/maya/sdk/framework/web/webview/WebViewBase;->a:Z

    .line 25
    const-class p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setTag(Ljava/lang/Object;)V

    .line 26
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/maya/sdk/framework/web/webview/WebViewBase;->a:Z

    .line 36
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/maya/sdk/framework/web/webview/WebViewBase;->a:Z

    .line 31
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->a()V

    return-void
.end method

.method private a()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setInitialScale(I)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setVerticalScrollBarEnabled(Z)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setHorizontalScrollBarEnabled(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->requestFocusFromTouch()Z

    .line 45
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->requestFocus()Z

    const/4 v1, 0x1

    .line 46
    invoke-virtual {p0, v1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setFocusable(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-string v3, "utf-8"

    .line 48
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 50
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 51
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 52
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 54
    new-array v3, v1, [Ljava/lang/Object;

    .line 55
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "setPluginsEnabled"

    .line 56
    invoke-static {v2, v4, v3}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 60
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 61
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 62
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v3, 0x2

    .line 63
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 64
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 66
    new-array v3, v1, [Ljava/lang/Object;

    .line 67
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    const-string v4, "setDomStorageEnabled"

    .line 68
    invoke-static {v2, v4, v3}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 72
    new-array v3, v1, [Ljava/lang/Object;

    .line 73
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    const-string v4, "setNavDump"

    .line 74
    invoke-static {v2, v4, v3}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 79
    new-array v3, v1, [Ljava/lang/Object;

    const/16 v4, 0x14

    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "setPageCacheCapacity"

    .line 81
    invoke-static {v2, v4, v3}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_1
    new-array v3, v1, [Ljava/lang/Object;

    .line 86
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    const-string v4, "setDatabaseEnabled"

    .line 87
    invoke-static {v2, v4, v3}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-array v3, v1, [Ljava/lang/Object;

    .line 91
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getDataBasePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "setDatabasePath"

    .line 92
    invoke-static {v2, v4, v3}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-array v3, v1, [Ljava/lang/Object;

    const-wide/32 v4, 0x800000

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "setAppCacheMaxSize"

    .line 97
    invoke-static {v2, v4, v3}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-array v3, v1, [Ljava/lang/Object;

    .line 101
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    const-string v4, "setAppCacheEnabled"

    .line 102
    invoke-static {v2, v4, v3}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getAppCachePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setAppCachePath"

    .line 106
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-static {v2, v4, v1}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v0, Lcom/maya/sdk/framework/web/webview/WebViewBase$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase$1;-><init>(Lcom/maya/sdk/framework/web/webview/WebViewBase;)V

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, p1, v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method private getAppCachePath()Ljava/lang/String;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataBasePath()Ljava/lang/String;
    .locals 3

    .line 167
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "database"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 133
    iget-boolean v0, p0, Lcom/maya/sdk/framework/web/webview/WebViewBase;->a:Z

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->a(Landroid/graphics/Canvas;)V

    .line 136
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setEnableHardwareAccelerated(Z)V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/maya/sdk/framework/web/webview/WebViewBase;->a:Z

    if-eq v0, p1, :cond_0

    .line 141
    iput-boolean p1, p0, Lcom/maya/sdk/framework/web/webview/WebViewBase;->a:Z

    :cond_0
    return-void
.end method
