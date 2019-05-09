.class Lcom/maya/sdk/m/controller/PlatformManager$12$1;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/MsdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager$12;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/m/controller/PlatformManager$12;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/m/controller/PlatformManager$12;

    .line 1172
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$12$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1179
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$12$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$12;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$12;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onUserSwitchFail(Ljava/lang/String;)V

    .line 1180
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 1175
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$12$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$12;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$12;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/MyMsdkCallback;->onUserSwitchSuccess(Landroid/os/Bundle;)V

    .line 1176
    return-void
.end method
