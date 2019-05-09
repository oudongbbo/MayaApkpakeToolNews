.class Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1;
.super Ljava/lang/Object;
.source "LoginByForgetPwd.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;

    .line 161
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-virtual {v0, p2}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$500(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/maya/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/maya/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/s/core/http/ResponseManager;->handleBindInfoByName(Ljava/lang/String;Lcom/maya/sdk/framework/interfaces/ResultCallback2;)V

    .line 205
    return-void
.end method
