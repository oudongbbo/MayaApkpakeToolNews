.class Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$6;
.super Ljava/lang/Object;
.source "SdkWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

.field final synthetic val$result:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;Landroid/webkit/JsPromptResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    .line 153
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$6;->this$0:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    iput-object p2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$6;->val$result:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 156
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$6;->val$result:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 157
    return-void
.end method
