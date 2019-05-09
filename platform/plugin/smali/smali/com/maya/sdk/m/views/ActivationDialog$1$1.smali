.class Lcom/maya/sdk/m/views/ActivationDialog$1$1;
.super Ljava/lang/Object;
.source "ActivationDialog.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/m/views/ActivationDialog$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/m/views/ActivationDialog$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/m/views/ActivationDialog$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/m/views/ActivationDialog$1;

    .line 168
    iput-object p1, p0, Lcom/maya/sdk/m/views/ActivationDialog$1$1;->this$1:Lcom/maya/sdk/m/views/ActivationDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog$1$1;->this$1:Lcom/maya/sdk/m/views/ActivationDialog$1;

    iget-object v0, v0, Lcom/maya/sdk/m/views/ActivationDialog$1;->this$0:Lcom/maya/sdk/m/views/ActivationDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6fc0\u6d3b\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/maya/sdk/m/views/ActivationDialog;->controlErrorTips(ZLjava/lang/String;)V
    invoke-static {v0, v2, v1}, Lcom/maya/sdk/m/views/ActivationDialog;->access$000(Lcom/maya/sdk/m/views/ActivationDialog;ZLjava/lang/String;)V

    .line 201
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/maya/sdk/m/views/ActivationDialog$1$1;->this$1:Lcom/maya/sdk/m/views/ActivationDialog$1;

    iget-object v0, v0, Lcom/maya/sdk/m/views/ActivationDialog$1;->this$0:Lcom/maya/sdk/m/views/ActivationDialog;

    # getter for: Lcom/maya/sdk/m/views/ActivationDialog;->mrepManager:Lcom/maya/sdk/m/http/MRepManager;
    invoke-static {v0}, Lcom/maya/sdk/m/views/ActivationDialog;->access$100(Lcom/maya/sdk/m/views/ActivationDialog;)Lcom/maya/sdk/m/http/MRepManager;

    move-result-object v0

    new-instance v1, Lcom/maya/sdk/m/views/ActivationDialog$1$1$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/m/views/ActivationDialog$1$1$1;-><init>(Lcom/maya/sdk/m/views/ActivationDialog$1$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/m/http/MRepManager;->handleActiveResult(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 196
    return-void
.end method
