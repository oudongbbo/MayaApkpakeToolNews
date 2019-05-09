.class Lcom/maya/sdk/s/app/FMSdkCore$4$1;
.super Ljava/lang/Object;
.source "FMSdkCore.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMSdkCore$4;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/s/app/FMSdkCore$4;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMSdkCore$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/s/app/FMSdkCore$4;

    .line 187
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMSdkCore$4$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 214
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$4$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$4;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$4;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    # getter for: Lcom/maya/sdk/s/app/FMSdkCore;->sdkManager:Lcom/maya/sdk/s/core/SdkManager;
    invoke-static {v0}, Lcom/maya/sdk/s/app/FMSdkCore;->access$200(Lcom/maya/sdk/s/app/FMSdkCore;)Lcom/maya/sdk/s/core/SdkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore$4$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$4;

    iget-object v1, v1, Lcom/maya/sdk/s/app/FMSdkCore$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/maya/sdk/s/app/FMSdkCore$4$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$4;

    iget-object v2, v2, Lcom/maya/sdk/s/app/FMSdkCore$4;->val$payinfos:Lcom/maya/sdk/framework/pay/PayInfoBean;

    new-instance v3, Lcom/maya/sdk/s/app/FMSdkCore$4$1$1;

    invoke-direct {v3, p0}, Lcom/maya/sdk/s/app/FMSdkCore$4$1$1;-><init>(Lcom/maya/sdk/s/app/FMSdkCore$4$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/maya/sdk/s/core/SdkManager;->userPay(Landroid/content/Context;Lcom/maya/sdk/framework/pay/PayInfoBean;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 210
    return-void
.end method
