.class Lcom/maya/sdk/framework/pay/PayWebDialog$3;
.super Landroid/os/Handler;
.source "PayWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/framework/pay/PayWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/pay/PayWebDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/pay/PayWebDialog;

    .line 186
    iput-object p1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "messaage"    # Landroid/os/Message;

    .line 188
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    # getter for: Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/maya/sdk/framework/web/webview/WebViewBase;
    invoke-static {v0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->access$000(Lcom/maya/sdk/framework/pay/PayWebDialog;)Lcom/maya/sdk/framework/web/webview/WebViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    # getter for: Lcom/maya/sdk/framework/pay/PayWebDialog;->mWebView:Lcom/maya/sdk/framework/web/webview/WebViewBase;
    invoke-static {v0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->access$000(Lcom/maya/sdk/framework/pay/PayWebDialog;)Lcom/maya/sdk/framework/web/webview/WebViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_0
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/pay/PayWebDialog;->dismiss()V

    .line 202
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 204
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 215
    :pswitch_0
    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    const-string v2, "\u652f\u4ed8\u8df3\u8f6c"

    # invokes: Lcom/maya/sdk/framework/pay/PayWebDialog;->printLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/maya/sdk/framework/pay/PayWebDialog;->access$600(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V

    .line 216
    goto :goto_1

    .line 212
    :pswitch_1
    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    const-string v2, "maya_pay_state_cancel"

    iget-object v3, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    # getter for: Lcom/maya/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/maya/sdk/framework/pay/PayWebDialog;->access$300(Lcom/maya/sdk/framework/pay/PayWebDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/maya/sdk/framework/pay/PayWebDialog;->callbackCancel(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/maya/sdk/framework/pay/PayWebDialog;->access$500(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V

    .line 213
    goto :goto_1

    .line 206
    :pswitch_2
    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    # invokes: Lcom/maya/sdk/framework/pay/PayWebDialog;->callbackSuccess()V
    invoke-static {v1}, Lcom/maya/sdk/framework/pay/PayWebDialog;->access$200(Lcom/maya/sdk/framework/pay/PayWebDialog;)V

    .line 207
    goto :goto_1

    .line 209
    :pswitch_3
    iget-object v1, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    const-string v2, "maya_pay_state_fail"

    iget-object v3, p0, Lcom/maya/sdk/framework/pay/PayWebDialog$3;->this$0:Lcom/maya/sdk/framework/pay/PayWebDialog;

    # getter for: Lcom/maya/sdk/framework/pay/PayWebDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/maya/sdk/framework/pay/PayWebDialog;->access$300(Lcom/maya/sdk/framework/pay/PayWebDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/maya/sdk/framework/pay/PayWebDialog;->callbackFail(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/maya/sdk/framework/pay/PayWebDialog;->access$400(Lcom/maya/sdk/framework/pay/PayWebDialog;Ljava/lang/String;)V

    .line 210
    nop

    .line 221
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
