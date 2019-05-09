.class Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;
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
    name = "ToVistorlogin"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;


# direct methods
.method constructor <init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 354
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .line 358
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    # invokes: Lcom/maya/sdk/s/app/login/view/LoginByAccount;->isQuickClick()Z
    invoke-static {v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->access$1400(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "vname":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v1}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "pwd":Ljava/lang/String;
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v2}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserIsVisitor(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 367
    .local v2, "isVisitor":Ljava/lang/Boolean;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 368
    iget-object v3, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v3, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->visitorlogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_1
    new-instance v3, Lcom/maya/sdk/framework/user/AccountManager;

    iget-object v4, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v4}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/maya/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v4}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountsFromVisitorFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 371
    new-instance v3, Lcom/maya/sdk/framework/user/AccountManager;

    iget-object v4, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 372
    invoke-virtual {v4}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/maya/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v4}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountsFromVisitorFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 373
    .local v3, "infoBeans":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v5}, Lcom/maya/sdk/framework/user/UserInfoBean;->getVname()Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, "vnameInSD":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v4}, Lcom/maya/sdk/framework/user/UserInfoBean;->getPwd()Ljava/lang/String;

    move-result-object v4

    .line 375
    .local v4, "pwdInSD":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 376
    iget-object v6, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {v6, v5, v4}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->visitorlogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .end local v3    # "infoBeans":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    .end local v4    # "pwdInSD":Ljava/lang/String;
    .end local v5    # "vnameInSD":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 379
    :cond_3
    iget-object v3, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;->this$0:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    # getter for: Lcom/maya/sdk/s/app/login/view/LoginByAccount;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;
    invoke-static {v3}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->access$1100(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Lcom/maya/sdk/s/core/http/RequsetManager;

    move-result-object v3

    new-instance v4, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;

    invoke-direct {v4, p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestRegVisitor(Lcom/maya/sdk/framework/http/HttpCallBack;Z)V

    .line 410
    :goto_0
    return-void
.end method
