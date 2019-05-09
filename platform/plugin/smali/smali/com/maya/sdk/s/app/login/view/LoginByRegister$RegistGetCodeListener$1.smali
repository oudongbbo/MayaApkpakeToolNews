.class Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Lcom/maya/sdk/framework/http/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;

    .line 482
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 504
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {v0, p2}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->countDown:Lcom/maya/sdk/framework/view/common/CountDownView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$700(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Lcom/maya/sdk/framework/view/common/CountDownView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/CountDownView;->stopCountDown()V

    .line 506
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/s/core/utils/SLogUtil;->i(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$200(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Lcom/maya/sdk/s/app/login/view/LoginContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getResponse()Lcom/maya/sdk/s/core/http/ResponseManager;

    move-result-object v0

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/s/core/http/ResponseManager;->handleRepContent(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 500
    return-void
.end method
