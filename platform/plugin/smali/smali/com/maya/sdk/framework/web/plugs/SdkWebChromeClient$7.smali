.class Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$7;
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

.field final synthetic val$et:Landroid/widget/EditText;

.field final synthetic val$result:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    .line 147
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$7;->this$0:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    iput-object p2, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$7;->val$result:Landroid/webkit/JsPromptResult;

    iput-object p3, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$7;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 150
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$7;->val$result:Landroid/webkit/JsPromptResult;

    iget-object v1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$7;->val$et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 151
    return-void
.end method
