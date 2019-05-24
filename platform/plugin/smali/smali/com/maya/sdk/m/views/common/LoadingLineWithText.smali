.class public Lcom/maya/sdk/m/views/common/LoadingLineWithText;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mHigh:F

.field private mPadding:F

.field private mPaint:Landroid/graphics/Paint;

.field private mVlaue:I

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/maya/sdk/m/views/common/LoadingLineWithText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/maya/sdk/m/views/common/LoadingLineWithText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mWidth:F

    .line 17
    iput p1, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mHigh:F

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mVlaue:I

    const/high16 p1, 0x40a00000    # 5.0f

    .line 20
    iput p1, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPadding:F

    .line 32
    invoke-direct {p0}, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->initPaint()V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPaint:Landroid/graphics/Paint;

    .line 76
    iget-object v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 80
    iget-object v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public dip2px(F)I
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getFontHeight(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 3

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 93
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 94
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 3

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 87
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 88
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 46
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mVlaue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 51
    iget-object v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v6}, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v7

    .line 52
    iget-object v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v6}, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->getFontHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v8

    .line 54
    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mVlaue:I

    const/high16 v9, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 55
    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPadding:F

    iget v1, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mHigh:F

    div-float/2addr v1, v9

    div-float/2addr v8, v9

    add-float/2addr v1, v8

    iget-object v2, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 56
    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPadding:F

    add-float v1, v0, v7

    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mHigh:F

    div-float v2, v0, v9

    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mWidth:F

    iget v3, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPadding:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mHigh:F

    div-float v4, v0, v9

    iget-object v5, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 58
    :cond_0
    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mVlaue:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 59
    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mWidth:F

    iget v1, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPadding:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, v7

    iget v1, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mHigh:F

    div-float/2addr v1, v9

    div-float/2addr v8, v9

    add-float/2addr v1, v8

    iget-object v2, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 60
    iget v1, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPadding:F

    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mHigh:F

    div-float v2, v0, v9

    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mWidth:F

    iget v3, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPadding:F

    sub-float/2addr v0, v3

    sub-float v3, v0, v7

    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mHigh:F

    div-float v4, v0, v9

    iget-object v5, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 63
    :cond_1
    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mWidth:F

    iget v1, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPadding:F

    mul-float v1, v1, v9

    sub-float/2addr v0, v1

    sub-float v10, v0, v7

    .line 64
    iget v1, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPadding:F

    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mHigh:F

    div-float v2, v0, v9

    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPadding:F

    iget v3, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mVlaue:I

    int-to-float v3, v3

    mul-float v3, v3, v10

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v3, v11

    add-float/2addr v3, v0

    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mHigh:F

    div-float v4, v0, v9

    iget-object v5, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 65
    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPadding:F

    iget v1, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mVlaue:I

    int-to-float v1, v1

    mul-float v1, v1, v10

    div-float/2addr v1, v11

    add-float/2addr v0, v1

    add-float v1, v0, v7

    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mHigh:F

    div-float v2, v0, v9

    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mWidth:F

    iget v3, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPadding:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mHigh:F

    div-float v4, v0, v9

    iget-object v5, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 66
    iget v0, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPadding:F

    iget v1, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mVlaue:I

    int-to-float v1, v1

    mul-float v10, v10, v1

    div-float/2addr v10, v11

    add-float/2addr v0, v10

    iget v1, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mHigh:F

    div-float/2addr v1, v9

    div-float/2addr v8, v9

    add-float/2addr v1, v8

    iget-object v2, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 39
    invoke-virtual {p0}, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mWidth:F

    .line 40
    invoke-virtual {p0}, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mHigh:F

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->mVlaue:I

    .line 105
    invoke-virtual {p0}, Lcom/maya/sdk/m/views/common/LoadingLineWithText;->invalidate()V

    return-void
.end method
