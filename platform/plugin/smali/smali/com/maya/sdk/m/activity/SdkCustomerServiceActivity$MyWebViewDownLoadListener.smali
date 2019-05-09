.class Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$MyWebViewDownLoadListener;
.super Ljava/lang/Object;
.source "SdkCustomerServiceActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewDownLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;


# direct methods
.method private constructor <init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$MyWebViewDownLoadListener;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;
    .param p2, "x1"    # Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$1;

    .line 250
    invoke-direct {p0, p1}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$MyWebViewDownLoadListener;-><init>(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .line 256
    iget-object v0, p0, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity$MyWebViewDownLoadListener;->this$0:Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;

    # getter for: Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;->access$200(Lcom/maya/sdk/m/activity/SdkCustomerServiceActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->toUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    return-void
.end method
