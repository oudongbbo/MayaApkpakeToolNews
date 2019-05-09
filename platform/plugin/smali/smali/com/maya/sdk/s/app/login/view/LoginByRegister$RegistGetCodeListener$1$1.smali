.class Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1$1;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;

    .line 488
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 496
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {v0, p2}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->countDown:Lcom/maya/sdk/framework/view/common/CountDownView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$700(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Lcom/maya/sdk/framework/view/common/CountDownView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/CountDownView;->stopCountDown()V

    .line 498
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .line 491
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    const-string v1, "maya_common_toast_vcode_sent"

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;

    iget-object v2, v2, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;

    iget-object v2, v2, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 492
    invoke-virtual {v2}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 491
    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    .line 493
    return-void
.end method
