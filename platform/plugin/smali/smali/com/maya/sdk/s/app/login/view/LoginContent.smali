.class public Lcom/maya/sdk/s/app/login/view/LoginContent;
.super Lcom/maya/sdk/s/core/view/BaseTagView;
.source "LoginContent.java"


# instance fields
.field private content:Landroid/widget/FrameLayout;

.field private fatherDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

.field private loginByForgetPwd:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

.field private loginByPhone:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

.field private loginByRegister:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

.field private loginBySDKAccount:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

.field private loginCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

.field private loginCallback4Child:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

.field private loginHome:Lcom/maya/sdk/s/app/login/view/LoginHome;

.field private loginSwitchAccount:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

.field private responseManager:Lcom/maya/sdk/s/core/http/ResponseManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/maya/sdk/s/app/login/LoginDialog;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "dialog"    # Lcom/maya/sdk/s/app/login/LoginDialog;
    .param p4, "callback"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/s/core/view/BaseTagView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 172
    new-instance v0, Lcom/maya/sdk/s/app/login/view/LoginContent$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/login/view/LoginContent$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginContent;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginCallback4Child:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 41
    iput-object p3, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->fatherDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

    .line 42
    iput-object p4, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 43
    return-void
.end method

.method private hasAccountExits()Z
    .locals 7

    .line 87
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "userName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "password":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "token":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 94
    return v4

    .line 97
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 99
    return v5

    .line 102
    :cond_1
    new-instance v3, Lcom/maya/sdk/framework/user/AccountManager;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/maya/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountsFromFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 104
    .local v3, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 109
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 110
    return v5

    .line 112
    :cond_3
    return v4

    .line 106
    :cond_4
    :goto_0
    return v4
.end method

.method private initViews()V
    .locals 3

    .line 61
    const-string v0, "content"

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->content:Landroid/widget/FrameLayout;

    .line 65
    new-instance v0, Lcom/maya/sdk/s/app/login/view/LoginHome;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u7528\u6237\u767b\u5f55"

    invoke-direct {v0, v1, v2, p0}, Lcom/maya/sdk/s/app/login/view/LoginHome;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/maya/sdk/s/app/login/view/LoginContent;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginHome:Lcom/maya/sdk/s/app/login/view/LoginHome;

    .line 66
    new-instance v0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u5e10\u53f7\u767b\u5f55"

    invoke-direct {v0, v1, v2, p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/maya/sdk/s/app/login/view/LoginContent;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginBySDKAccount:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 67
    new-instance v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u7528\u6237\u6ce8\u518c"

    invoke-direct {v0, v1, v2, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/maya/sdk/s/app/login/view/LoginContent;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginByRegister:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 68
    new-instance v0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u5207\u6362\u5e10\u53f7"

    invoke-direct {v0, v1, v2, p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/maya/sdk/s/app/login/view/LoginContent;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginSwitchAccount:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    .line 69
    new-instance v0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u5fd8\u8bb0\u5bc6\u7801"

    invoke-direct {v0, v1, v2, p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/maya/sdk/s/app/login/view/LoginContent;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginByForgetPwd:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 70
    new-instance v0, Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u624b\u673a\u5feb\u901f\u767b\u9646"

    invoke-direct {v0, v1, v2, p0}, Lcom/maya/sdk/s/app/login/view/LoginByPhone;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/maya/sdk/s/app/login/view/LoginContent;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginByPhone:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    .line 73
    invoke-direct {p0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->hasAccountExits()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginSwitchAccount:Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->switchToTab(Lcom/maya/sdk/s/core/view/BaseTagView;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginHome:Lcom/maya/sdk/s/app/login/view/LoginHome;

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->switchToTab(Lcom/maya/sdk/s/core/view/BaseTagView;)V

    .line 80
    :goto_0
    return-void
.end method

.method private switchToTab(Lcom/maya/sdk/s/core/view/BaseTagView;)V
    .locals 2
    .param p1, "view"    # Lcom/maya/sdk/s/core/view/BaseTagView;

    .line 122
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->content:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 123
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/maya/sdk/s/core/view/BaseTagView;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 125
    invoke-virtual {p1}, Lcom/maya/sdk/s/core/view/BaseTagView;->onResume()V

    .line 126
    return-void
.end method


# virtual methods
.method public MobilePhoneFastLogin()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginByPhone:Lcom/maya/sdk/s/app/login/view/LoginByPhone;

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->switchToTab(Lcom/maya/sdk/s/core/view/BaseTagView;)V

    .line 151
    return-void
.end method

.method public closeLoginDialog()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->fatherDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->fatherDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/LoginDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->fatherDialog:Lcom/maya/sdk/s/app/login/LoginDialog;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/login/LoginDialog;->dismiss()V

    .line 162
    :cond_0
    return-void
.end method

.method public getCallBack()Lcom/maya/sdk/framework/interfaces/SdkResultCallback;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginCallback:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    return-object v0
.end method

.method public getChildCallBack()Lcom/maya/sdk/framework/interfaces/SdkResultCallback;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginCallback4Child:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    return-object v0
.end method

.method protected getParent()Landroid/view/View;
    .locals 3

    .line 47
    const-string v0, "maya_login_content"

    const-string v1, "layout"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->inflate(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/maya/sdk/s/core/http/ResponseManager;
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->responseManager:Lcom/maya/sdk/s/core/http/ResponseManager;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/maya/sdk/s/core/http/ResponseManager;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/maya/sdk/s/core/http/ResponseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->responseManager:Lcom/maya/sdk/s/core/http/ResponseManager;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->responseManager:Lcom/maya/sdk/s/core/http/ResponseManager;

    return-object v0
.end method

.method protected onCreate()V
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/maya/sdk/s/core/view/BaseTagView;->onCreate()V

    .line 53
    invoke-direct {p0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->initViews()V

    .line 54
    return-void
.end method

.method public swtichToAccount()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginBySDKAccount:Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->switchToTab(Lcom/maya/sdk/s/core/view/BaseTagView;)V

    .line 134
    return-void
.end method

.method public swtichToForgetPwd()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginByForgetPwd:Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->switchToTab(Lcom/maya/sdk/s/core/view/BaseTagView;)V

    .line 156
    return-void
.end method

.method public swtichToLoginHome()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginHome:Lcom/maya/sdk/s/app/login/view/LoginHome;

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->switchToTab(Lcom/maya/sdk/s/core/view/BaseTagView;)V

    .line 130
    return-void
.end method

.method public swtichToNameRegister()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginByRegister:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->switchToTab(Lcom/maya/sdk/s/core/view/BaseTagView;)V

    .line 146
    return-void
.end method

.method public swtichToPhoneRegister()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginContent;->loginByRegister:Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginContent;->switchToTab(Lcom/maya/sdk/s/core/view/BaseTagView;)V

    .line 140
    return-void
.end method
