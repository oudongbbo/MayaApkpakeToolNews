.class public Lcom/maya/sdk/s/app/login/view/LoginByRegister;
.super Lcom/maya/sdk/s/core/view/BaseTagView;
.source "LoginByRegister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByRegister$PhoneSeeListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByRegister$PhoneClearLisener;,
        Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalClearListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistBackListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistNormalEnterGameListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistEnterGameListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalRegistListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByRegister$PhoneRegistListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;
    }
.end annotation


# instance fields
.field private countDown:Lcom/maya/sdk/framework/view/common/CountDownView;

.field private isNormalAgreementchecked:Z

.field private isPhoneAgreementchecked:Z

.field private isShowNormalPwd:Z

.field private isShowPhonePwd:Z

.field private loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;

.field private login_regist_agreement_tips:Landroid/widget/TextView;

.field private login_regist_agreement_tips2:Landroid/widget/TextView;

.field private login_regist_back:Landroid/widget/RelativeLayout;

.field private login_regist_checkBox:Landroid/widget/ImageView;

.field private login_regist_entergame:Landroid/widget/Button;

.field private login_regist_idcode_input:Landroid/widget/EditText;

.field private login_regist_idcode_tv:Landroid/widget/TextView;

.field private login_regist_normal_btn_rl:Landroid/widget/LinearLayout;

.field private login_regist_normal_checkBox:Landroid/widget/ImageView;

.field private login_regist_normal_entergame:Landroid/widget/Button;

.field private login_regist_normal_eye:Landroid/widget/ImageView;

.field private login_regist_normal_phone_clear:Landroid/widget/ImageView;

.field private login_regist_normalaccount_input:Landroid/widget/EditText;

.field private login_regist_normalpassword_input:Landroid/widget/EditText;

.field private login_regist_password_input:Landroid/widget/EditText;

.field private login_regist_phone_btn_rl:Landroid/widget/LinearLayout;

.field private login_regist_phone_clear:Landroid/widget/ImageView;

.field private login_regist_phone_eye:Landroid/widget/ImageView;

.field private login_regist_phonenumber_input:Landroid/widget/EditText;

.field private login_regist_rl_rl:Landroid/widget/RelativeLayout;

.field private login_regist_rl_rl2:Landroid/widget/RelativeLayout;

.field private login_regist_tvnormal:Landroid/widget/TextView;

.field private login_regist_tvnormal_line:Landroid/widget/TextView;

.field private login_regist_tvphone:Landroid/widget/TextView;

.field private login_regist_tvphone_line:Landroid/widget/TextView;

.field public regHandler:Landroid/os/Handler;

.field private requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

