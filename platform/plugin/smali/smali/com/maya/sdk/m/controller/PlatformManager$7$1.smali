.class Lcom/maya/sdk/m/controller/PlatformManager$7$1;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/m/interfaces/MResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager$7;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/m/controller/PlatformManager$7;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/m/controller/PlatformManager$7;

    .line 985
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$7$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 994
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$7$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$7;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$7;->val$callback:Lcom/maya/sdk/m/interfaces/MResultCallback;

    invoke-interface {v0, p1}, Lcom/maya/sdk/m/interfaces/MResultCallback;->onFail(Ljava/lang/String;)V

    .line 995
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 989
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$7$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$7;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$7;->val$callback:Lcom/maya/sdk/m/interfaces/MResultCallback;

    invoke-interface {v0}, Lcom/maya/sdk/m/interfaces/MResultCallback;->onSuccess()V

    .line 990
    return-void
.end method
