.class public Lcom/maya/sdk/m/views/SplashDialog;
.super Landroid/app/Dialog;
.source "SplashDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;
    }
.end annotation


# instance fields
.field private final SPLASH_ROOT:Ljava/lang/String;

.field private fatherView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private splashCallback:Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;

.field splashHandler:Landroid/os/Handler;

.field private splashTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->splashTime:I

    .line 28
    const-string v0, "maya_splash"

    iput-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->SPLASH_ROOT:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/maya/sdk/m/views/SplashDialog$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/m/views/SplashDialog$1;-><init>(Lcom/maya/sdk/m/views/SplashDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->splashHandler:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lcom/maya/sdk/m/views/SplashDialog;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/m/views/SplashDialog;)Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/m/views/SplashDialog;

    .line 20
    iget-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->splashCallback:Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;

    return-object v0
.end method

.method private printLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 102
    const-string v0, "SplashDialog"

    invoke-static {v0, p1}, Lcom/maya/sdk/m/utils/MLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 60
    const-string v0, "\u95ea\u5c4f\u7ed3\u675f"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/views/SplashDialog;->printLog(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public getSplashCallback()Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->splashCallback:Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/maya/sdk/m/views/SplashDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x103000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 45
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/maya/sdk/m/views/SplashDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->fatherView:Landroid/widget/LinearLayout;

    .line 46
    iget-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->fatherView:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->fatherView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/maya/sdk/m/views/SplashDialog;->setContentView(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method public setSplashCallback(Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;

    .line 94
    iput-object p1, p0, Lcom/maya/sdk/m/views/SplashDialog;->splashCallback:Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;

    .line 95
    return-void
.end method

.method public setSplashTime(I)V
    .locals 0
    .param p1, "time"    # I

    .line 36
    iput p1, p0, Lcom/maya/sdk/m/views/SplashDialog;->splashTime:I

    .line 37
    return-void
.end method

.method public show()V
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 54
    const-string v0, "\u95ea\u5c4f\u5f00\u59cb\uff1a\u9ed8\u8ba4"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/views/SplashDialog;->printLog(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public showSolidBackground()V
    .locals 6

    .line 64
    const-string v0, "\u95ea\u5c4f\u5f00\u59cb\uff1a\u6e20\u9053\u95ea\u5c4f"

    invoke-direct {p0, v0}, Lcom/maya/sdk/m/views/SplashDialog;->printLog(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->isScreenOriatationPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maya_splash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "maya_splash_port.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maya_splash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "maya_splash_land.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, "splash":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/maya/sdk/m/views/SplashDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 72
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/maya/sdk/m/views/SplashDialog;->fatherView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v2, p0, Lcom/maya/sdk/m/views/SplashDialog;->splashHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    iget v4, p0, Lcom/maya/sdk/m/views/SplashDialog;->splashTime:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 74
    return-void
.end method
