.class Lcom/maya/sdk/m/controller/MsdkManager$14$1$1;
.super Ljava/lang/Object;
.source "MsdkManager.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/controller/MsdkManager$14$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/maya/sdk/m/controller/MsdkManager$14$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/controller/MsdkManager$14$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/maya/sdk/m/controller/MsdkManager$14$1;

    .line 650
    iput-object p1, p0, Lcom/maya/sdk/m/controller/MsdkManager$14$1$1;->this$2:Lcom/maya/sdk/m/controller/MsdkManager$14$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 658
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$14$1$1;->this$2:Lcom/maya/sdk/m/controller/MsdkManager$14$1;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/MsdkManager$14$1;->this$1:Lcom/maya/sdk/m/controller/MsdkManager$14;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/MsdkManager$14;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    # invokes: Lcom/maya/sdk/m/controller/MsdkManager;->initCallBackFail(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/maya/sdk/m/controller/MsdkManager;->access$1000(Lcom/maya/sdk/m/controller/MsdkManager;Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .line 654
    iget-object v0, p0, Lcom/maya/sdk/m/controller/MsdkManager$14$1$1;->this$2:Lcom/maya/sdk/m/controller/MsdkManager$14$1;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/MsdkManager$14$1;->this$1:Lcom/maya/sdk/m/controller/MsdkManager$14;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/MsdkManager$14;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    iget-object v0, v0, Lcom/maya/sdk/m/controller/MsdkManager;->initHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/maya/sdk/m/controller/MsdkManager$14$1$1;->this$2:Lcom/maya/sdk/m/controller/MsdkManager$14$1;

    iget-object v1, v1, Lcom/maya/sdk/m/controller/MsdkManager$14$1;->this$1:Lcom/maya/sdk/m/controller/MsdkManager$14;

    iget-object v1, v1, Lcom/maya/sdk/m/controller/MsdkManager$14;->this$0:Lcom/maya/sdk/m/controller/MsdkManager;

    iget-object v1, v1, Lcom/maya/sdk/m/controller/MsdkManager;->initHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/maya/sdk/m/controller/MsdkManager$14$1$1;->this$2:Lcom/maya/sdk/m/controller/MsdkManager$14$1;

    iget-object v2, v2, Lcom/maya/sdk/m/controller/MsdkManager$14$1;->this$1:Lcom/maya/sdk/m/controller/MsdkManager$14;

    iget-boolean v2, v2, Lcom/maya/sdk/m/controller/MsdkManager$14;->val$ifShowSplash:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 655
    return-void
.end method
