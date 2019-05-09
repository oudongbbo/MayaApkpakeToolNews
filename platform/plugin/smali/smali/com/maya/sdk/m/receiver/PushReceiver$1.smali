.class Lcom/maya/sdk/m/receiver/PushReceiver$1;
.super Ljava/lang/Object;
.source "PushReceiver.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/receiver/PushReceiver;->push(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/m/receiver/PushReceiver;

.field final synthetic val$requestManager:Lcom/maya/sdk/m/http/MReqManager;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/receiver/PushReceiver;Lcom/maya/sdk/m/http/MReqManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/m/receiver/PushReceiver;

    .line 128
    iput-object p1, p0, Lcom/maya/sdk/m/receiver/PushReceiver$1;->this$0:Lcom/maya/sdk/m/receiver/PushReceiver;

    iput-object p2, p0, Lcom/maya/sdk/m/receiver/PushReceiver$1;->val$requestManager:Lcom/maya/sdk/m/http/MReqManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/maya/sdk/m/receiver/PushReceiver$1;->this$0:Lcom/maya/sdk/m/receiver/PushReceiver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a8\u9001\u8bf7\u6c42\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/maya/sdk/m/receiver/PushReceiver;->printLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/maya/sdk/m/receiver/PushReceiver;->access$000(Lcom/maya/sdk/m/receiver/PushReceiver;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/maya/sdk/m/receiver/PushReceiver$1;->val$requestManager:Lcom/maya/sdk/m/http/MReqManager;

    const-string v1, "error_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u63a8\u9001\u8bf7\u6c42\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/m/http/MReqManager;->postSdkErrorAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/maya/sdk/m/receiver/PushReceiver$1;->this$0:Lcom/maya/sdk/m/receiver/PushReceiver;

    new-instance v1, Lcom/maya/sdk/m/receiver/PushReceiver$1$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/receiver/PushReceiver$1$1;-><init>(Lcom/maya/sdk/m/receiver/PushReceiver$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/m/receiver/PushReceiver;->handleRepContent(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 160
    return-void
.end method
