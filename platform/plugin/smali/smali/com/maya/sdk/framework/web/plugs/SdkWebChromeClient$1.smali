.class Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$1;
.super Ljava/lang/Object;
.source "SdkWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    .line 66
    iput-object p1, p0, Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient$1;->this$0:Lcom/maya/sdk/framework/web/plugs/SdkWebChromeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 70
    const/4 v0, 0x1

    return v0
.end method
