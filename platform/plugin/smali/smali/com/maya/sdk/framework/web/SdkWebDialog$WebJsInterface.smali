.class public Lcom/maya/sdk/framework/web/SdkWebDialog$WebJsInterface;
.super Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/framework/web/SdkWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebJsInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;


# direct methods
.method public constructor <init>(Lcom/maya/sdk/framework/web/SdkWebDialog;Landroid/content/Context;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$WebJsInterface;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    .line 228
    check-cast p2, Landroid/app/Activity;

    invoke-static {p1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->c(Lcom/maya/sdk/framework/web/SdkWebDialog;)Lcom/maya/sdk/framework/web/webview/WebViewBase;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public enClose()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 242
    invoke-super {p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->enClose()V

    const-string v0, "wap \u8c03\u7528enClose"

    .line 243
    invoke-static {v0}, Lcom/maya/sdk/framework/utils/c;->b(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$WebJsInterface;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->c()V

    return-void
.end method

.method public enRefresh()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 234
    invoke-super {p0}, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->enRefresh()V

    const-string v0, "wap \u8c03\u7528enRefresh"

    .line 235
    invoke-static {v0}, Lcom/maya/sdk/framework/utils/c;->b(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$WebJsInterface;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->b()V

    return-void
.end method
