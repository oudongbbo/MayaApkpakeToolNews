.class Lcom/maya/sdk/framework/web/SdkWebDialog$1;
.super Landroid/os/Handler;
.source "SdkWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/framework/web/SdkWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/web/SdkWebDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/web/SdkWebDialog;

    .line 132
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 136
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 138
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/maya/sdk/framework/web/SdkWebDialog;->currentUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->access$100(Lcom/maya/sdk/framework/web/SdkWebDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/maya/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->access$200(Lcom/maya/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "\u7f51\u9875\u5df2\u6d88\u5931\uff0c\u5373\u5c06\u5173\u95ed.."

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    iget-object v0, v0, Lcom/maya/sdk/framework/web/SdkWebDialog;->closeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 142
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/maya/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->access$200(Lcom/maya/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->isNetConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;
    invoke-static {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->access$300(Lcom/maya/sdk/framework/web/SdkWebDialog;)Lcom/maya/sdk/framework/web/webview/WebViewBase;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/maya/sdk/framework/web/SdkWebDialog;->currentUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->access$100(Lcom/maya/sdk/framework/web/SdkWebDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->loadUrl(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/maya/sdk/framework/web/SdkWebDialog;->isTransparent:Z
    invoke-static {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->access$400(Lcom/maya/sdk/framework/web/SdkWebDialog;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/maya/sdk/framework/web/SdkWebDialog;->webView:Lcom/maya/sdk/framework/web/webview/WebViewBase;
    invoke-static {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->access$300(Lcom/maya/sdk/framework/web/SdkWebDialog;)Lcom/maya/sdk/framework/web/webview/WebViewBase;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setBackgroundColor(I)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/maya/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->access$200(Lcom/maya/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u5373\u5c06\u5173\u95ed.."

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    iget-object v0, v0, Lcom/maya/sdk/framework/web/SdkWebDialog;->closeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 158
    :cond_2
    :goto_0
    return-void
.end method
