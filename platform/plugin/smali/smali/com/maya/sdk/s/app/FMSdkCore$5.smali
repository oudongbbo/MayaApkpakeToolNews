.class Lcom/maya/sdk/s/app/FMSdkCore$5;
.super Ljava/lang/Object;
.source "FMSdkCore.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMSdkCore;->userExit(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/FMSdkCore;

.field final synthetic val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/FMSdkCore;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/FMSdkCore;

    .line 231
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMSdkCore$5;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    iput-object p2, p0, Lcom/maya/sdk/s/app/FMSdkCore$5;->val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    iput-object p3, p0, Lcom/maya/sdk/s/app/FMSdkCore$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$5;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore$5;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/FMSdkCore;->showFloat(Landroid/content/Context;)V

    .line 250
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$5;->val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onCancel(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$5;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore$5;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/FMSdkCore;->showFloat(Landroid/content/Context;)V

    .line 244
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$5;->val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 234
    const/4 v0, 0x0

    sput-boolean v0, Lcom/maya/sdk/s/app/FMSdkCore;->isLoginSuccess:Z

    .line 238
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$5;->val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 239
    return-void
.end method
