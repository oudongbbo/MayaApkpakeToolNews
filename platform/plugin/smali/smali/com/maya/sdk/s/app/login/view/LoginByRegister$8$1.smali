.class Lcom/maya/sdk/s/app/login/view/LoginByRegister$8$1;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByRegister$8;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$8;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister$8;

    .line 380
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$8$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$8$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$8;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$8;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {v0, p2}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;

    .line 385
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 386
    .local v0, "regBundle":Landroid/os/Bundle;
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v1, "password"

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$8$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$8;

    iget-object v2, v2, Lcom/maya/sdk/s/app/login/view/LoginByRegister$8;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v1, "loginType"

    const-string v2, "account"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$8$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$8;

    iget-object v1, v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$8;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    iget-object v1, v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->regHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$8$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$8;

    iget-object v2, v2, Lcom/maya/sdk/s/app/login/view/LoginByRegister$8;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    iget-object v2, v2, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->regHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 390
    return-void
.end method