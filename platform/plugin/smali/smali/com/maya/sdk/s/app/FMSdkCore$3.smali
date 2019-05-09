.class Lcom/maya/sdk/s/app/FMSdkCore$3;
.super Ljava/lang/Object;
.source "FMSdkCore.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/FMSdkCore;->userSwitch(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
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
.method constructor <init>(Lcom/maya/sdk/s/app/FMSdkCore;Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/FMSdkCore;

    .line 147
    iput-object p1, p0, Lcom/maya/sdk/s/app/FMSdkCore$3;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    iput-object p2, p0, Lcom/maya/sdk/s/app/FMSdkCore$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/maya/sdk/s/app/FMSdkCore$3;->val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$3;->val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onCancel(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$3;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    iget-object v1, p0, Lcom/maya/sdk/s/app/FMSdkCore$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/FMSdkCore;->showFloat(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$3;->val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 150
    const/4 v0, 0x1

    sput-boolean v0, Lcom/maya/sdk/s/app/FMSdkCore;->isLoginSuccess:Z

    .line 153
    iget-object v0, p0, Lcom/maya/sdk/s/app/FMSdkCore$3;->this$0:Lcom/maya/sdk/s/app/FMSdkCore;

    new-instance v1, Lcom/maya/sdk/s/app/FMSdkCore$3$1;

    invoke-direct {v1, p0, p1}, Lcom/maya/sdk/s/app/FMSdkCore$3$1;-><init>(Lcom/maya/sdk/s/app/FMSdkCore$3;Landroid/os/Bundle;)V

    # invokes: Lcom/maya/sdk/s/app/FMSdkCore;->handleUserAuthLogin(Landroid/os/Bundle;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V
    invoke-static {v0, p1, v1}, Lcom/maya/sdk/s/app/FMSdkCore;->access$100(Lcom/maya/sdk/s/app/FMSdkCore;Landroid/os/Bundle;Lcom/maya/sdk/framework/interfaces/ResultCallback;)V

    .line 163
    return-void
.end method
