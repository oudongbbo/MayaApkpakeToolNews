.class public Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;
.super Lcom/maya/sdk/s/core/view/BaseTagView;
.source "LoginByForgetPwd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$PhoneClearLisener;,
        Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$BindBackListener;,
        Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step1Listener;
    }
.end annotation


# instance fields
.field private countDown:Lcom/maya/sdk/framework/view/common/CountDownView;

.field private isShowPhonePwd:Z

.field private loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;

.field private login_forgetpwd_back:Landroid/widget/RelativeLayout;

.field private login_forgetpwd_step1:Landroid/view/View;

.field private login_forgetpwd_step1_next:Landroid/widget/Button;

.field private login_forgetpwd_step1_phone:Landroid/widget/EditText;

.field private login_forgetpwd_step1_phone_clear:Landroid/widget/ImageView;

.field private login_forgetpwd_step2:Landroid/view/View;

.field private login_forgetpwd_step2_eye:Landroid/widget/ImageView;

.field private login_forgetpwd_step2_idcode_input:Landroid/widget/EditText;

.field private login_forgetpwd_step2_idcode_tv:Landroid/widget/TextView;

.field private login_forgetpwd_step2_phone_text:Landroid/widget/TextView;

.field private login_forgetpwd_step2_pwd_input:Landroid/widget/EditText;

.field private login_forgetpwd_step2_submmit:Landroid/widget/Button;

.field private mobile:Ljava/lang/String;

.field private requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

.field private vname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/maya/sdk/s/app/login/view/LoginContent;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "ucView"    # Lcom/maya/sdk/s/app/login/view/LoginContent;

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/s/core/view/BaseTagView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->isShowPhonePwd:Z

    .line 67
    iput-object p3, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 29
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_phone_clear:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 29
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 29
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_idcode_input:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->mobile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 29
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->isQuickClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/maya/sdk/framework/view/common/CountDownView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 29
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->countDown:Lcom/maya/sdk/framework/view/common/CountDownView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/maya/sdk/s/core/http/RequsetManager;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 29
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 29
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->isQuickClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->submmitChangePwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 29
    iget-boolean v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->isShowPhonePwd:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;
    .param p1, "x1"    # Z

    .line 29
    iput-boolean p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->isShowPhonePwd:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 29
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_eye:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 29
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 29
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 29
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_phone_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Lcom/maya/sdk/s/app/login/view/LoginContent;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 29
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->loginMain:Lcom/maya/sdk/s/app/login/view/LoginContent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 29
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->isQuickClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 29
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_phone:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->requestBindInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;

    .line 29
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_pwd_input:Landroid/widget/EditText;

    return-object v0
.end method

.method private getIdByName(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 92
    const-string v0, "id"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private initViews()V
    .locals 4

    .line 98
    const-string v0, "login_forgetpwd_back"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_back:Landroid/widget/RelativeLayout;

    .line 100
    const-string v0, "login_forgetpwd_step1"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1:Landroid/view/View;

    .line 101
    const-string v0, "login_forgetpwd_step1_phone_input"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_phone:Landroid/widget/EditText;

    .line 102
    const-string v0, "login_forgetpwd_step1_phone_clear"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_phone_clear:Landroid/widget/ImageView;

    .line 103
    const-string v0, "login_forgetpwd_step1_next"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_next:Landroid/widget/Button;

    .line 105
    const-string v0, "login_forgetpwd_step2"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2:Landroid/view/View;

    .line 106
    const-string v0, "login_forgetpwd_step2_phone_text"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_phone_text:Landroid/widget/TextView;

    .line 107
    const-string v0, "login_forgetpwd_step2_idcode_tv"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_idcode_tv:Landroid/widget/TextView;

    .line 108
    const-string v0, "login_forgetpwd_step2_idcode_input"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_idcode_input:Landroid/widget/EditText;

    .line 109
    const-string v0, "login_forgetpwd_step2_eye"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_eye:Landroid/widget/ImageView;

    .line 110
    const-string v0, "login_forgetpwd_step2_pwd_input"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_pwd_input:Landroid/widget/EditText;

    .line 111
    const-string v0, "login_forgetpwd_step2_submmit"

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_submmit:Landroid/widget/Button;

    .line 114
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_phone:Landroid/widget/EditText;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$1;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 127
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->countDown:Lcom/maya/sdk/framework/view/common/CountDownView;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/maya/sdk/framework/view/common/CountDownView;

    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_idcode_tv:Landroid/widget/TextView;

    const/16 v2, 0x3c

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/maya/sdk/framework/view/common/CountDownView;-><init>(Landroid/widget/TextView;ILandroid/app/Activity;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->countDown:Lcom/maya/sdk/framework/view/common/CountDownView;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_back:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$BindBackListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$BindBackListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_next:Landroid/widget/Button;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step1Listener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step1Listener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step1_phone_clear:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$PhoneClearLisener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$PhoneClearLisener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_idcode_tv:Landroid/widget/TextView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2GetVcodeListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_eye:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2ShowWEyeListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->login_forgetpwd_step2_submmit:Landroid/widget/Button;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$Step2SubmmitListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method private requestBindInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "uname"    # Ljava/lang/String;

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "\u7528\u6237\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    .line 151
    return-void

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->vname:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$2;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)V

    invoke-virtual {v0, p1, v1}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestBindInfo(Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;)V

    .line 220
    return-void
.end method

.method private submmitChangePwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 229
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const-string v0, "maya_bind_phone_tips"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    .line 231
    return-void

    .line 234
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-le v0, v2, :cond_2

    goto :goto_1

    .line 239
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_3

    goto :goto_0

    .line 244
    :cond_3
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    new-instance v6, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3;

    invoke-direct {v6, p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd$3;-><init>(Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;)V

    const/4 v7, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/maya/sdk/s/core/http/RequsetManager;->requestFindPwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/maya/sdk/framework/http/HttpCallBack;Z)V

    .line 270
    return-void

    .line 240
    :cond_4
    :goto_0
    const-string v0, "maya_tips_pwd_limit"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    .line 241
    return-void

    .line 235
    :cond_5
    :goto_1
    const-string v0, "maya_tips_name_limit"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    .line 236
    return-void

    .line 225
    :cond_6
    :goto_2
    const-string v0, "maya_tips_login_no_name_or_pwd"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getStringByName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->showToast(Ljava/lang/String;)V

    .line 226
    return-void
.end method


# virtual methods
.method protected getParent()Landroid/view/View;
    .locals 3

    .line 72
    const-string v0, "maya_login_forgetpwd"

    const-string v1, "layout"

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->inflate(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/maya/sdk/s/core/view/BaseTagView;->onCreate()V

    .line 79
    invoke-direct {p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->initViews()V

    .line 80
    new-instance v0, Lcom/maya/sdk/s/core/http/RequsetManager;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/maya/sdk/s/core/http/RequsetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/maya/sdk/s/core/view/BaseTagView;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginByForgetPwd;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    const-string v1, "forgetpwd"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/core/http/RequsetManager;->submitSdkAction(Ljava/lang/String;)V

    .line 88
    return-void
.end method
