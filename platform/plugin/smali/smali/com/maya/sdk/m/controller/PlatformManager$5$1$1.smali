.class Lcom/maya/sdk/m/controller/PlatformManager$5$1$1;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/MResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager$5$1;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/maya/sdk/m/controller/PlatformManager$5$1;

.field final synthetic val$result:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager$5$1;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$2"    # Lcom/maya/sdk/m/controller/PlatformManager$5$1;

    .line 917
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$5$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$5$1;

    iput-object p2, p0, Lcom/maya/sdk/m/controller/PlatformManager$5$1$1;->val$result:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 920
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$5$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$5$1;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$5;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$5;->val$callback:Lcom/maya/sdk/m/interfaces/MLoginCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/interfaces/MLoginCallback;->onFail(Ljava/lang/String;)V

    .line 921
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 925
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$5$1$1;->this$2:Lcom/maya/sdk/m/controller/PlatformManager$5$1;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$5$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$5;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$5;->val$callback:Lcom/maya/sdk/m/interfaces/MLoginCallback;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/PlatformManager$5$1$1;->val$result:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/maya/sdk/m/interfaces/MLoginCallback;->onSuccess(Landroid/os/Bundle;)V

    .line 926
    return-void
.end method
