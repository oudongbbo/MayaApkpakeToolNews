.class Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;
.super Ljava/lang/Object;
.source "LoginByAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/sdk/s/app/login/view/LoginByAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountEnterGameListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 250
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 254
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    # invokes: Lcom/maya/sdk/s/app/login/view/LoginByAccount;->isQuickClick()Z
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->access$900(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_loginphnumber:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->access$300(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "loginName":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_password:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->access$400(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, "pwd":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_entergame:Landroid/widget/Button;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->access$1000(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_entergame:Landroid/widget/Button;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->access$1000(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByAccount;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;
    invoke-static {v1}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->access$1100(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Lcom/maya/sdk/s/core/http/RequsetManager;

    move-result-object v1

    new-instance v4, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;

    invoke-direct {v4, p0, v7}, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;Ljava/lang/String;)V

    const/4 v5, 0x1

    const-string v6, ""

    move-object v2, v0

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestLoginS(Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;ZLjava/lang/String;)V

    .line 296
    return-void

    .line 262
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    const-string v2, "maya_tips_login_no_name_or_pwd"

    iget-object v3, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v3}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->showToast(Ljava/lang/String;)V

    .line 263
    return-void
.end method
