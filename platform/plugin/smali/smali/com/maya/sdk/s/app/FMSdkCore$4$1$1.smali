.class Lcom/maya/sdk/s/app/FMSdkCore$4$1$1;
.super Ljava/lang/Object;
.source "FMSdkCore.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMSdkCore$4$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/maya/sdk/s/app/FMSdkCore$4$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMSdkCore$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/maya/sdk/s/app/FMSdkCore$4$1;

    .line 190
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMSdkCore$4$1$1;->this$2:Lcom/maya/sdk/s/app/FMSdkCore$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$4$1$1;->this$2:Lcom/maya/sdk/s/app/FMSdkCore$4$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$4$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$4;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$4;->val$payCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onCancel(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$4$1$1;->this$2:Lcom/maya/sdk/s/app/FMSdkCore$4$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$4$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$4;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$4;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore$4$1$1;->this$2:Lcom/maya/sdk/s/app/FMSdkCore$4$1;

    iget-object v1, v1, Lcom/maya/sdk/s/app/FMSdkCore$4$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$4;

    iget-object v1, v1, Lcom/maya/sdk/s/app/FMSdkCore$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/FMSdkCore;->showFloat(Landroid/content/Context;)V

    .line 208
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$4$1$1;->this$2:Lcom/maya/sdk/s/app/FMSdkCore$4$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$4$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$4;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$4;->val$payCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$4$1$1;->this$2:Lcom/maya/sdk/s/app/FMSdkCore$4$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$4$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$4;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$4;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore$4$1$1;->this$2:Lcom/maya/sdk/s/app/FMSdkCore$4$1;

    iget-object v1, v1, Lcom/maya/sdk/s/app/FMSdkCore$4$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$4;

    iget-object v1, v1, Lcom/maya/sdk/s/app/FMSdkCore$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/FMSdkCore;->showFloat(Landroid/content/Context;)V

    .line 202
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 193
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$4$1$1;->this$2:Lcom/maya/sdk/s/app/FMSdkCore$4$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$4$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$4;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$4;->val$payCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 195
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$4$1$1;->this$2:Lcom/maya/sdk/s/app/FMSdkCore$4$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$4$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$4;

    iget-object v0, v0, Lcom/maya/sdk/s/app/FMSdkCore$4;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore$4$1$1;->this$2:Lcom/maya/sdk/s/app/FMSdkCore$4$1;

    iget-object v1, v1, Lcom/maya/sdk/s/app/FMSdkCore$4$1;->this$1:Lcom/maya/sdk/s/app/FMSdkCore$4;

    iget-object v1, v1, Lcom/maya/sdk/s/app/FMSdkCore$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/FMSdkCore;->showFloat(Landroid/content/Context;)V

    .line 196
    return-void
.end method
