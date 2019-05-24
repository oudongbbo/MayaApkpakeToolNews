.class public Lcom/maya/sdk/s/app/exit/ExitDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/s/app/exit/ExitDialog$c;,
        Lcom/maya/sdk/s/app/exit/ExitDialog$d;,
        Lcom/maya/sdk/s/app/exit/ExitDialog$a;,
        Lcom/maya/sdk/s/app/exit/ExitDialog$b;,
        Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Z

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->a:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->b:Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;

    const-string p2, "window"

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 47
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 48
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 49
    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->k:I

    .line 50
    iget p1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->l:I

    return-void
.end method

.method private a()V
    .locals 9

    const-string v0, "mContent"

    const-string v1, "id"

    .line 74
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->h:Landroid/widget/RelativeLayout;

    .line 78
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    const-wide v1, 0x3fe6666666666666L    # 0.7

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->k:I

    int-to-double v3, v3

    const-wide v5, 0x3fe3333333333333L    # 0.6

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v3, v3

    iget v4, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->k:I

    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    mul-double v7, v7, v1

    double-to-int v1, v7

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->k:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v3, v3

    iget v4, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->k:I

    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    mul-double v7, v7, v1

    double-to-int v1, v7

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v1, 0x11

    .line 87
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 88
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "exitdialog_starlogo"

    const-string v1, "id"

    .line 90
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->a:Landroid/content/Context;

    .line 91
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->d:Landroid/widget/ImageView;

    const-string v0, "exitdialog_bg"

    const-string v1, "id"

    .line 92
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->a:Landroid/content/Context;

    .line 93
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->c:Landroid/widget/ImageView;

    const-string v0, "exitdialog_bbsbtn"

    const-string v1, "id"

    .line 94
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->a:Landroid/content/Context;

    .line 95
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->e:Landroid/widget/ImageButton;

    const-string v0, "exitdialog_giftbtn"

    const-string v1, "id"

    .line 96
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->a:Landroid/content/Context;

    .line 97
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->f:Landroid/widget/ImageButton;

    const-string v0, "exitdialog_exitbtn"

    const-string v1, "id"

    .line 98
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->a:Landroid/content/Context;

    .line 99
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->g:Landroid/widget/Button;

    const-string v0, "exitdialog_ad_view"

    const-string v1, "id"

    .line 100
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->a:Landroid/content/Context;

    .line 101
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->i:Landroid/widget/RelativeLayout;

    .line 103
    sget-object v0, Lcom/maya/sdk/s/core/a/a;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    new-instance v0, Lcom/maya/sdk/framework/utils/ImageUtil;

    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/maya/sdk/framework/utils/ImageUtil;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/maya/sdk/s/core/a/a;->D:Ljava/lang/String;

    new-instance v2, Lcom/maya/sdk/s/app/exit/ExitDialog$2;

    invoke-direct {v2, p0}, Lcom/maya/sdk/s/app/exit/ExitDialog$2;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/maya/sdk/framework/utils/ImageUtil;->a(Ljava/lang/String;Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;)V

    .line 123
    :goto_1
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/exit/ExitDialog$b;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/exit/ExitDialog$b;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->e:Landroid/widget/ImageButton;

    new-instance v1, Lcom/maya/sdk/s/app/exit/ExitDialog$a;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/exit/ExitDialog$a;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->f:Landroid/widget/ImageButton;

    new-instance v1, Lcom/maya/sdk/s/app/exit/ExitDialog$d;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/exit/ExitDialog$d;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->g:Landroid/widget/Button;

    new-instance v1, Lcom/maya/sdk/s/app/exit/ExitDialog$c;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/exit/ExitDialog$c;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/s/app/exit/ExitDialog;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/maya/sdk/s/app/exit/ExitDialog;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/f;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/s/app/exit/ExitDialog;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->j:Z

    return p0
.end method

.method static synthetic a(Lcom/maya/sdk/s/app/exit/ExitDialog;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/maya/sdk/s/app/exit/ExitDialog;)Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->b:Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;

    return-object p0
.end method

.method static synthetic c(Lcom/maya/sdk/s/app/exit/ExitDialog;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->i:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic d(Lcom/maya/sdk/s/app/exit/ExitDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/maya/sdk/s/app/exit/ExitDialog;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 54
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "maya_dialog_theme"

    const-string v1, "style"

    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    const-string p1, "maya_dialog_exitgame"

    const-string v0, "layout"

    .line 57
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->a:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/maya/sdk/s/app/exit/ExitDialog;->setContentView(I)V

    .line 59
    invoke-direct {p0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->a()V

    .line 61
    new-instance p1, Lcom/maya/sdk/s/app/exit/ExitDialog$1;

    invoke-direct {p1, p0}, Lcom/maya/sdk/s/app/exit/ExitDialog$1;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {p0, p1}, Lcom/maya/sdk/s/app/exit/ExitDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
