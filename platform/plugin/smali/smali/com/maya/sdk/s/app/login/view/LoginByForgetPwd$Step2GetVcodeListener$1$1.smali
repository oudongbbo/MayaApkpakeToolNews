.class Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1$1;
.super Ljava/lang/Object;
.source "LoginByForgetPwd.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;

    .line 340
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-virtual {v0, p2}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->countDown:Lcom/maya/sdk/framework/view/common/CountDownView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$1200(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/maya/sdk/framework/view/common/CountDownView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/CountDownView;->stopCountDown()V

    .line 351
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    const-string v1, "maya_common_toast_vcode_sent"

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;

    iget-object v2, v2, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;

    iget-object v2, v2, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-virtual {v2}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    .line 345
    return-void
.end method
