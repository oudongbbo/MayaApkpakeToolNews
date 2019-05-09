.class Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;
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
    name = "NormalSeeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 648
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 651
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normalpassword_input:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$1800(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "normalPwd":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isShowNormalPwd:Z
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$2000(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normalpassword_input:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$1800(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;

    move-result-object v1

    .line 655
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    .line 654
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 656
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_eye:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$2100(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    const-string v3, "maya_login_icon_eye_close"

    const-string v4, "drawable"

    .line 657
    invoke-virtual {v2, v3, v4}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 656
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 659
    :cond_0
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normalpassword_input:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$1800(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;

    move-result-object v1

    .line 660
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    .line 659
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 661
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_eye:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$2100(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    const-string v3, "maya_login_icon_eye_open"

    const-string v4, "drawable"

    .line 662
    invoke-virtual {v2, v3, v4}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 661
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 664
    :goto_0
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isShowNormalPwd:Z
    invoke-static {v2}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$2000(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    # setter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isShowNormalPwd:Z
    invoke-static {v1, v2}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$2002(Lcom/maya/sdk/s/app/login/view/LoginByRegister;Z)Z

    .line 665
    return-void
.end method
