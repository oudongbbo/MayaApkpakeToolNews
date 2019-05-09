.class public Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;
.super Ljava/lang/Object;
.source "AnimCircular.java"


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
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "triggerView"    # Landroid/view/View;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mStartRadius:F

    .line 169
    const v0, 0x106000b

    iput v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mColorOrImageRes:I

    .line 172
    const/high16 v0, 0x10a0000

    iput v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mEnterAnim:I

    const v0, 0x10a0001

    iput v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mExitAnim:I

    .line 175
    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mActivity:Landroid/app/Activity;

    .line 176
    iput-object p2, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mTriggerView:Landroid/view/View;

    .line 177
    return-void
.end method

.method static synthetic access$300(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;)Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;

    .line 165
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;)I
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;

    .line 165
    iget v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mEnterAnim:I

    return v0
.end method

.method static synthetic access$500(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;)I
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;

    .line 165
    iget v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mExitAnim:I

    return v0
.end method

.method static synthetic access$600(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;

    .line 165
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;)F
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;

    .line 165
    iget v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mStartRadius:F

    return v0
.end method

.method static synthetic access$800(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;

    .line 165
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mTriggerView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public colorOrImageRes(I)Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;
    .locals 0
    .param p1, "colorOrImageRes"    # I

    .line 185
    iput p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mColorOrImageRes:I

    .line 186
    return-object p0
.end method

.method public duration(J)Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;
    .locals 1
    .param p1, "durationMills"    # J

    .line 190
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mDurationMills:Ljava/lang/Long;

    .line 191
    return-object p0
.end method

.method public go(Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;)V
    .locals 24
    .param p1, "onAnimationEndListener"    # Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    .line 201
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iput-object v10, v9, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 205
    iget-object v0, v9, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    invoke-interface {v0}, Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;->onAnimationEnd()V

    .line 206
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x2

    new-array v11, v0, [I

    .line 210
    .local v11, "location":[I
    iget-object v1, v9, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mTriggerView:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 211
    const/4 v1, 0x0

    aget v1, v11, v1

    iget-object v2, v9, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mTriggerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    add-int v12, v1, v2

    .line 212
    .local v12, "cx":I
    const/4 v1, 0x1

    aget v2, v11, v1

    iget-object v3, v9, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mTriggerView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    add-int v13, v2, v3

    .line 213
    .local v13, "cy":I
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, v9, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v14, v0

    .line 214
    .local v14, "view":Landroid/widget/ImageView;
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 215
    iget v0, v9, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mColorOrImageRes:I

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget-object v0, v9, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/view/ViewGroup;

    .line 217
    .local v15, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    .line 218
    .local v8, "w":I
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    .line 219
    .local v6, "h":I
    invoke-virtual {v15, v14, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 222
    sub-int v0, v8, v12

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 223
    .local v16, "maxW":I
    sub-int v0, v6, v13

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 224
    .local v17, "maxH":I
    mul-int v0, v16, v16

    mul-int v2, v17, v17

    add-int/2addr v0, v2

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/lit8 v7, v0, 0x1

    .line 226
    .local v7, "finalRadius":I
    iget v0, v9, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mStartRadius:F

    int-to-float v2, v7

    invoke-static {v14, v12, v13, v0, v2}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v5

    .line 227
    .local v5, "anim":Landroid/animation/Animator;
    mul-int v0, v8, v8

    mul-int v2, v6, v6

    add-int/2addr v0, v2

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/lit8 v4, v0, 0x1

    .line 229
    .local v4, "maxRadius":I
    iget-object v0, v9, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mDurationMills:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 231
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v2, v7

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    int-to-double v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    .line 233
    .local v2, "rate":D
    const-wide v0, 0x4083500000000000L    # 618.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    mul-double v0, v0, v18

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v9, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mDurationMills:Ljava/lang/Long;

    .line 235
    .end local v2    # "rate":D
    :cond_1
    iget-object v0, v9, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mDurationMills:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 237
    .local v2, "finalDuration":J
    long-to-double v0, v2

    const-wide v18, 0x3feccccccccccccdL    # 0.9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v18

    double-to-long v0, v0

    invoke-virtual {v5, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 238
    new-instance v1, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;

    move-object v0, v1

    move-object v9, v1

    move-object/from16 v1, p0

    move-wide/from16 v18, v2

    .end local v2    # "finalDuration":J
    .local v18, "finalDuration":J
    move-object v2, v14

    move v3, v12

    move/from16 v20, v4

    .end local v4    # "maxRadius":I
    .local v20, "maxRadius":I
    move v4, v13

    move-object v10, v5

    .end local v5    # "anim":Landroid/animation/Animator;
    .local v10, "anim":Landroid/animation/Animator;
    move v5, v7

    move/from16 v21, v6

    move/from16 v22, v7

    .end local v6    # "h":I
    .end local v7    # "finalRadius":I
    .local v21, "h":I
    .local v22, "finalRadius":I
    move-wide/from16 v6, v18

    move/from16 v23, v8

    .end local v8    # "w":I
    .local v23, "w":I
    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;-><init>(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;Landroid/widget/ImageView;IIIJLandroid/view/ViewGroup;)V

    invoke-virtual {v10, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 273
    invoke-virtual {v10}, Landroid/animation/Animator;->start()V

    .line 274
    return-void
.end method

.method public overridePendingTransition(II)Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;
    .locals 0
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .line 195
    iput p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mEnterAnim:I

    .line 196
    iput p2, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mExitAnim:I

    .line 197
    return-object p0
.end method

.method public startRadius(F)Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;
    .locals 0
    .param p1, "startRadius"    # F

    .line 180
    iput p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mStartRadius:F

    .line 181
    return-object p0
.end method
