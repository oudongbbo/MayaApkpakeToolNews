.class public Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;
.super Lcom/maya/sdk/s/core/view/BaseTagView;
.source "LoginSwitchAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToStarjoysLoginListener;,
        Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToLogoListener;,
        Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToOtherAccountListener;,
        Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;,
        Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;
    }
.end annotation


# instance fields
.field private accountAdapter:Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

.field private accountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/sdk/framework/user/UserInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private accountSelectPop:Landroid/widget/PopupWindow;

.field private father:Lcom/maya/sdk/s/app/login/view/LoginContent;

.field private isFisrtStart:Z

.field private isShowPwd:Z

.field private login_home_second_enterGame:Landroid/widget/Button;

.field private login_home_second_input:Landroid/widget/RelativeLayout;

.field private login_home_second_loginphnumber:Landroid/widget/EditText;

.field private login_home_second_logo:Landroid/widget/ImageView;

.field private login_home_second_rl:Landroid/widget/RelativeLayout;

.field private login_home_second_select_account:Landroid/widget/ImageView;

.field private maya_login_home_second_tv:Landroid/widget/TextView;

.field private password:Ljava/lang/String;

.field private requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

.field private userName:Ljava/lang/String;

.field private vserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/maya/sdk/s/app/login/view/LoginContent;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "fatherView"    # Lcom/maya/sdk/s/app/login/view/LoginContent;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/s/core/view/BaseTagView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->isShowPwd:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->isFisrtStart:Z

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->password:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->userName:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->father:Lcom/maya/sdk/s/app/login/view/LoginContent;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_enterGame:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Lcom/maya/sdk/s/app/login/view/LoginContent;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->father:Lcom/maya/sdk/s/app/login/view/LoginContent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_loginphnumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;
    .param p1, "x1"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->userName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;
    .param p1, "x1"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->userName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;
    .param p1, "x1"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    .line 32
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->isQuickClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_input:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    .line 32
    invoke-direct {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->initPopWindows()V

    return-void
.end method

.method static synthetic access$900(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;

    .line 32
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->isQuickClick()Z

    move-result v0

    return v0
.end method

.method private initAccountData()Z
    .locals 4

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->isFisrtStart:Z

    .line 137
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserVname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->userName:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getUserPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->password:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->userName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 143
    new-instance v1, Lcom/maya/sdk/framework/user/AccountManager;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/maya/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountsFromFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    .line 145
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/user/UserInfoBean;->getUname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->userName:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/user/UserInfoBean;->getVname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maya/sdk/framework/user/UserInfoBean;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/user/UserInfoBean;->getPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->password:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_loginphnumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_loginphnumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 161
    return v2

    .line 163
    :cond_1
    return v0

    .line 147
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->father:Lcom/maya/sdk/s/app/login/view/LoginContent;

    if-nez v1, :cond_3

    .line 148
    const-string v1, "loginMain is null"

    invoke-static {v1}, Lcom/maya/sdk/s/core/utils/SLogUtil;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->father:Lcom/maya/sdk/s/app/login/view/LoginContent;

    invoke-virtual {v1}, Lcom/maya/sdk/s/app/login/view/LoginContent;->swtichToLoginHome()V

    .line 152
    :goto_1
    return v0

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_loginphnumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_loginphnumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->vserName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 170
    return v2
.end method

.method private initPopWindows()V
    .locals 6

    .line 176
    new-instance v0, Lcom/maya/sdk/framework/user/AccountManager;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/maya/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountsFromFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    .line 177
    new-instance v0, Lcom/maya/sdk/framework/user/AccountManager;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/maya/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountsFromVisitorFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, "visitorBeans":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    .line 183
    :cond_0
    if-eqz v0, :cond_1

    .line 184
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    :cond_1
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 188
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 189
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 190
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 191
    new-instance v2, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$1;

    invoke-direct {v2, p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 208
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_input:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    .line 210
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 211
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 212
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "maya_sdk_listview_pop_bg"

    const-string v5, "drawable"

    .line 213
    invoke-virtual {p0, v4, v5}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 212
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    new-instance v2, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountList:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountAdapter:Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    .line 217
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountAdapter:Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->accountAdapter:Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    invoke-virtual {v2}, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->notifyDataSetChanged()V

    .line 220
    return-void
.end method

.method private initViews()V
    .locals 2

    .line 91
    const-string v0, "maya_login_home_second_tv"

    const-string v1, "id"

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->maya_login_home_second_tv:Landroid/widget/TextView;

    .line 94
    const-string v0, "login_home_second_logo"

    const-string v1, "id"

    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_logo:Landroid/widget/ImageView;

    .line 96
    const-string v0, "login_home_second_select_account"

    const-string v1, "id"

    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_select_account:Landroid/widget/ImageView;

    .line 98
    const-string v0, "login_home_second_loginphnumber"

    const-string v1, "id"

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_loginphnumber:Landroid/widget/EditText;

    .line 100
    const-string v0, "login_home_second_enterGame"

    const-string v1, "id"

    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_enterGame:Landroid/widget/Button;

    .line 103
    const-string v0, "login_home_second_rl"

    const-string v1, "id"

    .line 104
    invoke-virtual {p0, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_rl:Landroid/widget/RelativeLayout;

    .line 105
    const-string v0, "login_home_second_input"

    const-string v1, "id"

    .line 106
    invoke-virtual {p0, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_input:Landroid/widget/RelativeLayout;

    .line 108
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSkinLgoinLogoDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSkinLgoinLogo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "downloadUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_logo:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->requestLoginLogoBitmap(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 112
    .end local v0    # "downloadUrl":Ljava/lang/String;
    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_logo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_logo:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToLogoListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToLogoListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_enterGame:Landroid/widget/Button;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToEnterGame;-><init>(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_rl:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToOtherAccountListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$ToOtherAccountListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->login_home_second_select_account:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$selectAccountListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method


# virtual methods
.method public LoginByAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    new-instance v3, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$2;

    invoke-direct {v3, p0, p2}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$2;-><init>(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;Ljava/lang/String;)V

    const-string v5, ""

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestLoginS(Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;ZLjava/lang/String;)V

    .line 349
    return-void
.end method

.method public LoginByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "uame"    # Ljava/lang/String;
    .param p2, "vname"    # Ljava/lang/String;
    .param p3, "phone"    # Ljava/lang/String;

    .line 358
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p3, v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "token":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    return-void

    .line 363
    :cond_0
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    new-instance v6, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$3;

    invoke-direct {v6, p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount$3;-><init>(Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;)V

    const/4 v7, 0x1

    const-string v8, ""

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    invoke-virtual/range {v2 .. v8}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestAccessTokenLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;ZLjava/lang/String;)V

    .line 387
    return-void
.end method

.method protected getParent()Landroid/view/View;
    .locals 2

    .line 65
    const-string v0, "maya_login_switch"

    const-string v1, "layout"

    invoke-virtual {p0, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->inflate(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate()V
    .locals 2

    .line 69
    invoke-super {p0}, Lcom/maya/sdk/s/core/view/BaseTagView;->onCreate()V

    .line 70
    invoke-direct {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->initViews()V

    .line 71
    new-instance v0, Lcom/maya/sdk/s/core/http/RequsetManager;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/maya/sdk/s/core/http/RequsetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    .line 72
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 75
    invoke-super {p0}, Lcom/maya/sdk/s/core/view/BaseTagView;->onResume()V

    .line 77
    iget-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->isFisrtStart:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->initAccountData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    const-string v1, "login_show_switch"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/core/http/RequsetManager;->submitSdkAction(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginSwitchAccount;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    const-string v1, "login_show_switch"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/core/http/RequsetManager;->submitSdkAction(Ljava/lang/String;)V

    .line 87
    :cond_1
    :goto_0
    return-void
.end method
