.class Lcom/maya/sdk/s/app/FMSdkCore$2$1;
.super Ljava/lang/Object;
.source "FMSdkCore.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMSdkCore$2;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/s/app/FMSdkCore$2;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMSdkCore$2;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/s/app/FMSdkCore$2;

    .line 112
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMSdkCore$2$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$2;

    iput-object p2, p0, Lcom/maya/sdk/s/app/FMSdkCore$2$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$2$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$2;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$2;->val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$2$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$2;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$2;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore$2$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$2;

    iget-object v1, v1, Lcom/maya/sdk/s/app/FMSdkCore$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/FMSdkCore;->showFloat(Landroid/content/Context;)V

    .line 115
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$2$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$2;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$2;->val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore$2$1;->val$bundle:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 116
    return-void
.end method
