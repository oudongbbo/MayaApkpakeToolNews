.class Lcom/maya/sdk/m/controller/PlatformManager$17;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/MResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager;->handleLoginSSuccessBundle(Landroid/os/Bundle;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/controller/PlatformManager;

.field final synthetic val$callback:Lcom/maya/sdk/m/interfaces/MsdkCallback;

.field final synthetic val$result:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager;Lcom/maya/sdk/m/interfaces/MsdkCallback;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/controller/PlatformManager;

    .line 1339
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$17;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/PlatformManager$17;->val$callback:Lcom/maya/sdk/m/interfaces/MsdkCallback;

    iput-object p3, p0, Lcom/maya/sdk/m/controller/PlatformManager$17;->val$result:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;

    .line 1345
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$17;->val$callback:Lcom/maya/sdk/m/interfaces/MsdkCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/interfaces/MsdkCallback;->onFail(Ljava/lang/String;)V

    .line 1346
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1341
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$17;->val$callback:Lcom/maya/sdk/m/interfaces/MsdkCallback;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/PlatformManager$17;->val$result:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/maya/sdk/m/interfaces/MsdkCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 1342
    return-void
.end method
