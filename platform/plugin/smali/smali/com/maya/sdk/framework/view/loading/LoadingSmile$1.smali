.class Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;
.super Ljava/lang/Object;
.source "LoadingSmile.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/framework/view/loading/LoadingSmile;->startViewAnim(FFJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/sdk/framework/view/loading/LoadingSmile;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/view/loading/LoadingSmile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    .line 113
    iput-object p1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->this$0:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 117
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->this$0:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mAnimatedValue:F

    .line 118
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->this$0:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    iget v0, v0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mAnimatedValue:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    const/high16 v0, 0x44340000    # 720.0f

    if-gez v4, :cond_0

    .line 119
    iget-object v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->this$0:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    const/4 v2, 0x0

    # setter for: Lcom/maya/sdk/framework/view/loading/LoadingSmile;->isSmile:Z
    invoke-static {v1, v2}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->access$002(Lcom/maya/sdk/framework/view/loading/LoadingSmile;Z)Z

    .line 120
    iget-object v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->this$0:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    iget-object v2, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->this$0:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    iget v2, v2, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->mAnimatedValue:F

    mul-float v2, v2, v0

    # setter for: Lcom/maya/sdk/framework/view/loading/LoadingSmile;->startAngle:F
    invoke-static {v1, v2}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->access$102(Lcom/maya/sdk/framework/view/loading/LoadingSmile;F)F

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->this$0:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    # setter for: Lcom/maya/sdk/framework/view/loading/LoadingSmile;->startAngle:F
    invoke-static {v1, v0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->access$102(Lcom/maya/sdk/framework/view/loading/LoadingSmile;F)F

    .line 123
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->this$0:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    const/4 v1, 0x1

    # setter for: Lcom/maya/sdk/framework/view/loading/LoadingSmile;->isSmile:Z
    invoke-static {v0, v1}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->access$002(Lcom/maya/sdk/framework/view/loading/LoadingSmile;Z)Z

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->this$0:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    invoke-virtual {v0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->invalidate()V

    .line 127
    return-void
.end method
