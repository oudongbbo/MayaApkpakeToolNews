.class public Lcom/maya/sdk/framework/web/SdkWebManager;
.super Ljava/lang/Object;
.source "SdkWebManager.java"


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

    .line 116
    move-object v0, p1

    .line 117
    .local v0, "url_fixed":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/maya/sdk/framework/utils/ReqUtil;->buildWebParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    return-object v0
.end method

.method public static showSdkPayDialog(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "payinfo"    # Lcom/maya/sdk/framework/pay/PayInfoBean;
    .param p3, "paycallback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 26
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/maya/sdk/framework/utils/ReqUtil;->buildPayParams(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/pay/PayInfoBean;Z)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/maya/sdk/framework/pay/PayWebDialog;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/maya/sdk/framework/pay/PayWebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;Lcom/maya/sdk/framework/pay/PayInfoBean;)V

    .line 28
    .local v1, "payView":Lcom/maya/sdk/framework/pay/PayWebDialog;
    invoke-virtual {v1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->show()V

    .line 29
    return-void
.end method

.method public static showSdkWebActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdkUrl"    # Ljava/lang/String;

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    return-void

    .line 110
    :cond_0
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/web/SdkWebManager;->addSdkParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/maya/sdk/framework/web/SdkWebManager;->showWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static showSdkWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "canBack"    # Z
    .param p3, "isTransparent"    # Z
    .param p4, "sdkcallback"    # Lcom/maya/sdk/framework/interfaces/ResultCallback;

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    if-eqz p4, :cond_0

    .line 77
    const-string v0, "\u5730\u5740\u4e3a\u7a7a"

    invoke-interface {p4, v0}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/web/SdkWebManager;->addSdkParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "newUrl":Ljava/lang/String;
    invoke-static {p0, v0, p2, p3, p4}, Lcom/maya/sdk/framework/web/SdkWebManager;->showWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 85
    return-void
.end method

.method public static showWebActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sdkUrl"    # Ljava/lang/String;

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/maya/sdk/framework/web/SdkWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method public static showWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "canBack"    # Z
    .param p3, "isTransparent"    # Z
    .param p4, "sdkcallback"    # Lcom/maya/sdk/framework/interfaces/ResultCallback;

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    if-eqz p4, :cond_0

    .line 45
    const-string v0, "\u5730\u5740\u4e3a\u7a7a"

    invoke-interface {p4, v0}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void

    .line 51
    :cond_1
    new-instance v0, Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/web/SdkWebDialog;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "webDialog":Lcom/maya/sdk/framework/web/SdkWebDialog;
    invoke-virtual {v0, p3}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setTransparent(Z)V

    .line 53
    invoke-virtual {v0, p2}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setCanBackClose(Z)V

    .line 54
    invoke-virtual {v0, p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setUrl(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p2}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setCancelable(Z)V

    .line 56
    invoke-virtual {v0, p2}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setCanceledOnTouchOutside(Z)V

    .line 57
    new-instance v1, Lcom/maya/sdk/framework/web/SdkWebManager$1;

    invoke-direct {v1, p4}, Lcom/maya/sdk/framework/web/SdkWebManager$1;-><init>(Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setJsInterface(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->show()V

    .line 70
    return-void
.end method
