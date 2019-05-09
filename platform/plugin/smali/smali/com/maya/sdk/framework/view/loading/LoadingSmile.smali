.class public Lcom/maya/sdk/framework/view/loading/LoadingSmile;
.super Landroid/view/View;
.source "LoadingSmile.java"


# instance fields
.field private isSmile:Z

.field mAnimatedValue:F

.field private mEyeWidth:F

.field private mPadding:F

.field private mPaint:Landroid/graphics/Paint;

.field private mWidth:F

.field rectF:Landroid/graphics/RectF;

.field private startAngle:F

.field valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mWidth:F

    .line 20
    iput v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mEyeWidth:F

    .line 22
    iput v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPadding:F

    .line 23
    iput v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->startAngle:F

    .line 24
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->isSmile:Z

    .line 25
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->rectF:Landroid/graphics/RectF;

    .line 105
    iput v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mAnimatedValue:F

    .line 37
    invoke-direct {p0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->initPaint()V

    .line 38
    return-void
.end method

.method static synthetic access$002(Lcom/maya/sdk/framework/view/loading/LoadingSmile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/view/loading/LoadingSmile;
    .param p1, "x1"    # Z

    .line 15
    iput-boolean p1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->isSmile:Z

    return p1
.end method

.method static synthetic access$102(Lcom/maya/sdk/framework/view/loading/LoadingSmile;F)F
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/view/loading/LoadingSmile;
    .param p1, "x1"    # F

    .line 15
    iput p1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->startAngle:F

    return p1
.end method

.method private initPaint()V
    .locals 2

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v1}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    return-void
.end method

.method private startViewAnim(FFJ)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "startF"    # F
    .param p2, "endF"    # F
    .param p3, "time"    # J

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 109
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 110
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 111
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->valueAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 112
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 113
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;

    invoke-direct {v1, p0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;-><init>(Lcom/maya/sdk/framework/view/loading/LoadingSmile;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 129
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/maya/sdk/framework/view/loading/LoadingSmile$2;

    invoke-direct {v1, p0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile$2;-><init>(Lcom/maya/sdk/framework/view/loading/LoadingSmile;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 146
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method


# virtual methods
.method public dip2px(F)I
    .locals 3
    .param p1, "dpValue"    # F

    .line 99
    invoke-virtual {p0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 100
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPadding:F

    iget v2, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPadding:F

    iget v3, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mWidth:F

    iget v4, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPadding:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mWidth:F

    iget v5, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPadding:F

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->rectF:Landroid/graphics/RectF;

    .line 58
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v3, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->rectF:Landroid/graphics/RectF;

    iget v4, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->startAngle:F

    iget-object v7, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 63
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-boolean v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->isSmile:Z

    if-eqz v0, :cond_0

    .line 65
    iget v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPadding:F

    iget v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mEyeWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mEyeWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mWidth:F

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v1, v3

    iget v4, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mEyeWidth:F

    iget-object v5, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 66
    iget v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mWidth:F

    iget v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPadding:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mEyeWidth:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mEyeWidth:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mWidth:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mEyeWidth:F

    iget-object v3, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 42
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 44
    invoke-virtual {p0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mWidth:F

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mWidth:F

    .line 48
    :goto_0
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mPadding:F

    .line 49
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0, v0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mEyeWidth:F

    .line 52
    return-void
.end method

.method public startAnim()V
    .locals 4

    .line 82
    invoke-virtual {p0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->stopAnim()V

    .line 83
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x5dc

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->startViewAnim(FFJ)Landroid/animation/ValueAnimator;

    .line 84
    return-void
.end method

.method public stopAnim()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->clearAnimation()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->isSmile:Z

    .line 90
    const/4 v1, 0x0

    iput v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mAnimatedValue:F

    .line 91
    iput v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->startAngle:F

    .line 92
    iget-object v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 93
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 94
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 96
    :cond_0
    return-void
.end method
