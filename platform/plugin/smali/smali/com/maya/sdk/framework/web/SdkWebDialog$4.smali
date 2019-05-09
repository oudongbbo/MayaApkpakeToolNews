.class Lcom/maya/sdk/framework/web/SdkWebDialog$4;
.super Ljava/lang/Object;
.source "SdkWebDialog.java"

# interfaces
.implements Lcom/maya/sdk/framework/web/SdkWebCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/framework/web/SdkWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/web/SdkWebDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/web/SdkWebDialog;

    .line 366
    iput-object p1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$4;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadError(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 388
    return-void
.end method

.method public loadFinish()V
    .locals 0

    .line 383
    return-void
.end method

.method public loadStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 378
    return-void
.end method

.method public loading(I)V
    .locals 4
    .param p1, "progress"    # I

    .line 371
    const-string v0, "maya_loading"

    iget-object v1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$4;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    # getter for: Lcom/maya/sdk/framework/web/SdkWebDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/maya/sdk/framework/web/SdkWebDialog;->access$200(Lcom/maya/sdk/framework/web/SdkWebDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "loadingMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/framework/web/SdkWebDialog$4;->this$0:Lcom/maya/sdk/framework/web/SdkWebDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/maya/sdk/framework/web/SdkWebDialog;->updateWaitDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/maya/sdk/framework/web/SdkWebDialog;->access$1000(Lcom/maya/sdk/framework/web/SdkWebDialog;Ljava/lang/String;)V

    .line 373
    return-void
.end method
