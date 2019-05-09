.class Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;
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
    name = "Step2ShowWEyeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 398
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 403
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_pwd_input:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$900(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "phonePwd":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->isShowPhonePwd:Z
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$1600(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_pwd_input:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$900(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 407
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_eye:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$1700(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    const-string v3, "maya_login_icon_eye_close"

    const-string v4, "drawable"

    invoke-virtual {v2, v3, v4}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_pwd_input:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$900(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 411
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_eye:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$1700(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    const-string v3, "maya_login_icon_eye_open"

    const-string v4, "drawable"

    invoke-virtual {v2, v3, v4}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 413
    :goto_0
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->isShowPhonePwd:Z
    invoke-static {v2}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$1600(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    # setter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->isShowPhonePwd:Z
    invoke-static {v1, v2}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$1602(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;Z)Z

    .line 415
    return-void
.end method
