.class Lcom/maya/sdk/s/app/FMSdkCore$9$1$1$1;
.super Ljava/lang/Object;
.source "FMSdkCore.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMSdkCore$9$1$1;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/maya/sdk/s/app/FMSdkCore$9$1$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMSdkCore$9$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/maya/sdk/s/app/FMSdkCore$9$1$1;

    .line 422
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMSdkCore$9$1$1$1;->this$3:Lcom/maya/sdk/s/app/FMSdkCore$9$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$9$1$1$1;->this$3:Lcom/maya/sdk/s/app/FMSdkCore$9$1$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$9$1$1;->this$2:Lcom/maya/sdk/s/app/FMSdkCore$9$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$9$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$9;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$9;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onFail(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$9$1$1$1;->this$3:Lcom/maya/sdk/s/app/FMSdkCore$9$1$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$9$1$1;->this$2:Lcom/maya/sdk/s/app/FMSdkCore$9$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$9$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$9;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$9;->val$callback:Lcom/maya/sdk/framework/interfaces/ResultCallback;

    invoke-interface {v0}, Lcom/maya/sdk/framework/interfaces/ResultCallback;->onSuccess()V

    .line 427
    return-void
.end method
