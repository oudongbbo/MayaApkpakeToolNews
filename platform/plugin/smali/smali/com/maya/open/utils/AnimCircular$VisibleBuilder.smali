.class public Lcom/maya/open/utils/AnimCircular$VisibleBuilder;
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x26a

    .line 39
    iput-wide v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mDurationMills:J

    .line 46
    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    .line 47
    iput-boolean p2, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->isShow:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 50
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mStartRadius:Ljava/lang/Float;

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mEndRadius:Ljava/lang/Float;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->isShow:Z

    return p0
.end method

.method static synthetic access$100(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    return-object p0
.end method


# virtual methods
.method public duration(J)Lcom/maya/open/utils/AnimCircular$VisibleBuilder;
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mDurationMills:J

    return-object p0
.end method

.method public endRadius(F)Lcom/maya/open/utils/AnimCircular$VisibleBuilder;
    .locals 0

    .line 67
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mEndRadius:Ljava/lang/Float;

    return-object p0
.end method

.method public go()V
    .locals 8

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_2

    .line 84
    iget-boolean v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->isShow:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    invoke-interface {v0}, Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;->onAnimationEnd()V

    :cond_1
    return-void

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mTriggerView:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    .line 96
    new-array v0, v3, [I

    .line 97
    iget-object v4, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mTriggerView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 98
    aget v4, v0, v1

    iget-object v5, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mTriggerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    add-int/2addr v4, v5

    .line 99
    aget v0, v0, v2

    iget-object v5, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mTriggerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v3

    add-int/2addr v0, v5

    .line 101
    new-array v3, v3, [I

    .line 102
    iget-object v5, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 103
    aget v5, v3, v1

    .line 104
    aget v3, v3, v2

    .line 106
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 107
    iget-object v6, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 109
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 110
    iget-object v6, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 114
    iget-object v6, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 115
    iget-object v7, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v4, v5

    sub-int/2addr v0, v3

    sub-int/2addr v6, v4

    .line 121
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v7, v0

    .line 122
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int v3, v3, v3

    mul-int v5, v5, v5

    add-int/2addr v3, v5

    int-to-double v5, v3

    .line 123
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v3, v5

    add-int/2addr v3, v2

    goto :goto_1

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v4, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v0, v4

    div-int/lit8 v4, v0, 0x2

    .line 126
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v5, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v0, v5

    div-int/2addr v0, v3

    .line 128
    iget-object v3, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 129
    iget-object v5, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int v3, v3, v3

    mul-int v5, v5, v5

    add-int/2addr v3, v5

    int-to-double v5, v3

    .line 132
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v3, v5

    add-int/2addr v3, v2

    .line 135
    :goto_1
    iget-boolean v2, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->isShow:Z

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mEndRadius:Ljava/lang/Float;

    if-nez v2, :cond_4

    int-to-float v2, v3

    add-float/2addr v2, v5

    .line 136
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mEndRadius:Ljava/lang/Float;

    goto :goto_2

    .line 137
    :cond_4
    iget-boolean v2, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->isShow:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mStartRadius:Ljava/lang/Float;

    if-nez v2, :cond_5

    int-to-float v2, v3

    add-float/2addr v2, v5

    .line 138
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mStartRadius:Ljava/lang/Float;

    .line 140
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    iget-object v3, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mStartRadius:Ljava/lang/Float;

    .line 141
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v5, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mEndRadius:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 140
    invoke-static {v2, v4, v0, v3, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 142
    iget-object v2, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-wide v1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mDurationMills:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 145
    new-instance v1, Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;

    invoke-direct {v1, p0}, Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;-><init>(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public onAnimationEndListener(Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;)Lcom/maya/open/utils/AnimCircular$VisibleBuilder;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    return-object p0
.end method

.method public startRadius(F)Lcom/maya/open/utils/AnimCircular$VisibleBuilder;
    .locals 0

    .line 62
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mStartRadius:Ljava/lang/Float;

    return-object p0
.end method

.method public triggerView(Landroid/view/View;)Lcom/maya/open/utils/AnimCircular$VisibleBuilder;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mTriggerView:Landroid/view/View;

    return-object p0
.end method
