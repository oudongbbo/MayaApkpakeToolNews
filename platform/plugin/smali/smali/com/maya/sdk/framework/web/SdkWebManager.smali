.class public Lcom/maya/sdk/framework/web/SdkWebManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSdkParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/utils/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static showSdkPayDialog(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/pay/a;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 26
    invoke-static {p0, p1, p2, v0}, Lcom/maya/sdk/framework/utils/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/pay/a;Z)Ljava/lang/String;

    move-result-object p1

    .line 27
    new-instance v0, Lcom/maya/sdk/framework/pay/PayWebDialog;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/maya/sdk/framework/pay/PayWebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;Lcom/maya/sdk/framework/pay/a;)V

    .line 28
    invoke-virtual {v0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->show()V

    return-void
.end method

.method public static showSdkWebActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/web/SdkWebManager;->addSdkParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/maya/sdk/framework/web/SdkWebManager;->showWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showSdkWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 1

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    const-string p0, "\u5730\u5740\u4e3a\u7a7a"

    .line 77
    invoke-interface {p4, p0}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-static {p0, p1}, Lcom/maya/sdk/framework/web/SdkWebManager;->addSdkParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p0, p1, p2, p3, p4}, Lcom/maya/sdk/framework/web/SdkWebManager;->showWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V

    return-void
.end method

.method public static showWebActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/maya/sdk/framework/web/SdkWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "url"

    .line 100
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showWebDialog(Landroid/content/Context;Ljava/lang/String;ZZLcom/maya/sdk/framework/interfaces/ResultCallback;)V
    .locals 1

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    const-string p0, "\u5730\u5740\u4e3a\u7a7a"

    .line 45
    invoke-interface {p4, p0}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 51
    :cond_1
    new-instance v0, Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/web/SdkWebDialog;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0, p3}, Lcom/maya/sdk/framework/web/SdkWebDialog;->a(Z)V

    .line 53
    invoke-virtual {v0, p2}, Lcom/maya/sdk/framework/web/SdkWebDialog;->b(Z)V

    .line 54
    invoke-virtual {v0, p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->a(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p2}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setCancelable(Z)V

    .line 56
    invoke-virtual {v0, p2}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setCanceledOnTouchOutside(Z)V

    .line 57
    new-instance p0, Lcom/maya/sdk/framework/web/SdkWebManager$1;

    invoke-direct {p0, p4}, Lcom/maya/sdk/framework/web/SdkWebManager$1;-><init>(Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    invoke-virtual {v0, p0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 p0, 0x0

    .line 67
    invoke-virtual {v0, p0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->a(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->show()V

    return-void
.end method
