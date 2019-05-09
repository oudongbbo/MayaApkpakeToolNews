.class public Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;
.super Landroid/app/Dialog;
.source "ExitDialogForSecond.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogExitListener;,
        Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogThirdBitmapListener;,
        Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogSecondBitmapListener;,
        Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogFirstBitmapListener;,
        Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;
    }
.end annotation


# instance fields
.field private exitdialog_exitbtn:Landroid/widget/Button;

.field private exitdialog_starlogo:Landroid/widget/ImageView;

.field private isExitClick:Z

.field private listGameBean:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/sdk/s/core/model/bean/ExitGameBean;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;

.field private mContent:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private maya_exitdialog_firstgame_gamename:Landroid/widget/TextView;

.field private maya_exitdialog_firstgame_gametype:Landroid/widget/TextView;

.field private maya_exitdialog_firstgame_icon:Landroid/widget/ImageView;

.field private maya_exitdialog_secondgame_gamename:Landroid/widget/TextView;

.field private maya_exitdialog_secondgame_gametype:Landroid/widget/TextView;

.field private maya_exitdialog_secondgame_icon:Landroid/widget/ImageView;

.field private maya_exitdialog_thirdgame_gamename:Landroid/widget/TextView;

.field private maya_exitdialog_thirdgame_gametype:Landroid/widget/TextView;

.field private maya_exitdialog_thirdgame_icon:Landroid/widget/ImageView;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "exitCallBack"    # Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/maya/sdk/s/core/model/bean/ExitGameBean;",
            ">;",
            "Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;",
            ")V"
        }
    .end annotation

    .line 51
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/maya/sdk/s/core/model/bean/ExitGameBean;>;"
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mCallback:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;

    .line 54
    iput-object p2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    .line 55
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 57
    .local v0, "manager":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 58
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 59
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->screenWidth:I

    .line 60
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->screenHeight:I

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    .line 28
    iget-boolean v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->isExitClick:Z

    return v0
.end method

.method static synthetic access$002(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->isExitClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    .line 28
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mCallback:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    .line 28
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;

    .line 28
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initViews()V
    .locals 10

    .line 87
    const-string v0, "mContent"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContent:Landroid/widget/RelativeLayout;

    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v1

    const-wide v2, 0x3fe6666666666666L    # 0.7

    if-eqz v1, :cond_0

    .line 92
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->screenWidth:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->screenWidth:I

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    mul-double v8, v8, v2

    double-to-int v2, v8

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_0

    .line 94
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->screenWidth:I

    int-to-double v4, v4

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->screenWidth:I

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    mul-double v8, v8, v2

    double-to-int v2, v8

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 98
    :goto_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 99
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const-string v1, "exitdialog_starlogo"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 101
    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->exitdialog_starlogo:Landroid/widget/ImageView;

    .line 103
    const-string v1, "maya_exitdialog_firstgame_icon"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 103
    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_firstgame_icon:Landroid/widget/ImageView;

    .line 105
    const-string v1, "maya_exitdialog_secondgame_icon"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 105
    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_secondgame_icon:Landroid/widget/ImageView;

    .line 107
    const-string v1, "maya_exitdialog_thirdgame_icon"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 107
    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_thirdgame_icon:Landroid/widget/ImageView;

    .line 110
    const-string v1, "maya_exitdialog_firstgame_gamename"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 111
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 110
    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_firstgame_gamename:Landroid/widget/TextView;

    .line 112
    const-string v1, "maya_exitdialog_firstgame_gametype"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 112
    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_firstgame_gametype:Landroid/widget/TextView;

    .line 114
    const-string v1, "maya_exitdialog_secondgame_gamename"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 114
    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_secondgame_gamename:Landroid/widget/TextView;

    .line 116
    const-string v1, "maya_exitdialog_secondgame_gametype"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 116
    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_secondgame_gametype:Landroid/widget/TextView;

    .line 118
    const-string v1, "maya_exitdialog_thirdgame_gamename"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 119
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 118
    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_thirdgame_gamename:Landroid/widget/TextView;

    .line 120
    const-string v1, "maya_exitdialog_thirdgame_gametype"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 120
    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_thirdgame_gametype:Landroid/widget/TextView;

    .line 123
    const-string v1, "exitdialog_exitbtn"

    const-string v2, "id"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->exitdialog_exitbtn:Landroid/widget/Button;

    .line 126
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v2}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_firstgame_icon:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v4}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->loadingBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 127
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v2}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_secondgame_icon:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v5}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->loadingBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 128
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v2}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_thirdgame_icon:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v6}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->loadingBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 131
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_firstgame_gamename:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v2}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_firstgame_gametype:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v2}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_secondgame_gamename:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v2}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_secondgame_gametype:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v2}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_thirdgame_gamename:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v2}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_thirdgame_gametype:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->listGameBean:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;

    invoke-virtual {v2}, Lcom/maya/sdk/s/core/model/bean/ExitGameBean;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_firstgame_icon:Landroid/widget/ImageView;

    new-instance v2, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogFirstBitmapListener;

    invoke-direct {v2, p0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogFirstBitmapListener;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_secondgame_icon:Landroid/widget/ImageView;

    new-instance v2, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogSecondBitmapListener;

    invoke-direct {v2, p0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogSecondBitmapListener;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->maya_exitdialog_thirdgame_icon:Landroid/widget/ImageView;

    new-instance v2, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogThirdBitmapListener;

    invoke-direct {v2, p0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogThirdBitmapListener;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->exitdialog_exitbtn:Landroid/widget/Button;

    new-instance v2, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogExitListener;

    invoke-direct {v2, p0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogExitListener;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method

.method private loadingBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/widget/ImageView;

    .line 223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    return-void

    .line 227
    :cond_0
    new-instance v0, Lcom/maya/sdk/framework/utils/ImageUtil;

    invoke-direct {v0, p1}, Lcom/maya/sdk/framework/utils/ImageUtil;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$2;

    invoke-direct {v1, p0, p3}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$2;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p2, v1}, Lcom/maya/sdk/framework/utils/ImageUtil;->loadBitmap(Ljava/lang/String;Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;)V

    .line 239
    return-void
.end method

.method private showToas(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/maya/sdk/framework/utils/ViewUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 66
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "maya_dialog_theme"

    const-string v2, "style"

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 69
    const-string v0, "maya_dialog_exitgame_second"

    const-string v1, "layout"

    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->setContentView(I)V

    .line 71
    invoke-direct {p0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->initViews()V

    .line 73
    new-instance v0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$1;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)V

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 84
    return-void
.end method
