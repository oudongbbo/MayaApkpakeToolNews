.class Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient$1;
.super Ljava/lang/Object;
.source "SdkCustomerServiceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;

    .line 277
    iput-object p1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient$1;->this$1:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;

    iput-object p2, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient$1;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 280
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient$1;->this$1:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;

    iget-object v0, v0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    const-string v1, "myWeb timeout.."

    # invokes: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->sendLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$500(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient$1;->this$1:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;

    iget-object v1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient$1;->val$view:Landroid/webkit/WebView;

    const-string v2, "\u7f51\u7edc\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5."

    iget-object v3, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient$1;->val$url:Ljava/lang/String;

    const/4 v4, -0x8

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$myWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method
