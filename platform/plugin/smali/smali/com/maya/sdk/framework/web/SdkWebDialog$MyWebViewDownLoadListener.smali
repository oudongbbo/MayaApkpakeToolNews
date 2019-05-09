.class Lcom/maya/sdk/framework/web/SdkWebDialog$MyWebViewDownLoadListener;
.super Ljava/lang/Object;
.source "SdkWebDialog.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/framework/web/SdkWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewDownLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;


# direct methods
.method private constructor <init>(Lcom/maya/sdk/framework/web/SdkWebDialog;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$MyWebViewDownLoadListener;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/maya/sdk/framework/web/SdkWebDialog;Lcom/maya/sdk/framework/web/SdkWebDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/maya/sdk/framework/web/SdkWebDialog;
    .param p2, "x1"    # Lcom/maya/sdk/framework/web/SdkWebDialog$1;

    .line 261
    invoke-direct {p0, p1}, Lcom/maya/sdk/framework/web/SdkWebDialog$MyWebViewDownLoadListener;-><init>(Lcom/maya/sdk/framework/web/SdkWebDialog;)V

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

    .line 267
    iget-object v0, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$MyWebViewDownLoadListener;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/maya/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/framework/web/SdkWebDialog;->access$200(Lcom/maya/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->toUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    return-void
.end method
