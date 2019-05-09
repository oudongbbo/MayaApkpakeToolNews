.class Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$3;
.super Ljava/lang/Object;
.source "LoginSwitchAccount.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->LoginByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    .line 363
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$3;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$3;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_enterGame:Landroid/widget/Button;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$1000(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 384
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$3;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-virtual {v0, p2}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->showToast(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$3;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->father:Lcom/maya/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$1100(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Lcom/maya/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/maya/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$3$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$3$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$3;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/s/core/http/ResponseManager;->handleRepContent(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 380
    return-void
.end method
