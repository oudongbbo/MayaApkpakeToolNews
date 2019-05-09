.class public Lcom/maya/sdk/s/app/login/view/LoginHome;
.super Lcom/maya/sdk/s/core/view/BaseTagView;
.source "LoginHome.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/s/app/login/view/LoginHome$ToStarjoysLoginListener;,
        Lcom/maya/sdk/s/app/login/view/LoginHome$ToLogoListener;,
        Lcom/maya/sdk/s/app/login/view/LoginHome$ToNameRegListener;,
        Lcom/maya/sdk/s/app/login/view/LoginHome$ToPhoneLoginListener;
    }
.end annotation


# instance fields
.field private father:Lcom/maya/sdk/s/app/login/view/LoginContent;

.field private login_home_accountlogin:Landroid/widget/Button;

.field private login_home_logo:Landroid/widget/ImageView;

.field private login_home_phonelogin:Landroid/widget/Button;

.field private login_home_quickregist:Landroid/widget/Button;

.field private maya_login_new_home_tv:Landroid/widget/TextView;

.field private requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/maya/sdk/s/app/login/view/LoginContent;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "fatherView"    # Lcom/maya/sdk/s/app/login/view/LoginContent;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/s/core/view/BaseTagView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 31
    iput-object p3, p0, Lcom/maya/sdk/s/app/login/view/LoginHome;->father:Lcom/maya/sdk/s/app/login/view/LoginContent;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/s/app/login/view/LoginHome;)Lcom/maya/sdk/s/app/login/view/LoginContent;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/view/LoginHome;

    .line 15
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginHome;->father:Lcom/maya/sdk/s/app/login/view/LoginContent;

    return-object v0
.end method

.method private initViews()V
    .locals 2

    .line 54
    const-string v0, "maya_login_new_home_tv"

    const-string v1, "id"

    invoke-virtual {p0, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginHome;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginHome;->maya_login_new_home_tv:Landroid/widget/TextView;

    .line 55
    const-string v0, "login_home_logo"

    const-string v1, "id"

    invoke-virtual {p0, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginHome;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginHome;->login_home_logo:Landroid/widget/ImageView;

    .line 56
    const-string v0, "login_home_vlogin"

    const-string v1, "id"

    invoke-virtual {p0, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginHome;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginHome;->login_home_phonelogin:Landroid/widget/Button;

    .line 57
    const-string v0, "login_home_quickregist"

    const-string v1, "id"

    invoke-virtual {p0, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginHome;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginHome;->login_home_quickregist:Landroid/widget/Button;

    .line 58
    const-string v0, "login_home_accountlogin"

    const-string v1, "id"

    invoke-virtual {p0, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginHome;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginHome;->login_home_accountlogin:Landroid/widget/Button;

    .line 61
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginHome;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSkinLgoinLogoDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginHome;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSkinLgoinLogo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "downloadUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/view/LoginHome;->login_home_logo:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/maya/sdk/s/app/login/view/LoginHome;->requestLoginLogoBitmap(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 66
    .end local v0    # "downloadUrl":Ljava/lang/String;
    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginHome;->maya_login_new_home_tv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginHome;->login_home_logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginHome;->login_home_logo:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginHome$ToLogoListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginHome$ToLogoListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginHome;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginHome;->login_home_phonelogin:Landroid/widget/Button;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginHome$ToPhoneLoginListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginHome$ToPhoneLoginListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginHome;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginHome;->login_home_quickregist:Landroid/widget/Button;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginHome$ToNameRegListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginHome$ToNameRegListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginHome;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginHome;->login_home_accountlogin:Landroid/widget/Button;

    new-instance v1, Lcom/maya/sdk/s/app/login/view/LoginHome$ToStarjoysLoginListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/view/LoginHome$ToStarjoysLoginListener;-><init>(Lcom/maya/sdk/s/app/login/view/LoginHome;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method


# virtual methods
.method protected getParent()Landroid/view/View;
    .locals 2

    .line 36
    const-string v0, "maya_login_home"

    const-string v1, "layout"

    invoke-virtual {p0, v0, v1}, Lcom/maya/sdk/s/app/login/view/LoginHome;->getResourcesID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/view/LoginHome;->inflate(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate()V
    .locals 2

    .line 41
    invoke-super {p0}, Lcom/maya/sdk/s/core/view/BaseTagView;->onCreate()V

    .line 42
    invoke-direct {p0}, Lcom/maya/sdk/s/app/login/view/LoginHome;->initViews()V

    .line 43
    new-instance v0, Lcom/maya/sdk/s/core/http/RequsetManager;

    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/view/LoginHome;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/maya/sdk/s/core/http/RequsetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginHome;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    .line 44
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/maya/sdk/s/core/view/BaseTagView;->onResume()V

    .line 49
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/view/LoginHome;->requestManager:Lcom/maya/sdk/s/core/http/RequsetManager;

    const-string v1, "login_show_home"

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/core/http/RequsetManager;->submitSdkAction(Ljava/lang/String;)V

    .line 50
    return-void
.end method
