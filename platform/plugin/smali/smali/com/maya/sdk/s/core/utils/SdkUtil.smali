.class public Lcom/maya/sdk/s/core/utils/SdkUtil;
.super Ljava/lang/Object;
.source "SdkUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSdkParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdkUrl"    # Ljava/lang/String;

    .line 117
    move-object v0, p1

    .line 118
    .local v0, "url_fixed":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/maya/sdk/framework/utils/ReqUtil;->buildWebParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    return-object v0
.end method

.method public static exitWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/Object;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "canBack"    # Z
    .param p3, "isTransparent"    # Z
    .param p4, "JsObject"    # Ljava/lang/Object;
    .param p5, "sdkcallback"    # Lcom/maya/sdk/framework/interfaces/ResultCallback;

    .line 42
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/utils/ReqUtil;->buildWebParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "exitDialogUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    if-eqz p5, :cond_0

    .line 46
    const-string v1, "\u5730\u5740\u4e3a\u7a7a"

    invoke-interface {p5, v1}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void

    .line 52
    :cond_1
    new-instance v1, Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-direct {v1, p0}, Lcom/maya/sdk/framework/web/SdkWebDialog;-><init>(Landroid/content/Context;)V

    .line 53
    .local v1, "webDialog":Lcom/maya/sdk/framework/web/SdkWebDialog;
    invoke-virtual {v1, p3}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setTransparent(Z)V

    .line 54
    invoke-virtual {v1, p2}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setCanBackClose(Z)V

    .line 55
    invoke-virtual {v1, p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setUrl(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, p2}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setCancelable(Z)V

    .line 57
    invoke-virtual {v1, p2}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setCanceledOnTouchOutside(Z)V

    .line 58
    new-instance v2, Lcom/maya/sdk/s/core/utils/SdkUtil$1;

    invoke-direct {v2, p5}, Lcom/maya/sdk/s/core/utils/SdkUtil$1;-><init>(Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 68
    invoke-virtual {v1, p4}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setJsInterface(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->show()V

    .line 71
    return-void
.end method

.method public static openWebActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdkUrl"    # Ljava/lang/String;

    .line 24
    invoke-static {p0, p1}, Lcom/maya/sdk/s/core/utils/SdkUtil;->showSdkWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static openWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "canBack"    # Z
    .param p3, "isTransparent"    # Z
    .param p4, "sdkcallback"    # Lcom/maya/sdk/framework/interfaces/ResultCallback;

    .line 20
    invoke-static {p0, p1, p2, p3, p4}, Lcom/maya/sdk/framework/web/SdkWebManager;->showSdkWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 21
    return-void
.end method

.method public static showSdkWebActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdkUrl"    # Ljava/lang/String;

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    return-void

    .line 111
    :cond_0
    invoke-static {p0, p1}, Lcom/maya/sdk/s/core/utils/SdkUtil;->addSdkParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/maya/sdk/s/core/utils/SdkUtil;->showWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static showWebActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdkUrl"    # Ljava/lang/String;

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/maya/sdk/s/core/activity/SdkWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public static showWithOtherWebsite(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdkUrl"    # Ljava/lang/String;

    .line 82
    if-nez p1, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/web/SdkWebManager;->addSdkParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->toUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    return-void
.end method
