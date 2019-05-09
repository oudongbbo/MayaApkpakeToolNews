.class Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$2;
.super Landroid/os/Handler;
.source "SdkCustomerServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    .line 139
    iput-object p1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$2;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 143
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 145
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$2;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->currentUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$100(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$2;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$200(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "\u7f51\u9875\u5df2\u6d88\u5931\uff0c\u5373\u5c06\u5173\u95ed.."

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$2;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    iget-object v0, v0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->closeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 149
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$2;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$200(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->isNetConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$2;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$300(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Lcom/maya/sdk/framework/web/webview/WebViewBase;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$2;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->currentUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$100(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->loadUrl(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$2;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->isTransparent:Z
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$400(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$2;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$300(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Lcom/maya/sdk/framework/web/webview/WebViewBase;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setBackgroundColor(I)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$2;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$200(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u5373\u5c06\u5173\u95ed.."

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$2;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    iget-object v0, v0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->closeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 165
    :cond_2
    :goto_0
    return-void
.end method
