.class Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;
.super Ljava/lang/Object;
.source "LoginByForgetPwd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$3"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

    .line 172
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->this$3:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

    iput-object p2, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->this$3:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->val$bundle:Landroid/os/Bundle;

    const-string v2, "mobile"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->mobile:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$102(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->this$3:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1:Landroid/view/View;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$200(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->this$3:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2:Landroid/view/View;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$300(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->this$3:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->mobile:Ljava/lang/String;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$100(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "mobileview1":Ljava/lang/String;
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->this$3:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

    iget-object v2, v2, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1;

    iget-object v2, v2, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;

    iget-object v2, v2, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->mobile:Ljava/lang/String;
    invoke-static {v2}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$100(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "mobileview2":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    .end local v2    # "mobileview2":Ljava/lang/String;
    .local v1, "mobileview2":Ljava/lang/String;
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1$1;->this$3:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;

    iget-object v2, v2, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1;

    iget-object v2, v2, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;

    iget-object v2, v2, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_phone_text:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$400(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "*****"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method
