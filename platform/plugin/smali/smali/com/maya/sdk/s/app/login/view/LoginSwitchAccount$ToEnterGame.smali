.class Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;
.super Ljava/lang/Object;
.source "LoginSwitchAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToEnterGame"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    .line 253
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    # invokes: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->isQuickClick()Z
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$900(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_loginphnumber:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$200(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "loginName":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->password:Ljava/lang/String;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$300(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "pwd":Ljava/lang/String;
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;
    invoke-static {v2}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$500(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "vname":Ljava/lang/String;
    iget-object v3, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->userName:Ljava/lang/String;
    invoke-static {v3}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$400(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "uname":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 272
    iget-object v4, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    const-string v5, "maya_tips_login_no_name"

    iget-object v6, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-virtual {v6}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->showToast(Ljava/lang/String;)V

    .line 273
    return-void

    .line 276
    :cond_1
    iget-object v4, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_enterGame:Landroid/widget/Button;
    invoke-static {v4}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->access$1000(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/Button;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 288
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 289
    iget-object v4, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-virtual {v4, v3, v2, v2}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->LoginByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_2
    iget-object v4, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;->this$0:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-virtual {v4, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->LoginByAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :goto_0
    return-void
.end method
