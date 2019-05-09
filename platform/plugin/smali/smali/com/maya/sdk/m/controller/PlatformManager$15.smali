.class Lcom/maya/sdk/m/controller/PlatformManager$15;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager;->userPayS(Landroid/content/Context;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/PlatformManager;

.field final synthetic val$moid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/PlatformManager;

    .line 1283
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$15;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/PlatformManager$15;->val$moid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .line 1291
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$15;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    const-string v1, "pay_cancel"

    invoke-interface {v0, v1}, Lcom/maya/sdk/m/MyMsdkCallback;->onPayFail(Ljava/lang/String;)V

    .line 1292
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 1295
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$15;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onPayFail(Ljava/lang/String;)V

    .line 1296
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1286
    const-string v0, "moid"

    iget-object v1, p0, Lcom/maya/sdk/m/controller/PlatformManager$15;->val$moid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$15;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onPaySuccess(Landroid/os/Bundle;)V

    .line 1288
    return-void
.end method
