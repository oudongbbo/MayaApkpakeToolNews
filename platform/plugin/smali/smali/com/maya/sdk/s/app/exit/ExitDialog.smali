.class public Lcom/maya/sdk/s/app/exit/ExitDialog;
.super Landroid/app/Dialog;
.source "ExitDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogExitListener;,
        Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogGiftListener;,
        Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogBBSListener;,
        Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogBitmapListener;,
        Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;
    }
.end annotation


# instance fields
.field private exitdialog_ad_view:Landroid/widget/RelativeLayout;

.field private exitdialog_bbsbtn:Landroid/widget/ImageButton;

.field private exitdialog_bg:Landroid/widget/ImageView;

.field private exitdialog_exitbtn:Landroid/widget/Button;

.field private exitdialog_giftbtn:Landroid/widget/ImageButton;

.field private exitdialog_starlogo:Landroid/widget/ImageView;

.field private isExitClick:Z

.field private mCallback:Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;

.field private mContent:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;

    .line 42
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mCallback:Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;

    .line 45
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 47
    .local v0, "manager":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 48
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 49
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->screenWidth:I

    .line 50
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->screenHeight:I

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/s/app/exit/ExitDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/exit/ExitDialog;

    .line 26
    iget-boolean v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->isExitClick:Z

    return v0
.end method

.method static synthetic access$002(Lcom/maya/sdk/s/app/exit/ExitDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/exit/ExitDialog;
    .param p1, "x1"    # Z

    .line 26
    iput-boolean p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->isExitClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/maya/sdk/s/app/exit/ExitDialog;)Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/exit/ExitDialog;

    .line 26
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mCallback:Lcom/maya/sdk/s/app/exit/ExitDialog$ExitCallBack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/maya/sdk/s/app/exit/ExitDialog;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/exit/ExitDialog;

    .line 26
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->exitdialog_ad_view:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/maya/sdk/s/app/exit/ExitDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/exit/ExitDialog;

    .line 26
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->exitdialog_bg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/maya/sdk/s/app/exit/ExitDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/exit/ExitDialog;

    .line 26
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/maya/sdk/s/app/exit/ExitDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/exit/ExitDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lcom/maya/sdk/s/app/exit/ExitDialog;->showToas(Ljava/lang/String;)V

    return-void
.end method

.method private initViews()V
    .locals 10

    .line 74
    const-string v0, "mContent"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mContent:Landroid/widget/RelativeLayout;

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v1

    const-wide v2, 0x3fe6666666666666L    # 0.7

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->screenWidth:I

    int-to-double v4, v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->screenWidth:I

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    mul-double v8, v8, v2

    double-to-int v2, v8

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_0

    .line 82
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->screenWidth:I

    int-to-double v4, v4

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->screenWidth:I

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    mul-double v8, v8, v2

    double-to-int v2, v8

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 87
    :goto_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 88
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    const-string v1, "exitdialog_starlogo"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->exitdialog_starlogo:Landroid/widget/ImageView;

    .line 92
    const-string v1, "exitdialog_bg"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->exitdialog_bg:Landroid/widget/ImageView;

    .line 94
    const-string v1, "exitdialog_bbsbtn"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->exitdialog_bbsbtn:Landroid/widget/ImageButton;

    .line 96
    const-string v1, "exitdialog_giftbtn"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->exitdialog_giftbtn:Landroid/widget/ImageButton;

    .line 98
    const-string v1, "exitdialog_exitbtn"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->exitdialog_exitbtn:Landroid/widget/Button;

    .line 100
    const-string v1, "exitdialog_ad_view"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->exitdialog_ad_view:Landroid/widget/RelativeLayout;

    .line 103
    sget-object v1, Lcom/maya/sdk/s/core/http/RequestUrls;->URL_EXIT_IMAGE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    new-instance v1, Lcom/maya/sdk/framework/utils/ImageUtil;

    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/maya/sdk/framework/utils/ImageUtil;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/maya/sdk/s/core/http/RequestUrls;->URL_EXIT_IMAGE:Ljava/lang/String;

    new-instance v3, Lcom/maya/sdk/s/app/exit/ExitDialog$2;

    invoke-direct {v3, p0}, Lcom/maya/sdk/s/app/exit/ExitDialog$2;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/maya/sdk/framework/utils/ImageUtil;->loadBitmap(Ljava/lang/String;Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;)V

    .line 123
    :goto_1
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->exitdialog_bg:Landroid/widget/ImageView;

    new-instance v2, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogBitmapListener;

    invoke-direct {v2, p0}, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogBitmapListener;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->exitdialog_bbsbtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogBBSListener;

    invoke-direct {v2, p0}, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogBBSListener;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->exitdialog_giftbtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogGiftListener;

    invoke-direct {v2, p0}, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogGiftListener;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->exitdialog_exitbtn:Landroid/widget/Button;

    new-instance v2, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogExitListener;

    invoke-direct {v2, p0}, Lcom/maya/sdk/s/app/exit/ExitDialog$ExitDialogExitListener;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method private showToas(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "maya_dialog_theme"

    const-string v2, "style"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 57
    const-string v0, "maya_dialog_exitgame"

    const-string v1, "layout"

    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->setContentView(I)V

    .line 59
    invoke-direct {p0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->initViews()V

    .line 61
    new-instance v0, Lcom/maya/sdk/s/app/exit/ExitDialog$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/exit/ExitDialog$1;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialog;)V

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 71
    return-void
.end method
