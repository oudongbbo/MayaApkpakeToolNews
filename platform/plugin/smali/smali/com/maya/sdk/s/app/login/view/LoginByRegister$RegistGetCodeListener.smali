.class Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/view/LoginByRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegistGetCodeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 463
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 467
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # invokes: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isQuickClick()Z
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$500(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_phonenumber_input:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$600(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "phoneNum":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    const-string v2, "maya_common_input_phone"

    iget-object v3, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {v3}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {v1}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->hideSystemKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 479
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->countDown:Lcom/maya/sdk/framework/view/common/CountDownView;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$700(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Lcom/maya/sdk/framework/view/common/CountDownView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maya/sdk/framework/view/common/CountDownView;->startCountDown()V

    .line 481
    const-string v7, "reg"

    .line 482
    .local v7, "type":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$800(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Lcom/maya/sdk/s/core/http/RequsetManager;

    move-result-object v1

    const-string v4, ""

    new-instance v5, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;

    invoke-direct {v5, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;)V

    const/4 v6, 0x1

    move-object v2, v0

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestGetVcode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;Z)V

    .line 509
    .end local v7    # "type":Ljava/lang/String;
    :goto_0
    return-void
.end method
