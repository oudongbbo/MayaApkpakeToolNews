.class Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/sdk/framework/view/loading/LoadingSmile;->a(FFJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/maya/sdk/framework/view/loading/LoadingSmile;


# direct methods
.method constructor <init>(Lcom/maya/sdk/framework/view/loading/LoadingSmile;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->a:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->a:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->c:F

    .line 118
    iget-object p1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->a:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    iget p1, p1, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->c:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p1, v0, v2

    const/high16 v0, 0x44340000    # 720.0f

    if-gez p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->a:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->a(Lcom/maya/sdk/framework/view/loading/LoadingSmile;Z)Z

    .line 120
    iget-object p1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->a:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    iget-object v1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->a:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    iget v1, v1, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->c:F

    mul-float v1, v1, v0

    invoke-static {p1, v1}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->a(Lcom/maya/sdk/framework/view/loading/LoadingSmile;F)F

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->a:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    invoke-static {p1, v0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->a(Lcom/maya/sdk/framework/view/loading/LoadingSmile;F)F

    .line 123
    iget-object p1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->a:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->a(Lcom/maya/sdk/framework/view/loading/LoadingSmile;Z)Z

    .line 126
    :goto_0
    iget-object p1, p0, Lcom/maya/sdk/framework/view/loading/LoadingSmile$1;->a:Lcom/maya/sdk/framework/view/loading/LoadingSmile;

    invoke-virtual {p1}, Lcom/maya/sdk/framework/view/loading/LoadingSmile;->invalidate()V

    return-void
.end method
