.class public Lcom/maya/sdk/s/app/login/AutoLoginDialog;
.super Landroid/app/Dialog;
.source "AutoLoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;
    }
.end annotation


# static fields
.field private static final ACTION_END:I = 0x1

.field private static final ACTION_START:I


# instance fields
.field private autoListener:Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;

.field private heightAnimate:I

.field private login_auto_switch:Landroid/widget/Button;

.field private login_auto_text:Landroid/widget/TextView;

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private screenHeight:I

.field private screenWidth:I

.field private showName:Ljava/lang/CharSequence;

.field private showTime:I

.field private widthAnimate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->showTime:I

    .line 128
    new-instance v0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;-><init>(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mContext:Landroid/content/Context;

    .line 49
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 51
    .local v0, "manager":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 52
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 53
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->screenWidth:I

    .line 54
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->screenHeight:I

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    .line 22
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    .line 22
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/maya/sdk/s/app/login/AutoLoginDialog;Landroid/view/View;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/AutoLoginDialog;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->startAnimate(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    .line 22
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->autoListener:Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/maya/sdk/s/app/login/AutoLoginDialog;Landroid/view/View;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/AutoLoginDialog;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->endAnimate(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/AutoLoginDialog;

    .line 22
    iget v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->showTime:I

    return v0
.end method

.method private endAnimate(Landroid/view/View;Landroid/content/Context;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .line 170
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 171
    .local v0, "translateAnimation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 174
    return-void
.end method

.method private startAnimate(Landroid/view/View;Landroid/content/Context;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .line 161
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 162
    .local v0, "translateAnimation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 163
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 165
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 124
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 125
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "maya_dialog_theme_main"

    const-string v2, "style"

    iget-object v3, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 62
    const-string v0, "maya_login_auto_new"

    const-string v1, "layout"

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->setContentView(I)V

    .line 64
    const-string v0, "mContent"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mContent:Landroid/widget/LinearLayout;

    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v1

    const-wide v2, 0x3fc0a3d70a3d70a4L    # 0.13

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->screenWidth:I

    int-to-double v4, v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->screenWidth:I

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    mul-double v8, v8, v2

    double-to-int v5, v8

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 70
    iget v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->screenWidth:I

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v1, v4

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->widthAnimate:I

    .line 71
    iget v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->screenWidth:I

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    mul-double v4, v4, v2

    double-to-int v1, v4

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->heightAnimate:I

    goto :goto_0

    .line 73
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->screenWidth:I

    int-to-double v4, v4

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->screenWidth:I

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    mul-double v8, v8, v2

    double-to-int v5, v8

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 74
    iget v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->screenWidth:I

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v1, v4

    iput v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->widthAnimate:I

    .line 75
    iget v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->screenWidth:I

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    mul-double v4, v4, v2

    double-to-int v1, v4

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->heightAnimate:I

    .line 78
    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 79
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v1, Lcom/maya/sdk/s/app/login/AutoLoginDialog$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog$1;-><init>(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)V

    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 92
    const-string v1, "login_auto_name"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->login_auto_text:Landroid/widget/TextView;

    .line 93
    const-string v1, "login_auto_switch"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->login_auto_switch:Landroid/widget/Button;

    .line 95
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->login_auto_switch:Landroid/widget/Button;

    new-instance v2, Lcom/maya/sdk/s/app/login/AutoLoginDialog$2;

    invoke-direct {v2, p0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog$2;-><init>(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method public setAutoLoginListener(Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;

    .line 113
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->autoListener:Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;

    .line 114
    return-void
.end method

.method public setUserName(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->login_auto_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->login_auto_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x6a4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 120
    return-void
.end method
