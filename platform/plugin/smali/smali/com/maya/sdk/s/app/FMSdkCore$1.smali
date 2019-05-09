.class Lcom/maya/sdk/s/app/FMSdkCore$1;
.super Ljava/lang/Object;
.source "FMSdkCore.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMSdkCore;->setUserLogoutCallback(Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/FMSdkCore;

.field final synthetic val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMSdkCore;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/FMSdkCore;

    .line 73
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMSdkCore$1;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    iput-object p2, p0, Lcom/maya/sdk/s/app/FMSdkCore$1;->val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$1;->val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onCancel(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$1;->val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 77
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$1;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    # getter for: Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/s/app/FMSdkCore;->access$000(Lcom/maya/sdk/s/app/FMSdkCore;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$1;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    # getter for: Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/s/app/FMSdkCore;->access$000(Lcom/maya/sdk/s/app/FMSdkCore;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$1;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    # getter for: Lcom/maya/sdk/s/app/FMSdkCore;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/maya/sdk/s/app/FMSdkCore;->access$000(Lcom/maya/sdk/s/app/FMSdkCore;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->setUserVname(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/maya/sdk/s/app/FMSdkCore;->isLoginSuccess:Z

    .line 81
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$1;->val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method
