.class Lcom/maya/sdk/s/core/SdkManager$10$1$1;
.super Ljava/lang/Object;
.source "SdkManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/core/SdkManager$10$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/maya/sdk/s/core/SdkManager$10$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/core/SdkManager$10$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/maya/sdk/s/core/SdkManager$10$1;

    .line 564
    iput-object p1, p0, Lcom/maya/sdk/s/core/SdkManager$10$1$1;->this$2:Lcom/maya/sdk/s/core/SdkManager$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager$10$1$1;->this$2:Lcom/maya/sdk/s/core/SdkManager$10$1;

    iget-object v0, v0, Lcom/maya/sdk/s/core/SdkManager$10$1;->this$1:Lcom/maya/sdk/s/core/SdkManager$10;

    iget-object v0, v0, Lcom/maya/sdk/s/core/SdkManager$10;->val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-interface {v0, p2}, Lcom/maya/sdk/framework/interfaces/SdkResultCallback;->onFail(Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;

    .line 568
    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager$10$1$1;->this$2:Lcom/maya/sdk/s/core/SdkManager$10$1;

    iget-object v0, v0, Lcom/maya/sdk/s/core/SdkManager$10$1;->this$1:Lcom/maya/sdk/s/core/SdkManager$10;

    iget-object v0, v0, Lcom/maya/sdk/s/core/SdkManager$10;->this$0:Lcom/maya/sdk/s/core/SdkManager;

    # getter for: Lcom/maya/sdk/s/core/SdkManager;->responseManager:Lcom/maya/sdk/s/core/http/ResponseManager;
    invoke-static {v0}, Lcom/maya/sdk/s/core/SdkManager;->access$000(Lcom/maya/sdk/s/core/SdkManager;)Lcom/maya/sdk/s/core/http/ResponseManager;

    move-result-object v1

    const-string v3, ""

    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager$10$1$1;->this$2:Lcom/maya/sdk/s/core/SdkManager$10$1;

    iget-object v0, v0, Lcom/maya/sdk/s/core/SdkManager$10$1;->this$1:Lcom/maya/sdk/s/core/SdkManager$10;

    iget-boolean v0, v0, Lcom/maya/sdk/s/core/SdkManager$10;->val$isPhoneQuickLogin:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v0, p0, Lcom/maya/sdk/s/core/SdkManager$10$1$1;->this$2:Lcom/maya/sdk/s/core/SdkManager$10$1;

    iget-object v0, v0, Lcom/maya/sdk/s/core/SdkManager$10$1;->this$1:Lcom/maya/sdk/s/core/SdkManager$10;

    iget-object v6, v0, Lcom/maya/sdk/s/core/SdkManager$10;->val$callback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    const/4 v5, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/maya/sdk/s/core/http/ResponseManager;->handleLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZLcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 569
    return-void
.end method
