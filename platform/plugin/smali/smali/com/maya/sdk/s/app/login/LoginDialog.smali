.class public Lcom/maya/sdk/s/app/login/LoginDialog;
.super Landroid/app/Dialog;
.source "LoginDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/s/app/login/LoginDialog$NotifitionTextListener;
    }
.end annotation


# instance fields
.field private dismissHandler:Landroid/os/Handler;

.field private loginListener:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

.field private mContent:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mNotifition:Landroid/widget/TextView;

.field private rl_bg:Landroid/widget/ImageView;

.field private screenHeight:I

.field private screenWidth:I

.field private scrollWidth:I

.field private scroll_message_bg:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 47
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance v0, Lcom/maya/sdk/s/app/login/LoginDialog$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/login/LoginDialog$1;-><init>(Lcom/maya/sdk/s/app/login/LoginDialog;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->dismissHandler:Landroid/os/Handler;

    .line 48
    iput-object p1, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->loginListener:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    .line 51
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 53
    .local v0, "manager":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 54
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 55
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->screenWidth:I

    .line 56
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->screenHeight:I

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/s/app/login/LoginDialog;)Lcom/maya/sdk/framework/interfaces/SdkResultCallback;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/LoginDialog;

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->loginListener:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/sdk/s/app/login/LoginDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/login/LoginDialog;

    .line 32
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private requestLoginBitmap(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .line 148
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSkinLgoinBg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "downloadUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSkinLgoinBgStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSkinLgoinBgStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->isDisplayLoginLogo(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    return-void

    .line 159
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    return-void

    .line 163
    :cond_2
    new-instance v1, Lcom/maya/sdk/framework/utils/ImageUtil;

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/maya/sdk/framework/utils/ImageUtil;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/maya/sdk/s/app/login/LoginDialog$2;

    invoke-direct {v2, p0, p1}, Lcom/maya/sdk/s/app/login/LoginDialog$2;-><init>(Lcom/maya/sdk/s/app/login/LoginDialog;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0, v2}, Lcom/maya/sdk/framework/utils/ImageUtil;->loadBitmap(Ljava/lang/String;Lcom/maya/sdk/framework/utils/ImageUtil$ImageCallback;)V

    .line 178
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 133
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 134
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/login/LoginDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "maya_logindialog_theme"

    const-string v2, "style"

    iget-object v3, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 64
    const-string v0, "maya_dialog_login"

    const-string v1, "layout"

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/LoginDialog;->setContentView(I)V

    .line 66
    const-string v0, "content"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContent:Landroid/widget/FrameLayout;

    .line 68
    const-string v0, "rl_bg"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->rl_bg:Landroid/widget/ImageView;

    .line 69
    const-string v0, "scroll_message_bg"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->scroll_message_bg:Landroid/widget/FrameLayout;

    .line 71
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->rl_bg:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/login/LoginDialog;->requestLoginBitmap(Landroid/widget/ImageView;)V

    .line 73
    const-string v0, "notification"

    const-string v1, "id"

    iget-object v2, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/maya/sdk/s/app/login/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mNotifition:Landroid/widget/TextView;

    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/maya/sdk/framework/utils/CommonUtil;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v1

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->screenWidth:I

    int-to-double v4, v4

    const-wide v6, 0x3fe3333333333333L    # 0.6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->screenWidth:I

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    mul-double v8, v8, v2

    double-to-int v2, v8

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    goto :goto_0

    .line 80
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->screenWidth:I

    int-to-double v4, v4

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->screenWidth:I

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    mul-double v8, v8, v2

    double-to-int v2, v8

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 83
    :goto_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 84
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v1, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getScrollMessageText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "msg":Ljava/lang/String;
    iget v2, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->screenWidth:I

    iput v2, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->scrollWidth:I

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    const-string v2, ""

    .line 91
    .local v2, "str":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->scrollWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    iget-object v6, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mNotifition:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    mul-float v6, v6, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_1

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u3000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mNotifition:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v3, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mNotifition:Landroid/widget/TextView;

    new-instance v4, Lcom/maya/sdk/s/app/login/LoginDialog$NotifitionTextListener;

    invoke-direct {v4, p0}, Lcom/maya/sdk/s/app/login/LoginDialog$NotifitionTextListener;-><init>(Lcom/maya/sdk/s/app/login/LoginDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .end local v2    # "str":Ljava/lang/String;
    goto :goto_2

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->scroll_message_bg:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 99
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mNotifition:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    :goto_2
    iget-object v2, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "maya_login_bg_dialog"

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 103
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 104
    iget-object v3, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContent:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v5, v6}, Lcom/maya/sdk/framework/utils/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/maya/sdk/framework/utils/ViewUtil;->createRoundConerImage(Landroid/graphics/Bitmap;Ljava/lang/Float;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_3
    new-instance v3, Lcom/maya/sdk/s/app/login/view/LoginContent;

    iget-object v4, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const-string v5, "\u767b\u5f55\u4e3b\u754c\u9762"

    iget-object v6, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->loginListener:Lcom/maya/sdk/framework/interfaces/SdkResultCallback;

    invoke-direct {v3, v4, v5, p0, v6}, Lcom/maya/sdk/s/app/login/view/LoginContent;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/maya/sdk/s/app/login/LoginDialog;Lcom/maya/sdk/framework/interfaces/SdkResultCallback;)V

    .line 109
    .local v3, "view":Lcom/maya/sdk/s/app/login/view/LoginContent;
    iget-object v4, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Lcom/maya/sdk/s/app/login/view/LoginContent;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 138
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/maya/sdk/s/app/login/LoginDialog;->dismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 115
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 117
    return-void
.end method
