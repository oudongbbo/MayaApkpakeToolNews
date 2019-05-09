.class Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;
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
    name = "Step2SubmmitListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 369
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 373
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # invokes: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->isQuickClick()Z
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$1400(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_pwd_input:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$900(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "regPwd":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_idcode_input:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$1000(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "vCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    iget-object v3, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->mobile:Ljava/lang/String;
    invoke-static {v3}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$100(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->submmitChangePwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$1500(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method
