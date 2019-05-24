.class public Lcom/maya/sdk/framework/web/SdkWebActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/maya/sdk/framework/web/SdkWebDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/framework/web/SdkWebDialog;->a(IILandroid/content/Intent;)V

    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    iput-object p0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->b:Landroid/content/Context;

    .line 27
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/SdkWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->a:Ljava/lang/String;

    .line 29
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Web\u9875\u52a0\u8f7durl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 35
    :cond_0
    new-instance p1, Lcom/maya/sdk/framework/web/SdkWebDialog;

    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    .line 36
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->a(Z)V

    .line 37
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->b(Z)V

    .line 38
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->a(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setCancelable(Z)V

    .line 40
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    new-instance v0, Lcom/maya/sdk/framework/web/SdkWebActivity$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/web/SdkWebActivity$1;-><init>(Lcom/maya/sdk/framework/web/SdkWebActivity;)V

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 49
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->a(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->show()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->c:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->d()V

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
