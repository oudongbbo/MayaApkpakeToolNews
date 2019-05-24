.class public Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maya/open/utils/AnimCircular;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullActivityBuilder"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mColorOrImageRes:I

.field private mDurationMills:Ljava/lang/Long;

.field private mEnterAnim:I

.field private mExitAnim:I

.field private mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

.field private mStartRadius:F

.field private mTriggerView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mStartRadius:F

    const v0, 0x106000b

    .line 169
    iput v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mColorOrImageRes:I

    const/high16 v0, 0x10a0000

    .line 172
    iput v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mEnterAnim:I

    const v0, 0x10a0001

    iput v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mExitAnim:I

    .line 175
    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mActivity:Landroid/app/Activity;

    .line 176
    iput-object p2, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mTriggerView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$300(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;)Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;)I
    .locals 0

    .line 165
    iget p0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mEnterAnim:I

    return p0
.end method

.method static synthetic access$500(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;)I
    .locals 0

    .line 165
    iget p0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mExitAnim:I

    return p0
.end method

.method static synthetic access$600(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;)Landroid/app/Activity;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;)F
    .locals 0

    .line 165
    iget p0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mStartRadius:F

    return p0
.end method

.method static synthetic access$800(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;)Landroid/view/View;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mTriggerView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public colorOrImageRes(I)Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;
    .locals 0

    .line 185
    iput p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mColorOrImageRes:I

    return-object p0
.end method

.method public duration(J)Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;
    .locals 0

    .line 190
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mDurationMills:Ljava/lang/Long;

    return-object p0
.end method

.method public go(Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;)V
    .locals 12

    .line 201
    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    .line 204
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_0

    .line 205
    iget-object p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    invoke-interface {p1}, Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;->onAnimationEnd()V

    return-void

    :cond_0
    const/4 p1, 0x2

    .line 209
    new-array v0, p1, [I

    .line 210
    iget-object v1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mTriggerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 211
    aget v1, v0, v1

    iget-object v2, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mTriggerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, p1

    add-int v6, v1, v2

    const/4 v1, 0x1

    .line 212
    aget v0, v0, v1

    iget-object v2, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mTriggerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, p1

    add-int v7, v0, v2

    .line 213
    new-instance v5, Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 214
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 215
    iget p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mColorOrImageRes:I

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget-object p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    move-object v11, p1

    check-cast v11, Landroid/view/ViewGroup;

    .line 217
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    .line 218
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 219
    invoke-virtual {v11, v5, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    sub-int v2, p1, v6

    .line 222
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v3, v0, v7

    .line 223
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int v2, v2, v2

    mul-int v3, v3, v3

    add-int/2addr v2, v3

    int-to-double v2, v2

    .line 224
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v8, v2, 0x1

    .line 226
    iget v2, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mStartRadius:F

    int-to-float v3, v8

    invoke-static {v5, v6, v7, v2, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    mul-int p1, p1, p1

    mul-int v0, v0, v0

    add-int/2addr p1, v0

    int-to-double v3, p1

    .line 227
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int p1, v3

    add-int/2addr p1, v1

    .line 229
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mDurationMills:Ljava/lang/Long;

    if-nez v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v3, v8

    .line 231
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v0

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v0

    const-wide v0, 0x4083500000000000L    # 618.0

    .line 233
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double v3, v3, v0

    double-to-long v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mDurationMills:Ljava/lang/Long;

    .line 235
    :cond_1
    iget-object p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mDurationMills:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    long-to-double v0, v9

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    .line 237
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 238
    new-instance p1, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;-><init>(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;Landroid/widget/ImageView;IIIJLandroid/view/ViewGroup;)V

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 273
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public overridePendingTransition(II)Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;
    .locals 0

    .line 195
    iput p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mEnterAnim:I

    .line 196
    iput p2, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mExitAnim:I

    return-object p0
.end method

.method public startRadius(F)Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;
    .locals 0

    .line 180
    iput p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mStartRadius:F

    return-object p0
.end method
