.class Lcom/maya/sdk/m/controller/PlatformManager$16;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager;->exitGameS(Landroid/content/Context;)V
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

    .line 1306
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$16;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .line 1313
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$16;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onExitGameFail()V

    .line 1314
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 1317
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$16;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onExitGameFail()V

    .line 1318
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1309
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$16;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onExitGameSuccess()V

    .line 1310
    return-void
.end method