.field private showPhoneFirst:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/maya/sdk/s/app/login/view/LoginContent;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "ucView"    # Lcom/maya/sdk/s/app/login/view/LoginContent;

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/s/core/view/BaseTagView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isShowNormalPwd:Z

    .line 58
    iput-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isShowPhonePwd:Z

    .line 59
    iput-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isPhoneAgreementchecked:Z

    .line 60
    iput-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isNormalAgreementchecked:Z

    .line 69
    iput-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showPhoneFirst:Z

    .line 264
    new-instance v0, Lcom/maya/sdk/s/app/login/view/LoginByRegister$5;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$5;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->regHandler:Landroid/os/Handler;

    .line 84
    iput-object p3, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_phone_clear:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_clear:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    invoke-direct {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->loadPhoneRegView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isQuickClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    invoke-direct {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->loadNameRegView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isQuickClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_password_input:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_idcode_input:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/maya/sdk/s/app/login/view/LoginByRegister;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->registerByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isQuickClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normalpassword_input:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/maya/sdk/s/app/login/view/LoginByRegister;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->registerByName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Lcom/maya/sdk/s/app/login/view/LoginContent;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isShowNormalPwd:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/maya/sdk/s/app/login/view/LoginByRegister;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isShowNormalPwd:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_eye:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isShowPhonePwd:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/maya/sdk/s/app/login/view/LoginByRegister;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isShowPhonePwd:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_eye:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isNormalAgreementchecked:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/maya/sdk/s/app/login/view/LoginByRegister;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isNormalAgreementchecked:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_checkBox:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_agreement_tips2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isPhoneAgreementchecked:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/maya/sdk/s/app/login/view/LoginByRegister;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isPhoneAgreementchecked:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_checkBox:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_agreement_tips:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normalaccount_input:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    invoke-direct {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->loadLocalName()V

    return-void
.end method

.method static synthetic access$500(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isQuickClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_phonenumber_input:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Lcom/maya/sdk/framework/view/common/CountDownView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->countDown:Lcom/maya/sdk/framework/view/common/CountDownView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Lcom/maya/sdk/s/core/http/RequsetManager;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByRegister;

    .line 35
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isQuickClick()Z

    move-result v0

    return v0
.end method

.method private initViews()V
    .locals 4

    .line 118
    const-string v0, "login_regist_phonenumber_input"

    const-string v1, "id"

    .line 119
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_phonenumber_input:Landroid/widget/EditText;

    .line 120
    const-string v0, "login_regist_idcode_input"

    const-string v1, "id"

    .line 121
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 120
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_idcode_input:Landroid/widget/EditText;

    .line 122
    const-string v0, "login_regist_idcode_tv"

    const-string v1, "id"

    .line 123
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_idcode_tv:Landroid/widget/TextView;

    .line 124
    const-string v0, "login_regist_tvphone"

    const-string v1, "id"

    .line 125
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_tvphone:Landroid/widget/TextView;

    .line 126
    const-string v0, "login_regist_tvphone_line"

    const-string v1, "id"

    .line 127
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 126
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_tvphone_line:Landroid/widget/TextView;

    .line 128
    const-string v0, "login_regist_tvnormal"

    const-string v1, "id"

    .line 129
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 128
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_tvnormal:Landroid/widget/TextView;

    .line 130
    const-string v0, "login_regist_phone_btn_rl"

    const-string v1, "id"

    .line 131
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_btn_rl:Landroid/widget/LinearLayout;

    .line 132
    const-string v0, "login_regist_normal_btn_rl"

    const-string v1, "id"

    .line 133
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_btn_rl:Landroid/widget/LinearLayout;

    .line 135
    const-string v0, "login_regist_checkBox"

    const-string v1, "id"

    .line 136
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 135
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_checkBox:Landroid/widget/ImageView;

    .line 138
    const-string v0, "login_regist_agreement_tips"

    const-string v1, "id"

    .line 139
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 138
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_agreement_tips:Landroid/widget/TextView;

    .line 141
    const-string v0, "login_regist_agreement_tips2"

    const-string v1, "id"

    .line 142
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 141
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_agreement_tips2:Landroid/widget/TextView;

    .line 145
    const-string v0, "login_regist_back"

    const-string v1, "id"

    .line 146
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 145
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_back:Landroid/widget/RelativeLayout;

    .line 147
    const-string v0, "login_regist_rl_rl"

    const-string v1, "id"

    .line 148
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 147
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_rl_rl:Landroid/widget/RelativeLayout;

    .line 149
    const-string v0, "login_regist_rl_rl2"

    const-string v1, "id"

    .line 150
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 149
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_rl_rl2:Landroid/widget/RelativeLayout;

    .line 151
    const-string v0, "login_regist_password_input"

    const-string v1, "id"

    .line 152
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 151
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_password_input:Landroid/widget/EditText;

    .line 153
    const-string v0, "login_regist_normalaccount_input"

    const-string v1, "id"

    .line 154
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 153
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normalaccount_input:Landroid/widget/EditText;

    .line 155
    const-string v0, "login_regist_normalpassword_input"

    const-string v1, "id"

    .line 156
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 155
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normalpassword_input:Landroid/widget/EditText;

    .line 157
    const-string v0, "login_regist_entergame"

    const-string v1, "id"

    .line 158
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_entergame:Landroid/widget/Button;

    .line 159
    const-string v0, "login_regist_normal_entergame"

    const-string v1, "id"

    .line 160
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 159
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_entergame:Landroid/widget/Button;

    .line 161
    const-string v0, "login_regist_tvnormal_line"

    const-string v1, "id"

    .line 162
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 161
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_tvnormal_line:Landroid/widget/TextView;

    .line 164
    const-string v0, "login_regist_normal_checkBox"

    const-string v1, "id"

    .line 165
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 164
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_checkBox:Landroid/widget/ImageView;

    .line 168
    const-string v0, "login_regist_normal_phone_clear"

    const-string v1, "id"

    .line 169
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 168
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_phone_clear:Landroid/widget/ImageView;

    .line 171
    const-string v0, "login_regist_phone_clear"

    const-string v1, "id"

    .line 172
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 171
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_clear:Landroid/widget/ImageView;

    .line 174
    const-string v0, "login_regist_normal_eye"

    const-string v1, "id"

    .line 175
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 174
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_eye:Landroid/widget/ImageView;

    .line 178
    const-string v0, "login_regist_phone_eye"

    const-string v1, "id"

    .line 179
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_eye:Landroid/widget/ImageView;

    .line 181
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normalaccount_input:Landroid/widget/EditText;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 192
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_phonenumber_input:Landroid/widget/EditText;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$2;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$2;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 203
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_checkBox:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistPhoneCheckListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_checkBox:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistNormalCheckListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_btn_rl:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->countDown:Lcom/maya/sdk/framework/view/common/CountDownView;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/maya/sdk/framework/view/common/CountDownView;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_idcode_tv:Landroid/widget/TextView;

    const/16 v2, 0x3c

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/maya/sdk/framework/view/common/CountDownView;-><init>(Landroid/widget/TextView;ILandroid/app/Activity;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->countDown:Lcom/maya/sdk/framework/view/common/CountDownView;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_tvphone:Landroid/widget/TextView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$PhoneRegistListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$PhoneRegistListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_tvnormal:Landroid/widget/TextView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalRegistListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalRegistListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_entergame:Landroid/widget/Button;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistEnterGameListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistEnterGameListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_entergame:Landroid/widget/Button;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistNormalEnterGameListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistNormalEnterGameListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_idcode_tv:Landroid/widget/TextView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistGetCodeListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_back:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistBackListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$RegistBackListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_phone_clear:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalClearListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalClearListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_clear:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$PhoneClearLisener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$PhoneClearLisener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_eye:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$NormalSeeListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_eye:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$PhoneSeeListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$PhoneSeeListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_agreement_tips:Landroid/widget/TextView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$3;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$3;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_agreement_tips2:Landroid/widget/TextView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$4;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$4;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    return-void
.end method

.method private loadDefaultUserNameAndPwd()V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$6;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestGetRegName(Lcom/maya/sdk/framework/http/HttpCallBack;Z)V

    .line 338
    return-void
.end method

.method private loadDefaultregview()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->loadNameRegView()V

    .line 114
    return-void
.end method

.method private loadLocalName()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normalaccount_input:Landroid/widget/EditText;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$7;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$7;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 349
    return-void
.end method

.method private loadNameRegView()V
    .locals 5

    .line 563
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u666e\u901a\u6ce8\u518c\u3002\u3002\u3002"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    const-string v1, "reg_show_name"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/core/http/RequsetManager;->submitSdkAction(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_tvnormal:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "maya_login_text_black"

    const-string v3, "color"

    .line 569
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 568
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 570
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_tvphone:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "maya_login_text_gray_dark"

    const-string v3, "color"

    .line 572
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    .line 571
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 570
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 575
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_btn_rl:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_tvnormal_line:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_btn_rl:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_tvphone_line:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_rl_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_rl_rl2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normalaccount_input:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normalaccount_input:Landroid/widget/EditText;

    .line 585
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 584
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->loadDefaultUserNameAndPwd()V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normalpassword_input:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normalpassword_input:Landroid/widget/EditText;

    .line 590
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 589
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normalpassword_input:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getRandNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 594
    :cond_1
    return-void
.end method

.method private loadPhoneRegView()V
    .locals 5

    .line 526
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    const-string v1, "reg_show_phone"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/core/http/RequsetManager;->submitSdkAction(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->countDown:Lcom/maya/sdk/framework/view/common/CountDownView;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Lcom/maya/sdk/framework/view/common/CountDownView;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_idcode_tv:Landroid/widget/TextView;

    const/16 v2, 0x3c

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/maya/sdk/framework/view/common/CountDownView;-><init>(Landroid/widget/TextView;ILandroid/app/Activity;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->countDown:Lcom/maya/sdk/framework/view/common/CountDownView;

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_tvphone:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "maya_login_text_black"

    const-string v3, "color"

    .line 533
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 532
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 534
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_tvnormal:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "maya_login_text_gray_dark"

    const-string v3, "color"

    .line 536
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    .line 535
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 534
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 539
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_normal_btn_rl:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_tvnormal_line:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_phone_btn_rl:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_tvphone_line:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_rl_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->login_regist_rl_rl2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 547
    return-void
.end method

.method private registerByName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 353
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 358
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-le v0, v2, :cond_1

    goto :goto_1

    .line 363
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    goto :goto_0

    .line 368
    :cond_2
    iget-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isNormalAgreementchecked:Z

    if-nez v0, :cond_3

    .line 369
    const-string v0, "maya_agreement_tips"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    .line 370
    return-void

    .line 374
    :cond_3
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getContentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/ViewUtil;->saveView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByRegister$8;

    invoke-direct {v1, p0, p2}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$8;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestRegisterByName(Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;Z)V

    .line 402
    return-void

    .line 364
    :cond_4
    :goto_0
    const-string v0, "maya_tips_pwd_limit"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    .line 365
    return-void

    .line 359
    :cond_5
    :goto_1
    const-string v0, "maya_tips_name_limit"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    .line 360
    return-void

    .line 354
    :cond_6
    :goto_2
    const-string v0, "maya_tips_login_no_name_or_pwd"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method private registerByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    .line 406
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 411
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    const-string v0, "maya_common_toast_vcode_is_null"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    .line 413
    return-void

    .line 416
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-le v0, v2, :cond_2

    goto :goto_1

    .line 421
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_3

    goto :goto_0

    .line 426
    :cond_3
    iget-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->isPhoneAgreementchecked:Z

    if-nez v0, :cond_4

    .line 427
    const-string v0, "maya_agreement_tips"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    .line 428
    return-void

    .line 432
    :cond_4
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getContentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/ViewUtil;->saveView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 434
    iget-object v3, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    new-instance v7, Lcom/maya/sdk/s/app/login/view/LoginByRegister$9;

    invoke-direct {v7, p0, p2}, Lcom/maya/sdk/s/app/login/view/LoginByRegister$9;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByRegister;Ljava/lang/String;)V

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestRegisterByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;Z)V

    .line 459
    return-void

    .line 422
    :cond_5
    :goto_0
    const-string v0, "maya_tips_pwd_limit"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    .line 423
    return-void

    .line 417
    :cond_6
    :goto_1
    const-string v0, "maya_tips_name_limit"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    .line 418
    return-void

    .line 407
    :cond_7
    :goto_2
    const-string v0, "maya_tips_login_no_name_or_pwd"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showToast(Ljava/lang/String;)V

    .line 408
    return-void
.end method


# virtual methods
.method protected getParent()Landroid/view/View;
    .locals 3

    .line 88
    const-string v0, "maya_login_by_register"

    const-string v1, "layout"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->inflate(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isShowPhoneFirst()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showPhoneFirst:Z

    return v0
.end method

.method protected onCreate()V
    .locals 2

    .line 92
    invoke-super {p0}, Lcom/maya/sdk/s/core/view/BaseTagView;->onCreate()V

    .line 93
    invoke-direct {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->initViews()V

    .line 94
    new-instance v0, Lcom/maya/sdk/s/core/http/RequsetManager;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/maya/sdk/s/core/http/RequsetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 98
    invoke-super {p0}, Lcom/maya/sdk/s/core/view/BaseTagView;->onResume()V

    .line 108
    invoke-direct {p0}, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->loadDefaultregview()V

    .line 109
    return-void
.end method

.method public setShowPhoneFirst(Z)V
    .locals 0
    .param p1, "showPhoneFirst"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByRegister;->showPhoneFirst:Z

    .line 77
    return-void
.end method
