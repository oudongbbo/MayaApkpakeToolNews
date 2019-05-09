.class public Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;
.super Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;
.source "SdkCustomerServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "myWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;


# direct methods
.method public constructor <init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;
    .param p2, "context"    # Landroid/content/Context;

    .line 264
    iput-object p1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    .line 265
    invoke-direct {p0, p2}, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;-><init>(Landroid/content/Context;)V

    .line 267
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    const-string v1, "myWeb onPageFinished"

    # invokes: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sendLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 294
    invoke-super {p0, p1, p2}, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # invokes: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->removeTimeoutCheckingRunnable()V
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$600(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)V

    .line 298
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$200(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->LOAD_TIMEOUT:J
    invoke-static {v1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$800(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)J

    move-result-wide v1

    invoke-static {v0, p2, v1, v2}, Lcom/maya/sdk/framework/web/webview/WebviewUtils;->isLoadOneTime(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    const-string v1, "\u5f53\u524d\u9875\u9762:\u8d85\u65f6\u524d\u52a0\u8f7d\u5b8c\u6210"

    # invokes: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sendLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$200(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/maya/sdk/framework/web/webview/WebviewUtils;->setUrlLoadCount(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    const-string v1, "\u5f53\u524d\u9875\u9762:\u8d85\u65f6\u540e\u52a0\u8f7d\u5b8c\u6210"

    # invokes: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sendLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 305
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # invokes: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->hideWaitDialog()V
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$1000(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)V

    .line 306
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$300(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Lcom/maya/sdk/framework/web/webview/WebViewBase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setVisibility(I)V

    .line 307
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .line 271
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    const-string v1, "myWeb onPageStarted"

    # invokes: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sendLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 272
    invoke-super {p0, p1, p2, p3}, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 274
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # setter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->currentUrl:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$102(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # invokes: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->removeTimeoutCheckingRunnable()V
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$600(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)V

    .line 277
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    new-instance v1, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient$1;-><init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V

    # setter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->runnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$702(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 284
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->runnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$700(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->LOAD_TIMEOUT:J
    invoke-static {v1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$800(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/web/webview/WebviewHandler;->postDelayed(Ljava/lang/Runnable;J)V

    .line 286
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$200(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, p2, v1, v2}, Lcom/maya/sdk/framework/web/webview/WebviewUtils;->setUrlLoadTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 288
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    iget-object v1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$200(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->showWaitDialog(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$900(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Landroid/content/Context;)V

    .line 289
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failedUrl"    # Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    const-string v1, "myWeb onReceivedError"

    # invokes: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sendLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # invokes: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->removeTimeoutCheckingRunnable()V
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$600(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)V

    .line 314
    const-wide/16 v0, 0xc8

    const/4 v2, 0x1

    const/4 v3, -0x8

    if-ne v3, p2, :cond_1

    .line 316
    iget-object v3, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$200(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p4}, Lcom/maya/sdk/framework/web/webview/WebviewUtils;->getUrlLoadCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 317
    .local v3, "count":I
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 318
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8d85\u65f6\u5904\u7406\uff0c\u51c6\u5907\u52a0\u8f7d\u7b2c"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u6b21"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sendLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$200(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object v0

    add-int/lit8 v1, v3, 0x1

    invoke-static {v0, p4, v1}, Lcom/maya/sdk/framework/web/webview/WebviewUtils;->setUrlLoadCount(Landroid/content/Context;Ljava/lang/String;I)V

    .line 320
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    iget-object v0, v0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->showWebHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 322
    :cond_0
    iget-object v4, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    iget-object v4, v4, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->showErrorWebHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 324
    .end local v3    # "count":I
    :goto_0
    goto :goto_1

    .line 326
    :cond_1
    iget-object v3, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    iget-object v3, v3, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->showErrorWebHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 329
    :goto_1
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "paramWebView"    # Landroid/webkit/WebView;
    .param p2, "paramSslErrorHandler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "paramSslError"    # Landroid/net/http/SslError;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    const-string v1, "myWeb onReceivedSslError"

    # invokes: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sendLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 337
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .line 341
    invoke-super {p0, p1, p2}, Lcom/maya/sdk/framework/web/plugs/SdkWebveiwClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
