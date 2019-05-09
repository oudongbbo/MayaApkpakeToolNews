.class Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Lcom/maya/sdk/framework/interfaces/SdkResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;

    .line 303
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # invokes: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->loadLocalName()V
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$400(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    .line 324
    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # invokes: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->loadLocalName()V
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$400(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    .line 320
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 306
    const-string v0, "uname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "vname":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;

    iget-object v1, v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;

    iget-object v1, v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normalaccount_input:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$300(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 316
    :cond_0
    return-void
.end method
