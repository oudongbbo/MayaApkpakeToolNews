.class Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;
.super Ljava/lang/Object;
.source "LoginByForgetPwd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Step2GetVcodeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 314
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 319
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # invokes: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->isQuickClick()Z
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$1100(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->mobile:Ljava/lang/String;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$100(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    const-string v1, "maya_common_input_phone"

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-virtual {v2}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->hideSystemKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 330
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->countDown:Lcom/maya/sdk/framework/view/common/CountDownView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$1200(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/maya/sdk/framework/view/common/CountDownView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/CountDownView;->startCountDown()V

    .line 332
    const-string v0, "findpwd"

    .line 333
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$1300(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/maya/sdk/s/core/http/RequsetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->mobile:Ljava/lang/String;
    invoke-static {v2}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$100(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    new-instance v5, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;

    invoke-direct {v5, p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;)V

    const/4 v6, 0x1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestGetVcode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;Z)V

    .line 365
    .end local v0    # "type":Ljava/lang/String;
    :goto_0
    return-void
.end method
