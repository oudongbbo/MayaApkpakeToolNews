.class public Lcom/maya/open/utils/AnimCircular$VisibleBuilder;
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
    name = "VisibleBuilder"
.end annotation


# instance fields
.field private isShow:Z

.field private mAnimView:Landroid/view/View;

.field private mDurationMills:J

.field private mEndRadius:Ljava/lang/Float;

.field private mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

.field private mStartRadius:Ljava/lang/Float;

.field private mTriggerView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "isShow"    # Z

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, 0x26a

    iput-wide v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mDurationMills:J

    .line 46
    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    .line 47
    iput-boolean p2, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->isShow:Z

    .line 49
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 50
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mStartRadius:Ljava/lang/Float;

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mEndRadius:Ljava/lang/Float;

    .line 54
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    .line 34
    iget-boolean v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->isShow:Z

    return v0
.end method

.method static synthetic access$100(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    .line 34
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;
    .locals 1
    .param p0, "x0"    # Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    .line 34
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    return-object v0
.end method


# virtual methods
.method public duration(J)Lcom/maya/open/utils/AnimCircular$VisibleBuilder;
    .locals 0
    .param p1, "durationMills"    # J

    .line 72
    iput-wide p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mDurationMills:J

    .line 73
    return-object p0
.end method

.method public endRadius(F)Lcom/maya/open/utils/AnimCircular$VisibleBuilder;
    .locals 1
    .param p1, "endRadius"    # F

    .line 67
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mEndRadius:Ljava/lang/Float;

    .line 68
    return-object p0
.end method

.method public go()V
    .locals 20

    .line 83
    move-object/from16 v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-ge v1, v3, :cond_2

    .line 84
    iget-boolean v1, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->isShow:Z

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :goto_0
    iget-object v1, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    invoke-interface {v1}, Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;->onAnimationEnd()V

    .line 91
    :cond_1
    return-void

    .line 95
    :cond_2
    iget-object v1, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mTriggerView:Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    .line 96
    new-array v1, v4, [I

    .line 97
    .local v1, "tvLocation":[I
    iget-object v5, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mTriggerView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 98
    aget v5, v1, v2

    iget-object v6, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mTriggerView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v4

    add-int/2addr v5, v6

    .line 99
    .local v5, "tvCX":I
    aget v6, v1, v3

    iget-object v7, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mTriggerView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/2addr v7, v4

    add-int/2addr v6, v7

    .line 101
    .local v6, "tvCY":I
    new-array v4, v4, [I

    .line 102
    .local v4, "avLocation":[I
    iget-object v7, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 103
    aget v7, v4, v2

    .line 104
    .local v7, "avLX":I
    aget v8, v4, v3

    .line 106
    .local v8, "avTY":I
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 107
    .local v9, "triggerX":I
    iget-object v10, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v10, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 109
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 110
    .local v10, "triggerY":I
    iget-object v11, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 114
    iget-object v11, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 115
    .local v11, "avW":I
    iget-object v12, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 117
    .local v12, "avH":I
    sub-int v13, v9, v7

    .line 118
    .local v13, "rippleCX":I
    sub-int v14, v10, v8

    .line 121
    .local v14, "rippleCY":I
    sub-int v15, v11, v13

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 122
    .local v15, "maxW":I
    sub-int v2, v12, v14

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 123
    .local v2, "maxH":I
    mul-int v16, v15, v15

    mul-int v17, v2, v2

    add-int v3, v16, v17

    move-object/from16 v18, v1

    move/from16 v19, v2

    .end local v1    # "tvLocation":[I
    .end local v2    # "maxH":I
    .local v18, "tvLocation":[I
    .local v19, "maxH":I
    int-to-double v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 124
    .end local v4    # "avLocation":[I
    .end local v5    # "tvCX":I
    .end local v6    # "tvCY":I
    .end local v7    # "avLX":I
    .end local v8    # "avTY":I
    .end local v9    # "triggerX":I
    .end local v10    # "triggerY":I
    .end local v11    # "avW":I
    .end local v12    # "avH":I
    .end local v15    # "maxW":I
    .end local v18    # "tvLocation":[I
    .end local v19    # "maxH":I
    .local v1, "maxRadius":I
    goto :goto_1

    .line 125
    .end local v1    # "maxRadius":I
    .end local v13    # "rippleCX":I
    .end local v14    # "rippleCY":I
    :cond_3
    iget-object v1, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v13, v1, 0x2

    .line 126
    .restart local v13    # "rippleCX":I
    iget-object v1, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v14, v1, 0x2

    .line 128
    .restart local v14    # "rippleCY":I
    iget-object v1, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 129
    .local v1, "w":I
    iget-object v2, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 132
    .local v2, "h":I
    mul-int v3, v1, v1

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x1

    add-int/lit8 v1, v3, 0x1

    .line 135
    .end local v2    # "h":I
    .local v1, "maxRadius":I
    :goto_1
    iget-boolean v2, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->isShow:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mEndRadius:Ljava/lang/Float;

    if-nez v2, :cond_4

    .line 136
    int-to-float v2, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mEndRadius:Ljava/lang/Float;

    goto :goto_2

    .line 137
    :cond_4
    iget-boolean v2, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->isShow:Z

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mStartRadius:Ljava/lang/Float;

    if-nez v2, :cond_5

    .line 138
    int-to-float v2, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mStartRadius:Ljava/lang/Float;

    .line 140
    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    iget-object v3, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mStartRadius:Ljava/lang/Float;

    .line 141
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mEndRadius:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 140
    invoke-static {v2, v13, v14, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    .line 142
    .local v2, "anim":Landroid/animation/Animator;
    iget-object v3, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-wide v3, v0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mDurationMills:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 145
    new-instance v3, Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;

    invoke-direct {v3, v0}, Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;-><init>(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 160
    return-void
.end method

.method public onAnimationEndListener(Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;)Lcom/maya/open/utils/AnimCircular$VisibleBuilder;
    .locals 0
    .param p1, "onAnimationEndListener"    # Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    .line 77
    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    .line 78
    return-object p0
.end method

.method public startRadius(F)Lcom/maya/open/utils/AnimCircular$VisibleBuilder;
    .locals 1
    .param p1, "startRadius"    # F

    .line 62
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mStartRadius:Ljava/lang/Float;

    .line 63
    return-object p0
.end method

.method public triggerView(Landroid/view/View;)Lcom/maya/open/utils/AnimCircular$VisibleBuilder;
    .locals 0
    .param p1, "triggerView"    # Landroid/view/View;

    .line 57
    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mTriggerView:Landroid/view/View;

    .line 58
    return-object p0
.end method
