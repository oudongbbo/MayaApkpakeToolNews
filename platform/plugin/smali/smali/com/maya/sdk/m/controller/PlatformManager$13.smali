.class Lcom/maya/sdk/m/controller/PlatformManager$13;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager;->userLoginS(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/PlatformManager;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/PlatformManager;

    .line 1199
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$13;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .line 1218
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$13;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    const-string v1, "login_cancel"

    invoke-interface {v0, v1}, Lcom/maya/sdk/m/MyMsdkCallback;->onLoginFail(Ljava/lang/String;)V

    .line 1219
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 1222
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$13;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onLoginFail(Ljava/lang/String;)V

    .line 1223
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1203
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$13;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    new-instance v1, Lcom/maya/sdk/m/controller/PlatformManager$13$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/controller/PlatformManager$13$1;-><init>(Lcom/maya/sdk/m/controller/PlatformManager$13;)V

    # invokes: Lcom/maya/sdk/m/controller/PlatformManager;->handleLoginSSuccessBundle(Landroid/os/Bundle;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V
    invoke-static {v0, p1, v1}, Lcom/maya/sdk/m/controller/PlatformManager;->access$400(Lcom/maya/sdk/m/controller/PlatformManager;Landroid/os/Bundle;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V

    .line 1215
    return-void
.end method
