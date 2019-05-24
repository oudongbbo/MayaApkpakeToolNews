.class Lcom/maya/sdk/framework/web/SdkWebDialog$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/framework/web/SdkWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/maya/sdk/framework/web/SdkWebDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/web/SdkWebDialog;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->a:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4

    .line 136
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 138
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->a:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-static {p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->a(Lcom/maya/sdk/framework/web/SdkWebDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->a:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-static {p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->b(Lcom/maya/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;

    move-result-object p1

    const-string v3, "\u7f51\u9875\u5df2\u6d88\u5931\uff0c\u5373\u5c06\u5173\u95ed.."

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 141
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->a:Lcom/maya/sdk/framework/web/SdkWebDialog;

    iget-object p1, p1, Lcom/maya/sdk/framework/web/SdkWebDialog;->b:Landroid/os/Handler;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->a:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-static {p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->b(Lcom/maya/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->isNetConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->a:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-static {p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->c(Lcom/maya/sdk/framework/web/SdkWebDialog;)Lcom/maya/sdk/framework/web/webview/WebViewBase;

    move-result-object p1

    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->a:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-static {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->a(Lcom/maya/sdk/framework/web/SdkWebDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->loadUrl(Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->a:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-static {p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->d(Lcom/maya/sdk/framework/web/SdkWebDialog;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->a:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-static {p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->c(Lcom/maya/sdk/framework/web/SdkWebDialog;)Lcom/maya/sdk/framework/web/webview/WebViewBase;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/maya/sdk/framework/web/webview/WebViewBase;->setBackgroundColor(I)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->a:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-static {p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->b(Lcom/maya/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;

    move-result-object p1

    const-string v3, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u5373\u5c06\u5173\u95ed.."

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 155
    iget-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$1;->a:Lcom/maya/sdk/framework/web/SdkWebDialog;

    iget-object p1, p1, Lcom/maya/sdk/framework/web/SdkWebDialog;->b:Landroid/os/Handler;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method
