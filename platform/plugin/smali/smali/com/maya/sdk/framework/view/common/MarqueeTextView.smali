.class public Lcom/maya/sdk/framework/view/common/MarqueeTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:F

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->g:I

    .line 115
    new-instance p1, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;

    invoke-direct {p1, p0}, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;-><init>(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)V

    iput-object p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->i:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->g:I

    .line 115
    new-instance p1, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;

    invoke-direct {p1, p0}, Lcom/maya/sdk/framework/view/common/MarqueeTextView$1;-><init>(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)V

    iput-object p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->i:Landroid/os/Handler;

    .line 35
    invoke-direct {p0}, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->a()V

    return-void
.end method

.method static synthetic a(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)F
    .locals 0

    .line 13
    iget p0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->d:F

    return p0
.end method

.method static synthetic a(Lcom/maya/sdk/framework/view/common/MarqueeTextView;F)F
    .locals 0

    .line 13
    iput p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->d:F

    return p1
.end method

.method private a()V
    .locals 2

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->a:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic b(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)F
    .locals 0

    .line 13
    iget p0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->e:F

    return p0
.end method

.method static synthetic c(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->f:I

    return p0
.end method

.method static synthetic d(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->b:Z

    return p0
.end method

.method static synthetic e(Lcom/maya/sdk/framework/view/common/MarqueeTextView;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->g:I

    return p0
.end method


# virtual methods
.method public getCurrentPosition()F
    .locals 1

    .line 58
    iget v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->d:F

    return v0
.end method

.method public getScrollWidth()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->f:I

    return v0
.end method

.method public getSpeed()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->g:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->b:Z

    .line 94
    iget-object v1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->i:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 96
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->b:Z

    .line 103
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 110
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->c:Ljava/lang/String;

    iget v1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->d:F

    iget v2, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->h:F

    iget-object v3, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setCurrentPosition(F)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->d:F

    return-void
.end method

.method public setScrollWidth(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->f:I

    return-void
.end method

.method public setSpeed(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->g:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    .line 83
    iput-object p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->c:Ljava/lang/String;

    .line 84
    iget-object p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->e:F

    .line 85
    iget-object p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->i:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->i:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->i:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setTextY(F)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/maya/sdk/framework/view/common/MarqueeTextView;->h:F

    return-void
.end method
