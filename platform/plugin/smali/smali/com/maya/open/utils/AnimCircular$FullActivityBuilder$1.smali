.class Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimCircular.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->go(Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;

.field final synthetic val$cx:I

.field final synthetic val$cy:I

.field final synthetic val$decorView:Landroid/view/ViewGroup;

.field final synthetic val$finalDuration:J

.field final synthetic val$finalRadius:I

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;Landroid/widget/ImageView;IIIJLandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;

    .line 238
    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;

    iput-object p2, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;->val$view:Landroid/widget/ImageView;

    iput p3, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;->val$cx:I

    iput p4, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;->val$cy:I

    iput p5, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;->val$finalRadius:I

    iput-wide p6, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;->val$finalDuration:J

    iput-object p8, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;->val$decorView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 241
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 243
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;

    # getter for: Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;
    invoke-static {v0}, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->access$300(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;)Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;->onAnimationEnd()V

    .line 245
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;

    # getter for: Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->access$600(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;

    # getter for: Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mEnterAnim:I
    invoke-static {v1}, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->access$400(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;)I

    move-result v1

    iget-object v2, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;

    # getter for: Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mExitAnim:I
    invoke-static {v2}, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->access$500(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 248
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;

    # getter for: Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->mTriggerView:Landroid/view/View;
    invoke-static {v0}, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;->access$800(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1$1;

    invoke-direct {v1, p0}, Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1$1;-><init>(Lcom/maya/open/utils/AnimCircular$FullActivityBuilder$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    return-void
.end method
