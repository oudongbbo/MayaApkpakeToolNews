.class Lcom/maya/sdk/m/receiver/PushReceiver$1$1;
.super Ljava/lang/Object;
.source "PushReceiver.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/receiver/PushReceiver$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/m/receiver/PushReceiver$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/receiver/PushReceiver$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/m/receiver/PushReceiver$1;

    .line 133
    iput-object p1, p0, Lcom/maya/sdk/m/receiver/PushReceiver$1$1;->this$1:Lcom/maya/sdk/m/receiver/PushReceiver$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/maya/sdk/m/receiver/PushReceiver$1$1;->this$1:Lcom/maya/sdk/m/receiver/PushReceiver$1;

    iget-object v0, v0, Lcom/maya/sdk/m/receiver/PushReceiver$1;->this$0:Lcom/maya/sdk/m/receiver/PushReceiver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a8\u9001\u72b6\u6001\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/m/receiver/PushReceiver;->printLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/m/receiver/PushReceiver;->access$000(Lcom/maya/sdk/m/receiver/PushReceiver;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/maya/sdk/m/receiver/PushReceiver$1$1;->this$1:Lcom/maya/sdk/m/receiver/PushReceiver$1;

    iget-object v0, v0, Lcom/maya/sdk/m/receiver/PushReceiver$1;->val$requestManager:Lcom/maya/sdk/m/http/MReqManager;

    const-string v1, "error_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u63a8\u9001\u72b6\u6001\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/m/http/MReqManager;->postSdkErrorAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/maya/sdk/m/receiver/PushReceiver$1$1;->this$1:Lcom/maya/sdk/m/receiver/PushReceiver$1;

    iget-object v0, v0, Lcom/maya/sdk/m/receiver/PushReceiver$1;->this$0:Lcom/maya/sdk/m/receiver/PushReceiver;

    new-instance v1, Lcom/maya/sdk/m/receiver/PushReceiver$1$1$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/receiver/PushReceiver$1$1$1;-><init>(Lcom/maya/sdk/m/receiver/PushReceiver$1$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/m/receiver/PushReceiver;->handlePushSuccess(Ljava/lang/String;Lcom/maya/sdk/m/interfaces/MsdkCallback;)V

    .line 151
    return-void
.end method
