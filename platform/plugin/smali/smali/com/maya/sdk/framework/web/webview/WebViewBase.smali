.class public Lcom/maya/sdk/framework/web/webview/WebViewBase;
.super Landroid/webkit/WebView;
.source "WebViewBase.java"


# instance fields
.field private isUseGPU:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/sdk/framework/web/webview/WebViewBase;->isUseGPU:Z

    .line 25
    const-class v0, Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setTag(Ljava/lang/Object;)V

    .line 26
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/sdk/framework/web/webview/WebViewBase;->isUseGPU:Z

    .line 36
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/sdk/framework/web/webview/WebViewBase;->isUseGPU:Z

    .line 31
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->init()V

    .line 32
    return-void
.end method

.method private static clearCacheFolder(Ljava/io/File;I)I
    .locals 14
    .param p0, "paramFile"    # Ljava/io/File;
    .param p1, "paramInt"    # I

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "i":I
    if-eqz p0, :cond_5

    .line 174
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    .line 175
    .local v1, "bool1":Z
    const/4 v0, 0x0

    .line 176
    if-eqz v1, :cond_5

    .line 177
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 178
    .local v2, "arrayOfFile":[Ljava/io/File;
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    array-length v4, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    :try_start_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 182
    .local v4, "l":J
    array-length v6, v2

    .line 183
    .local v6, "j":I
    nop

    .local v3, "k":I
    :goto_0
    if-ge v3, v6, :cond_3

    .line 184
    aget-object v7, v2, v3

    .line 185
    .local v7, "localFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 186
    invoke-static {v7, p1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->clearCacheFolder(Ljava/io/File;I)I

    move-result v8

    add-int/2addr v0, v8

    .line 187
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    int-to-long v12, p1

    mul-long v12, v12, v10

    sub-long v10, v4, v12

    cmp-long v12, v8, v10

    if-gez v12, :cond_2

    .line 188
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .local v8, "bool2":Z
    if-eqz v8, :cond_2

    .line 190
    add-int/lit8 v0, v0, 0x1

    .line 183
    .end local v7    # "localFile":Ljava/io/File;
    .end local v8    # "bool2":Z
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    .end local v3    # "k":I
    .end local v4    # "l":J
    .end local v6    # "j":I
    :cond_3
    goto :goto_2

    .line 193
    :catch_0
    move-exception v3

    .line 194
    .local v3, "localException":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 179
    .end local v3    # "localException":Ljava/lang/Exception;
    :cond_4
    :goto_1
    return v3

    .line 198
    .end local v1    # "bool1":Z
    .end local v2    # "arrayOfFile":[Ljava/io/File;
    :cond_5
    :goto_2
    return v0
.end method

.method public static clearWebviewCache(Landroid/content/Context;)V
    .locals 3
    .param p0, "paramContext"    # Landroid/content/Context;

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->clearCacheFolder(Ljava/io/File;I)I

    .line 146
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    const-string v0, "webview.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 148
    const-string v0, "webviewCache.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 149
    return-void
.end method

.method private disableGPU(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setLayerType(ILandroid/graphics/Paint;)V

    .line 157
    :cond_0
    return-void

    .line 159
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

    .line 162
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

    .line 167
    return-object v0
.end method

.method private init()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setInitialScale(I)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setVerticalScrollBarEnabled(Z)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setHorizontalScrollBarEnabled(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->requestFocusFromTouch()Z

    .line 45
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->requestFocus()Z

    .line 46
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setFocusable(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 48
    .local v2, "localWebSettings":Landroid/webkit/WebSettings;
    const-string v3, "utf-8"

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
    .local v3, "arrayOfObject1":[Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    .line 56
    const-string v4, "setPluginsEnabled"

    invoke-static {v2, v4, v3}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 60
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 61
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 62
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 63
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 64
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 66
    new-array v4, v1, [Ljava/lang/Object;

    .line 67
    .local v4, "arrayOfObject4":[Ljava/lang/Object;
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v0

    .line 68
    const-string v5, "setDomStorageEnabled"

    invoke-static {v2, v5, v4}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_0

    .line 72
    new-array v5, v1, [Ljava/lang/Object;

    .line 73
    .local v5, "arrayOfObject8":[Ljava/lang/Object;
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v0

    .line 74
    const-string v6, "setNavDump"

    invoke-static {v2, v6, v5}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .end local v5    # "arrayOfObject8":[Ljava/lang/Object;
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-ge v5, v6, :cond_1

    .line 79
    new-array v5, v1, [Ljava/lang/Object;

    .line 80
    .local v5, "arrayOfObject7":[Ljava/lang/Object;
    const/16 v6, 0x14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    .line 81
    const-string v6, "setPageCacheCapacity"

    invoke-static {v2, v6, v5}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .end local v5    # "arrayOfObject7":[Ljava/lang/Object;
    :cond_1
    new-array v5, v1, [Ljava/lang/Object;

    .line 86
    .local v5, "arrayOfObject5":[Ljava/lang/Object;
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v0

    .line 87
    const-string v6, "setDatabaseEnabled"

    invoke-static {v2, v6, v5}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-array v6, v1, [Ljava/lang/Object;

    .line 91
    .local v6, "arrayOfObject6":[Ljava/lang/Object;
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getDataBasePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 92
    const-string v7, "setDatabasePath"

    invoke-static {v2, v7, v6}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-array v7, v1, [Ljava/lang/Object;

    .line 96
    .local v7, "arrayOfObject2":[Ljava/lang/Object;
    const-wide/32 v8, 0x800000

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v0

    .line 97
    const-string v8, "setAppCacheMaxSize"

    invoke-static {v2, v8, v7}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-array v8, v1, [Ljava/lang/Object;

    .line 101
    .local v8, "arrayOfObject3":[Ljava/lang/Object;
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v9, v8, v0

    .line 102
    const-string v9, "setAppCacheEnabled"

    invoke-static {v2, v9, v8}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-direct {p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->getAppCachePath()Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, "str2":Ljava/lang/String;
    const-string v10, "setAppCachePath"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v9, v1, v0

    invoke-static {v2, v10, v1}, Lcom/maya/open/utils/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v0, Lcom/maya/sdk/framework/web/webview/WebViewBase$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/web/webview/WebViewBase$1;-><init>(Lcom/maya/sdk/framework/web/webview/WebViewBase;)V

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 128
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "paramCanvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 133
    iget-boolean v0, p0, Lcom/maya/sdk/framework/web/webview/WebViewBase;->isUseGPU:Z

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->disableGPU(Landroid/graphics/Canvas;)V

    .line 136
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 137
    return-void
.end method

.method public setEnableHardwareAccelerated(Z)V
    .locals 1
    .param p1, "paramBoolean"    # Z

    .line 140
    iget-boolean v0, p0, Lcom/maya/sdk/framework/web/webview/WebViewBase;->isUseGPU:Z

    if-eq v0, p1, :cond_0

    .line 141
    iput-boolean p1, p0, Lcom/maya/sdk/framework/web/webview/WebViewBase;->isUseGPU:Z

    .line 142
    :cond_0
    return-void
.end method
