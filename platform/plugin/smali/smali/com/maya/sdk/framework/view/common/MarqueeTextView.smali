.class public Lcom/maya/sdk/framework/view/common/MarqueeTextView;
.super Landroid/widget/TextView;
.source "MarqueeTextView.java"


# instance fields
.field private mCoordinateX:F

.field private mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private mScrollWidth:I

.field private mStopMarquee:Z

.field private mText:Ljava/lang/String;

.field private mTextWidth:F

.field private mTextY:F

.field private speed:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->speed:I

    .line 115
    new-instance v0, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;-><init>(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->speed:I

    .line 115
    new-instance v0, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;-><init>(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mHandler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->speed:I

    .line 115
    new-instance v0, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;

    invoke-direct {v0, p0}, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;-><init>(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)V

    iput-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mHandler:Landroid/os/Handler;

    .line 35
    invoke-direct {p0}, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->initPaint()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)F
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/view/common/MarqueeTextView;

    .line 13
    iget v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mCoordinateX:F

    return v0
.end method

.method static synthetic access$002(Lcom/maya/sdk/framework/view/common/MarqueeTextView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/maya/sdk/framework/view/common/MarqueeTextView;
    .param p1, "x1"    # F

    .line 13
    iput p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mCoordinateX:F

    return p1
.end method

.method static synthetic access$100(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)F
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/view/common/MarqueeTextView;

    .line 13
    iget v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mTextWidth:F

    return v0
.end method

.method static synthetic access$200(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/view/common/MarqueeTextView;

    .line 13
    iget v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mScrollWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/view/common/MarqueeTextView;

    .line 13
    iget-boolean v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mStopMarquee:Z

    return v0
.end method

.method static synthetic access$400(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/maya/sdk/framework/view/common/MarqueeTextView;

    .line 13
    iget v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->speed:I

    return v0
.end method

.method private initPaint()V
    .locals 2

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    return-void
.end method


# virtual methods
.method public dip2px(F)I
    .locals 3
    .param p1, "dpValue"    # F

    .line 48
    invoke-virtual {p0}, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 49
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getCurrentPosition()F
    .locals 1

    .line 58
    iget v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mCoordinateX:F

    return v0
.end method

.method public getScrollWidth()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mScrollWidth:I

    return v0
.end method

.method public getSpeed()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->speed:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mStopMarquee:Z

    .line 94
    iget-object v1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 96
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 97
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mStopMarquee:Z

    .line 103
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 106
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 110
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mText:Ljava/lang/String;

    iget v1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mCoordinateX:F

    iget v2, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mTextY:F

    iget-object v3, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 113
    :cond_0
    return-void
.end method

.method public setCurrentPosition(F)V
    .locals 0
    .param p1, "mCoordinateX"    # F

    .line 62
    iput p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mCoordinateX:F

    .line 63
    return-void
.end method

.method public setScrollWidth(I)V
    .locals 0
    .param p1, "mScrollWidth"    # I

    .line 70
    iput p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mScrollWidth:I

    .line 71
    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .line 78
    iput p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->speed:I

    .line 79
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mText:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mTextWidth:F

    .line 85
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    return-void
.end method

.method public setTextY(F)V
    .locals 0
    .param p1, "y"    # F

    .line 54
    iput p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->mTextY:F

    .line 55
    return-void
.end method
