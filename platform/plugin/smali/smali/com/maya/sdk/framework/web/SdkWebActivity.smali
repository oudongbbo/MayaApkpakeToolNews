.class public Lcom/maya/sdk/framework/web/SdkWebActivity;
.super Landroid/app/Activity;
.source "SdkWebActivity.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private url:Ljava/lang/String;

.field private webDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;


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
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->webDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/framework/web/SdkWebDialog;->onActivityResult(IILandroid/content/Intent;)V

    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 64
    return-void
.end method

.method public onActivityResultAboveL(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->webDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/maya/sdk/framework/web/SdkWebDialog;->onActivityResultAboveL(IILandroid/content/Intent;)V

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    iput-object p0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p0}, Lcom/maya/sdk/framework/web/SdkWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->url:Ljava/lang/String;

    .line 29
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Web\u9875\u52a0\u8f7durl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    return-void

    .line 35
    :cond_0
    new-instance v0, Lcom/maya/sdk/framework/web/SdkWebDialog;

    iget-object v1, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/maya/sdk/framework/web/SdkWebDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->webDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->webDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setTransparent(Z)V

    .line 37
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->webDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setCanBackClose(Z)V

    .line 38
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->webDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;

    iget-object v1, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setUrl(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->webDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setCancelable(Z)V

    .line 40
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->webDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->webDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;

    new-instance v1, Lcom/maya/sdk/framework/web/SdkWebActivity$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/framework/web/SdkWebActivity$1;-><init>(Lcom/maya/sdk/framework/web/SdkWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 49
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->webDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->setJsInterface(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->webDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->show()V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebActivity;->webDialog:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->onDestroy()V

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 58
    return-void
.end method
