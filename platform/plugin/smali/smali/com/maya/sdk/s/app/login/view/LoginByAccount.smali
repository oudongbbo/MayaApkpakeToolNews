.class public Lcom/maya/sdk/s/app/login/view/LoginByAccount;
.super Lcom/maya/sdk/s/core/view/BaseTagView;
.source "LoginByAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;,
        Lcom/maya/sdk/s/app/login/view/LoginByAccount$ClearAccountListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountForgetPassword;,
        Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountRegistListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToHomeBackListener;
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

.field private accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/sdk/framework/user/UserInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private imageView1:Landroid/widget/ImageView;

.field private isShowPwd:Z

.field private loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;

.field private login_account_accountclear:Landroid/widget/ImageView;

.field private login_account_back:Landroid/widget/ImageView;

.field private login_account_entergame:Landroid/widget/Button;

.field private login_account_forgetpassword:Landroid/widget/TextView;

.field private login_account_input:Landroid/widget/RelativeLayout;

.field private login_account_loginphnumber:Landroid/widget/EditText;

.field private login_account_logo:Landroid/widget/ImageView;

.field private login_account_password:Landroid/widget/EditText;

.field private login_account_regist:Landroid/widget/TextView;

.field private login_account_select_account:Landroid/widget/ImageView;

.field private login_account_visitor:Landroid/widget/TextView;

.field regHandler:Landroid/os/Handler;

.field private requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/maya/sdk/s/app/login/view/LoginContent;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "ucView"    # Lcom/maya/sdk/s/app/login/view/LoginContent;

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/s/core/view/BaseTagView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->isShowPwd:Z

    .line 339
    new-instance v0, Lcom/maya/sdk/s/app/login/view/LoginByAccount$3;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount$3;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->regHandler:Landroid/os/Handler;

    .line 68
    iput-object p3, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 40
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_accountclear:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 40
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 40
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_entergame:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Lcom/maya/sdk/s/core/http/RequsetManager;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 40
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 40
    iget-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->isShowPwd:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/maya/sdk/s/app/login/view/LoginByAccount;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;
    .param p1, "x1"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->isShowPwd:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 40
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->imageView1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 40
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->isQuickClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 40
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->accounts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 40
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_loginphnumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 40
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_password:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Lcom/maya/sdk/s/app/login/view/LoginContent;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 40
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 40
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->isQuickClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 40
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_input:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 40
    invoke-direct {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->initPopWindows()V

    return-void
.end method

.method static synthetic access$900(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByAccount;

    .line 40
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->isQuickClick()Z

    move-result v0

    return v0
.end method

.method private getViewId(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 100
    const-string v0, "id"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private initPopWindows()V
    .locals 5

    .line 183
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, "listView":Landroid/widget/ListView;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 186
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 187
    const-string v1, "maya_sdk_listview_pop_bg"

    const-string v2, "drawable"

    .line 188
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 190
    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByAccount$2;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount$2;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 202
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_input:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-direct {v1, v0, v2, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    .line 204
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 205
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 206
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->accountSelectPop:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    new-instance v1, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->accounts:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->accountAdapter:Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    .line 210
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->accountAdapter:Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->accountAdapter:Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;

    invoke-virtual {v1}, Lcom/maya/sdk/s/app/login/model/AccountPopAdapter;->notifyDataSetChanged()V

    .line 213
    return-void
.end method

.method private initViews()V
    .locals 3

    .line 106
    const-string v0, "login_account_back"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_back:Landroid/widget/ImageView;

    .line 107
    const-string v0, "login_account_back"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_back:Landroid/widget/ImageView;

    .line 108
    const-string v0, "login_account_logo"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_logo:Landroid/widget/ImageView;

    .line 109
    const-string v0, "login_account_select_account"

    .line 110
    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_select_account:Landroid/widget/ImageView;

    .line 111
    const-string v0, "login_account_loginphnumber"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_loginphnumber:Landroid/widget/EditText;

    .line 112
    const-string v0, "login_account_password"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_password:Landroid/widget/EditText;

    .line 113
    const-string v0, "login_account_entergame"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_entergame:Landroid/widget/Button;

    .line 114
    const-string v0, "login_account_regist"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_regist:Landroid/widget/TextView;

    .line 115
    const-string v0, "login_account_forgetpassword"

    .line 116
    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_forgetpassword:Landroid/widget/TextView;

    .line 117
    const-string v0, "login_account_visitor"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_visitor:Landroid/widget/TextView;

    .line 118
    const-string v0, "login_account_input"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_input:Landroid/widget/RelativeLayout;

    .line 120
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSkinLgoinLogoDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSkinLgoinLogo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "downloadUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_logo:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->requestLoginLogoBitmap(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 125
    .end local v0    # "downloadUrl":Ljava/lang/String;
    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_logo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_loginphnumber:Landroid/widget/EditText;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByAccount$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 141
    const-string v0, "login_account_accountclear"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_accountclear:Landroid/widget/ImageView;

    .line 143
    const-string v0, "imageView1"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->imageView1:Landroid/widget/ImageView;

    .line 145
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToHomeBackListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToHomeBackListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_select_account:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount$SelectMoreAccountListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_entergame:Landroid/widget/Button;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountEnterGameListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_regist:Landroid/widget/TextView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountRegistListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountRegistListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_forgetpassword:Landroid/widget/TextView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountForgetPassword;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount$AccountForgetPassword;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_visitor:Landroid/widget/TextView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ToVistorlogin;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->imageView1:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount$PasswordStateListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_accountclear:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ClearAccountListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount$ClearAccountListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v0, Lcom/maya/sdk/framework/user/AccountManager;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/maya/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountsFromFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->accountList:Ljava/util/List;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->accounts:Ljava/util/List;

    .line 169
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->accountList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->accountList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->accountList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/sdk/framework/user/UserInfoBean;

    .line 172
    .local v1, "userInfoBean":Lcom/maya/sdk/framework/user/UserInfoBean;
    invoke-virtual {v1}, Lcom/maya/sdk/framework/user/UserInfoBean;->getPwd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->accounts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v1    # "userInfoBean":Lcom/maya/sdk/framework/user/UserInfoBean;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method protected getParent()Landroid/view/View;
    .locals 3

    .line 72
    const-string v0, "maya_login_account"

    const-string v1, "layout"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->inflate(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate()V
    .locals 2

    .line 77
    invoke-super {p0}, Lcom/maya/sdk/s/core/view/BaseTagView;->onCreate()V

    .line 78
    invoke-direct {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->initViews()V

    .line 79
    new-instance v0, Lcom/maya/sdk/s/core/http/RequsetManager;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/maya/sdk/s/core/http/RequsetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    .line 80
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 83
    invoke-super {p0}, Lcom/maya/sdk/s/core/view/BaseTagView;->onResume()V

    .line 85
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    const-string v1, "login_show"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/core/http/RequsetManager;->submitSdkAction(Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/maya/sdk/framework/user/AccountManager;

    .line 89
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/maya/sdk/framework/user/AccountManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/user/AccountManager;->getAccountsFromVisitorFile(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "vistorLists":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/framework/user/UserInfoBean;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_visitor:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->login_account_visitor:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :goto_0
    return-void
.end method

.method public visitorlogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "vname"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;

    .line 415
    const-string v0, "maya_login_ing"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "tips":Ljava/lang/String;
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByAccount;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    new-instance v5, Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;

    invoke-direct {v5, p0, p2}, Lcom/maya/sdk/s/app/login/view/LoginByAccount$4;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByAccount;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestLoginS(Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;ZLjava/lang/String;)V

    .line 447
    return-void
.end method
