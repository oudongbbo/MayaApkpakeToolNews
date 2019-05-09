.class Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$1;
.super Ljava/lang/Object;
.source "LoginByForgetPwd.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 114
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 118
    if-eqz p2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_phone_clear:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$000(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$1;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_phone_clear:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->access$000(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    :goto_0
    return-void
.end method
