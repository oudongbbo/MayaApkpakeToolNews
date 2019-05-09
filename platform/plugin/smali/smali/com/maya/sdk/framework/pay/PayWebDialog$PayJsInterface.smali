.class public Lcom/maya/sdk/framework/pay/PayWebDialog$PayJsInterface;
.super Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;
.source "PayWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/framework/pay/PayWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PayJsInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;


# direct methods
.method public constructor <init>(Lcom/maya/sdk/framework/pay/PayWebDialog;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/maya/sdk/framework/pay/PayWebDialog;
    .param p2, "context"    # Landroid/content/Context;

    .line 124
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    .line 125
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    # getter for: Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/maya/sdk/framework/web/webview/WebViewBase;
    invoke-static {p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->access$000(Lcom/maya/sdk/framework/pay/PayWebDialog;)Lcom/maya/sdk/framework/web/webview/WebViewBase;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 126
    return-void
.end method


# virtual methods
.method public payClose()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 129
    invoke-super {p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->payClose()V

    .line 130
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->payWebDismiss(I)V

    .line 131
    return-void
.end method

.method public payDismiss(I)V
    .locals 1
    .param p1, "type"    # I

    .line 156
    invoke-super {p0, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->payDismiss(I)V

    .line 157
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    invoke-virtual {v0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->payWebDismiss(I)V

    .line 158
    return-void
.end method

.method public payFail()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 145
    invoke-super {p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->payFail()V

    .line 146
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->payWebDismiss(I)V

    .line 147
    return-void
.end method

.method public payFail(I)V
    .locals 3
    .param p1, "type"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 150
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u652f\u4ed8\u9875\u9762\u5145\u503c[\u5931\u8d25]\u8c03\u7528:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    # setter for: Lcom/maya/sdk/framework/pay/PayWebDialog;->payType:I
    invoke-static {v0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->access$102(Lcom/maya/sdk/framework/pay/PayWebDialog;I)I

    .line 152
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->payWebDismiss(I)V

    .line 153
    return-void
.end method

.method public paySuccess()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 134
    invoke-super {p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->paySuccess()V

    .line 135
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->payWebDismiss(I)V

    .line 136
    return-void
.end method

.method public paySuccess(I)V
    .locals 3
    .param p1, "type"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 139
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u652f\u4ed8\u9875\u9762\u5145\u503c\u3010\u6210\u529f\u3011\u8c03\u7528:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    # setter for: Lcom/maya/sdk/framework/pay/PayWebDialog;->payType:I
    invoke-static {v0, p1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->access$102(Lcom/maya/sdk/framework/pay/PayWebDialog;I)I

    .line 141
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$PayJsInterface;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->payWebDismiss(I)V

    .line 142
    return-void
.end method
