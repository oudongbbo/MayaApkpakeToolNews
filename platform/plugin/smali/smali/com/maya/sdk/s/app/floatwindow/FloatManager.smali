.class public Lcom/maya/sdk/s/app/floatwindow/FloatManager;
.super Ljava/lang/Object;
.source "FloatManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;,
        Lcom/maya/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;,
        Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;,
        Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatClickListener;
    }
.end annotation


# static fields
.field private static final SHOWPOP_HALF:I = 0x4

.field private static final SHOWPOP_MENU_LEFT:I = 0x3

.field private static final SHOWPOP_MENU_RIGHT:I = 0x2

.field private static final SHOWPOP_MESSAGE_LEFT:I = 0x1

.field private static final SHOWPOP_MESSAGE_RIGHT:I

.field private static instance:Lcom/maya/sdk/s/app/floatwindow/FloatManager;


# instance fields
.field private FloatView:Landroid/view/View;

.field private floatBtnTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

.field private floatConfig:Lcom/maya/sdk/s/app/floatwindow/FloatConfig;

.field private floatMenuView:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

.field private floatMessageView:Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;

.field private floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

.field private floatbutton_logo:Landroid/widget/ImageView;

.field private floatbutton_logoleft:Landroid/widget/ImageView;

.field private floatbutton_logoright:Landroid/widget/ImageView;

.field private floatbutton_out:Landroid/widget/ImageView;

.field private isHalfButton:Ljava/lang/Boolean;

.field private isShowFloatButton:Ljava/lang/Boolean;

.field private mainAtivity:Landroid/app/Activity;

.field private messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

.field private msgViewTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;

.field private popupHandler:Landroid/os/Handler;

.field private screenHeight:I

.field private screenWidth:I

.field private statusBarHeight:I

.field private wManager:Landroid/view/WindowManager;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;

.field private xDownInScreen:F

.field private xInScreen:F

.field private xInView:F

.field private yDownInScreen:F

.field private yInScreen:F

