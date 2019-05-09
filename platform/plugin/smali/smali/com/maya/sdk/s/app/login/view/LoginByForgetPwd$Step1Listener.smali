.class Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step1Listener;
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
    name = "Step1Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 277
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step1Listener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 282
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step1Listener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # invokes: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->isQuickClick()Z
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$600(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step1Listener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_phone:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$700(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "regName":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step1Listener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # invokes: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->requestBindInfo(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$800(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;Ljava/lang/String;)V

    .line 290
    return-void
.end method
