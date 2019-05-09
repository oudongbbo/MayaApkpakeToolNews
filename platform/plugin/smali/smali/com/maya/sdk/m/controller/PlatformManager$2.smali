.class Lcom/maya/sdk/m/controller/PlatformManager$2;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager;->doExitGame(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/PlatformManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/PlatformManager;

    .line 229
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$2;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/PlatformManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 246
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$2;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mConfig:Lcom/maya/sdk/m/model/bean/MsdkBean;

    invoke-virtual {v0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getSdk()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$2;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mConfig:Lcom/maya/sdk/m/model/bean/MsdkBean;

    .line 234
    invoke-virtual {v0}, Lcom/maya/sdk/m/model/bean/MsdkBean;->getSdk()I

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$2;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mPlatform:Lcom/maya/sdk/m/controller/PlatformCore;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/PlatformManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/m/controller/PlatformCore;->mExitGame(Landroid/content/Context;)V

    .line 240
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$2;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onExitGameSuccess()V

    goto :goto_1

    .line 236
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$2;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager;->mCallBack:Lcom/maya/sdk/m/MyMsdkCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/MyMsdkCallback;->onExitGameSuccess()V

    .line 242
    :goto_1
    return-void
.end method
