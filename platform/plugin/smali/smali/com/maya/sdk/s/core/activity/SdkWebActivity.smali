.class public Lcom/maya/sdk/s/core/activity/SdkWebActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/maya/sdk/framework/web/SdkWebDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->d()V

    .line 91
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->dismiss()V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/framework/web/SdkWebDialog;->a(IILandroid/content/Intent;)V

    .line 77
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    iput-object p0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->b:Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->a:Ljava/lang/String;

    .line 36
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Web\u9875\u52a0\u8f7durl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 42
    :cond_0
    new-instance p1, Lcom/maya/sdk/framework/web/SdkWebDialog;

    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    .line 43
    iget-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->a(Z)V

    .line 44
    iget-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->b(Z)V

    .line 45
    iget-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->a(Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setCancelable(Z)V

    .line 47
    iget-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setCanceledOnTouchOutside(Z)V

    .line 48
    iget-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    new-instance v0, Lcom/maya/sdk/s/core/activity/SdkWebActivity$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/core/activity/SdkWebActivity$1;-><init>(Lcom/maya/sdk/s/core/activity/SdkWebActivity;)V

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 57
    new-instance p1, Lcom/maya/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;

    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    iget-object v1, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->b:Landroid/content/Context;

    invoke-direct {p1, p0, v0, v1}, Lcom/maya/sdk/s/core/activity/SdkWebActivity$SdkWebJavaScriptInterface;-><init>(Lcom/maya/sdk/s/core/activity/SdkWebActivity;Lcom/maya/sdk/framework/web/SdkWebDialog;Landroid/content/Context;)V

    .line 59
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->a(Ljava/lang/Object;)V

    .line 61
    iget-object p1, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->show()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/maya/sdk/s/core/activity/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->d()V

    .line 69
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
