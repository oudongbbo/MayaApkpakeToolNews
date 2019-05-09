.class Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$JsObj;
.super Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;
.source "SdkCustomerServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JsObj"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;


# direct methods
.method public constructor <init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;
    .param p2, "context"    # Landroid/content/Context;

    .line 227
    iput-object p1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$JsObj;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    .line 228
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;
    invoke-static {p1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$300(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Lcom/maya/sdk/framework/web/webview/WebViewBase;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 229
    return-void
.end method


# virtual methods
.method public enClose()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 241
    invoke-super {p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->enClose()V

    .line 242
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$JsObj;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    const-string v1, "wap \u8c03\u7528enClose"

    # invokes: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sendLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$JsObj;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    iget-object v0, v0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->closeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 244
    return-void
.end method

.method public enRefresh()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$JsObj;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    const-string v1, "wap \u8c03\u7528enRefresh"

    # invokes: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sendLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$JsObj;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    iget-object v0, v0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->showWebHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 236
    return-void
.end method
