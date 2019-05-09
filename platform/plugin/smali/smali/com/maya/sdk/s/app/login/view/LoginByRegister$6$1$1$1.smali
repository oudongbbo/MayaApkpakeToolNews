.class Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1$1;
.super Ljava/lang/Object;
.source "LoginByRegister.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1;

.field final synthetic val$vname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$3"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1;

    .line 310
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1$1;->this$3:Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1;

    iput-object p2, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1$1;->val$vname:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1$1;->this$3:Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1;->this$2:Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1;->this$1:Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;

    iget-object v0, v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normalaccount_input:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->access$300(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6$1$1$1;->val$vname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 313
    return-void
.end method
