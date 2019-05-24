.class public Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$a;,
        Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$d;,
        Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$c;,
        Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$b;,
        Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Z

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/maya/sdk/s/core/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/maya/sdk/s/core/b/a/a;",
            ">;",
            "Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->b:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;

    .line 54
    iput-object p2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->p:Ljava/util/List;

    const-string p2, "window"

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 57
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 58
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 59
    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->q:I

    .line 60
    iget p1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->r:I

    return-void
.end method

.method private a()V
    .locals 9

    const-string v0, "mContent"

    const-string v1, "id"

    .line 87
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->h:Landroid/widget/RelativeLayout;

    .line 91
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    const-wide v1, 0x3fe6666666666666L    # 0.7

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->q:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v3, v3

    iget v4, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->q:I

    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    mul-double v7, v7, v1

    double-to-int v1, v7

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->q:I

    int-to-double v3, v3

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v3, v3

    iget v4, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->q:I

    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v5

    mul-double v7, v7, v1

    double-to-int v1, v7

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v1, 0x11

    .line 98
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 99
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "exitdialog_starlogo"

    const-string v1, "id"

    .line 101
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    .line 102
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 101
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->c:Landroid/widget/ImageView;

    const-string v0, "maya_exitdialog_firstgame_icon"

    const-string v1, "id"

    .line 103
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    .line 104
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->d:Landroid/widget/ImageView;

    const-string v0, "maya_exitdialog_secondgame_icon"

    const-string v1, "id"

    .line 105
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    .line 106
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 105
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->e:Landroid/widget/ImageView;

    const-string v0, "maya_exitdialog_thirdgame_icon"

    const-string v1, "id"

    .line 107
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    .line 108
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 107
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->f:Landroid/widget/ImageView;

    const-string v0, "maya_exitdialog_firstgame_gamename"

    const-string v1, "id"

    .line 110
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    .line 111
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 110
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->i:Landroid/widget/TextView;

    const-string v0, "maya_exitdialog_firstgame_gametype"

    const-string v1, "id"

    .line 112
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    .line 113
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->j:Landroid/widget/TextView;

    const-string v0, "maya_exitdialog_secondgame_gamename"

    const-string v1, "id"

    .line 114
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    .line 115
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->k:Landroid/widget/TextView;

    const-string v0, "maya_exitdialog_secondgame_gametype"

    const-string v1, "id"

    .line 116
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    .line 117
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->l:Landroid/widget/TextView;

    const-string v0, "maya_exitdialog_thirdgame_gamename"

    const-string v1, "id"

    .line 118
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    .line 119
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->m:Landroid/widget/TextView;

    const-string v0, "maya_exitdialog_thirdgame_gametype"

    const-string v1, "id"

    .line 120
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    .line 121
    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    .line 120
    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->n:Landroid/widget/TextView;

    const-string v0, "exitdialog_exitbtn"

    const-string v1, "id"

    .line 123
    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->g:Landroid/widget/Button;

    .line 126
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->p:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/sdk/s/core/b/a/a;

    invoke-virtual {v1}, Lcom/maya/sdk/s/core/b/a/a;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v3}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 127
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->p:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/sdk/s/core/b/a/a;

    invoke-virtual {v1}, Lcom/maya/sdk/s/core/b/a/a;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->e:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v4}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 128
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->p:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/sdk/s/core/b/a/a;

    invoke-virtual {v1}, Lcom/maya/sdk/s/core/b/a/a;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v5}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 131
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->p:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/sdk/s/core/b/a/a;

    invoke-virtual {v1}, Lcom/maya/sdk/s/core/b/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->p:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/sdk/s/core/b/a/a;

    invoke-virtual {v1}, Lcom/maya/sdk/s/core/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->p:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/sdk/s/core/b/a/a;

    invoke-virtual {v1}, Lcom/maya/sdk/s/core/b/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->p:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/sdk/s/core/b/a/a;

    invoke-virtual {v1}, Lcom/maya/sdk/s/core/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->p:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/sdk/s/core/b/a/a;

    invoke-virtual {v1}, Lcom/maya/sdk/s/core/b/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->p:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maya/sdk/s/core/b/a/a;

    invoke-virtual {v1}, Lcom/maya/sdk/s/core/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$b;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$b;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$c;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$c;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$d;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$d;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->g:Landroid/widget/Button;

    new-instance v1, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$a;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$a;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 227
    :cond_0
    new-instance v0, Lcom/maya/sdk/framework/utils/ImageUtil;

    invoke-direct {v0, p1}, Lcom/maya/sdk/framework/utils/ImageUtil;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$2;

    invoke-direct {p1, p0, p3}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$2;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p2, p1}, Lcom/maya/sdk/framework/utils/ImageUtil;->a(Ljava/lang/String;Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->o:Z

    return p0
.end method

.method static synthetic a(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->b:Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$ExitDialogCallBack;

    return-object p0
.end method

.method static synthetic c(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->p:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 66
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "maya_dialog_theme"

    const-string v1, "style"

    iget-object v2, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    const-string p1, "maya_dialog_exitgame_second"

    const-string v0, "layout"

    .line 69
    iget-object v1, p0, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->setContentView(I)V

    .line 71
    invoke-direct {p0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->a()V

    .line 73
    new-instance p1, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$1;

    invoke-direct {p1, p0}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond$1;-><init>(Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;)V

    invoke-virtual {p0, p1}, Lcom/maya/sdk/s/app/exit/ExitDialogForSecond;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