.field private yInView:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->instance:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->screenWidth:I

    .line 56
    iput v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->screenHeight:I

    .line 71
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->isShowFloatButton:Ljava/lang/Boolean;

    .line 72
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->isHalfButton:Ljava/lang/Boolean;

    .line 341
    new-instance v0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$1;-><init>(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->popupHandler:Landroid/os/Handler;

    .line 89
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    .line 91
    new-instance v0, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatConfig:Lcom/maya/sdk/s/app/floatwindow/FloatConfig;

    .line 92
    if-eqz p1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "FloatManager Context\u4e3a\u7a7a"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void
.end method

.method private AnimationScale_In()V
    .locals 10

    .line 615
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 618
    .local v0, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 619
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_out:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 620
    new-instance v1, Lcom/maya/sdk/s/app/floatwindow/FloatManager$2;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$2;-><init>(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 633
    return-void
.end method

.method private AnimationScale_Out()V
    .locals 11

    .line 603
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_out:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 607
    .local v0, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 608
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_out:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 609
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/s/app/floatwindow/FloatConfig;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatConfig:Lcom/maya/sdk/s/app/floatwindow/FloatConfig;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/maya/sdk/s/app/floatwindow/FloatManager;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->updateViewPosition(FF)V

    return-void
.end method

.method static synthetic access$1100(Lcom/maya/sdk/s/app/floatwindow/FloatManager;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;
    .param p1, "x1"    # Landroid/view/View;

    .line 36
    invoke-direct {p0, p1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->isTouchClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 36
    invoke-direct {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->isRightFloat()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 36
    iget v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->screenWidth:I

    return v0
.end method

.method static synthetic access$1400(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/framework/view/common/RelativePopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/framework/view/common/RelativePopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_out:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->popupHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 36
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatBtnTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    return-object v0
.end method

.method static synthetic access$300(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 36
    iget v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xInView:F

    return v0
.end method

.method static synthetic access$302(Lcom/maya/sdk/s/app/floatwindow/FloatManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;
    .param p1, "x1"    # F

    .line 36
    iput p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xInView:F

    return p1
.end method

.method static synthetic access$400(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 36
    iget v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->yInView:F

    return v0
.end method

.method static synthetic access$402(Lcom/maya/sdk/s/app/floatwindow/FloatManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;
    .param p1, "x1"    # F

    .line 36
    iput p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->yInView:F

    return p1
.end method

.method static synthetic access$500(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 36
    iget v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xInScreen:F

    return v0
.end method

.method static synthetic access$502(Lcom/maya/sdk/s/app/floatwindow/FloatManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;
    .param p1, "x1"    # F

    .line 36
    iput p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xInScreen:F

    return p1
.end method

.method static synthetic access$600(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 36
    iget v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->yInScreen:F

    return v0
.end method

.method static synthetic access$602(Lcom/maya/sdk/s/app/floatwindow/FloatManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;
    .param p1, "x1"    # F

    .line 36
    iput p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->yInScreen:F

    return p1
.end method

.method static synthetic access$702(Lcom/maya/sdk/s/app/floatwindow/FloatManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;
    .param p1, "x1"    # F

    .line 36
    iput p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xDownInScreen:F

    return p1
.end method

.method static synthetic access$802(Lcom/maya/sdk/s/app/floatwindow/FloatManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;
    .param p1, "x1"    # F

    .line 36
    iput p1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->yDownInScreen:F

    return p1
.end method

.method static synthetic access$900(Lcom/maya/sdk/s/app/floatwindow/FloatManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/s/app/floatwindow/FloatManager;
    .param p1, "x1"    # Z

    .line 36
    invoke-direct {p0, p1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->setHalfHideStatus(Z)V

    return-void
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/maya/sdk/s/app/floatwindow/FloatManager;
    .locals 1
    .param p0, "contextActivity"    # Landroid/app/Activity;

    .line 80
    sget-object v0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->instance:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    invoke-direct {v0, p0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->instance:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    .line 84
    :cond_0
    sget-object v0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->instance:Lcom/maya/sdk/s/app/floatwindow/FloatManager;

    return-object v0
.end method

.method public static getSDKVersionNumber()I
    .locals 1

    .line 681
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    .local v0, "sdkVersion":I
    goto :goto_0

    .line 682
    .end local v0    # "sdkVersion":I
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 685
    .local v0, "sdkVersion":I
    :goto_0
    return v0
.end method

.method private getStatusBarHeight()I
    .locals 5

    .line 690
    iget v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->statusBarHeight:I

    if-nez v0, :cond_0

    .line 693
    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 694
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 695
    .local v1, "o":Ljava/lang/Object;
    const-string v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 696
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 697
    .local v3, "x":I
    iget-object v4, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->statusBarHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "x":I
    goto :goto_0

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 702
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->statusBarHeight:I

    return v0
.end method

.method private initFloatParams()V
    .locals 6

    .line 513
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 514
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 517
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 519
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x28

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 521
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 522
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 523
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 529
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSdkFloatPosition(Landroid/content/Context;)I

    move-result v0

    .line 530
    .local v0, "position":I
    const/4 v2, 0x0

    .line 531
    .local v2, "positionX":I
    const/4 v3, 0x0

    .line 532
    .local v3, "positionY":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 554
    :pswitch_0
    iget v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->screenWidth:I

    .line 555
    iget v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->screenHeight:I

    goto :goto_0

    .line 550
    :pswitch_1
    iget v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->screenWidth:I

    .line 551
    iget v4, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->screenHeight:I

    div-int/lit8 v3, v4, 0x2

    .line 552
    goto :goto_0

    .line 546
    :pswitch_2
    iget v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->screenWidth:I

    .line 547
    const/4 v3, 0x0

    .line 548
    goto :goto_0

    .line 542
    :pswitch_3
    const/4 v2, 0x0

    .line 543
    iget v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->screenHeight:I

    .line 544
    goto :goto_0

    .line 538
    :pswitch_4
    const/4 v2, 0x0

    .line 539
    iget v4, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->screenHeight:I

    div-int/lit8 v3, v4, 0x2

    .line 540
    goto :goto_0

    .line 534
    :pswitch_5
    const/4 v2, 0x0

    .line 535
    const/4 v3, 0x0

    .line 536
    nop

    .line 558
    :goto_0
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatConfig:Lcom/maya/sdk/s/app/floatwindow/FloatConfig;

    invoke-virtual {v1}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->getFloatLastX()F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    int-to-float v1, v2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatConfig:Lcom/maya/sdk/s/app/floatwindow/FloatConfig;

    invoke-virtual {v1}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->getFloatLastX()F

    move-result v1

    :goto_1
    iput v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xInScreen:F

    .line 559
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatConfig:Lcom/maya/sdk/s/app/floatwindow/FloatConfig;

    invoke-virtual {v1}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->getFloatLastY()F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    int-to-float v1, v3

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatConfig:Lcom/maya/sdk/s/app/floatwindow/FloatConfig;

    invoke-virtual {v1}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->getFloatLastY()F

    move-result v1

    :goto_2
    iput v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->yInScreen:F

    .line 561
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xInScreen:F

    float-to-int v4, v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 562
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->yInScreen:F

    float-to-int v4, v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 564
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    iget-object v5, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initFloatView(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 481
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 482
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wManager:Landroid/view/WindowManager;

    .line 485
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 486
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "maya_float_button"

    const-string v3, "layout"

    .line 487
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 486
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    .line 488
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    const-string v1, "maya_floatbutton_out"

    const-string v2, "id"

    .line 489
    invoke-static {v1, v2, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 488
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_out:Landroid/widget/ImageView;

    .line 490
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    const-string v1, "maya_floatbutton_logo"

    const-string v2, "id"

    .line 491
    invoke-static {v1, v2, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 490
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_logo:Landroid/widget/ImageView;

    .line 492
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    const-string v1, "maya_floatbutton_logoleft"

    const-string v2, "id"

    .line 493
    invoke-static {v1, v2, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 492
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_logoleft:Landroid/widget/ImageView;

    .line 494
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    const-string v1, "maya_floatbutton_logoright"

    const-string v2, "id"

    .line 495
    invoke-static {v1, v2, p1}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 494
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_logoright:Landroid/widget/ImageView;

    .line 497
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    new-instance v1, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;-><init>(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 498
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    new-instance v1, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatClickListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatClickListener;-><init>(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->screenWidth:I

    .line 502
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->screenHeight:I

    .line 503
    return-void
.end method

.method private initMessageView(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 455
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatMessageView:Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;

    invoke-direct {v0, p1}, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatMessageView:Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;

    .line 459
    :cond_0
    new-instance v0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;

    const-wide/16 v3, 0x7d0

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;-><init>(Lcom/maya/sdk/s/app/floatwindow/FloatManager;JJ)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->msgViewTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;

    .line 461
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    if-nez v0, :cond_2

    .line 463
    invoke-direct {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->isRightFloat()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-eqz v0, :cond_1

    .line 464
    new-instance v0, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    iget-object v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatMessageView:Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;

    sget-object v4, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView$Orientaion;->RIGHT:Lcom/maya/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    .line 465
    invoke-virtual {v3, v4}, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->getPopWindow(Lcom/maya/sdk/s/app/floatwindow/FloatMessageView$Orientaion;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v3, v2, v2, v1}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    goto :goto_0

    .line 467
    :cond_1
    new-instance v0, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    iget-object v3, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatMessageView:Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;

    sget-object v4, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView$Orientaion;->LEFT:Lcom/maya/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    .line 468
    invoke-virtual {v3, v4}, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->getPopWindow(Lcom/maya/sdk/s/app/floatwindow/FloatMessageView$Orientaion;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v3, v2, v2, v1}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    .line 471
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->setFocusable(Z)V

    .line 472
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    invoke-virtual {v0, v1}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->setOutsideTouchable(Z)V

    .line 474
    :cond_2
    return-void
.end method

.method private initPopView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 433
    if-eqz p1, :cond_0

    .line 434
    new-instance v0, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-direct {v0, p1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatMenuView:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    if-nez v0, :cond_1

    .line 444
    new-instance v0, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatMenuView:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-virtual {v1}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->getPopWindow()Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    .line 445
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    invoke-virtual {v0, v3}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->setFocusable(Z)V

    .line 446
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    invoke-virtual {v0, v3}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->setOutsideTouchable(Z)V

    .line 448
    :cond_1
    return-void
.end method

.method private isRightFloat()Z
    .locals 2

    .line 596
    iget v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xInScreen:F

    iget v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTouchClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 590
    iget v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xDownInScreen:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->xInScreen:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->yDownInScreen:F

    .line 591
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->yInScreen:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 590
    :goto_0
    return v0
.end method

.method private requestFWIconBitmap(Landroid/widget/ImageView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "type"    # I

    .line 708
    const/4 v0, 0x0

    .line 710
    .local v0, "url":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSkinFloatLogo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 712
    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 713
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSkinFloatLogoLeft(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 714
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 715
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/maya/sdk/s/core/model/SdkConfigManager;->getSkinFloatLogoRight(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 718
    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 719
    return-void

    .line 722
    :cond_3
    new-instance v1, Lcom/maya/open/main/OpenImageUtils;

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/maya/open/main/OpenImageUtils;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/maya/sdk/s/app/floatwindow/FloatManager$3;

    invoke-direct {v2, p0, p1}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$3;-><init>(Lcom/maya/sdk/s/app/floatwindow/FloatManager;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0, v2}, Lcom/maya/open/main/OpenImageUtils;->loadBitmap(Ljava/lang/String;Lcom/maya/open/main/OpenImageUtils$OpenImageCallback;)V

    .line 735
    return-void
.end method

.method private setHalfHideStatus(Z)V
    .locals 4
    .param p1, "isHide"    # Z

    .line 393
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    goto :goto_3

    .line 396
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    .line 398
    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_out:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_logo:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    invoke-direct {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->isRightFloat()Z

    move-result v2

    const/16 v3, 0x64

    if-eqz v2, :cond_1

    .line 402
    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_logoleft:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_logoright:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_logoleft:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_0

    .line 406
    :cond_1
    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_logoright:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_logoright:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_logoleft:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 413
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    goto :goto_1

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 418
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->isHalfButton:Ljava/lang/Boolean;

    goto :goto_2

    .line 421
    :cond_2
    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_out:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_logo:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_logoleft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatbutton_logoright:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    :goto_2
    return-void

    .line 394
    :cond_3
    :goto_3
    return-void
.end method

.method private updateViewPosition(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 572
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    goto :goto_0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 578
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int v1, p2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 579
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatConfig:Lcom/maya/sdk/s/app/floatwindow/FloatConfig;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setFloatLastX(F)V

    .line 582
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatConfig:Lcom/maya/sdk/s/app/floatwindow/FloatConfig;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->setFloatLastY(F)V

    .line 583
    return-void

    .line 573
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public MessageView()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatConfig:Lcom/maya/sdk/s/app/floatwindow/FloatConfig;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->getIsTouchFW()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatBtnTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatBtnTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;->cancel()V

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 312
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->msgViewTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;->start()Landroid/os/CountDownTimer;

    .line 314
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 319
    .local v0, "sdk":I
    const/16 v1, 0x16

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    .line 320
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->setAttachedInDecor(Z)V

    .line 323
    :cond_3
    invoke-direct {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->isRightFloat()Z

    move-result v1

    const-wide/16 v3, 0x1f4

    if-eqz v1, :cond_4

    .line 324
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    const-string v5, "maya_right_popwin_anim_style"

    const-string v6, "style"

    iget-object v7, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    .line 325
    invoke-static {v5, v6, v7}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v5

    .line 324
    invoke-virtual {v1, v5}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->setAnimationStyle(I)V

    .line 326
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    iget-object v5, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatMessageView:Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;

    sget-object v6, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView$Orientaion;->RIGHT:Lcom/maya/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    invoke-virtual {v5, v6}, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->getPopWindow(Lcom/maya/sdk/s/app/floatwindow/FloatMessageView$Orientaion;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->setContentView(Landroid/view/View;)V

    .line 327
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->popupHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 329
    :cond_4
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    const-string v2, "maya_left_popwin_anim_style"

    const-string v5, "style"

    iget-object v6, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    .line 330
    invoke-static {v2, v5, v6}, Lcom/maya/sdk/framework/utils/CommonUtil;->getResourcesID(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    .line 329
    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->setAnimationStyle(I)V

    .line 331
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatMessageView:Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;

    sget-object v5, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView$Orientaion;->LEFT:Lcom/maya/sdk/s/app/floatwindow/FloatMessageView$Orientaion;

    invoke-virtual {v2, v5}, Lcom/maya/sdk/s/app/floatwindow/FloatMessageView;->getPopWindow(Lcom/maya/sdk/s/app/floatwindow/FloatMessageView$Orientaion;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->setContentView(Landroid/view/View;)V

    .line 332
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->popupHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 334
    .end local v0    # "sdk":I
    :goto_0
    goto :goto_1

    .line 336
    :cond_5
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    new-instance v1, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;-><init>(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 337
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->dismiss()V

    .line 339
    :goto_1
    return-void

    .line 299
    :cond_6
    :goto_2
    return-void
.end method

.method public createFloat()V
    .locals 7

    .line 123
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->isHalfButton:Ljava/lang/Boolean;

    .line 125
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->initMessageView(Landroid/content/Context;)V

    .line 127
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->initPopView(Landroid/content/Context;)V

    .line 130
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->initFloatView(Landroid/app/Activity;)V

    .line 132
    invoke-direct {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->initFloatParams()V

    .line 135
    new-instance v0, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    const-wide/16 v3, 0xbb8

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;-><init>(Lcom/maya/sdk/s/app/floatwindow/FloatManager;JJ)V

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatBtnTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    .line 136
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatBtnTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;->start()Landroid/os/CountDownTimer;

    .line 137
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->isShowFloatButton:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->isShowFloatButton:Ljava/lang/Boolean;

    .line 114
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->dismissFloat()V

    .line 116
    :cond_0
    return-void
.end method

.method public dismissFloat()V
    .locals 2

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatBtnTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatBtnTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;->cancel()V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->dismiss()V

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->dismiss()V

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_1

    .line 145
    :cond_4
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public show()V
    .locals 3

    .line 100
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u662f\u5426\u6253\u5f00\u60ac\u6d6e\u7a97:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatConfig:Lcom/maya/sdk/s/app/floatwindow/FloatConfig;

    invoke-virtual {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->isShowFloatBall()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatConfig:Lcom/maya/sdk/s/app/floatwindow/FloatConfig;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatConfig;->isShowFloatBall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->isShowFloatButton:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->isShowFloatButton:Ljava/lang/Boolean;

    .line 105
    invoke-virtual {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->createFloat()V

    .line 108
    :cond_0
    return-void
.end method

.method protected showPopView()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->mainAtivity:Landroid/app/Activity;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->dismiss()V

    .line 253
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->msgViewTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;->cancel()V

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->msgViewTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$MessageViewTimeCount;->cancel()V

    .line 258
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->messagePop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->dismiss()V

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 262
    invoke-direct {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->AnimationScale_In()V

    .line 264
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatBtnTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    if-eqz v0, :cond_4

    .line 265
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatBtnTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;->cancel()V

    .line 268
    :cond_4
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 272
    .local v0, "sdk":I
    const/16 v1, 0x16

    if-lt v0, v1, :cond_5

    .line 273
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->setAttachedInDecor(Z)V

    .line 276
    :cond_5
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    iget-object v2, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatMenuView:Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;

    invoke-virtual {v2}, Lcom/maya/sdk/s/app/floatwindow/FloatMenuView;->getPopWindow()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->setContentView(Landroid/view/View;)V

    .line 278
    invoke-direct {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->isRightFloat()Z

    move-result v1

    const-wide/16 v2, 0x64

    if-eqz v1, :cond_6

    .line 279
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->popupHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 281
    :cond_6
    iget-object v1, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->popupHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 283
    .end local v0    # "sdk":I
    :goto_0
    goto :goto_1

    .line 284
    :cond_7
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatBtnTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    if-eqz v0, :cond_8

    .line 285
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatBtnTimeCount:Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;

    invoke-virtual {v0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatButtonTimeCount;->start()Landroid/os/CountDownTimer;

    .line 287
    :cond_8
    invoke-direct {p0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->AnimationScale_Out()V

    .line 288
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->FloatView:Landroid/view/View;

    new-instance v1, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;

    invoke-direct {v1, p0}, Lcom/maya/sdk/s/app/floatwindow/FloatManager$FloatTouchListener;-><init>(Lcom/maya/sdk/s/app/floatwindow/FloatManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    iget-object v0, p0, Lcom/maya/sdk/s/app/floatwindow/FloatManager;->floatPop:Lcom/maya/sdk/framework/view/common/RelativePopupWindow;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/common/RelativePopupWindow;->dismiss()V

    .line 291
    :goto_1
    return-void

    .line 248
    :cond_9
    :goto_2
    return-void
.end method
