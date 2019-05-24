.class public Lcom/maya/sdk/m/views/SplashDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;
    }
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/LinearLayout;

.field private d:I

.field private e:Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 25
    iput v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->d:I

    const-string v0, "maya_splash"

    .line 28
    iput-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->f:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/maya/sdk/m/views/SplashDialog$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/m/views/SplashDialog$1;-><init>(Lcom/maya/sdk/m/views/SplashDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->a:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lcom/maya/sdk/m/views/SplashDialog;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/m/views/SplashDialog;)Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/maya/sdk/m/views/SplashDialog;->e:Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SplashDialog"

    .line 102
    invoke-static {v0, p1}, Lcom/maya/sdk/m/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "\u95ea\u5c4f\u5f00\u59cb\uff1a\u6e20\u9053\u95ea\u5c4f"

    .line 64
    invoke-direct {p0, v0}, Lcom/maya/sdk/m/views/SplashDialog;->a(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/framework/utils/CommonUtil;->isScreenOriatationPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->b:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->b:Landroid/content/Context;

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
    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/maya/sdk/m/views/SplashDialog;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 72
    iget-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    iget v2, p0, Lcom/maya/sdk/m/views/SplashDialog;->d:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public a(Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/maya/sdk/m/views/SplashDialog;->e:Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;

    return-void
.end method

.method public b()Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->e:Lcom/maya/sdk/m/views/SplashDialog$SplashCallback;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "\u95ea\u5c4f\u7ed3\u675f"

    .line 60
    invoke-direct {p0, v0}, Lcom/maya/sdk/m/views/SplashDialog;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/maya/sdk/m/views/SplashDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x103000a

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 45
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/maya/sdk/m/views/SplashDialog;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/maya/sdk/m/views/SplashDialog;->c:Landroid/widget/LinearLayout;

    .line 46
    iget-object p1, p0, Lcom/maya/sdk/m/views/SplashDialog;->c:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object p1, p0, Lcom/maya/sdk/m/views/SplashDialog;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/maya/sdk/m/views/SplashDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 53
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const-string v0, "\u95ea\u5c4f\u5f00\u59cb\uff1a\u9ed8\u8ba4"

    .line 54
    invoke-direct {p0, v0}, Lcom/maya/sdk/m/views/SplashDialog;->a(Ljava/lang/String;)V

    return-void
.end method
