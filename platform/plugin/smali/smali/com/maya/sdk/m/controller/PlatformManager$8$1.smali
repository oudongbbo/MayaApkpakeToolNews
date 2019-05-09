.class Lcom/maya/sdk/m/controller/PlatformManager$8$1;
.super Ljava/lang/Object;
.source "PlatformManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/PlatformManager$8;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/m/controller/PlatformManager$8;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/PlatformManager$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/m/controller/PlatformManager$8;

    .line 1017
    iput-object p1, p0, Lcom/maya/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 1053
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$8;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$8;->val$callback:Lcom/maya/sdk/m/interfaces/MResultCallback;

    invoke-interface {v0, p2}, Lcom/maya/sdk/m/interfaces/MResultCallback;->onFail(Ljava/lang/String;)V

    .line 1054
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 1021
    iget-object v0, p0, Lcom/maya/sdk/m/controller/PlatformManager$8$1;->this$1:Lcom/maya/sdk/m/controller/PlatformManager$8;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/PlatformManager$8;->this$0:Lcom/maya/sdk/m/controller/PlatformManager;

    # getter for: Lcom/maya/sdk/m/controller/PlatformManager;->responseManager:Lcom/maya/sdk/m/http/MRepManager;
    invoke-static {v0}, Lcom/maya/sdk/m/controller/PlatformManager;->access$000(Lcom/maya/sdk/m/controller/PlatformManager;)Lcom/maya/sdk/m/http/MRepManager;

    move-result-object v0

    new-instance v1, Lcom/maya/sdk/m/controller/PlatformManager$8$1$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/controller/PlatformManager$8$1$1;-><init>(Lcom/maya/sdk/m/controller/PlatformManager$8$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/m/http/MRepManager;->handleActiveCheckResult(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 1049
    return-void
.end method
