.class Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;
.super Ljava/lang/Object;
.source "LoginByForgetPwd.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;

    .line 333
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-virtual {v0, p2}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->countDown:Lcom/maya/sdk/framework/view/common/CountDownView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$1200(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/maya/sdk/framework/view/common/CountDownView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/CountDownView;->stopCountDown()V

    .line 361
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$500(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/maya/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/maya/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/s/core/http/ResponseManager;->handleRepContent(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 354
    return-void
.end method
