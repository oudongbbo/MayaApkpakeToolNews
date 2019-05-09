.class Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimCircular.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->go()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maya/open/utils/AnimCircular$VisibleBuilder;


# direct methods
.method constructor <init>(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    .line 145
    iput-object p1, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 148
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 149
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    # getter for: Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->isShow:Z
    invoke-static {v0}, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->access$000(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    # getter for: Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;
    invoke-static {v0}, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->access$100(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    # getter for: Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mAnimView:Landroid/view/View;
    invoke-static {v0}, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->access$100(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    # getter for: Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;
    invoke-static {v0}, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->access$200(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/maya/open/utils/AnimCircular$VisibleBuilder$1;->this$0:Lcom/maya/open/utils/AnimCircular$VisibleBuilder;

    # getter for: Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->mOnAnimationEndListener:Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;
    invoke-static {v0}, Lcom/maya/open/utils/AnimCircular$VisibleBuilder;->access$200(Lcom/maya/open/utils/AnimCircular$VisibleBuilder;)Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/maya/open/utils/AnimCircular$OnAnimationEndListener;->onAnimationEnd()V

    .line 156
    :cond_1
    return-void
.end method
