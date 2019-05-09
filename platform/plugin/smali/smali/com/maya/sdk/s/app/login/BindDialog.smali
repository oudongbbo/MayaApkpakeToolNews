.class public Lcom/maya/sdk/s/app/login/BindDialog;
.super Landroid/app/Dialog;
.source "BindDialog.java"


# instance fields
.field private dismissHandler:Landroid/os/Handler;

.field private mContent:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lcom/maya/sdk/s/app/login/BindDialog$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/login/BindDialog$1;-><init>(Lcom/maya/sdk/s/app/login/BindDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/BindDialog;->dismissHandler:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/BindDialog;->mContext:Landroid/content/Context;

    .line 34
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 36
    .local v0, "manager":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 37
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 38
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/maya/sdk/s/app/login/BindDialog;->screenWidth:I

    .line 39
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/maya/sdk/s/app/login/BindDialog;->screenHeight:I

    .line 40
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 93
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 94
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/BindDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "maya_logindialog_theme"

    const-string v2, "style"

    iget-object v3, p0, Lcom/maya/sdk/s/app/login/BindDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 49
    const-string v0, "maya_dialog_bind"

    const-string v1, "layout"

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/BindDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/BindDialog;->setContentView(I)V

    .line 51
    const-string v0, "content"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/BindDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/BindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/BindDialog;->mContent:Landroid/widget/FrameLayout;

    .line 53
    const/4 v0, 0x0

    .line 56
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/BindDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v1

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    if-eqz v1, :cond_0

    .line 57
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/maya/sdk/s/app/login/BindDialog;->screenWidth:I

    int-to-double v4, v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/maya/sdk/s/app/login/BindDialog;->screenWidth:I

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    mul-double v8, v8, v2

    double-to-int v2, v8

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/maya/sdk/s/app/login/BindDialog;->screenWidth:I

    int-to-double v4, v4

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/maya/sdk/s/app/login/BindDialog;->screenWidth:I

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    mul-double v8, v8, v2

    double-to-int v2, v8

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 62
    :goto_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 63
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/BindDialog;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/BindDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "maya_login_bg_dialog"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/maya/sdk/s/app/login/BindDialog;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 66
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 67
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/BindDialog;->mContent:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/maya/sdk/s/app/login/BindDialog;->mContext:Landroid/content/Context;

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v4, v5}, Lcom/maya/sdk/framework/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/maya/sdk/framework/utils/ViewUtil;->createRoundConerImage(Landroid/graphics/Bitmap;Ljava/lang/Float;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 98
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/BindDialog;->dismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 100
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 78
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 80
    return-void
.end method
