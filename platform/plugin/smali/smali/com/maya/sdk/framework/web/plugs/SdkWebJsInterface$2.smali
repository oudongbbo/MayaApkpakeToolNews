.class Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$2;
.super Ljava/lang/Object;
.source "SdkWebJsInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->enClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;

    .line 71
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$2;->this$0:Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$2;->this$0:Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;

    iget-object v0, v0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsWebview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface$2;->this$0:Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;

    iget-object v0, v0, Lcom/maya/sdk/framework/web/plugs/SdkWebJsInterface;->jsWebview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 77
    :cond_0
    return-void
.end method
