.class Lcom/maya/sdk/m/controller/PlatformManager$4$1$1$1;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;

    .line 335
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1$1;->this$3:Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1$1;->this$3:Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$4;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    const-string v1, "pay_cancel"

    invoke-interface {v0, v1}, Lcom/maya/sdk/m/MyMsdkCallback;->onPayFail(Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1$1;->this$3:Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$4;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onPayFail(Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .line 338
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1$1;->this$3:Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$4$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$4$1;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$4$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$4;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$4;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onPaySuccess(Landroid/os/Bundle;)V

    .line 339
    return-void
.end method
