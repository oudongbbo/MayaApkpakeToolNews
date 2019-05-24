.class public Lcom/maya/sdk/s/app/login/AutoLoginDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;
    }
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/LinearLayout;

.field private f:I

.field private g:Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->f:I

    .line 128
    new-instance v0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog$3;-><init>(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->a:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->b:Landroid/content/Context;

    const-string v0, "window"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 51
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 52
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 53
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->h:I

    .line 54
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->i:I

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)Landroid/widget/LinearLayout;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->e:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private a(Landroid/view/View;Landroid/content/Context;)V
    .locals 2

    .line 161
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0xc8

    .line 162
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    .line 163
    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/s/app/login/AutoLoginDialog;Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->a(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->b:Landroid/content/Context;

    return-object p0
.end method

.method private b(Landroid/view/View;Landroid/content/Context;)V
    .locals 2

    .line 170
    new-instance p2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0xc8

    .line 171
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    .line 172
    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 173
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic b(Lcom/maya/sdk/s/app/login/AutoLoginDialog;Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->b(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->g:Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;

    return-object p0
.end method

.method static synthetic d(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->f:I

    return p0
.end method


# virtual methods
.method public a(Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->g:Lcom/maya/sdk/s/app/login/AutoLoginDialog$AutoLoginListener;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 124
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 59
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "maya_dialog_theme_main"

    const-string v1, "style"

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    const-string p1, "maya_login_auto_new"

    const-string v0, "layout"

    .line 62
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->b:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->setContentView(I)V

    const-string p1, "mContent"

    const-string v0, "id"

    .line 64
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->b:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->e:Landroid/widget/LinearLayout;

    .line 68
    iget-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result p1

    const-wide v0, 0x3fc0a3d70a3d70a4L    # 0.13

    if-eqz p1, :cond_0

    .line 69
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->h:I

    int-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    iget v3, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->h:I

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    mul-double v6, v6, v0

    double-to-int v3, v6

    invoke-direct {p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    iget v2, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->h:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->j:I

    .line 71
    iget v2, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->h:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    mul-double v2, v2, v0

    double-to-int v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->k:I

    goto :goto_0

    .line 73
    :cond_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->h:I

    int-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    iget v3, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->h:I

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    mul-double v6, v6, v0

    double-to-int v3, v6

    invoke-direct {p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    iget v2, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->h:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->j:I

    .line 75
    iget v2, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->h:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    mul-double v2, v2, v0

    double-to-int v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->k:I

    :goto_0
    const/4 v0, 0x1

    .line 78
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 79
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance p1, Lcom/maya/sdk/s/app/login/AutoLoginDialog$1;

    invoke-direct {p1, p0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog$1;-><init>(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)V

    invoke-virtual {p0, p1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const-string p1, "login_auto_name"

    const-string v0, "id"

    .line 92
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->b:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->c:Landroid/widget/TextView;

    const-string p1, "login_auto_switch"

    const-string v0, "id"

    .line 93
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->b:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->d:Landroid/widget/Button;

    .line 95
    iget-object p1, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->d:Landroid/widget/Button;

    new-instance v0, Lcom/maya/sdk/s/app/login/AutoLoginDialog$2;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/login/AutoLoginDialog$2;-><init>(Lcom/maya/sdk/s/app/login/AutoLoginDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/AutoLoginDialog;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x6a4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
